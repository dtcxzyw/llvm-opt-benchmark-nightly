Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRNumbering?download=true
inline.NumInlined: 4192
inline.NumDeleted: 2183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_":bb.a
  store ptr %.val.i.i.3.i, ptr %.sink.i.3.i, align 8, !tbaa !177
  %.sroa.0.020.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 40 ; 7 uses
  %.val.i.i.4.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !177 ; 2 uses
  %.val1.i.i.4.i = load ptr, ptr %.sroa.034.037.i, align 8, !tbaa !177 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val.i.i.4.i, i64 12
  %.val.val.i.i.4.i = load i32, ptr %i.bl, align 4, !tbaa !244 ; 3 uses
  %i.bm = getelementptr i8, ptr %.val1.i.i.4.i, i64 12
  %.val1.val.i.i.4.i = load i32, ptr %i.bm, align 4, !tbaa !244
  %i.bn = icmp ugt i32 %.val.val.i.i.4.i, %.val1.val.i.i.4.i
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %.val2.i7.i.i.4.i = load ptr, ptr %.sroa.0.020.i.ptr.3.i, align 8, !tbaa !177 ; 2 uses
  %i.bo = getelementptr i8, ptr %.val2.i7.i.i.4.i, i64 12
  %.val2.val.i8.i.i.4.i = load i32, ptr %i.bo, align 4, !tbaa !244
  %i.bp = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i8.i.i.4.i
  br i1 %i.bp, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.u, %.lr.ph.i.i.4.i
  %.val2.i11.i.i.4.i = phi ptr [ %.val2.i.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.val2.i7.i.i.4.i, %bb.u ]
  %.sroa.0.010.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.020.i.ptr.3.i, %bb.u ] ; 3 uses
  %.sroa.03.09.i.i.4.i = phi ptr [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.u ]
  store ptr %.val2.i11.i.i.4.i, ptr %.sroa.03.09.i.i.4.i, align 8, !tbaa !177
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.4.i, i64 -8 ; 2 uses
  %.val2.i.i.i.4.i = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !177 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val2.i.i.i.4.i, i64 12
  %.val2.val.i.i.i.4.i = load i32, ptr %i.bq, align 4, !tbaa !244
  %i.br = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i.i.i.4.i
  br i1 %i.br, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, !llvm.loop !6

bb.v:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.bs = ptrtoint ptr %.sroa.0.020.i.ptr.4.i to i64
  %i.bt = sub i64 %i.bs, %i.g                     ; 3 uses
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1
  br i1 %i.bv, label %bb.y, label %bb.w, !prof !145

bb.w:                                             ; preds = %bb.v
  %i.bw = icmp eq i64 %i.bt, 8
  br i1 %i.bw, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.x:                                             ; preds = %bb.w
  store ptr %.val1.i.i.4.i, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.y:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 48
  %i.by = sub nsw i64 0, %i.bu
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.037.i, i64 %i.bt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.y, %bb.x, %bb.w, %bb.u
  %.sink.i.4.i = phi ptr [ %.sroa.034.037.i, %bb.x ], [ %.sroa.034.037.i, %bb.y ], [ %.sroa.034.037.i, %bb.w ], [ %.sroa.0.020.i.ptr.4.i, %bb.u ], [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %.val.i.i.4.i, ptr %.sink.i.4.i, align 8, !tbaa !177
  %.sroa.0.020.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 48 ; 5 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !177 ; 2 uses
  %.val1.i.i.5.i = load ptr, ptr %.sroa.034.037.i, align 8, !tbaa !177 ; 2 uses
  %i.ca = getelementptr i8, ptr %.val.i.i.5.i, i64 12
  %.val.val.i.i.5.i = load i32, ptr %i.ca, align 4, !tbaa !244 ; 3 uses
  %i.cb = getelementptr i8, ptr %.val1.i.i.5.i, i64 12
  %.val1.val.i.i.5.i = load i32, ptr %i.cb, align 4, !tbaa !244
  %i.cc = icmp ugt i32 %.val.val.i.i.5.i, %.val1.val.i.i.5.i
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %.val2.i7.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !177 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val2.i7.i.i.5.i, i64 12
  %.val2.val.i8.i.i.5.i = load i32, ptr %i.cd, align 4, !tbaa !244
  %i.ce = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i8.i.i.5.i
  br i1 %i.ce, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.z, %.lr.ph.i.i.5.i
  %.val2.i11.i.i.5.i = phi ptr [ %.val2.i.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.val2.i7.i.i.5.i, %bb.z ]
  %.sroa.0.010.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.z ] ; 3 uses
  %.sroa.03.09.i.i.5.i = phi ptr [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.5.i, %bb.z ]
  store ptr %.val2.i11.i.i.5.i, ptr %.sroa.03.09.i.i.5.i, align 8, !tbaa !177
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.5.i, i64 -8 ; 2 uses
  %.val2.i.i.i.5.i = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !177 ; 2 uses
  %i.cf = getelementptr i8, ptr %.val2.i.i.i.5.i, i64 12
  %.val2.val.i.i.i.5.i = load i32, ptr %i.cf, align 4, !tbaa !244
  %i.cg = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i.i.i.5.i
  br i1 %i.cg, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, !llvm.loop !6

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.ch = ptrtoint ptr %.sroa.0.020.i.ptr.5.i to i64
  %i.ci = sub i64 %i.ch, %i.g                     ; 3 uses
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 1
  br i1 %i.ck, label %bb.ad, label %bb.ab, !prof !145

bb.ab:                                            ; preds = %bb.aa
  %i.cl = icmp eq i64 %i.ci, 8
  br i1 %i.cl, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %.val1.i.i.5.i, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ad:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 56
  %i.cn = sub nsw i64 0, %i.cj
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.037.i, i64 %i.ci, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sink.i.5.i = phi ptr [ %.sroa.034.037.i, %bb.ac ], [ %.sroa.034.037.i, %bb.ad ], [ %.sroa.034.037.i, %bb.ab ], [ %.sroa.0.020.i.ptr.5.i, %bb.z ], [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %.val.i.i.5.i, ptr %.sink.i.5.i, align 8, !tbaa !177
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 56 ; 3 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cr = sub i64 %i.a, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 48
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !650

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, %bb.a
  %.sroa.034.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.cp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ] ; 8 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ]
  %i.ct = icmp eq ptr %.sroa.034.0.lcssa.i, %1
  %.sroa.0.017.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i, i64 8 ; 2 uses
  %.not18.i12.i = icmp eq ptr %.sroa.0.017.i11.i, %1
  %or.cond.i = select i1 %i.ct, i1 true, i1 %.not18.i12.i
  br i1 %or.cond.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i
  %.sroa.0.020.i14.i = phi ptr [ %.sroa.0.0.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i ], [ %.sroa.0.017.i11.i, %._crit_edge.i ] ; 6 uses
  %.pn19.i15.i = phi ptr [ %.sroa.0.020.i14.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i ], [ %.sroa.034.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.val.i.i16.i = load ptr, ptr %.sroa.0.020.i14.i, align 8, !tbaa !177 ; 2 uses
  %.val1.i.i17.i = load ptr, ptr %.sroa.034.0.lcssa.i, align 8, !tbaa !177 ; 2 uses
  %i.cu = getelementptr i8, ptr %.val.i.i16.i, i64 12
  %.val.val.i.i18.i = load i32, ptr %i.cu, align 4, !tbaa !244 ; 3 uses
  %i.cv = getelementptr i8, ptr %.val1.i.i17.i, i64 12
  %.val1.val.i.i19.i = load i32, ptr %i.cv, align 4, !tbaa !244
  %i.cw = icmp ugt i32 %.val.val.i.i18.i, %.val1.val.i.i19.i
  br i1 %i.cw, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph.i13.i
  %i.cx = ptrtoint ptr %.sroa.0.020.i14.i to i64
  %i.cy = sub i64 %i.cx, %.lcssa.i                ; 3 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 1
  br i1 %i.da, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %.pn19.i15.i, i64 16
  %i.dc = sub nsw i64 0, %i.cz
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.0.lcssa.i, i64 %i.cy, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ag:                                            ; preds = %bb.ae
  %i.de = icmp eq i64 %i.cy, 8
  br i1 %i.de, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %.pn19.i15.i, i64 8
  store ptr %.val1.i.i17.i, ptr %i.df, align 8, !tbaa !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ai:                                            ; preds = %.lr.ph.i13.i
  %.val2.i7.i.i20.i = load ptr, ptr %.pn19.i15.i, align 8, !tbaa !177 ; 2 uses
  %i.dg = getelementptr i8, ptr %.val2.i7.i.i20.i, i64 12
  %.val2.val.i8.i.i21.i = load i32, ptr %i.dg, align 4, !tbaa !244
  %i.dh = icmp ugt i32 %.val.val.i.i18.i, %.val2.val.i8.i.i21.i
  br i1 %i.dh, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.ai, %.lr.ph.i.i26.i
  %.val2.i11.i.i27.i = phi ptr [ %.val2.i.i.i31.i, %.lr.ph.i.i26.i ], [ %.val2.i7.i.i20.i, %bb.ai ]
  %.sroa.0.010.i.i28.i = phi ptr [ %.sroa.0.0.i.i30.i, %.lr.ph.i.i26.i ], [ %.pn19.i15.i, %bb.ai ] ; 3 uses
  %.sroa.03.09.i.i29.i = phi ptr [ %.sroa.0.010.i.i28.i, %.lr.ph.i.i26.i ], [ %.sroa.0.020.i14.i, %bb.ai ]
  store ptr %.val2.i11.i.i27.i, ptr %.sroa.03.09.i.i29.i, align 8, !tbaa !177
  %.sroa.0.0.i.i30.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i28.i, i64 -8 ; 2 uses
  %.val2.i.i.i31.i = load ptr, ptr %.sroa.0.0.i.i30.i, align 8, !tbaa !177 ; 2 uses
  %i.di = getelementptr i8, ptr %.val2.i.i.i31.i, i64 12
  %.val2.val.i.i.i32.i = load i32, ptr %i.di, align 4, !tbaa !244
  %i.dj = icmp ugt i32 %.val.val.i.i18.i, %.val2.val.i.i.i32.i
  br i1 %i.dj, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i, !llvm.loop !6

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i23.i = phi ptr [ %.sroa.034.0.lcssa.i, %bb.ah ], [ %.sroa.034.0.lcssa.i, %bb.af ], [ %.sroa.034.0.lcssa.i, %bb.ag ], [ %.sroa.0.020.i14.i, %bb.ai ], [ %.sroa.0.010.i.i28.i, %.lr.ph.i.i26.i ]
  store ptr %.val.i.i16.i, ptr %.sink.i23.i, align 8, !tbaa !177
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i14.i, i64 8 ; 2 uses
  %.not.i25.i = icmp eq ptr %.sroa.0.0.i24.i, %1
  br i1 %.not.i25.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i, !llvm.loop !7

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i, %._crit_edge.i
  %i.dk = icmp sgt i64 %i.d, 7
  br i1 %i.dk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit"
  %i.dl = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.fz, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ] ; 8 uses
  %i.dm = shl nsw i64 %.069, 1                    ; 6 uses
  %.not58.i = icmp slt i64 %i.d, %i.dm
  br i1 %.not58.i, label %._crit_edge.i26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %.idx.i = shl i64 %.069, 3                      ; 10 uses
  %.idx52.i = shl i64 %.069, 4                    ; 2 uses
  %.not53.i = icmp eq i64 %.idx.i, %.idx52.i
  br i1 %.not53.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dn = icmp sgt i64 %.idx.i, 8
  br i1 %i.dn, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !145

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.060.us.i.us = phi ptr [ %i.dp, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.044.059.us.i.us = phi ptr [ %i.do, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.060.us.i.us, ptr align 8 %.sroa.044.059.us.i.us, i64 %.idx.i, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.060.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.do, i64 %.idx.i, i1 false)
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.a, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.ds, %i.dm
  br i1 %.not.us.i.us, label %._crit_edge.i26, label %.critedge.i.us.i.us, !llvm.loop !651

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.dt = icmp eq i64 %.idx.i, 8
  br i1 %i.dt, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !177
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.du = phi ptr [ %i.dx, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.060.us.i.us59 = phi ptr [ %i.dw, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 2 uses
  %.sroa.044.059.us.i.us60 = phi ptr [ %i.dv, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us60, i64 8 ; 4 uses
  store ptr %i.du, ptr %.060.us.i.us59, align 8, !tbaa !177
  %i.dw = getelementptr inbounds nuw i8, ptr %.060.us.i.us59, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !177 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !177
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.a, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.ea, %i.dm
  br i1 %.not.us.i.us62, label %._crit_edge.i26, label %.critedge.i.us.i.us58, !llvm.loop !651

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.060.us.i = phi ptr [ %i.ec, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.044.059.us.i = phi ptr [ %i.eb, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.eb = getelementptr inbounds i8, ptr %.sroa.044.059.us.i, i64 %.idx.i ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.060.us.i, i64 %.idx.i ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.a, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ef, %i.dm
  br i1 %.not.us.i, label %._crit_edge.i26, label %.critedge.i.us.i, !llvm.loop !651

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.060.i = phi ptr [ %i.fb, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.044.059.i = phi ptr [ %i.eh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx.i ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx52.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.el, %.lr.ph.i.i21 ], [ %.060.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.044.059.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.eg, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val.i.i.i22 = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !177 ; 2 uses
  %.val1.i.i.i23 = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !177 ; 2 uses
  %i.ei = getelementptr i8, ptr %.val.i.i.i22, i64 12
  %.val.val.i.i.i24 = load i32, ptr %i.ei, align 4, !tbaa !244
  %i.ej = getelementptr i8, ptr %.val1.i.i.i23, i64 12
  %.val1.val.i.i.i25 = load i32, ptr %i.ej, align 4, !tbaa !244
  %i.ek = icmp ugt i32 %.val.val.i.i.i24, %.val1.val.i.i.i25 ; 3 uses
  %.val1.i.sink.i.i = select i1 %i.ek, ptr %.val.i.i.i22, ptr %.val1.i.i.i23
  %.sroa.010.1.idx.i.i = select i1 %i.ek, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.ek, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.val1.i.sink.i.i, ptr %.020.i.i, align 8, !tbaa !177
  %i.el = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.em = icmp ne ptr %.sroa.014.1.i.i, %i.eg
  %i.en = icmp ne ptr %.sroa.010.1.i.i, %i.eh
  %or.cond.i.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !652

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.eo = ptrtoint ptr %i.eg to i64
  %i.ep = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 4 uses
  %i.er = icmp sgt i64 %i.eq, 8
  br i1 %i.er, label %bb.ak, label %bb.al, !prof !145

bb.ak:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.eq, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  %i.es = icmp eq i64 %i.eq, 8
  br i1 %i.es, label %bb.am, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !177
  store ptr %i.et, ptr %i.el, align 8, !tbaa !177
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.eu = getelementptr inbounds i8, ptr %i.el, i64 %i.eq ; 3 uses
  %i.ev = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ew = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 8
  br i1 %i.ey, label %bb.an, label %bb.ao, !prof !145

bb.an:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ex, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.ez = icmp eq i64 %i.ex, 8
  br i1 %i.ez, label %bb.ap, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !177
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !177
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.ap, %bb.ao, %bb.an
  %i.fb = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex ; 2 uses
  %i.fc = sub i64 %i.a, %i.ev
  %i.fd = ashr exact i64 %i.fc, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fd, %i.dm
  br i1 %.not.i, label %._crit_edge.i26, label %.lr.ph.i.preheader.i, !llvm.loop !651

._crit_edge.i26:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.aj
  %.sroa.044.0.lcssa.i = phi ptr [ %0, %bb.aj ], [ %i.do, %.critedge.i.us.i.us ], [ %i.dv, %.critedge.i.us.i.us58 ], [ %i.eb, %.critedge.i.us.i ], [ %i.eh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.aj ], [ %i.dp, %.critedge.i.us.i.us ], [ %i.dw, %.critedge.i.us.i.us58 ], [ %i.ec, %.critedge.i.us.i ], [ %i.fb, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa56.i = phi i64 [ %i.d, %bb.aj ], [ %i.ds, %.critedge.i.us.i.us ], [ %i.ea, %.critedge.i.us.i.us58 ], [ %i.ef, %.critedge.i.us.i ], [ %i.fd, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa56.i) ; 2 uses
  %.idx54.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fe = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i, i64 %.idx54.i ; 5 uses
  %i.ff = icmp ne i64 %.sroa.speculated.i, 0
  %i.fg = icmp ne ptr %i.fe, %1
  %or.cond17.i16.i = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i26, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.fk, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ], [ %.sroa.044.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ], [ %i.fe, %._crit_edge.i26 ] ; 2 uses
  %.val.i.i26.i = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !177 ; 2 uses
  %.val1.i.i27.i = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !177 ; 2 uses
  %i.fh = getelementptr i8, ptr %.val.i.i26.i, i64 12
  %.val.val.i.i28.i = load i32, ptr %i.fh, align 4, !tbaa !244
  %i.fi = getelementptr i8, ptr %.val1.i.i27.i, i64 12
  %.val1.val.i.i29.i = load i32, ptr %i.fi, align 4, !tbaa !244
  %i.fj = icmp ugt i32 %.val.val.i.i28.i, %.val1.val.i.i29.i ; 3 uses
  %.val1.i.sink.i30.i = select i1 %i.fj, ptr %.val.i.i26.i, ptr %.val1.i.i27.i
  %.sroa.010.1.idx.i31.i = select i1 %i.fj, i64 8, i64 0
  %.sroa.010.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i31.i ; 3 uses
  %.sroa.014.1.idx.i33.i = select i1 %i.fj, i64 0, i64 8
  %.sroa.014.1.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i33.i ; 3 uses
  store ptr %.val1.i.sink.i30.i, ptr %.020.i23.i, align 8, !tbaa !177
  %i.fk = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.fl = icmp ne ptr %.sroa.014.1.i34.i, %i.fe
  %i.fm = icmp ne ptr %.sroa.010.1.i32.i, %1
  %or.cond.i35.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i35.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !652

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i26
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.fe, %._crit_edge.i26 ], [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.044.0.lcssa.i, %._crit_edge.i26 ], [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i26 ], [ %i.fk, %.lr.ph.i22.i ] ; 3 uses
  %i.fn = ptrtoint ptr %i.fe to i64
  %i.fo = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 4 uses
  %i.fq = icmp sgt i64 %i.fp, 8
  br i1 %i.fq, label %bb.aq, label %bb.ar, !prof !145

bb.aq:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.fp, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ar:                                            ; preds = %.critedge.i17.i
  %i.fr = icmp eq i64 %i.fp, 8
  br i1 %i.fr, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.as:                                            ; preds = %bb.ar
  %i.fs = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !177
  store ptr %i.fs, ptr %.0.lcssa.i20.i, align 8, !tbaa !177
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ft = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.fp ; 2 uses
  %i.fu = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.fv = sub i64 %i.a, %i.fu                     ; 3 uses
  %i.fw = icmp sgt i64 %i.fv, 8
  br i1 %i.fw, label %bb.at, label %bb.au, !prof !145

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ft, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.fv, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.fx = icmp eq i64 %i.fv, 8
  br i1 %i.fx, label %bb.av, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.av:                                            ; preds = %bb.au
  %i.fy = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !177
  store ptr %i.fy, ptr %i.ft, align 8, !tbaa !177
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %bb.at, %bb.au, %bb.av
  %i.fz = shl nsw i64 %.069, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.fz
  br i1 %.not54.i, label %._crit_edge.i32, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.idx.i28 = shl i64 %.069, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i28, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i29

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i27
  %i.ga = icmp sgt i64 %.069, 0
  %i.gb = icmp sgt i64 %.idx.i28, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.ge, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.gc, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i28 ; 4 uses
  br i1 %i.ga, label %bb.aw, label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !145

bb.aw:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i28, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.aw
  %i.gd = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i28 ; 2 uses
  br i1 %i.gb, label %bb.ax, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", !prof !323

bb.ax:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr nonnull align 8 %i.gc, i64 %.idx.i28, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.ax
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %.idx.i28 ; 2 uses
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.dl, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.gh, %i.fz
  br i1 %.not.us.i35, label %._crit_edge.i32, label %._crit_edge.i.us.i, !llvm.loop !653

.lr.ph.i.preheader.i29:                           ; preds = %.lr.ph.i27, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.he, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i27 ]
  %.055.i = phi ptr [ %i.gj, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i27 ] ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i28 ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30, %.lr.ph.i.preheader.i29
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i30 ], [ %.055.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i30 ], [ %i.gi, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.gn, %.lr.ph.i.i30 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !177 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !177 ; 2 uses
  %i.gk = getelementptr i8, ptr %.016.val.i.i, i64 12
  %.016.val.val.i.i = load i32, ptr %i.gk, align 4, !tbaa !244
  %i.gl = getelementptr i8, ptr %.0.val.i.i, i64 12
  %.0.val.val.i.i = load i32, ptr %i.gl, align 4, !tbaa !244
  %i.gm = icmp ugt i32 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gm, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gm, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gm, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !177
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.go = icmp ne ptr %.1.i.i, %i.gi
  %i.gp = icmp ne ptr %.117.i.i, %i.gj
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %.lr.ph.i.i30, label %._crit_edge.i.loopexit.i, !llvm.loop !654

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i30
  %i.gr = ptrtoint ptr %i.gi to i64
  %i.gs = ptrtoint ptr %.1.i.i to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 4 uses
  %i.gu = icmp sgt i64 %i.gt, 8
  br i1 %i.gu, label %bb.ay, label %bb.az, !prof !145

bb.ay:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %.1.i.i, i64 %i.gt, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gv = icmp eq i64 %i.gt, 8
  br i1 %i.gv, label %bb.ba, label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gw = load ptr, ptr %.1.i.i, align 8, !tbaa !177
  store ptr %i.gw, ptr %i.gn, align 8, !tbaa !177
  br label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.gx = getelementptr inbounds i8, ptr %i.gn, i64 %i.gt ; 3 uses
  %i.gy = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gz = ptrtoint ptr %.117.i.i to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 4 uses
  %i.hb = icmp sgt i64 %i.ha, 8
  br i1 %i.hb, label %bb.bb, label %bb.bc, !prof !145

bb.bb:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr nonnull align 8 %.117.i.i, i64 %i.ha, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bc:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.hc = icmp eq i64 %i.ha, 8
  br i1 %i.hc, label %bb.bd, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load ptr, ptr %.117.i.i, align 8, !tbaa !177
  store ptr %i.hd, ptr %i.gx, align 8, !tbaa !177
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.he = getelementptr inbounds i8, ptr %i.gx, i64 %i.ha ; 2 uses
  %i.hf = sub i64 %i.dl, %i.gy
  %i.hg = ashr exact i64 %i.hf, 3                 ; 2 uses
  %.not.i31 = icmp slt i64 %i.hg, %i.fz
  br i1 %.not.i31, label %._crit_edge.i32, label %.lr.ph.i.preheader.i29, !llvm.loop !653

._crit_edge.i32:                                  ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i33 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gc, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.gj, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.ge, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.he, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gh, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hg, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i34 = tail call i64 @llvm.smin.i64(i64 %i.dm, i64 %.lcssa52.i) ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_":bb.a
  store ptr %.val.i.i.3.i, ptr %.sink.i.3.i, align 8, !tbaa !209
  %.sroa.0.020.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 40 ; 7 uses
  %.val.i.i.4.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !209 ; 2 uses
  %.val1.i.i.4.i = load ptr, ptr %.sroa.034.037.i, align 8, !tbaa !209 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val.i.i.4.i, i64 20
  %.val.val.i.i.4.i = load i32, ptr %i.bl, align 4, !tbaa !285 ; 3 uses
  %i.bm = getelementptr i8, ptr %.val1.i.i.4.i, i64 20
  %.val1.val.i.i.4.i = load i32, ptr %i.bm, align 4, !tbaa !285
  %i.bn = icmp ugt i32 %.val.val.i.i.4.i, %.val1.val.i.i.4.i
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %.val2.i7.i.i.4.i = load ptr, ptr %.sroa.0.020.i.ptr.3.i, align 8, !tbaa !209 ; 2 uses
  %i.bo = getelementptr i8, ptr %.val2.i7.i.i.4.i, i64 20
  %.val2.val.i8.i.i.4.i = load i32, ptr %i.bo, align 4, !tbaa !285
  %i.bp = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i8.i.i.4.i
  br i1 %i.bp, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.u, %.lr.ph.i.i.4.i
  %.val2.i11.i.i.4.i = phi ptr [ %.val2.i.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.val2.i7.i.i.4.i, %bb.u ]
  %.sroa.0.010.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.020.i.ptr.3.i, %bb.u ] ; 3 uses
  %.sroa.03.09.i.i.4.i = phi ptr [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.u ]
  store ptr %.val2.i11.i.i.4.i, ptr %.sroa.03.09.i.i.4.i, align 8, !tbaa !209
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.4.i, i64 -8 ; 2 uses
  %.val2.i.i.i.4.i = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !209 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val2.i.i.i.4.i, i64 20
  %.val2.val.i.i.i.4.i = load i32, ptr %i.bq, align 4, !tbaa !285
  %i.br = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i.i.i.4.i
  br i1 %i.br, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, !llvm.loop !10

bb.v:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.bs = ptrtoint ptr %.sroa.0.020.i.ptr.4.i to i64
  %i.bt = sub i64 %i.bs, %i.g                     ; 3 uses
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1
  br i1 %i.bv, label %bb.y, label %bb.w, !prof !145

bb.w:                                             ; preds = %bb.v
  %i.bw = icmp eq i64 %i.bt, 8
  br i1 %i.bw, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.x:                                             ; preds = %bb.w
  store ptr %.val1.i.i.4.i, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !209
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.y:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 48
  %i.by = sub nsw i64 0, %i.bu
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.037.i, i64 %i.bt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.y, %bb.x, %bb.w, %bb.u
  %.sink.i.4.i = phi ptr [ %.sroa.034.037.i, %bb.x ], [ %.sroa.034.037.i, %bb.y ], [ %.sroa.034.037.i, %bb.w ], [ %.sroa.0.020.i.ptr.4.i, %bb.u ], [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %.val.i.i.4.i, ptr %.sink.i.4.i, align 8, !tbaa !209
  %.sroa.0.020.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 48 ; 5 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !209 ; 2 uses
  %.val1.i.i.5.i = load ptr, ptr %.sroa.034.037.i, align 8, !tbaa !209 ; 2 uses
  %i.ca = getelementptr i8, ptr %.val.i.i.5.i, i64 20
  %.val.val.i.i.5.i = load i32, ptr %i.ca, align 4, !tbaa !285 ; 3 uses
  %i.cb = getelementptr i8, ptr %.val1.i.i.5.i, i64 20
  %.val1.val.i.i.5.i = load i32, ptr %i.cb, align 4, !tbaa !285
  %i.cc = icmp ugt i32 %.val.val.i.i.5.i, %.val1.val.i.i.5.i
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %.val2.i7.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !209 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val2.i7.i.i.5.i, i64 20
  %.val2.val.i8.i.i.5.i = load i32, ptr %i.cd, align 4, !tbaa !285
  %i.ce = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i8.i.i.5.i
  br i1 %i.ce, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.z, %.lr.ph.i.i.5.i
  %.val2.i11.i.i.5.i = phi ptr [ %.val2.i.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.val2.i7.i.i.5.i, %bb.z ]
  %.sroa.0.010.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.z ] ; 3 uses
  %.sroa.03.09.i.i.5.i = phi ptr [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.5.i, %bb.z ]
  store ptr %.val2.i11.i.i.5.i, ptr %.sroa.03.09.i.i.5.i, align 8, !tbaa !209
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.5.i, i64 -8 ; 2 uses
  %.val2.i.i.i.5.i = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !209 ; 2 uses
  %i.cf = getelementptr i8, ptr %.val2.i.i.i.5.i, i64 20
  %.val2.val.i.i.i.5.i = load i32, ptr %i.cf, align 4, !tbaa !285
  %i.cg = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i.i.i.5.i
  br i1 %i.cg, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, !llvm.loop !10

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.ch = ptrtoint ptr %.sroa.0.020.i.ptr.5.i to i64
  %i.ci = sub i64 %i.ch, %i.g                     ; 3 uses
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 1
  br i1 %i.ck, label %bb.ad, label %bb.ab, !prof !145

bb.ab:                                            ; preds = %bb.aa
  %i.cl = icmp eq i64 %i.ci, 8
  br i1 %i.cl, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %.val1.i.i.5.i, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !209
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ad:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 56
  %i.cn = sub nsw i64 0, %i.cj
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.037.i, i64 %i.ci, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sink.i.5.i = phi ptr [ %.sroa.034.037.i, %bb.ac ], [ %.sroa.034.037.i, %bb.ad ], [ %.sroa.034.037.i, %bb.ab ], [ %.sroa.0.020.i.ptr.5.i, %bb.z ], [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %.val.i.i.5.i, ptr %.sink.i.5.i, align 8, !tbaa !209
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 56 ; 3 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cr = sub i64 %i.a, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 48
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !682

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, %bb.a
  %.sroa.034.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.cp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ] ; 8 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ]
  %i.ct = icmp eq ptr %.sroa.034.0.lcssa.i, %1
  %.sroa.0.017.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i, i64 8 ; 2 uses
  %.not18.i12.i = icmp eq ptr %.sroa.0.017.i11.i, %1
  %or.cond.i = select i1 %i.ct, i1 true, i1 %.not18.i12.i
  br i1 %or.cond.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i
  %.sroa.0.020.i14.i = phi ptr [ %.sroa.0.0.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i ], [ %.sroa.0.017.i11.i, %._crit_edge.i ] ; 6 uses
  %.pn19.i15.i = phi ptr [ %.sroa.0.020.i14.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i ], [ %.sroa.034.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.val.i.i16.i = load ptr, ptr %.sroa.0.020.i14.i, align 8, !tbaa !209 ; 2 uses
  %.val1.i.i17.i = load ptr, ptr %.sroa.034.0.lcssa.i, align 8, !tbaa !209 ; 2 uses
  %i.cu = getelementptr i8, ptr %.val.i.i16.i, i64 20
  %.val.val.i.i18.i = load i32, ptr %i.cu, align 4, !tbaa !285 ; 3 uses
  %i.cv = getelementptr i8, ptr %.val1.i.i17.i, i64 20
  %.val1.val.i.i19.i = load i32, ptr %i.cv, align 4, !tbaa !285
  %i.cw = icmp ugt i32 %.val.val.i.i18.i, %.val1.val.i.i19.i
  br i1 %i.cw, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph.i13.i
  %i.cx = ptrtoint ptr %.sroa.0.020.i14.i to i64
  %i.cy = sub i64 %i.cx, %.lcssa.i                ; 3 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 1
  br i1 %i.da, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %.pn19.i15.i, i64 16
  %i.dc = sub nsw i64 0, %i.cz
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.0.lcssa.i, i64 %i.cy, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ag:                                            ; preds = %bb.ae
  %i.de = icmp eq i64 %i.cy, 8
  br i1 %i.de, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %.pn19.i15.i, i64 8
  store ptr %.val1.i.i17.i, ptr %i.df, align 8, !tbaa !209
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ai:                                            ; preds = %.lr.ph.i13.i
  %.val2.i7.i.i20.i = load ptr, ptr %.pn19.i15.i, align 8, !tbaa !209 ; 2 uses
  %i.dg = getelementptr i8, ptr %.val2.i7.i.i20.i, i64 20
  %.val2.val.i8.i.i21.i = load i32, ptr %i.dg, align 4, !tbaa !285
  %i.dh = icmp ugt i32 %.val.val.i.i18.i, %.val2.val.i8.i.i21.i
  br i1 %i.dh, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.ai, %.lr.ph.i.i26.i
  %.val2.i11.i.i27.i = phi ptr [ %.val2.i.i.i31.i, %.lr.ph.i.i26.i ], [ %.val2.i7.i.i20.i, %bb.ai ]
  %.sroa.0.010.i.i28.i = phi ptr [ %.sroa.0.0.i.i30.i, %.lr.ph.i.i26.i ], [ %.pn19.i15.i, %bb.ai ] ; 3 uses
  %.sroa.03.09.i.i29.i = phi ptr [ %.sroa.0.010.i.i28.i, %.lr.ph.i.i26.i ], [ %.sroa.0.020.i14.i, %bb.ai ]
  store ptr %.val2.i11.i.i27.i, ptr %.sroa.03.09.i.i29.i, align 8, !tbaa !209
  %.sroa.0.0.i.i30.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i28.i, i64 -8 ; 2 uses
  %.val2.i.i.i31.i = load ptr, ptr %.sroa.0.0.i.i30.i, align 8, !tbaa !209 ; 2 uses
  %i.di = getelementptr i8, ptr %.val2.i.i.i31.i, i64 20
  %.val2.val.i.i.i32.i = load i32, ptr %i.di, align 4, !tbaa !285
  %i.dj = icmp ugt i32 %.val.val.i.i18.i, %.val2.val.i.i.i32.i
  br i1 %i.dj, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i, !llvm.loop !10

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i23.i = phi ptr [ %.sroa.034.0.lcssa.i, %bb.ah ], [ %.sroa.034.0.lcssa.i, %bb.af ], [ %.sroa.034.0.lcssa.i, %bb.ag ], [ %.sroa.0.020.i14.i, %bb.ai ], [ %.sroa.0.010.i.i28.i, %.lr.ph.i.i26.i ]
  store ptr %.val.i.i16.i, ptr %.sink.i23.i, align 8, !tbaa !209
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i14.i, i64 8 ; 2 uses
  %.not.i25.i = icmp eq ptr %.sroa.0.0.i24.i, %1
  br i1 %.not.i25.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i, !llvm.loop !11

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i, %._crit_edge.i
  %i.dk = icmp sgt i64 %i.d, 7
  br i1 %i.dk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit"
  %i.dl = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.fz, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ] ; 8 uses
  %i.dm = shl nsw i64 %.069, 1                    ; 6 uses
  %.not58.i = icmp slt i64 %i.d, %i.dm
  br i1 %.not58.i, label %._crit_edge.i26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %.idx.i = shl i64 %.069, 3                      ; 10 uses
  %.idx52.i = shl i64 %.069, 4                    ; 2 uses
  %.not53.i = icmp eq i64 %.idx.i, %.idx52.i
  br i1 %.not53.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dn = icmp sgt i64 %.idx.i, 8
  br i1 %i.dn, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !145

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.060.us.i.us = phi ptr [ %i.dp, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.044.059.us.i.us = phi ptr [ %i.do, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.060.us.i.us, ptr align 8 %.sroa.044.059.us.i.us, i64 %.idx.i, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.060.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.do, i64 %.idx.i, i1 false)
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.a, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.ds, %i.dm
  br i1 %.not.us.i.us, label %._crit_edge.i26, label %.critedge.i.us.i.us, !llvm.loop !683

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.dt = icmp eq i64 %.idx.i, 8
  br i1 %i.dt, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !209
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.du = phi ptr [ %i.dx, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.060.us.i.us59 = phi ptr [ %i.dw, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 2 uses
  %.sroa.044.059.us.i.us60 = phi ptr [ %i.dv, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us60, i64 8 ; 4 uses
  store ptr %i.du, ptr %.060.us.i.us59, align 8, !tbaa !209
  %i.dw = getelementptr inbounds nuw i8, ptr %.060.us.i.us59, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !209 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !209
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.a, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.ea, %i.dm
  br i1 %.not.us.i.us62, label %._crit_edge.i26, label %.critedge.i.us.i.us58, !llvm.loop !683

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.060.us.i = phi ptr [ %i.ec, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.044.059.us.i = phi ptr [ %i.eb, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.eb = getelementptr inbounds i8, ptr %.sroa.044.059.us.i, i64 %.idx.i ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.060.us.i, i64 %.idx.i ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.a, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ef, %i.dm
  br i1 %.not.us.i, label %._crit_edge.i26, label %.critedge.i.us.i, !llvm.loop !683

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.060.i = phi ptr [ %i.fb, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.044.059.i = phi ptr [ %i.eh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx.i ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx52.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.el, %.lr.ph.i.i21 ], [ %.060.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.044.059.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.eg, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val.i.i.i22 = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !209 ; 2 uses
  %.val1.i.i.i23 = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !209 ; 2 uses
  %i.ei = getelementptr i8, ptr %.val.i.i.i22, i64 20
  %.val.val.i.i.i24 = load i32, ptr %i.ei, align 4, !tbaa !285
  %i.ej = getelementptr i8, ptr %.val1.i.i.i23, i64 20
  %.val1.val.i.i.i25 = load i32, ptr %i.ej, align 4, !tbaa !285
  %i.ek = icmp ugt i32 %.val.val.i.i.i24, %.val1.val.i.i.i25 ; 3 uses
  %.val1.i.sink.i.i = select i1 %i.ek, ptr %.val.i.i.i22, ptr %.val1.i.i.i23
  %.sroa.010.1.idx.i.i = select i1 %i.ek, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.ek, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.val1.i.sink.i.i, ptr %.020.i.i, align 8, !tbaa !209
  %i.el = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.em = icmp ne ptr %.sroa.014.1.i.i, %i.eg
  %i.en = icmp ne ptr %.sroa.010.1.i.i, %i.eh
  %or.cond.i.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !684

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.eo = ptrtoint ptr %i.eg to i64
  %i.ep = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 4 uses
  %i.er = icmp sgt i64 %i.eq, 8
  br i1 %i.er, label %bb.ak, label %bb.al, !prof !145

bb.ak:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.eq, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  %i.es = icmp eq i64 %i.eq, 8
  br i1 %i.es, label %bb.am, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !209
  store ptr %i.et, ptr %i.el, align 8, !tbaa !209
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.eu = getelementptr inbounds i8, ptr %i.el, i64 %i.eq ; 3 uses
  %i.ev = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ew = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 8
  br i1 %i.ey, label %bb.an, label %bb.ao, !prof !145

bb.an:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ex, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.ez = icmp eq i64 %i.ex, 8
  br i1 %i.ez, label %bb.ap, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !209
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !209
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.ap, %bb.ao, %bb.an
  %i.fb = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex ; 2 uses
  %i.fc = sub i64 %i.a, %i.ev
  %i.fd = ashr exact i64 %i.fc, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fd, %i.dm
  br i1 %.not.i, label %._crit_edge.i26, label %.lr.ph.i.preheader.i, !llvm.loop !683

._crit_edge.i26:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.aj
  %.sroa.044.0.lcssa.i = phi ptr [ %0, %bb.aj ], [ %i.do, %.critedge.i.us.i.us ], [ %i.dv, %.critedge.i.us.i.us58 ], [ %i.eb, %.critedge.i.us.i ], [ %i.eh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.aj ], [ %i.dp, %.critedge.i.us.i.us ], [ %i.dw, %.critedge.i.us.i.us58 ], [ %i.ec, %.critedge.i.us.i ], [ %i.fb, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa56.i = phi i64 [ %i.d, %bb.aj ], [ %i.ds, %.critedge.i.us.i.us ], [ %i.ea, %.critedge.i.us.i.us58 ], [ %i.ef, %.critedge.i.us.i ], [ %i.fd, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa56.i) ; 2 uses
  %.idx54.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fe = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i, i64 %.idx54.i ; 5 uses
  %i.ff = icmp ne i64 %.sroa.speculated.i, 0
  %i.fg = icmp ne ptr %i.fe, %1
  %or.cond17.i16.i = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i26, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.fk, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ], [ %.sroa.044.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ], [ %i.fe, %._crit_edge.i26 ] ; 2 uses
  %.val.i.i26.i = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !209 ; 2 uses
  %.val1.i.i27.i = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !209 ; 2 uses
  %i.fh = getelementptr i8, ptr %.val.i.i26.i, i64 20
  %.val.val.i.i28.i = load i32, ptr %i.fh, align 4, !tbaa !285
  %i.fi = getelementptr i8, ptr %.val1.i.i27.i, i64 20
  %.val1.val.i.i29.i = load i32, ptr %i.fi, align 4, !tbaa !285
  %i.fj = icmp ugt i32 %.val.val.i.i28.i, %.val1.val.i.i29.i ; 3 uses
  %.val1.i.sink.i30.i = select i1 %i.fj, ptr %.val.i.i26.i, ptr %.val1.i.i27.i
  %.sroa.010.1.idx.i31.i = select i1 %i.fj, i64 8, i64 0
  %.sroa.010.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i31.i ; 3 uses
  %.sroa.014.1.idx.i33.i = select i1 %i.fj, i64 0, i64 8
  %.sroa.014.1.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i33.i ; 3 uses
  store ptr %.val1.i.sink.i30.i, ptr %.020.i23.i, align 8, !tbaa !209
  %i.fk = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.fl = icmp ne ptr %.sroa.014.1.i34.i, %i.fe
  %i.fm = icmp ne ptr %.sroa.010.1.i32.i, %1
  %or.cond.i35.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i35.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !684

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i26
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.fe, %._crit_edge.i26 ], [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.044.0.lcssa.i, %._crit_edge.i26 ], [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i26 ], [ %i.fk, %.lr.ph.i22.i ] ; 3 uses
  %i.fn = ptrtoint ptr %i.fe to i64
  %i.fo = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 4 uses
  %i.fq = icmp sgt i64 %i.fp, 8
  br i1 %i.fq, label %bb.aq, label %bb.ar, !prof !145

bb.aq:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.fp, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ar:                                            ; preds = %.critedge.i17.i
  %i.fr = icmp eq i64 %i.fp, 8
  br i1 %i.fr, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.as:                                            ; preds = %bb.ar
  %i.fs = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !209
  store ptr %i.fs, ptr %.0.lcssa.i20.i, align 8, !tbaa !209
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ft = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.fp ; 2 uses
  %i.fu = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.fv = sub i64 %i.a, %i.fu                     ; 3 uses
  %i.fw = icmp sgt i64 %i.fv, 8
  br i1 %i.fw, label %bb.at, label %bb.au, !prof !145

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ft, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.fv, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.fx = icmp eq i64 %i.fv, 8
  br i1 %i.fx, label %bb.av, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.av:                                            ; preds = %bb.au
  %i.fy = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !209
  store ptr %i.fy, ptr %i.ft, align 8, !tbaa !209
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %bb.at, %bb.au, %bb.av
  %i.fz = shl nsw i64 %.069, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.fz
  br i1 %.not54.i, label %._crit_edge.i32, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.idx.i28 = shl i64 %.069, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i28, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i29

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i27
  %i.ga = icmp sgt i64 %.069, 0
  %i.gb = icmp sgt i64 %.idx.i28, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.ge, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.gc, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i28 ; 4 uses
  br i1 %i.ga, label %bb.aw, label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !145

bb.aw:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i28, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.aw
  %i.gd = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i28 ; 2 uses
  br i1 %i.gb, label %bb.ax, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", !prof !323

bb.ax:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr nonnull align 8 %i.gc, i64 %.idx.i28, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.ax
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %.idx.i28 ; 2 uses
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.dl, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.gh, %i.fz
  br i1 %.not.us.i35, label %._crit_edge.i32, label %._crit_edge.i.us.i, !llvm.loop !685

.lr.ph.i.preheader.i29:                           ; preds = %.lr.ph.i27, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.he, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i27 ]
  %.055.i = phi ptr [ %i.gj, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i27 ] ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i28 ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30, %.lr.ph.i.preheader.i29
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i30 ], [ %.055.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i30 ], [ %i.gi, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.gn, %.lr.ph.i.i30 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !209 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !209 ; 2 uses
  %i.gk = getelementptr i8, ptr %.016.val.i.i, i64 20
  %.016.val.val.i.i = load i32, ptr %i.gk, align 4, !tbaa !285
  %i.gl = getelementptr i8, ptr %.0.val.i.i, i64 20
  %.0.val.val.i.i = load i32, ptr %i.gl, align 4, !tbaa !285
  %i.gm = icmp ugt i32 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gm, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gm, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gm, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !209
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.go = icmp ne ptr %.1.i.i, %i.gi
  %i.gp = icmp ne ptr %.117.i.i, %i.gj
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %.lr.ph.i.i30, label %._crit_edge.i.loopexit.i, !llvm.loop !686

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i30
  %i.gr = ptrtoint ptr %i.gi to i64
  %i.gs = ptrtoint ptr %.1.i.i to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 4 uses
  %i.gu = icmp sgt i64 %i.gt, 8
  br i1 %i.gu, label %bb.ay, label %bb.az, !prof !145

bb.ay:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %.1.i.i, i64 %i.gt, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gv = icmp eq i64 %i.gt, 8
  br i1 %i.gv, label %bb.ba, label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gw = load ptr, ptr %.1.i.i, align 8, !tbaa !209
  store ptr %i.gw, ptr %i.gn, align 8, !tbaa !209
  br label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.gx = getelementptr inbounds i8, ptr %i.gn, i64 %i.gt ; 3 uses
  %i.gy = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gz = ptrtoint ptr %.117.i.i to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 4 uses
  %i.hb = icmp sgt i64 %i.ha, 8
  br i1 %i.hb, label %bb.bb, label %bb.bc, !prof !145

bb.bb:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr nonnull align 8 %.117.i.i, i64 %i.ha, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bc:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.hc = icmp eq i64 %i.ha, 8
  br i1 %i.hc, label %bb.bd, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load ptr, ptr %.117.i.i, align 8, !tbaa !209
  store ptr %i.hd, ptr %i.gx, align 8, !tbaa !209
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.he = getelementptr inbounds i8, ptr %i.gx, i64 %i.ha ; 2 uses
  %i.hf = sub i64 %i.dl, %i.gy
  %i.hg = ashr exact i64 %i.hf, 3                 ; 2 uses
  %.not.i31 = icmp slt i64 %i.hg, %i.fz
  br i1 %.not.i31, label %._crit_edge.i32, label %.lr.ph.i.preheader.i29, !llvm.loop !685

._crit_edge.i32:                                  ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i33 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gc, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.gj, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.ge, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.he, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gh, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hg, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i34 = tail call i64 @llvm.smin.i64(i64 %i.dm, i64 %.lcssa52.i) ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_":bb.a
  store ptr %.val.i.i.3.i, ptr %.sink.i.3.i, align 8, !tbaa !216
  %.sroa.0.020.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 40 ; 7 uses
  %.val.i.i.4.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !216 ; 2 uses
  %.val1.i.i.4.i = load ptr, ptr %.sroa.034.037.i, align 8, !tbaa !216 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val.i.i.4.i, i64 12
  %.val.val.i.i.4.i = load i32, ptr %i.bl, align 4, !tbaa !244 ; 3 uses
  %i.bm = getelementptr i8, ptr %.val1.i.i.4.i, i64 12
  %.val1.val.i.i.4.i = load i32, ptr %i.bm, align 4, !tbaa !244
  %i.bn = icmp ugt i32 %.val.val.i.i.4.i, %.val1.val.i.i.4.i
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %.val2.i7.i.i.4.i = load ptr, ptr %.sroa.0.020.i.ptr.3.i, align 8, !tbaa !216 ; 2 uses
  %i.bo = getelementptr i8, ptr %.val2.i7.i.i.4.i, i64 12
  %.val2.val.i8.i.i.4.i = load i32, ptr %i.bo, align 4, !tbaa !244
  %i.bp = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i8.i.i.4.i
  br i1 %i.bp, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.u, %.lr.ph.i.i.4.i
  %.val2.i11.i.i.4.i = phi ptr [ %.val2.i.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.val2.i7.i.i.4.i, %bb.u ]
  %.sroa.0.010.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.020.i.ptr.3.i, %bb.u ] ; 3 uses
  %.sroa.03.09.i.i.4.i = phi ptr [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.u ]
  store ptr %.val2.i11.i.i.4.i, ptr %.sroa.03.09.i.i.4.i, align 8, !tbaa !216
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.4.i, i64 -8 ; 2 uses
  %.val2.i.i.i.4.i = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !216 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val2.i.i.i.4.i, i64 12
  %.val2.val.i.i.i.4.i = load i32, ptr %i.bq, align 4, !tbaa !244
  %i.br = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i.i.i.4.i
  br i1 %i.br, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, !llvm.loop !14

bb.v:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.bs = ptrtoint ptr %.sroa.0.020.i.ptr.4.i to i64
  %i.bt = sub i64 %i.bs, %i.g                     ; 3 uses
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1
  br i1 %i.bv, label %bb.y, label %bb.w, !prof !145

bb.w:                                             ; preds = %bb.v
  %i.bw = icmp eq i64 %i.bt, 8
  br i1 %i.bw, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.x:                                             ; preds = %bb.w
  store ptr %.val1.i.i.4.i, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !216
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.y:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 48
  %i.by = sub nsw i64 0, %i.bu
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.037.i, i64 %i.bt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.y, %bb.x, %bb.w, %bb.u
  %.sink.i.4.i = phi ptr [ %.sroa.034.037.i, %bb.x ], [ %.sroa.034.037.i, %bb.y ], [ %.sroa.034.037.i, %bb.w ], [ %.sroa.0.020.i.ptr.4.i, %bb.u ], [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %.val.i.i.4.i, ptr %.sink.i.4.i, align 8, !tbaa !216
  %.sroa.0.020.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 48 ; 5 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !216 ; 2 uses
  %.val1.i.i.5.i = load ptr, ptr %.sroa.034.037.i, align 8, !tbaa !216 ; 2 uses
  %i.ca = getelementptr i8, ptr %.val.i.i.5.i, i64 12
  %.val.val.i.i.5.i = load i32, ptr %i.ca, align 4, !tbaa !244 ; 3 uses
  %i.cb = getelementptr i8, ptr %.val1.i.i.5.i, i64 12
  %.val1.val.i.i.5.i = load i32, ptr %i.cb, align 4, !tbaa !244
  %i.cc = icmp ugt i32 %.val.val.i.i.5.i, %.val1.val.i.i.5.i
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %.val2.i7.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !216 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val2.i7.i.i.5.i, i64 12
  %.val2.val.i8.i.i.5.i = load i32, ptr %i.cd, align 4, !tbaa !244
  %i.ce = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i8.i.i.5.i
  br i1 %i.ce, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.z, %.lr.ph.i.i.5.i
  %.val2.i11.i.i.5.i = phi ptr [ %.val2.i.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.val2.i7.i.i.5.i, %bb.z ]
  %.sroa.0.010.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.z ] ; 3 uses
  %.sroa.03.09.i.i.5.i = phi ptr [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.5.i, %bb.z ]
  store ptr %.val2.i11.i.i.5.i, ptr %.sroa.03.09.i.i.5.i, align 8, !tbaa !216
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.5.i, i64 -8 ; 2 uses
  %.val2.i.i.i.5.i = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !216 ; 2 uses
  %i.cf = getelementptr i8, ptr %.val2.i.i.i.5.i, i64 12
  %.val2.val.i.i.i.5.i = load i32, ptr %i.cf, align 4, !tbaa !244
  %i.cg = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i.i.i.5.i
  br i1 %i.cg, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, !llvm.loop !14

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.ch = ptrtoint ptr %.sroa.0.020.i.ptr.5.i to i64
  %i.ci = sub i64 %i.ch, %i.g                     ; 3 uses
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 1
  br i1 %i.ck, label %bb.ad, label %bb.ab, !prof !145

bb.ab:                                            ; preds = %bb.aa
  %i.cl = icmp eq i64 %i.ci, 8
  br i1 %i.cl, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %.val1.i.i.5.i, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !216
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ad:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 56
  %i.cn = sub nsw i64 0, %i.cj
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.037.i, i64 %i.ci, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sink.i.5.i = phi ptr [ %.sroa.034.037.i, %bb.ac ], [ %.sroa.034.037.i, %bb.ad ], [ %.sroa.034.037.i, %bb.ab ], [ %.sroa.0.020.i.ptr.5.i, %bb.z ], [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %.val.i.i.5.i, ptr %.sink.i.5.i, align 8, !tbaa !216
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.034.037.i, i64 56 ; 3 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cr = sub i64 %i.a, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 48
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !714

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, %bb.a
  %.sroa.034.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.cp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ] ; 8 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ]
  %i.ct = icmp eq ptr %.sroa.034.0.lcssa.i, %1
  %.sroa.0.017.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i, i64 8 ; 2 uses
  %.not18.i12.i = icmp eq ptr %.sroa.0.017.i11.i, %1
  %or.cond.i = select i1 %i.ct, i1 true, i1 %.not18.i12.i
  br i1 %or.cond.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i
  %.sroa.0.020.i14.i = phi ptr [ %.sroa.0.0.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i ], [ %.sroa.0.017.i11.i, %._crit_edge.i ] ; 6 uses
  %.pn19.i15.i = phi ptr [ %.sroa.0.020.i14.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i ], [ %.sroa.034.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.val.i.i16.i = load ptr, ptr %.sroa.0.020.i14.i, align 8, !tbaa !216 ; 2 uses
  %.val1.i.i17.i = load ptr, ptr %.sroa.034.0.lcssa.i, align 8, !tbaa !216 ; 2 uses
  %i.cu = getelementptr i8, ptr %.val.i.i16.i, i64 12
  %.val.val.i.i18.i = load i32, ptr %i.cu, align 4, !tbaa !244 ; 3 uses
  %i.cv = getelementptr i8, ptr %.val1.i.i17.i, i64 12
  %.val1.val.i.i19.i = load i32, ptr %i.cv, align 4, !tbaa !244
  %i.cw = icmp ugt i32 %.val.val.i.i18.i, %.val1.val.i.i19.i
  br i1 %i.cw, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph.i13.i
  %i.cx = ptrtoint ptr %.sroa.0.020.i14.i to i64
  %i.cy = sub i64 %i.cx, %.lcssa.i                ; 3 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 1
  br i1 %i.da, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %.pn19.i15.i, i64 16
  %i.dc = sub nsw i64 0, %i.cz
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.034.0.lcssa.i, i64 %i.cy, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ag:                                            ; preds = %bb.ae
  %i.de = icmp eq i64 %i.cy, 8
  br i1 %i.de, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %.pn19.i15.i, i64 8
  store ptr %.val1.i.i17.i, ptr %i.df, align 8, !tbaa !216
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

bb.ai:                                            ; preds = %.lr.ph.i13.i
  %.val2.i7.i.i20.i = load ptr, ptr %.pn19.i15.i, align 8, !tbaa !216 ; 2 uses
  %i.dg = getelementptr i8, ptr %.val2.i7.i.i20.i, i64 12
  %.val2.val.i8.i.i21.i = load i32, ptr %i.dg, align 4, !tbaa !244
  %i.dh = icmp ugt i32 %.val.val.i.i18.i, %.val2.val.i8.i.i21.i
  br i1 %i.dh, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.ai, %.lr.ph.i.i26.i
  %.val2.i11.i.i27.i = phi ptr [ %.val2.i.i.i31.i, %.lr.ph.i.i26.i ], [ %.val2.i7.i.i20.i, %bb.ai ]
  %.sroa.0.010.i.i28.i = phi ptr [ %.sroa.0.0.i.i30.i, %.lr.ph.i.i26.i ], [ %.pn19.i15.i, %bb.ai ] ; 3 uses
  %.sroa.03.09.i.i29.i = phi ptr [ %.sroa.0.010.i.i28.i, %.lr.ph.i.i26.i ], [ %.sroa.0.020.i14.i, %bb.ai ]
  store ptr %.val2.i11.i.i27.i, ptr %.sroa.03.09.i.i29.i, align 8, !tbaa !216
  %.sroa.0.0.i.i30.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i28.i, i64 -8 ; 2 uses
  %.val2.i.i.i31.i = load ptr, ptr %.sroa.0.0.i.i30.i, align 8, !tbaa !216 ; 2 uses
  %i.di = getelementptr i8, ptr %.val2.i.i.i31.i, i64 12
  %.val2.val.i.i.i32.i = load i32, ptr %i.di, align 4, !tbaa !244
  %i.dj = icmp ugt i32 %.val.val.i.i18.i, %.val2.val.i.i.i32.i
  br i1 %i.dj, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i, !llvm.loop !14

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i23.i = phi ptr [ %.sroa.034.0.lcssa.i, %bb.ah ], [ %.sroa.034.0.lcssa.i, %bb.af ], [ %.sroa.034.0.lcssa.i, %bb.ag ], [ %.sroa.0.020.i14.i, %bb.ai ], [ %.sroa.0.010.i.i28.i, %.lr.ph.i.i26.i ]
  store ptr %.val.i.i16.i, ptr %.sink.i23.i, align 8, !tbaa !216
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i14.i, i64 8 ; 2 uses
  %.not.i25.i = icmp eq ptr %.sroa.0.0.i24.i, %1
  br i1 %.not.i25.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i, !llvm.loop !15

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i22.i, %._crit_edge.i
  %i.dk = icmp sgt i64 %i.d, 7
  br i1 %i.dk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit"
  %i.dl = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.fz, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ] ; 8 uses
  %i.dm = shl nsw i64 %.069, 1                    ; 6 uses
  %.not58.i = icmp slt i64 %i.d, %i.dm
  br i1 %.not58.i, label %._crit_edge.i26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %.idx.i = shl i64 %.069, 3                      ; 10 uses
  %.idx52.i = shl i64 %.069, 4                    ; 2 uses
  %.not53.i = icmp eq i64 %.idx.i, %.idx52.i
  br i1 %.not53.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dn = icmp sgt i64 %.idx.i, 8
  br i1 %i.dn, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !145

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.060.us.i.us = phi ptr [ %i.dp, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.044.059.us.i.us = phi ptr [ %i.do, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.060.us.i.us, ptr align 8 %.sroa.044.059.us.i.us, i64 %.idx.i, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.060.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.do, i64 %.idx.i, i1 false)
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.a, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.ds, %i.dm
  br i1 %.not.us.i.us, label %._crit_edge.i26, label %.critedge.i.us.i.us, !llvm.loop !715

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.dt = icmp eq i64 %.idx.i, 8
  br i1 %i.dt, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !216
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.du = phi ptr [ %i.dx, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.060.us.i.us59 = phi ptr [ %i.dw, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 2 uses
  %.sroa.044.059.us.i.us60 = phi ptr [ %i.dv, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us60, i64 8 ; 4 uses
  store ptr %i.du, ptr %.060.us.i.us59, align 8, !tbaa !216
  %i.dw = getelementptr inbounds nuw i8, ptr %.060.us.i.us59, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !216 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !216
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.a, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.ea, %i.dm
  br i1 %.not.us.i.us62, label %._crit_edge.i26, label %.critedge.i.us.i.us58, !llvm.loop !715

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.060.us.i = phi ptr [ %i.ec, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.044.059.us.i = phi ptr [ %i.eb, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.eb = getelementptr inbounds i8, ptr %.sroa.044.059.us.i, i64 %.idx.i ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.060.us.i, i64 %.idx.i ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.a, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ef, %i.dm
  br i1 %.not.us.i, label %._crit_edge.i26, label %.critedge.i.us.i, !llvm.loop !715

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.060.i = phi ptr [ %i.fb, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.044.059.i = phi ptr [ %i.eh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx.i ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx52.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.el, %.lr.ph.i.i21 ], [ %.060.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.044.059.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.eg, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val.i.i.i22 = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !216 ; 2 uses
  %.val1.i.i.i23 = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !216 ; 2 uses
  %i.ei = getelementptr i8, ptr %.val.i.i.i22, i64 12
  %.val.val.i.i.i24 = load i32, ptr %i.ei, align 4, !tbaa !244
  %i.ej = getelementptr i8, ptr %.val1.i.i.i23, i64 12
  %.val1.val.i.i.i25 = load i32, ptr %i.ej, align 4, !tbaa !244
  %i.ek = icmp ugt i32 %.val.val.i.i.i24, %.val1.val.i.i.i25 ; 3 uses
  %.val1.i.sink.i.i = select i1 %i.ek, ptr %.val.i.i.i22, ptr %.val1.i.i.i23
  %.sroa.010.1.idx.i.i = select i1 %i.ek, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.ek, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.val1.i.sink.i.i, ptr %.020.i.i, align 8, !tbaa !216
  %i.el = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.em = icmp ne ptr %.sroa.014.1.i.i, %i.eg
  %i.en = icmp ne ptr %.sroa.010.1.i.i, %i.eh
  %or.cond.i.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !716

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.eo = ptrtoint ptr %i.eg to i64
  %i.ep = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 4 uses
  %i.er = icmp sgt i64 %i.eq, 8
  br i1 %i.er, label %bb.ak, label %bb.al, !prof !145

bb.ak:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.eq, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  %i.es = icmp eq i64 %i.eq, 8
  br i1 %i.es, label %bb.am, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !216
  store ptr %i.et, ptr %i.el, align 8, !tbaa !216
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.eu = getelementptr inbounds i8, ptr %i.el, i64 %i.eq ; 3 uses
  %i.ev = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ew = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 8
  br i1 %i.ey, label %bb.an, label %bb.ao, !prof !145

bb.an:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ex, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.ez = icmp eq i64 %i.ex, 8
  br i1 %i.ez, label %bb.ap, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !216
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !216
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.ap, %bb.ao, %bb.an
  %i.fb = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex ; 2 uses
  %i.fc = sub i64 %i.a, %i.ev
  %i.fd = ashr exact i64 %i.fc, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fd, %i.dm
  br i1 %.not.i, label %._crit_edge.i26, label %.lr.ph.i.preheader.i, !llvm.loop !715

._crit_edge.i26:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.aj
  %.sroa.044.0.lcssa.i = phi ptr [ %0, %bb.aj ], [ %i.do, %.critedge.i.us.i.us ], [ %i.dv, %.critedge.i.us.i.us58 ], [ %i.eb, %.critedge.i.us.i ], [ %i.eh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.aj ], [ %i.dp, %.critedge.i.us.i.us ], [ %i.dw, %.critedge.i.us.i.us58 ], [ %i.ec, %.critedge.i.us.i ], [ %i.fb, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa56.i = phi i64 [ %i.d, %bb.aj ], [ %i.ds, %.critedge.i.us.i.us ], [ %i.ea, %.critedge.i.us.i.us58 ], [ %i.ef, %.critedge.i.us.i ], [ %i.fd, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa56.i) ; 2 uses
  %.idx54.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fe = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i, i64 %.idx54.i ; 5 uses
  %i.ff = icmp ne i64 %.sroa.speculated.i, 0
  %i.fg = icmp ne ptr %i.fe, %1
  %or.cond17.i16.i = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i26, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.fk, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ], [ %.sroa.044.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ], [ %i.fe, %._crit_edge.i26 ] ; 2 uses
  %.val.i.i26.i = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !216 ; 2 uses
  %.val1.i.i27.i = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !216 ; 2 uses
  %i.fh = getelementptr i8, ptr %.val.i.i26.i, i64 12
  %.val.val.i.i28.i = load i32, ptr %i.fh, align 4, !tbaa !244
  %i.fi = getelementptr i8, ptr %.val1.i.i27.i, i64 12
  %.val1.val.i.i29.i = load i32, ptr %i.fi, align 4, !tbaa !244
  %i.fj = icmp ugt i32 %.val.val.i.i28.i, %.val1.val.i.i29.i ; 3 uses
  %.val1.i.sink.i30.i = select i1 %i.fj, ptr %.val.i.i26.i, ptr %.val1.i.i27.i
  %.sroa.010.1.idx.i31.i = select i1 %i.fj, i64 8, i64 0
  %.sroa.010.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i31.i ; 3 uses
  %.sroa.014.1.idx.i33.i = select i1 %i.fj, i64 0, i64 8
  %.sroa.014.1.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i33.i ; 3 uses
  store ptr %.val1.i.sink.i30.i, ptr %.020.i23.i, align 8, !tbaa !216
  %i.fk = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.fl = icmp ne ptr %.sroa.014.1.i34.i, %i.fe
  %i.fm = icmp ne ptr %.sroa.010.1.i32.i, %1
  %or.cond.i35.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i35.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !716

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i26
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.fe, %._crit_edge.i26 ], [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.044.0.lcssa.i, %._crit_edge.i26 ], [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i26 ], [ %i.fk, %.lr.ph.i22.i ] ; 3 uses
  %i.fn = ptrtoint ptr %i.fe to i64
  %i.fo = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 4 uses
  %i.fq = icmp sgt i64 %i.fp, 8
  br i1 %i.fq, label %bb.aq, label %bb.ar, !prof !145

bb.aq:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.fp, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ar:                                            ; preds = %.critedge.i17.i
  %i.fr = icmp eq i64 %i.fp, 8
  br i1 %i.fr, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.as:                                            ; preds = %bb.ar
  %i.fs = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !216
  store ptr %i.fs, ptr %.0.lcssa.i20.i, align 8, !tbaa !216
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ft = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.fp ; 2 uses
  %i.fu = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.fv = sub i64 %i.a, %i.fu                     ; 3 uses
  %i.fw = icmp sgt i64 %i.fv, 8
  br i1 %i.fw, label %bb.at, label %bb.au, !prof !145

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ft, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.fv, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.fx = icmp eq i64 %i.fv, 8
  br i1 %i.fx, label %bb.av, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.av:                                            ; preds = %bb.au
  %i.fy = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !216
  store ptr %i.fy, ptr %i.ft, align 8, !tbaa !216
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %bb.at, %bb.au, %bb.av
  %i.fz = shl nsw i64 %.069, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.fz
  br i1 %.not54.i, label %._crit_edge.i32, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.idx.i28 = shl i64 %.069, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i28, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i29

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i27
  %i.ga = icmp sgt i64 %.069, 0
  %i.gb = icmp sgt i64 %.idx.i28, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.ge, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.gc, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i28 ; 4 uses
  br i1 %i.ga, label %bb.aw, label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !145

bb.aw:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i28, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.aw
  %i.gd = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i28 ; 2 uses
  br i1 %i.gb, label %bb.ax, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", !prof !323

bb.ax:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr nonnull align 8 %i.gc, i64 %.idx.i28, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.ax
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %.idx.i28 ; 2 uses
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.dl, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.gh, %i.fz
  br i1 %.not.us.i35, label %._crit_edge.i32, label %._crit_edge.i.us.i, !llvm.loop !717

.lr.ph.i.preheader.i29:                           ; preds = %.lr.ph.i27, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.he, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i27 ]
  %.055.i = phi ptr [ %i.gj, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i27 ] ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i28 ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30, %.lr.ph.i.preheader.i29
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i30 ], [ %.055.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i30 ], [ %i.gi, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.gn, %.lr.ph.i.i30 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !216 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !216 ; 2 uses
  %i.gk = getelementptr i8, ptr %.016.val.i.i, i64 12
  %.016.val.val.i.i = load i32, ptr %i.gk, align 4, !tbaa !244
  %i.gl = getelementptr i8, ptr %.0.val.i.i, i64 12
  %.0.val.val.i.i = load i32, ptr %i.gl, align 4, !tbaa !244
  %i.gm = icmp ugt i32 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gm, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gm, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gm, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !216
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.go = icmp ne ptr %.1.i.i, %i.gi
  %i.gp = icmp ne ptr %.117.i.i, %i.gj
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %.lr.ph.i.i30, label %._crit_edge.i.loopexit.i, !llvm.loop !718

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i30
  %i.gr = ptrtoint ptr %i.gi to i64
  %i.gs = ptrtoint ptr %.1.i.i to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 4 uses
  %i.gu = icmp sgt i64 %i.gt, 8
  br i1 %i.gu, label %bb.ay, label %bb.az, !prof !145

bb.ay:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %.1.i.i, i64 %i.gt, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gv = icmp eq i64 %i.gt, 8
  br i1 %i.gv, label %bb.ba, label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gw = load ptr, ptr %.1.i.i, align 8, !tbaa !216
  store ptr %i.gw, ptr %i.gn, align 8, !tbaa !216
  br label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.gx = getelementptr inbounds i8, ptr %i.gn, i64 %i.gt ; 3 uses
  %i.gy = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gz = ptrtoint ptr %.117.i.i to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 4 uses
  %i.hb = icmp sgt i64 %i.ha, 8
  br i1 %i.hb, label %bb.bb, label %bb.bc, !prof !145

bb.bb:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr nonnull align 8 %.117.i.i, i64 %i.ha, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bc:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.hc = icmp eq i64 %i.ha, 8
  br i1 %i.hc, label %bb.bd, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load ptr, ptr %.117.i.i, align 8, !tbaa !216
  store ptr %i.hd, ptr %i.gx, align 8, !tbaa !216
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.he = getelementptr inbounds i8, ptr %i.gx, i64 %i.ha ; 2 uses
  %i.hf = sub i64 %i.dl, %i.gy
  %i.hg = ashr exact i64 %i.hf, 3                 ; 2 uses
  %.not.i31 = icmp slt i64 %i.hg, %i.fz
  br i1 %.not.i31, label %._crit_edge.i32, label %.lr.ph.i.preheader.i29, !llvm.loop !717

._crit_edge.i32:                                  ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i33 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gc, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.gj, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.ge, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.he, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gh, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hg, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i34 = tail call i64 @llvm.smin.i64(i64 %i.dm, i64 %.lcssa52.i) ; 2 uses
end_hunk_2
