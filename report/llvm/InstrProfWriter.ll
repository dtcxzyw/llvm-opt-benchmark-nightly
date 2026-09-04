Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrProfWriter?download=true
inline.NumInlined: 5423
inline.NumDeleted: 2525
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN4llvm15InstrProfWriter17writeRecordInTextENS_9StringRefEmRKNS_15InstrProfRecordERNS_15InstrProfSymtabERNS_14raw_fd_ostreamE:bb.a
.lr.ph.i.i.i.i.i10.i24.i362.prol:                 ; preds = %.lr.ph.i.i.i.i.i10.i24.i362.preheader, %.lr.ph.i.i.i.i.i10.i24.i362.prol
  %.012.i.i.i.i.i11.i25.i363.prol = phi i64 [ %i.ajd, %.lr.ph.i.i.i.i.i10.i24.i362.prol ], [ %i.aiv, %.lr.ph.i.i.i.i.i10.i24.i362.preheader ]
  %.0811.i.i.i.i.i12.i26.i364.prol = phi ptr [ %i.ajc, %.lr.ph.i.i.i.i.i10.i24.i362.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i361, %.lr.ph.i.i.i.i.i10.i24.i362.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i365.prol = phi ptr [ %i.ajb, %.lr.ph.i.i.i.i.i10.i24.i362.prol ], [ %.sroa.015.0.lcssa.i18.i357, %.lr.ph.i.i.i.i.i10.i24.i362.preheader ] ; 3 uses
  %prol.iter1006 = phi i64 [ %prol.iter1006.next, %.lr.ph.i.i.i.i.i10.i24.i362.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i362.preheader ]
  %i.aix = load i64, ptr %.0910.i.i.i.i.i13.i27.i365.prol, align 8, !tbaa !135
  store i64 %i.aix, ptr %.0811.i.i.i.i.i12.i26.i364.prol, align 8, !tbaa !375
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365.prol, i64 8
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !376
  %i.aja = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364.prol, i64 8
  store ptr %i.aiz, ptr %i.aja, align 8, !tbaa !377
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365.prol, i64 16 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364.prol, i64 16 ; 2 uses
  %i.ajd = add nsw i64 %.012.i.i.i.i.i11.i25.i363.prol, -1 ; 2 uses
  %prol.iter1006.next = add i64 %prol.iter1006, 1 ; 2 uses
  %prol.iter1006.cmp.not = icmp eq i64 %prol.iter1006.next, %xtraiter1004
  br i1 %prol.iter1006.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i362.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i362.prol, !llvm.loop !639

.lr.ph.i.i.i.i.i10.i24.i362.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i10.i24.i362.prol, %.lr.ph.i.i.i.i.i10.i24.i362.preheader
  %.012.i.i.i.i.i11.i25.i363.unr = phi i64 [ %i.aiv, %.lr.ph.i.i.i.i.i10.i24.i362.preheader ], [ %i.ajd, %.lr.ph.i.i.i.i.i10.i24.i362.prol ]
  %.0811.i.i.i.i.i12.i26.i364.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i361, %.lr.ph.i.i.i.i.i10.i24.i362.preheader ], [ %i.ajc, %.lr.ph.i.i.i.i.i10.i24.i362.prol ]
  %.0910.i.i.i.i.i13.i27.i365.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i357, %.lr.ph.i.i.i.i.i10.i24.i362.preheader ], [ %i.ajb, %.lr.ph.i.i.i.i.i10.i24.i362.prol ]
  %i.aje = icmp ult i64 %i.aiv, 4
  br i1 %i.aje, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389, label %.lr.ph.i.i.i.i.i10.i24.i362

.lr.ph.i.i.i.i.i10.i24.i362:                      ; preds = %.lr.ph.i.i.i.i.i10.i24.i362.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i362
  %.012.i.i.i.i.i11.i25.i363 = phi i64 [ %i.akd, %.lr.ph.i.i.i.i.i10.i24.i362 ], [ %.012.i.i.i.i.i11.i25.i363.unr, %.lr.ph.i.i.i.i.i10.i24.i362.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i364 = phi ptr [ %i.akc, %.lr.ph.i.i.i.i.i10.i24.i362 ], [ %.0811.i.i.i.i.i12.i26.i364.unr, %.lr.ph.i.i.i.i.i10.i24.i362.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i365 = phi ptr [ %i.akb, %.lr.ph.i.i.i.i.i10.i24.i362 ], [ %.0910.i.i.i.i.i13.i27.i365.unr, %.lr.ph.i.i.i.i.i10.i24.i362.prol.loopexit ] ; 9 uses
  %i.ajf = load i64, ptr %.0910.i.i.i.i.i13.i27.i365, align 8, !tbaa !135
  store i64 %i.ajf, ptr %.0811.i.i.i.i.i12.i26.i364, align 8, !tbaa !375
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !376
  %i.aji = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 8
  store ptr %i.ajh, ptr %i.aji, align 8, !tbaa !377
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 16
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 16
  %i.ajl = load i64, ptr %i.ajj, align 8, !tbaa !135
  store i64 %i.ajl, ptr %i.ajk, align 8, !tbaa !375
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 24
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !376
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 24
  store ptr %i.ajn, ptr %i.ajo, align 8, !tbaa !377
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 32
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 32
  %i.ajr = load i64, ptr %i.ajp, align 8, !tbaa !135
  store i64 %i.ajr, ptr %i.ajq, align 8, !tbaa !375
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 40
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !376
  %i.aju = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 40
  store ptr %i.ajt, ptr %i.aju, align 8, !tbaa !377
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 48
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 48
  %i.ajx = load i64, ptr %i.ajv, align 8, !tbaa !135
  store i64 %i.ajx, ptr %i.ajw, align 8, !tbaa !375
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 56
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !376
  %i.aka = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 56
  store ptr %i.ajz, ptr %i.aka, align 8, !tbaa !377
  %i.akb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i365, i64 64
  %i.akc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i364, i64 64
  %i.akd = add nsw i64 %.012.i.i.i.i.i11.i25.i363, -4
  %i.ake = icmp sgt i64 %.012.i.i.i.i.i11.i25.i363, 4
  br i1 %i.ake, label %.lr.ph.i.i.i.i.i10.i24.i362, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389, !llvm.loop !35

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389: ; preds = %.lr.ph.i.i.i.i.i10.i24.i362.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i362, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i360
  %i.akf = shl nsw i64 %.022.i.i, 2               ; 4 uses
  %.not65.i255 = icmp slt i64 %i.on, %i.akf
  br i1 %.not65.i255, label %._crit_edge.i281, label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389
  %.idx.i257 = shl nsw i64 %.022.i.i, 5           ; 2 uses
  %.idx56.i258 = shl nsw i64 %.022.i.i, 6         ; 2 uses
  %.not57.i259 = icmp eq i64 %.idx.i257, %.idx56.i258
  br label %bb.cv

bb.cv:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278, %.lr.ph.i256
  %.sroa.022.067.i260 = phi ptr [ %i.of, %.lr.ph.i256 ], [ %i.anx, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278 ] ; 2 uses
  %.066.i261 = phi ptr [ %.sroa.10.0.i, %.lr.ph.i256 ], [ %i.akh, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278 ] ; 4 uses
  %i.akg = getelementptr inbounds i8, ptr %.066.i261, i64 %.idx.i257 ; 4 uses
  %i.akh = getelementptr inbounds i8, ptr %.066.i261, i64 %.idx56.i258 ; 4 uses
  br i1 %.not57.i259, label %._crit_edge.i.i272, label %.lr.ph.i.i262

.lr.ph.i.i262:                                    ; preds = %bb.cv, %bb.cy
  %.029.i.i263 = phi ptr [ %.1.i.i269, %bb.cy ], [ %.066.i261, %bb.cv ] ; 4 uses
  %.01628.i.i264 = phi ptr [ %.117.i.i268, %bb.cy ], [ %i.akg, %bb.cv ] ; 4 uses
  %.sroa.0.027.i.i265 = phi ptr [ %i.ako, %bb.cy ], [ %.sroa.022.067.i260, %bb.cv ] ; 3 uses
  %i.aki = load i64, ptr %.01628.i.i264, align 8, !tbaa !135 ; 2 uses
  %i.akj = load i64, ptr %.029.i.i263, align 8, !tbaa !135 ; 2 uses
  %i.akk = icmp ult i64 %i.aki, %i.akj
  br i1 %i.akk, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph.i.i262
  %i.akl = getelementptr inbounds nuw i8, ptr %.01628.i.i264, i64 16
  br label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.i.i262
  %i.akm = getelementptr inbounds nuw i8, ptr %.029.i.i263, i64 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sink34.i.i266 = phi i64 [ %i.aki, %bb.cw ], [ %i.akj, %bb.cx ]
  %.01628.pn.i.i267 = phi ptr [ %.01628.i.i264, %bb.cw ], [ %.029.i.i263, %bb.cx ]
  %.117.i.i268 = phi ptr [ %i.akl, %bb.cw ], [ %.01628.i.i264, %bb.cx ] ; 3 uses
  %.1.i.i269 = phi ptr [ %.029.i.i263, %bb.cw ], [ %i.akm, %bb.cx ] ; 3 uses
  %.sink.in.i.i270 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i267, i64 8
  %.sink.i.i271 = load ptr, ptr %.sink.in.i.i270, align 8, !tbaa !376
  store i64 %.sink34.i.i266, ptr %.sroa.0.027.i.i265, align 8, !tbaa !375
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i265, i64 8
  store ptr %.sink.i.i271, ptr %i.akn, align 8, !tbaa !377
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i265, i64 16 ; 2 uses
  %i.akp = icmp ne ptr %.1.i.i269, %i.akg
  %i.akq = icmp ne ptr %.117.i.i268, %i.akh
  %i.akr = select i1 %i.akp, i1 %i.akq, i1 false
  br i1 %i.akr, label %.lr.ph.i.i262, label %._crit_edge.i.i272, !llvm.loop !37

._crit_edge.i.i272:                               ; preds = %bb.cy, %bb.cv
  %.sroa.0.0.lcssa.i.i273 = phi ptr [ %.sroa.022.067.i260, %bb.cv ], [ %i.ako, %bb.cy ] ; 5 uses
  %.016.lcssa.i.i274 = phi ptr [ %i.akg, %bb.cv ], [ %.117.i.i268, %bb.cy ] ; 3 uses
  %.0.lcssa.i.i275 = phi ptr [ %.066.i261, %bb.cv ], [ %.1.i.i269, %bb.cy ] ; 3 uses
  %i.aks = ptrtoint ptr %i.akg to i64
  %i.akt = ptrtoint ptr %.0.lcssa.i.i275 to i64
  %i.aku = sub i64 %i.aks, %i.akt
  %i.akv = ashr exact i64 %i.aku, 4               ; 5 uses
  %i.akw = icmp sgt i64 %i.akv, 0
  br i1 %i.akw, label %.lr.ph.i.i.i.i.i.i.i317.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i276

.lr.ph.i.i.i.i.i.i.i317.preheader:                ; preds = %._crit_edge.i.i272
  %xtraiter1007 = and i64 %i.akv, 3               ; 2 uses
  %lcmp.mod1008.not = icmp eq i64 %xtraiter1007, 0
  br i1 %lcmp.mod1008.not, label %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i317.prol

.lr.ph.i.i.i.i.i.i.i317.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i317.preheader, %.lr.ph.i.i.i.i.i.i.i317.prol
  %.012.i.i.i.i.i.i.i318.prol = phi i64 [ %i.ald, %.lr.ph.i.i.i.i.i.i.i317.prol ], [ %i.akv, %.lr.ph.i.i.i.i.i.i.i317.preheader ]
  %.0811.i.i.i.i.i.i.i319.prol = phi ptr [ %i.alc, %.lr.ph.i.i.i.i.i.i.i317.prol ], [ %.sroa.0.0.lcssa.i.i273, %.lr.ph.i.i.i.i.i.i.i317.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i320.prol = phi ptr [ %i.alb, %.lr.ph.i.i.i.i.i.i.i317.prol ], [ %.0.lcssa.i.i275, %.lr.ph.i.i.i.i.i.i.i317.preheader ] ; 3 uses
  %prol.iter1009 = phi i64 [ %prol.iter1009.next, %.lr.ph.i.i.i.i.i.i.i317.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i317.preheader ]
  %i.akx = load i64, ptr %.0910.i.i.i.i.i.i.i320.prol, align 8, !tbaa !135
  store i64 %i.akx, ptr %.0811.i.i.i.i.i.i.i319.prol, align 8, !tbaa !375
  %i.aky = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320.prol, i64 8
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !376
  %i.ala = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319.prol, i64 8
  store ptr %i.akz, ptr %i.ala, align 8, !tbaa !377
  %i.alb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320.prol, i64 16 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319.prol, i64 16 ; 3 uses
  %i.ald = add nsw i64 %.012.i.i.i.i.i.i.i318.prol, -1 ; 2 uses
  %prol.iter1009.next = add i64 %prol.iter1009, 1 ; 2 uses
  %prol.iter1009.cmp.not = icmp eq i64 %prol.iter1009.next, %xtraiter1007
  br i1 %prol.iter1009.cmp.not, label %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i317.prol, !llvm.loop !640

.lr.ph.i.i.i.i.i.i.i317.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i317.prol, %.lr.ph.i.i.i.i.i.i.i317.preheader
  %.012.i.i.i.i.i.i.i318.unr = phi i64 [ %i.akv, %.lr.ph.i.i.i.i.i.i.i317.preheader ], [ %i.ald, %.lr.ph.i.i.i.i.i.i.i317.prol ]
  %.0811.i.i.i.i.i.i.i319.unr = phi ptr [ %.sroa.0.0.lcssa.i.i273, %.lr.ph.i.i.i.i.i.i.i317.preheader ], [ %i.alc, %.lr.ph.i.i.i.i.i.i.i317.prol ]
  %.0910.i.i.i.i.i.i.i320.unr = phi ptr [ %.0.lcssa.i.i275, %.lr.ph.i.i.i.i.i.i.i317.preheader ], [ %i.alb, %.lr.ph.i.i.i.i.i.i.i317.prol ]
  %.lcssa921.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i317.preheader ], [ %i.alc, %.lr.ph.i.i.i.i.i.i.i317.prol ]
  %i.ale = icmp ult i64 %i.akv, 4
  br i1 %i.ale, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i276, label %.lr.ph.i.i.i.i.i.i.i317

.lr.ph.i.i.i.i.i.i.i317:                          ; preds = %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i317
  %.012.i.i.i.i.i.i.i318 = phi i64 [ %i.amd, %.lr.ph.i.i.i.i.i.i.i317 ], [ %.012.i.i.i.i.i.i.i318.unr, %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i319 = phi ptr [ %i.amc, %.lr.ph.i.i.i.i.i.i.i317 ], [ %.0811.i.i.i.i.i.i.i319.unr, %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i320 = phi ptr [ %i.amb, %.lr.ph.i.i.i.i.i.i.i317 ], [ %.0910.i.i.i.i.i.i.i320.unr, %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit ] ; 9 uses
  %i.alf = load i64, ptr %.0910.i.i.i.i.i.i.i320, align 8, !tbaa !135
  store i64 %i.alf, ptr %.0811.i.i.i.i.i.i.i319, align 8, !tbaa !375
  %i.alg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !376
  %i.ali = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 8
  store ptr %i.alh, ptr %i.ali, align 8, !tbaa !377
  %i.alj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 16
  %i.alk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 16
  %i.all = load i64, ptr %i.alj, align 8, !tbaa !135
  store i64 %i.all, ptr %i.alk, align 8, !tbaa !375
  %i.alm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 24
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !376
  %i.alo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 24
  store ptr %i.aln, ptr %i.alo, align 8, !tbaa !377
  %i.alp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 32
  %i.alq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 32
  %i.alr = load i64, ptr %i.alp, align 8, !tbaa !135
  store i64 %i.alr, ptr %i.alq, align 8, !tbaa !375
  %i.als = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 40
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !376
  %i.alu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 40
  store ptr %i.alt, ptr %i.alu, align 8, !tbaa !377
  %i.alv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 48
  %i.alw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 48
  %i.alx = load i64, ptr %i.alv, align 8, !tbaa !135
  store i64 %i.alx, ptr %i.alw, align 8, !tbaa !375
  %i.aly = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 56
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !376
  %i.ama = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 56
  store ptr %i.alz, ptr %i.ama, align 8, !tbaa !377
  %i.amb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i320, i64 64
  %i.amc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i319, i64 64 ; 2 uses
  %i.amd = add nsw i64 %.012.i.i.i.i.i.i.i318, -4
  %i.ame = icmp sgt i64 %.012.i.i.i.i.i.i.i318, 4
  br i1 %i.ame, label %.lr.ph.i.i.i.i.i.i.i317, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i276, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i276: ; preds = %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i317, %._crit_edge.i.i272
  %.08.lcssa.i.i.i.i.i.i.i277 = phi ptr [ %.sroa.0.0.lcssa.i.i273, %._crit_edge.i.i272 ], [ %.lcssa921.unr.a, %.lr.ph.i.i.i.i.i.i.i317.prol.loopexit ], [ %i.amc, %.lr.ph.i.i.i.i.i.i.i317 ]
  %i.amf = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i277 to i64 ; 2 uses
  %i.amg = ptrtoint ptr %.sroa.0.0.lcssa.i.i273 to i64
  %i.amh = sub i64 %i.amf, %i.amg
  %i.ami = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i273, i64 %i.amh ; 4 uses
  %i.amj = ptrtoint ptr %i.akh to i64             ; 2 uses
  %i.amk = ptrtoint ptr %.016.lcssa.i.i274 to i64
  %i.aml = sub i64 %i.amj, %i.amk
  %i.amm = ashr exact i64 %i.aml, 4               ; 5 uses
  %i.amn = icmp sgt i64 %i.amm, 0
  br i1 %i.amn, label %.lr.ph.i.i.i.i.i19.i.i312.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278

.lr.ph.i.i.i.i.i19.i.i312.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i276
  %xtraiter1010 = and i64 %i.amm, 3               ; 2 uses
  %lcmp.mod1011.not = icmp eq i64 %xtraiter1010, 0
  br i1 %lcmp.mod1011.not, label %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i312.prol

.lr.ph.i.i.i.i.i19.i.i312.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i312.preheader, %.lr.ph.i.i.i.i.i19.i.i312.prol
  %.012.i.i.i.i.i20.i.i313.prol = phi i64 [ %i.amu, %.lr.ph.i.i.i.i.i19.i.i312.prol ], [ %i.amm, %.lr.ph.i.i.i.i.i19.i.i312.preheader ]
  %.0811.i.i.i.i.i21.i.i314.prol = phi ptr [ %i.amt, %.lr.ph.i.i.i.i.i19.i.i312.prol ], [ %i.ami, %.lr.ph.i.i.i.i.i19.i.i312.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i315.prol = phi ptr [ %i.ams, %.lr.ph.i.i.i.i.i19.i.i312.prol ], [ %.016.lcssa.i.i274, %.lr.ph.i.i.i.i.i19.i.i312.preheader ] ; 3 uses
  %prol.iter1012 = phi i64 [ %prol.iter1012.next, %.lr.ph.i.i.i.i.i19.i.i312.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i312.preheader ]
  %i.amo = load i64, ptr %.0910.i.i.i.i.i22.i.i315.prol, align 8, !tbaa !135
  store i64 %i.amo, ptr %.0811.i.i.i.i.i21.i.i314.prol, align 8, !tbaa !375
  %i.amp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315.prol, i64 8
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !376
  %i.amr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314.prol, i64 8
  store ptr %i.amq, ptr %i.amr, align 8, !tbaa !377
  %i.ams = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315.prol, i64 16 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314.prol, i64 16 ; 3 uses
  %i.amu = add nsw i64 %.012.i.i.i.i.i20.i.i313.prol, -1 ; 2 uses
  %prol.iter1012.next = add i64 %prol.iter1012, 1 ; 2 uses
  %prol.iter1012.cmp.not = icmp eq i64 %prol.iter1012.next, %xtraiter1010
  br i1 %prol.iter1012.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i312.prol, !llvm.loop !641

.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i312.prol, %.lr.ph.i.i.i.i.i19.i.i312.preheader
  %.012.i.i.i.i.i20.i.i313.unr = phi i64 [ %i.amm, %.lr.ph.i.i.i.i.i19.i.i312.preheader ], [ %i.amu, %.lr.ph.i.i.i.i.i19.i.i312.prol ]
  %.0811.i.i.i.i.i21.i.i314.unr = phi ptr [ %i.ami, %.lr.ph.i.i.i.i.i19.i.i312.preheader ], [ %i.amt, %.lr.ph.i.i.i.i.i19.i.i312.prol ]
  %.0910.i.i.i.i.i22.i.i315.unr = phi ptr [ %.016.lcssa.i.i274, %.lr.ph.i.i.i.i.i19.i.i312.preheader ], [ %i.ams, %.lr.ph.i.i.i.i.i19.i.i312.prol ]
  %.lcssa922.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i312.preheader ], [ %i.amt, %.lr.ph.i.i.i.i.i19.i.i312.prol ]
  %i.amv = icmp ult i64 %i.amm, 4
  br i1 %i.amv, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278, label %.lr.ph.i.i.i.i.i19.i.i312

.lr.ph.i.i.i.i.i19.i.i312:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i312
  %.012.i.i.i.i.i20.i.i313 = phi i64 [ %i.anu, %.lr.ph.i.i.i.i.i19.i.i312 ], [ %.012.i.i.i.i.i20.i.i313.unr, %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i314 = phi ptr [ %i.ant, %.lr.ph.i.i.i.i.i19.i.i312 ], [ %.0811.i.i.i.i.i21.i.i314.unr, %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i315 = phi ptr [ %i.ans, %.lr.ph.i.i.i.i.i19.i.i312 ], [ %.0910.i.i.i.i.i22.i.i315.unr, %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit ] ; 9 uses
  %i.amw = load i64, ptr %.0910.i.i.i.i.i22.i.i315, align 8, !tbaa !135
  store i64 %i.amw, ptr %.0811.i.i.i.i.i21.i.i314, align 8, !tbaa !375
  %i.amx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 8
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !376
  %i.amz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 8
  store ptr %i.amy, ptr %i.amz, align 8, !tbaa !377
  %i.ana = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 16
  %i.anb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 16
  %i.anc = load i64, ptr %i.ana, align 8, !tbaa !135
  store i64 %i.anc, ptr %i.anb, align 8, !tbaa !375
  %i.and = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 24
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !376
  %i.anf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 24
  store ptr %i.ane, ptr %i.anf, align 8, !tbaa !377
  %i.ang = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 32
  %i.anh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 32
  %i.ani = load i64, ptr %i.ang, align 8, !tbaa !135
  store i64 %i.ani, ptr %i.anh, align 8, !tbaa !375
  %i.anj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 40
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !376
  %i.anl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 40
  store ptr %i.ank, ptr %i.anl, align 8, !tbaa !377
  %i.anm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 48
  %i.ann = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 48
  %i.ano = load i64, ptr %i.anm, align 8, !tbaa !135
  store i64 %i.ano, ptr %i.ann, align 8, !tbaa !375
  %i.anp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 56
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !376
  %i.anr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 56
  store ptr %i.anq, ptr %i.anr, align 8, !tbaa !377
  %i.ans = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i315, i64 64
  %i.ant = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i314, i64 64 ; 2 uses
  %i.anu = add nsw i64 %.012.i.i.i.i.i20.i.i313, -4
  %i.anv = icmp sgt i64 %.012.i.i.i.i.i20.i.i313, 4
  br i1 %i.anv, label %.lr.ph.i.i.i.i.i19.i.i312, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278, !llvm.loop !35

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278: ; preds = %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i312, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i276
  %.08.lcssa.i.i.i.i.i18.i.i279 = phi ptr [ %i.ami, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i276 ], [ %.lcssa922.unr, %.lr.ph.i.i.i.i.i19.i.i312.prol.loopexit ], [ %i.ant, %.lr.ph.i.i.i.i.i19.i.i312 ]
  %6 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i279 to i64
  %i.anw = sub i64 %6, %i.amf
  %i.anx = getelementptr inbounds i8, ptr %i.ami, i64 %i.anw ; 2 uses
  %i.any = sub i64 %i.adf, %i.amj
  %i.anz = ashr exact i64 %i.any, 4               ; 2 uses
  %.not.i280 = icmp slt i64 %i.anz, %i.akf
  br i1 %.not.i280, label %._crit_edge.i281, label %bb.cv, !llvm.loop !38

._crit_edge.i281:                                 ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389
  %.0.lcssa.i282 = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389 ], [ %i.akh, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278 ] ; 3 uses
  %.sroa.022.0.lcssa.i283 = phi ptr [ %i.of, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389 ], [ %i.anx, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278 ] ; 2 uses
  %.lcssa63.i284 = phi i64 [ %i.on, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit389 ], [ %i.anz, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i278 ]
  %.sroa.speculated.i285 = tail call i64 @llvm.smin.i64(i64 %i.adg, i64 %.lcssa63.i284) ; 2 uses
  %.idx58.i286 = shl nsw i64 %.sroa.speculated.i285, 4
  %i.aoa = getelementptr inbounds i8, ptr %.0.lcssa.i282, i64 %.idx58.i286 ; 5 uses
  %i.aob = icmp ne i64 %.sroa.speculated.i285, 0
  %i.aoc = icmp ne ptr %i.aoa, %i.pl
  %i.aod = and i1 %i.aob, %i.aoc
  br i1 %i.aod, label %.lr.ph.i41.i302, label %._crit_edge.i25.i287

.lr.ph.i41.i302:                                  ; preds = %._crit_edge.i281, %bb.db
  %.029.i42.i303 = phi ptr [ %.1.i48.i309, %bb.db ], [ %.0.lcssa.i282, %._crit_edge.i281 ] ; 4 uses
  %.01628.i43.i304 = phi ptr [ %.117.i47.i308, %bb.db ], [ %i.aoa, %._crit_edge.i281 ] ; 4 uses
  %.sroa.0.027.i44.i305 = phi ptr [ %i.aok, %bb.db ], [ %.sroa.022.0.lcssa.i283, %._crit_edge.i281 ] ; 3 uses
  %i.aoe = load i64, ptr %.01628.i43.i304, align 8, !tbaa !135 ; 2 uses
  %i.aof = load i64, ptr %.029.i42.i303, align 8, !tbaa !135 ; 2 uses
  %i.aog = icmp ult i64 %i.aoe, %i.aof
  br i1 %i.aog, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.lr.ph.i41.i302
  %i.aoh = getelementptr inbounds nuw i8, ptr %.01628.i43.i304, i64 16
  br label %bb.db

bb.da:                                            ; preds = %.lr.ph.i41.i302
  %i.aoi = getelementptr inbounds nuw i8, ptr %.029.i42.i303, i64 16
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sink34.i45.i306 = phi i64 [ %i.aoe, %bb.cz ], [ %i.aof, %bb.da ]
  %.01628.pn.i46.i307 = phi ptr [ %.01628.i43.i304, %bb.cz ], [ %.029.i42.i303, %bb.da ]
  %.117.i47.i308 = phi ptr [ %i.aoh, %bb.cz ], [ %.01628.i43.i304, %bb.da ] ; 3 uses
  %.1.i48.i309 = phi ptr [ %.029.i42.i303, %bb.cz ], [ %i.aoi, %bb.da ] ; 3 uses
  %.sink.in.i49.i310 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i307, i64 8
  %.sink.i50.i311 = load ptr, ptr %.sink.in.i49.i310, align 8, !tbaa !376
  store i64 %.sink34.i45.i306, ptr %.sroa.0.027.i44.i305, align 8, !tbaa !375
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i305, i64 8
  store ptr %.sink.i50.i311, ptr %i.aoj, align 8, !tbaa !377
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i305, i64 16 ; 2 uses
  %i.aol = icmp ne ptr %.1.i48.i309, %i.aoa
  %i.aom = icmp ne ptr %.117.i47.i308, %i.pl
  %i.aon = select i1 %i.aol, i1 %i.aom, i1 false
  br i1 %i.aon, label %.lr.ph.i41.i302, label %._crit_edge.i25.i287, !llvm.loop !37

._crit_edge.i25.i287:                             ; preds = %bb.db, %._crit_edge.i281
  %.sroa.0.0.lcssa.i26.i288 = phi ptr [ %.sroa.022.0.lcssa.i283, %._crit_edge.i281 ], [ %i.aok, %bb.db ] ; 5 uses
  %.016.lcssa.i27.i289 = phi ptr [ %i.aoa, %._crit_edge.i281 ], [ %.117.i47.i308, %bb.db ] ; 3 uses
  %.0.lcssa.i28.i290 = phi ptr [ %.0.lcssa.i282, %._crit_edge.i281 ], [ %.1.i48.i309, %bb.db ] ; 3 uses
  %i.aoo = ptrtoint ptr %i.aoa to i64
  %i.aop = ptrtoint ptr %.0.lcssa.i28.i290 to i64
  %i.aoq = sub i64 %i.aoo, %i.aop
  %i.aor = ashr exact i64 %i.aoq, 4               ; 5 uses
  %i.aos = icmp sgt i64 %i.aor, 0
  br i1 %i.aos, label %.lr.ph.i.i.i.i.i.i37.i298.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i291

.lr.ph.i.i.i.i.i.i37.i298.preheader:              ; preds = %._crit_edge.i25.i287
  %xtraiter1013 = and i64 %i.aor, 3               ; 2 uses
  %lcmp.mod1014.not = icmp eq i64 %xtraiter1013, 0
  br i1 %lcmp.mod1014.not, label %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i298.prol

.lr.ph.i.i.i.i.i.i37.i298.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i37.i298.preheader, %.lr.ph.i.i.i.i.i.i37.i298.prol
  %.012.i.i.i.i.i.i38.i299.prol = phi i64 [ %i.aoz, %.lr.ph.i.i.i.i.i.i37.i298.prol ], [ %i.aor, %.lr.ph.i.i.i.i.i.i37.i298.preheader ]
  %.0811.i.i.i.i.i.i39.i300.prol = phi ptr [ %i.aoy, %.lr.ph.i.i.i.i.i.i37.i298.prol ], [ %.sroa.0.0.lcssa.i26.i288, %.lr.ph.i.i.i.i.i.i37.i298.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i301.prol = phi ptr [ %i.aox, %.lr.ph.i.i.i.i.i.i37.i298.prol ], [ %.0.lcssa.i28.i290, %.lr.ph.i.i.i.i.i.i37.i298.preheader ] ; 3 uses
  %prol.iter1015 = phi i64 [ %prol.iter1015.next, %.lr.ph.i.i.i.i.i.i37.i298.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i298.preheader ]
  %i.aot = load i64, ptr %.0910.i.i.i.i.i.i40.i301.prol, align 8, !tbaa !135
  store i64 %i.aot, ptr %.0811.i.i.i.i.i.i39.i300.prol, align 8, !tbaa !375
  %i.aou = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301.prol, i64 8
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !376
  %i.aow = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300.prol, i64 8
  store ptr %i.aov, ptr %i.aow, align 8, !tbaa !377
  %i.aox = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301.prol, i64 16 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300.prol, i64 16 ; 3 uses
  %i.aoz = add nsw i64 %.012.i.i.i.i.i.i38.i299.prol, -1 ; 2 uses
  %prol.iter1015.next = add i64 %prol.iter1015, 1 ; 2 uses
  %prol.iter1015.cmp.not = icmp eq i64 %prol.iter1015.next, %xtraiter1013
  br i1 %prol.iter1015.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i298.prol, !llvm.loop !642

.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i37.i298.prol, %.lr.ph.i.i.i.i.i.i37.i298.preheader
  %.012.i.i.i.i.i.i38.i299.unr = phi i64 [ %i.aor, %.lr.ph.i.i.i.i.i.i37.i298.preheader ], [ %i.aoz, %.lr.ph.i.i.i.i.i.i37.i298.prol ]
  %.0811.i.i.i.i.i.i39.i300.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i288, %.lr.ph.i.i.i.i.i.i37.i298.preheader ], [ %i.aoy, %.lr.ph.i.i.i.i.i.i37.i298.prol ]
  %.0910.i.i.i.i.i.i40.i301.unr = phi ptr [ %.0.lcssa.i28.i290, %.lr.ph.i.i.i.i.i.i37.i298.preheader ], [ %i.aox, %.lr.ph.i.i.i.i.i.i37.i298.prol ]
  %.lcssa927.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i298.preheader ], [ %i.aoy, %.lr.ph.i.i.i.i.i.i37.i298.prol ]
  %i.apa = icmp ult i64 %i.aor, 4
  br i1 %i.apa, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i291, label %.lr.ph.i.i.i.i.i.i37.i298

.lr.ph.i.i.i.i.i.i37.i298:                        ; preds = %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i298
  %.012.i.i.i.i.i.i38.i299 = phi i64 [ %i.apz, %.lr.ph.i.i.i.i.i.i37.i298 ], [ %.012.i.i.i.i.i.i38.i299.unr, %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i300 = phi ptr [ %i.apy, %.lr.ph.i.i.i.i.i.i37.i298 ], [ %.0811.i.i.i.i.i.i39.i300.unr, %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i301 = phi ptr [ %i.apx, %.lr.ph.i.i.i.i.i.i37.i298 ], [ %.0910.i.i.i.i.i.i40.i301.unr, %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit ] ; 9 uses
  %i.apb = load i64, ptr %.0910.i.i.i.i.i.i40.i301, align 8, !tbaa !135
  store i64 %i.apb, ptr %.0811.i.i.i.i.i.i39.i300, align 8, !tbaa !375
  %i.apc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !376
  %i.ape = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 8
  store ptr %i.apd, ptr %i.ape, align 8, !tbaa !377
  %i.apf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 16
  %i.apg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 16
  %i.aph = load i64, ptr %i.apf, align 8, !tbaa !135
  store i64 %i.aph, ptr %i.apg, align 8, !tbaa !375
  %i.api = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 24
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !376
  %i.apk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 24
  store ptr %i.apj, ptr %i.apk, align 8, !tbaa !377
  %i.apl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 32
  %i.apm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 32
  %i.apn = load i64, ptr %i.apl, align 8, !tbaa !135
  store i64 %i.apn, ptr %i.apm, align 8, !tbaa !375
  %i.apo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 40
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !376
  %i.apq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 40
  store ptr %i.app, ptr %i.apq, align 8, !tbaa !377
  %i.apr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 48
  %i.aps = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 48
  %i.apt = load i64, ptr %i.apr, align 8, !tbaa !135
  store i64 %i.apt, ptr %i.aps, align 8, !tbaa !375
  %i.apu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 56
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !376
  %i.apw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 56
  store ptr %i.apv, ptr %i.apw, align 8, !tbaa !377
  %i.apx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i301, i64 64
  %i.apy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i300, i64 64 ; 2 uses
  %i.apz = add nsw i64 %.012.i.i.i.i.i.i38.i299, -4
  %i.aqa = icmp sgt i64 %.012.i.i.i.i.i.i38.i299, 4
  br i1 %i.aqa, label %.lr.ph.i.i.i.i.i.i37.i298, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i291, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i291: ; preds = %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i298, %._crit_edge.i25.i287
  %.08.lcssa.i.i.i.i.i.i30.i292 = phi ptr [ %.sroa.0.0.lcssa.i26.i288, %._crit_edge.i25.i287 ], [ %.lcssa927.unr, %.lr.ph.i.i.i.i.i.i37.i298.prol.loopexit ], [ %i.apy, %.lr.ph.i.i.i.i.i.i37.i298 ]
  %i.aqb = ptrtoint ptr %.016.lcssa.i27.i289 to i64
  %i.aqc = sub i64 %i.adf, %i.aqb
  %i.aqd = ashr exact i64 %i.aqc, 4               ; 5 uses
  %i.aqe = icmp sgt i64 %i.aqd, 0
  br i1 %i.aqe, label %.lr.ph.i.i.i.i.i19.i32.preheader.i293, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit321

.lr.ph.i.i.i.i.i19.i32.preheader.i293:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i291
  %i.aqf = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i292 to i64
  %i.aqg = ptrtoint ptr %.sroa.0.0.lcssa.i26.i288 to i64
  %i.aqh = sub i64 %i.aqf, %i.aqg
  %i.aqi = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i288, i64 %i.aqh ; 2 uses
  %xtraiter1016 = and i64 %i.aqd, 3               ; 2 uses
  %lcmp.mod1017.not = icmp eq i64 %xtraiter1016, 0
  br i1 %lcmp.mod1017.not, label %.lr.ph.i.i.i.i.i19.i32.i294.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i294.prol

.lr.ph.i.i.i.i.i19.i32.i294.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i293, %.lr.ph.i.i.i.i.i19.i32.i294.prol
  %.012.i.i.i.i.i20.i33.i295.prol = phi i64 [ %i.aqp, %.lr.ph.i.i.i.i.i19.i32.i294.prol ], [ %i.aqd, %.lr.ph.i.i.i.i.i19.i32.preheader.i293 ]
  %.0811.i.i.i.i.i21.i34.i296.prol = phi ptr [ %i.aqo, %.lr.ph.i.i.i.i.i19.i32.i294.prol ], [ %i.aqi, %.lr.ph.i.i.i.i.i19.i32.preheader.i293 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i297.prol = phi ptr [ %i.aqn, %.lr.ph.i.i.i.i.i19.i32.i294.prol ], [ %.016.lcssa.i27.i289, %.lr.ph.i.i.i.i.i19.i32.preheader.i293 ] ; 3 uses
  %prol.iter1018 = phi i64 [ %prol.iter1018.next, %.lr.ph.i.i.i.i.i19.i32.i294.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i293 ]
  %i.aqj = load i64, ptr %.0910.i.i.i.i.i22.i35.i297.prol, align 8, !tbaa !135
  store i64 %i.aqj, ptr %.0811.i.i.i.i.i21.i34.i296.prol, align 8, !tbaa !375
  %i.aqk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i297.prol, i64 8
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !376
  %i.aqm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i296.prol, i64 8
  store ptr %i.aql, ptr %i.aqm, align 8, !tbaa !377
  %i.aqn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i297.prol, i64 16 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i296.prol, i64 16 ; 2 uses
  %i.aqp = add nsw i64 %.012.i.i.i.i.i20.i33.i295.prol, -1 ; 2 uses
  %prol.iter1018.next = add i64 %prol.iter1018, 1 ; 2 uses
  %prol.iter1018.cmp.not = icmp eq i64 %prol.iter1018.next, %xtraiter1016
  br i1 %prol.iter1018.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i294.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i294.prol, !llvm.loop !643

.lr.ph.i.i.i.i.i19.i32.i294.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i294.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i293
  %.012.i.i.i.i.i20.i33.i295.unr = phi i64 [ %i.aqd, %.lr.ph.i.i.i.i.i19.i32.preheader.i293 ], [ %i.aqp, %.lr.ph.i.i.i.i.i19.i32.i294.prol ]
  %.0811.i.i.i.i.i21.i34.i296.unr = phi ptr [ %i.aqi, %.lr.ph.i.i.i.i.i19.i32.preheader.i293 ], [ %i.aqo, %.lr.ph.i.i.i.i.i19.i32.i294.prol ]
  %.0910.i.i.i.i.i22.i35.i297.unr = phi ptr [ %.016.lcssa.i27.i289, %.lr.ph.i.i.i.i.i19.i32.preheader.i293 ], [ %i.aqn, %.lr.ph.i.i.i.i.i19.i32.i294.prol ]
  %i.aqq = icmp ult i64 %i.aqd, 4
  br i1 %i.aqq, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit321, label %.lr.ph.i.i.i.i.i19.i32.i294

.lr.ph.i.i.i.i.i19.i32.i294:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i294.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i294
  %.012.i.i.i.i.i20.i33.i295 = phi i64 [ %i.arp, %.lr.ph.i.i.i.i.i19.i32.i294 ], [ %.012.i.i.i.i.i20.i33.i295.unr, %.lr.ph.i.i.i.i.i19.i32.i294.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i296 = phi ptr [ %i.aro, %.lr.ph.i.i.i.i.i19.i32.i294 ], [ %.0811.i.i.i.i.i21.i34.i296.unr, %.lr.ph.i.i.i.i.i19.i32.i294.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i297 = phi ptr [ %i.arn, %.lr.ph.i.i.i.i.i19.i32.i294 ], [ %.0910.i.i.i.i.i22.i35.i297.unr, %.lr.ph.i.i.i.i.i19.i32.i294.prol.loopexit ] ; 9 uses
  %i.aqr = load i64, ptr %.0910.i.i.i.i.i22.i35.i297, align 8, !tbaa !135
  store i64 %i.aqr, ptr %.0811.i.i.i.i.i21.i34.i296, align 8, !tbaa !375
  %i.aqs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i297, i64 8
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !376
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i296, i64 8
  store ptr %i.aqt, ptr %i.aqu, align 8, !tbaa !377
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i297, i64 16
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i296, i64 16
  %i.aqx = load i64, ptr %i.aqv, align 8, !tbaa !135
  store i64 %i.aqx, ptr %i.aqw, align 8, !tbaa !375
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i297, i64 24
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !376
  %i.ara = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i296, i64 24
  store ptr %i.aqz, ptr %i.ara, align 8, !tbaa !377
  %i.arb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i297, i64 32
  %i.arc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i296, i64 32
  %i.ard = load i64, ptr %i.arb, align 8, !tbaa !135
  store i64 %i.ard, ptr %i.arc, align 8, !tbaa !375
  %i.are = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i297, i64 40
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !376
  %i.arg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i296, i64 40
end_hunk_0
begin_hunk_1_@_ZN4llvm15InstrProfWriter17writeRecordInTextENS_9StringRefEmRKNS_15InstrProfRecordERNS_15InstrProfSymtabERNS_14raw_fd_ostreamE:bb.a
.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.blm, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.ble, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.bll, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.blk, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter1063 = phi i64 [ %prol.iter1063.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.blg = load i64, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !135
  store i64 %i.blg, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !375
  %i.blh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !376
  %i.blj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.bli, ptr %i.blj, align 8, !tbaa !377
  %i.blk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.blm = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter1063.next = add i64 %prol.iter1063, 1 ; 2 uses
  %prol.iter1063.cmp.not = icmp eq i64 %prol.iter1063.next, %xtraiter1061
  br i1 %prol.iter1063.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !654

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.ble, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.blm, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bll, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.blk, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.bln = icmp ult i64 %i.ble, 4
  br i1 %i.bln, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.bmm, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.bml, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.bmk, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.blo = load i64, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !135
  store i64 %i.blo, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !375
  %i.blp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.blq = load ptr, ptr %i.blp, align 8, !tbaa !376
  %i.blr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.blq, ptr %i.blr, align 8, !tbaa !377
  %i.bls = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.blt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.blu = load i64, ptr %i.bls, align 8, !tbaa !135
  store i64 %i.blu, ptr %i.blt, align 8, !tbaa !375
  %i.blv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.blw = load ptr, ptr %i.blv, align 8, !tbaa !376
  %i.blx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.blw, ptr %i.blx, align 8, !tbaa !377
  %i.bly = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.blz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.bma = load i64, ptr %i.bly, align 8, !tbaa !135
  store i64 %i.bma, ptr %i.blz, align 8, !tbaa !375
  %i.bmb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.bmc = load ptr, ptr %i.bmb, align 8, !tbaa !376
  %i.bmd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.bmc, ptr %i.bmd, align 8, !tbaa !377
  %i.bme = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.bmf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.bmg = load i64, ptr %i.bme, align 8, !tbaa !135
  store i64 %i.bmg, ptr %i.bmf, align 8, !tbaa !375
  %i.bmh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !376
  %i.bmj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.bmi, ptr %i.bmj, align 8, !tbaa !377
  %i.bmk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.bml = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.bmm = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.bmn = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.bmn, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, !llvm.loop !35

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.bmo = shl nsw i64 %.022.i16.i, 2             ; 4 uses
  %.not65.i = icmp slt i64 %i.art, %i.bmo
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.idx.i = shl nsw i64 %.022.i16.i, 5            ; 2 uses
  %.idx56.i = shl nsw i64 %.022.i16.i, 6          ; 2 uses
  %.not57.i = icmp eq i64 %.idx.i, %.idx56.i
  br label %bb.ed

bb.ed:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %.lr.ph.i
  %.sroa.022.067.i = phi ptr [ %i.pj, %.lr.ph.i ], [ %i.bqg, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.066.i = phi ptr [ %.sroa.10.0.i, %.lr.ph.i ], [ %i.bmq, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 4 uses
  %i.bmp = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i ; 4 uses
  %i.bmq = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br i1 %.not57.i, label %._crit_edge.i.i, label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %bb.ed, %bb.eg
  %.029.i.i = phi ptr [ %.1.i.i209, %bb.eg ], [ %.066.i, %bb.ed ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.eg ], [ %i.bmp, %bb.ed ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.bmx, %bb.eg ], [ %.sroa.022.067.i, %bb.ed ] ; 3 uses
  %i.bmr = load i64, ptr %.01628.i.i, align 8, !tbaa !135 ; 2 uses
  %i.bms = load i64, ptr %.029.i.i, align 8, !tbaa !135 ; 2 uses
  %i.bmt = icmp ult i64 %i.bmr, %i.bms
  br i1 %i.bmt, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph.i.i208
  %i.bmu = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.eg

bb.ef:                                            ; preds = %.lr.ph.i.i208
  %i.bmv = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sink34.i.i = phi i64 [ %i.bmr, %bb.ee ], [ %i.bms, %bb.ef ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.ee ], [ %.029.i.i, %bb.ef ]
  %.117.i.i = phi ptr [ %i.bmu, %bb.ee ], [ %.01628.i.i, %bb.ef ] ; 3 uses
  %.1.i.i209 = phi ptr [ %.029.i.i, %bb.ee ], [ %i.bmv, %bb.ef ] ; 3 uses
  %.sink.in.i.i210 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 8
  %.sink.i.i211 = load ptr, ptr %.sink.in.i.i210, align 8, !tbaa !376
  store i64 %.sink34.i.i, ptr %.sroa.0.027.i.i, align 8, !tbaa !375
  %i.bmw = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.sink.i.i211, ptr %i.bmw, align 8, !tbaa !377
  %i.bmx = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.bmy = icmp ne ptr %.1.i.i209, %i.bmp
  %i.bmz = icmp ne ptr %.117.i.i, %i.bmq
  %i.bna = select i1 %i.bmy, i1 %i.bmz, i1 false
  br i1 %i.bna, label %.lr.ph.i.i208, label %._crit_edge.i.i, !llvm.loop !37

._crit_edge.i.i:                                  ; preds = %bb.eg, %bb.ed
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.067.i, %bb.ed ], [ %i.bmx, %bb.eg ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.bmp, %bb.ed ], [ %.117.i.i, %bb.eg ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.066.i, %bb.ed ], [ %.1.i.i209, %bb.eg ] ; 3 uses
  %i.bnb = ptrtoint ptr %i.bmp to i64
  %i.bnc = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bnd = sub i64 %i.bnb, %i.bnc
  %i.bne = ashr exact i64 %i.bnd, 4               ; 5 uses
  %i.bnf = icmp sgt i64 %i.bne, 0
  br i1 %i.bnf, label %.lr.ph.i.i.i.i.i.i.i214.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i214.preheader:                ; preds = %._crit_edge.i.i
  %xtraiter1064 = and i64 %i.bne, 3               ; 2 uses
  %lcmp.mod1065.not = icmp eq i64 %xtraiter1064, 0
  br i1 %lcmp.mod1065.not, label %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i214.prol

.lr.ph.i.i.i.i.i.i.i214.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i214.preheader, %.lr.ph.i.i.i.i.i.i.i214.prol
  %.012.i.i.i.i.i.i.i215.prol = phi i64 [ %i.bnm, %.lr.ph.i.i.i.i.i.i.i214.prol ], [ %i.bne, %.lr.ph.i.i.i.i.i.i.i214.preheader ]
  %.0811.i.i.i.i.i.i.i216.prol = phi ptr [ %i.bnl, %.lr.ph.i.i.i.i.i.i.i214.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i214.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i217.prol = phi ptr [ %i.bnk, %.lr.ph.i.i.i.i.i.i.i214.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i214.preheader ] ; 3 uses
  %prol.iter1066 = phi i64 [ %prol.iter1066.next, %.lr.ph.i.i.i.i.i.i.i214.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i214.preheader ]
  %i.bng = load i64, ptr %.0910.i.i.i.i.i.i.i217.prol, align 8, !tbaa !135
  store i64 %i.bng, ptr %.0811.i.i.i.i.i.i.i216.prol, align 8, !tbaa !375
  %i.bnh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217.prol, i64 8
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !376
  %i.bnj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216.prol, i64 8
  store ptr %i.bni, ptr %i.bnj, align 8, !tbaa !377
  %i.bnk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217.prol, i64 16 ; 2 uses
  %i.bnl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216.prol, i64 16 ; 3 uses
  %i.bnm = add nsw i64 %.012.i.i.i.i.i.i.i215.prol, -1 ; 2 uses
  %prol.iter1066.next = add i64 %prol.iter1066, 1 ; 2 uses
  %prol.iter1066.cmp.not = icmp eq i64 %prol.iter1066.next, %xtraiter1064
  br i1 %prol.iter1066.cmp.not, label %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i214.prol, !llvm.loop !655

.lr.ph.i.i.i.i.i.i.i214.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i214.prol, %.lr.ph.i.i.i.i.i.i.i214.preheader
  %.012.i.i.i.i.i.i.i215.unr = phi i64 [ %i.bne, %.lr.ph.i.i.i.i.i.i.i214.preheader ], [ %i.bnm, %.lr.ph.i.i.i.i.i.i.i214.prol ]
  %.0811.i.i.i.i.i.i.i216.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i214.preheader ], [ %i.bnl, %.lr.ph.i.i.i.i.i.i.i214.prol ]
  %.0910.i.i.i.i.i.i.i217.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i214.preheader ], [ %i.bnk, %.lr.ph.i.i.i.i.i.i.i214.prol ]
  %.lcssa938.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i214.preheader ], [ %i.bnl, %.lr.ph.i.i.i.i.i.i.i214.prol ]
  %i.bnn = icmp ult i64 %i.bne, 4
  br i1 %i.bnn, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i214

.lr.ph.i.i.i.i.i.i.i214:                          ; preds = %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i214
  %.012.i.i.i.i.i.i.i215 = phi i64 [ %i.bom, %.lr.ph.i.i.i.i.i.i.i214 ], [ %.012.i.i.i.i.i.i.i215.unr, %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i216 = phi ptr [ %i.bol, %.lr.ph.i.i.i.i.i.i.i214 ], [ %.0811.i.i.i.i.i.i.i216.unr, %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i217 = phi ptr [ %i.bok, %.lr.ph.i.i.i.i.i.i.i214 ], [ %.0910.i.i.i.i.i.i.i217.unr, %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit ] ; 9 uses
  %i.bno = load i64, ptr %.0910.i.i.i.i.i.i.i217, align 8, !tbaa !135
  store i64 %i.bno, ptr %.0811.i.i.i.i.i.i.i216, align 8, !tbaa !375
  %i.bnp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 8
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !376
  %i.bnr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 8
  store ptr %i.bnq, ptr %i.bnr, align 8, !tbaa !377
  %i.bns = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 16
  %i.bnt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 16
  %i.bnu = load i64, ptr %i.bns, align 8, !tbaa !135
  store i64 %i.bnu, ptr %i.bnt, align 8, !tbaa !375
  %i.bnv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 24
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !376
  %i.bnx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 24
  store ptr %i.bnw, ptr %i.bnx, align 8, !tbaa !377
  %i.bny = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 32
  %i.bnz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 32
  %i.boa = load i64, ptr %i.bny, align 8, !tbaa !135
  store i64 %i.boa, ptr %i.bnz, align 8, !tbaa !375
  %i.bob = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 40
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !376
  %i.bod = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 40
  store ptr %i.boc, ptr %i.bod, align 8, !tbaa !377
  %i.boe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 48
  %i.bof = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 48
  %i.bog = load i64, ptr %i.boe, align 8, !tbaa !135
  store i64 %i.bog, ptr %i.bof, align 8, !tbaa !375
  %i.boh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 56
  %i.boi = load ptr, ptr %i.boh, align 8, !tbaa !376
  %i.boj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 56
  store ptr %i.boi, ptr %i.boj, align 8, !tbaa !377
  %i.bok = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i217, i64 64
  %i.bol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i216, i64 64 ; 2 uses
  %i.bom = add nsw i64 %.012.i.i.i.i.i.i.i215, -4
  %i.bon = icmp sgt i64 %.012.i.i.i.i.i.i.i215, 4
  br i1 %i.bon, label %.lr.ph.i.i.i.i.i.i.i214, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i214, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa938.unr.a, %.lr.ph.i.i.i.i.i.i.i214.prol.loopexit ], [ %i.bol, %.lr.ph.i.i.i.i.i.i.i214 ]
  %i.boo = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.bop = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.boq = sub i64 %i.boo, %i.bop
  %i.bor = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.boq ; 4 uses
  %i.bos = ptrtoint ptr %i.bmq to i64             ; 2 uses
  %i.bot = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.bou = sub i64 %i.bos, %i.bot
  %i.bov = ashr exact i64 %i.bou, 4               ; 5 uses
  %i.bow = icmp sgt i64 %i.bov, 0
  br i1 %i.bow, label %.lr.ph.i.i.i.i.i19.i.i213.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i213.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %xtraiter1067 = and i64 %i.bov, 3               ; 2 uses
  %lcmp.mod1068.not = icmp eq i64 %xtraiter1067, 0
  br i1 %lcmp.mod1068.not, label %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i213.prol

.lr.ph.i.i.i.i.i19.i.i213.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i213.preheader, %.lr.ph.i.i.i.i.i19.i.i213.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.bpd, %.lr.ph.i.i.i.i.i19.i.i213.prol ], [ %i.bov, %.lr.ph.i.i.i.i.i19.i.i213.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.bpc, %.lr.ph.i.i.i.i.i19.i.i213.prol ], [ %i.bor, %.lr.ph.i.i.i.i.i19.i.i213.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.bpb, %.lr.ph.i.i.i.i.i19.i.i213.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i213.preheader ] ; 3 uses
  %prol.iter1069 = phi i64 [ %prol.iter1069.next, %.lr.ph.i.i.i.i.i19.i.i213.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i213.preheader ]
  %i.box = load i64, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !135
  store i64 %i.box, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !375
  %i.boy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !376
  %i.bpa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.boz, ptr %i.bpa, align 8, !tbaa !377
  %i.bpb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.bpd = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter1069.next = add i64 %prol.iter1069, 1 ; 2 uses
  %prol.iter1069.cmp.not = icmp eq i64 %prol.iter1069.next, %xtraiter1067
  br i1 %prol.iter1069.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i213.prol, !llvm.loop !656

.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i213.prol, %.lr.ph.i.i.i.i.i19.i.i213.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.bov, %.lr.ph.i.i.i.i.i19.i.i213.preheader ], [ %i.bpd, %.lr.ph.i.i.i.i.i19.i.i213.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.bor, %.lr.ph.i.i.i.i.i19.i.i213.preheader ], [ %i.bpc, %.lr.ph.i.i.i.i.i19.i.i213.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i213.preheader ], [ %i.bpb, %.lr.ph.i.i.i.i.i19.i.i213.prol ]
  %.lcssa939.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i213.preheader ], [ %i.bpc, %.lr.ph.i.i.i.i.i19.i.i213.prol ]
  %i.bpe = icmp ult i64 %i.bov, 4
  br i1 %i.bpe, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, label %.lr.ph.i.i.i.i.i19.i.i213

.lr.ph.i.i.i.i.i19.i.i213:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i213
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.bqd, %.lr.ph.i.i.i.i.i19.i.i213 ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.bqc, %.lr.ph.i.i.i.i.i19.i.i213 ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.bqb, %.lr.ph.i.i.i.i.i19.i.i213 ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit ] ; 9 uses
  %i.bpf = load i64, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !135
  store i64 %i.bpf, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !375
  %i.bpg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !376
  %i.bpi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.bph, ptr %i.bpi, align 8, !tbaa !377
  %i.bpj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.bpk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.bpl = load i64, ptr %i.bpj, align 8, !tbaa !135
  store i64 %i.bpl, ptr %i.bpk, align 8, !tbaa !375
  %i.bpm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !376
  %i.bpo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.bpn, ptr %i.bpo, align 8, !tbaa !377
  %i.bpp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.bpq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.bpr = load i64, ptr %i.bpp, align 8, !tbaa !135
  store i64 %i.bpr, ptr %i.bpq, align 8, !tbaa !375
  %i.bps = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !376
  %i.bpu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.bpt, ptr %i.bpu, align 8, !tbaa !377
  %i.bpv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.bpw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.bpx = load i64, ptr %i.bpv, align 8, !tbaa !135
  store i64 %i.bpx, ptr %i.bpw, align 8, !tbaa !375
  %i.bpy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !376
  %i.bqa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.bpz, ptr %i.bqa, align 8, !tbaa !377
  %i.bqb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.bqc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.bqd = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.bqe = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.bqe, label %.lr.ph.i.i.i.i.i19.i.i213, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, !llvm.loop !35

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i213, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.bor, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %.lcssa939.unr, %.lr.ph.i.i.i.i.i19.i.i213.prol.loopexit ], [ %i.bqc, %.lr.ph.i.i.i.i.i19.i.i213 ]
  %7 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.bqf = sub i64 %7, %i.boo
  %i.bqg = getelementptr inbounds i8, ptr %i.bor, i64 %i.bqf ; 2 uses
  %i.bqh = sub i64 %i.bfo, %i.bos
  %i.bqi = ashr exact i64 %i.bqh, 4               ; 2 uses
  %.not.i212 = icmp slt i64 %i.bqi, %i.bmo
  br i1 %.not.i212, label %._crit_edge.i, label %bb.ed, !llvm.loop !38

._crit_edge.i:                                    ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bmq, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %i.pj, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bqg, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.art, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bqi, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.bfp, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = shl nsw i64 %.sroa.speculated.i, 4
  %i.bqj = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %.idx58.i ; 5 uses
  %i.bqk = icmp ne i64 %.sroa.speculated.i, 0
  %i.bql = icmp ne ptr %i.bqj, %i.aru
  %i.bqm = and i1 %i.bqk, %i.bql
  br i1 %i.bqm, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i, %bb.ej
  %.029.i42.i = phi ptr [ %.1.i48.i, %bb.ej ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i47.i, %bb.ej ], [ %i.bqj, %._crit_edge.i ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.bqt, %bb.ej ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bqn = load i64, ptr %.01628.i43.i, align 8, !tbaa !135 ; 2 uses
  %i.bqo = load i64, ptr %.029.i42.i, align 8, !tbaa !135 ; 2 uses
  %i.bqp = icmp ult i64 %i.bqn, %i.bqo
  br i1 %i.bqp, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph.i41.i
  %i.bqq = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.ej

bb.ei:                                            ; preds = %.lr.ph.i41.i
  %i.bqr = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.sink34.i45.i = phi i64 [ %i.bqn, %bb.eh ], [ %i.bqo, %bb.ei ]
  %.01628.pn.i46.i = phi ptr [ %.01628.i43.i, %bb.eh ], [ %.029.i42.i, %bb.ei ]
  %.117.i47.i = phi ptr [ %i.bqq, %bb.eh ], [ %.01628.i43.i, %bb.ei ] ; 3 uses
  %.1.i48.i = phi ptr [ %.029.i42.i, %bb.eh ], [ %i.bqr, %bb.ei ] ; 3 uses
  %.sink.in.i49.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i, i64 8
  %.sink.i50.i = load ptr, ptr %.sink.in.i49.i, align 8, !tbaa !376
  store i64 %.sink34.i45.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !375
  %i.bqs = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.sink.i50.i, ptr %i.bqs, align 8, !tbaa !377
  %i.bqt = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.bqu = icmp ne ptr %.1.i48.i, %i.bqj
  %i.bqv = icmp ne ptr %.117.i47.i, %i.aru
  %i.bqw = select i1 %i.bqu, i1 %i.bqv, i1 false
  br i1 %i.bqw, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !37

._crit_edge.i25.i:                                ; preds = %bb.ej, %._crit_edge.i
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i ], [ %i.bqt, %bb.ej ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.bqj, %._crit_edge.i ], [ %.117.i47.i, %bb.ej ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.1.i48.i, %bb.ej ] ; 3 uses
  %i.bqx = ptrtoint ptr %i.bqj to i64
  %i.bqy = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.bqz = sub i64 %i.bqx, %i.bqy
  %i.bra = ashr exact i64 %i.bqz, 4               ; 5 uses
  %i.brb = icmp sgt i64 %i.bra, 0
  br i1 %i.brb, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter1070 = and i64 %i.bra, 3               ; 2 uses
  %lcmp.mod1071.not = icmp eq i64 %xtraiter1070, 0
  br i1 %lcmp.mod1071.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.bri, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.bra, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.brh, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.brg, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter1072 = phi i64 [ %prol.iter1072.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.brc = load i64, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !135
  store i64 %i.brc, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !375
  %i.brd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !376
  %i.brf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.bre, ptr %i.brf, align 8, !tbaa !377
  %i.brg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.bri = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter1072.next = add i64 %prol.iter1072, 1 ; 2 uses
  %prol.iter1072.cmp.not = icmp eq i64 %prol.iter1072.next, %xtraiter1070
  br i1 %prol.iter1072.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !657

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.bra, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.bri, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.brh, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.brg, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa944.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.brh, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.brj = icmp ult i64 %i.bra, 4
  br i1 %i.brj, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.bsi, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.bsh, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.bsg, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.brk = load i64, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !135
  store i64 %i.brk, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !375
  %i.brl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !376
  %i.brn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.brm, ptr %i.brn, align 8, !tbaa !377
  %i.bro = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.brp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.brq = load i64, ptr %i.bro, align 8, !tbaa !135
  store i64 %i.brq, ptr %i.brp, align 8, !tbaa !375
  %i.brr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !376
  %i.brt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.brs, ptr %i.brt, align 8, !tbaa !377
  %i.bru = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.brv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.brw = load i64, ptr %i.bru, align 8, !tbaa !135
  store i64 %i.brw, ptr %i.brv, align 8, !tbaa !375
  %i.brx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !376
  %i.brz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.bry, ptr %i.brz, align 8, !tbaa !377
  %i.bsa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.bsb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.bsc = load i64, ptr %i.bsa, align 8, !tbaa !135
  store i64 %i.bsc, ptr %i.bsb, align 8, !tbaa !375
  %i.bsd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !376
  %i.bsf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.bse, ptr %i.bsf, align 8, !tbaa !377
  %i.bsg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.bsh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.bsi = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.bsj = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.bsj, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa944.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.bsh, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.bsk = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.bsl = sub i64 %i.bfo, %i.bsk
  %i.bsm = ashr exact i64 %i.bsl, 4               ; 5 uses
  %i.bsn = icmp sgt i64 %i.bsm, 0
  br i1 %i.bsn, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.bso = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.bsp = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.bsq = sub i64 %i.bso, %i.bsp
  %i.bsr = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.bsq ; 2 uses
  %xtraiter1073 = and i64 %i.bsm, 3               ; 2 uses
  %lcmp.mod1074.not = icmp eq i64 %xtraiter1073, 0
  br i1 %lcmp.mod1074.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.bsy, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bsm, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.bsx, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bsr, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.bsw, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter1075 = phi i64 [ %prol.iter1075.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.bss = load i64, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 8, !tbaa !135
  store i64 %i.bss, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !375
  %i.bst = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.bsu = load ptr, ptr %i.bst, align 8, !tbaa !376
  %i.bsv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.bsu, ptr %i.bsv, align 8, !tbaa !377
  %i.bsw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.bsy = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter1075.next = add i64 %prol.iter1075, 1 ; 2 uses
  %prol.iter1075.cmp.not = icmp eq i64 %prol.iter1075.next, %xtraiter1073
  br i1 %prol.iter1075.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !658

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.bsm, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bsy, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.bsr, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bsx, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bsw, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.bsz = icmp ult i64 %i.bsm, 4
  br i1 %i.bsz, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.bty, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.btx, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.btw, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.bta = load i64, ptr %.0910.i.i.i.i.i22.i35.i, align 8, !tbaa !135
  store i64 %i.bta, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !375
  %i.btb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !376
  %i.btd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.btc, ptr %i.btd, align 8, !tbaa !377
  %i.bte = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.btf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.btg = load i64, ptr %i.bte, align 8, !tbaa !135
  store i64 %i.btg, ptr %i.btf, align 8, !tbaa !375
  %i.bth = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.bti = load ptr, ptr %i.bth, align 8, !tbaa !376
  %i.btj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.bti, ptr %i.btj, align 8, !tbaa !377
  %i.btk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.btl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.btm = load i64, ptr %i.btk, align 8, !tbaa !135
  store i64 %i.btm, ptr %i.btl, align 8, !tbaa !375
  %i.btn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.bto = load ptr, ptr %i.btn, align 8, !tbaa !376
  %i.btp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
end_hunk_1
begin_hunk_2_@_ZN4llvm15InstrProfWriter30writeTextTemporalProfTraceDataERNS_14raw_fd_ostreamERNS_15InstrProfSymtabE:bb.a
.lr.ph.i.i.i.i.i10.i24.i237.prol:                 ; preds = %.lr.ph.i.i.i.i.i10.i24.i237.preheader, %.lr.ph.i.i.i.i.i10.i24.i237.prol
  %.012.i.i.i.i.i11.i25.i238.prol = phi i64 [ %i.aau, %.lr.ph.i.i.i.i.i10.i24.i237.prol ], [ %i.aam, %.lr.ph.i.i.i.i.i10.i24.i237.preheader ]
  %.0811.i.i.i.i.i12.i26.i239.prol = phi ptr [ %i.aat, %.lr.ph.i.i.i.i.i10.i24.i237.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i236, %.lr.ph.i.i.i.i.i10.i24.i237.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i240.prol = phi ptr [ %i.aas, %.lr.ph.i.i.i.i.i10.i24.i237.prol ], [ %.sroa.015.0.lcssa.i18.i232, %.lr.ph.i.i.i.i.i10.i24.i237.preheader ] ; 3 uses
  %prol.iter834 = phi i64 [ %prol.iter834.next, %.lr.ph.i.i.i.i.i10.i24.i237.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i237.preheader ]
  %i.aao = load i64, ptr %.0910.i.i.i.i.i13.i27.i240.prol, align 8, !tbaa !135
  store i64 %i.aao, ptr %.0811.i.i.i.i.i12.i26.i239.prol, align 8, !tbaa !375
  %i.aap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240.prol, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !376
  %i.aar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239.prol, i64 8
  store ptr %i.aaq, ptr %i.aar, align 8, !tbaa !377
  %i.aas = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240.prol, i64 16 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239.prol, i64 16 ; 2 uses
  %i.aau = add nsw i64 %.012.i.i.i.i.i11.i25.i238.prol, -1 ; 2 uses
  %prol.iter834.next = add i64 %prol.iter834, 1   ; 2 uses
  %prol.iter834.cmp.not = icmp eq i64 %prol.iter834.next, %xtraiter832
  br i1 %prol.iter834.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i237.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i237.prol, !llvm.loop !689

.lr.ph.i.i.i.i.i10.i24.i237.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i10.i24.i237.prol, %.lr.ph.i.i.i.i.i10.i24.i237.preheader
  %.012.i.i.i.i.i11.i25.i238.unr = phi i64 [ %i.aam, %.lr.ph.i.i.i.i.i10.i24.i237.preheader ], [ %i.aau, %.lr.ph.i.i.i.i.i10.i24.i237.prol ]
  %.0811.i.i.i.i.i12.i26.i239.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i236, %.lr.ph.i.i.i.i.i10.i24.i237.preheader ], [ %i.aat, %.lr.ph.i.i.i.i.i10.i24.i237.prol ]
  %.0910.i.i.i.i.i13.i27.i240.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i232, %.lr.ph.i.i.i.i.i10.i24.i237.preheader ], [ %i.aas, %.lr.ph.i.i.i.i.i10.i24.i237.prol ]
  %i.aav = icmp ult i64 %i.aam, 4
  br i1 %i.aav, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264, label %.lr.ph.i.i.i.i.i10.i24.i237

.lr.ph.i.i.i.i.i10.i24.i237:                      ; preds = %.lr.ph.i.i.i.i.i10.i24.i237.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i237
  %.012.i.i.i.i.i11.i25.i238 = phi i64 [ %i.abu, %.lr.ph.i.i.i.i.i10.i24.i237 ], [ %.012.i.i.i.i.i11.i25.i238.unr, %.lr.ph.i.i.i.i.i10.i24.i237.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i239 = phi ptr [ %i.abt, %.lr.ph.i.i.i.i.i10.i24.i237 ], [ %.0811.i.i.i.i.i12.i26.i239.unr, %.lr.ph.i.i.i.i.i10.i24.i237.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i240 = phi ptr [ %i.abs, %.lr.ph.i.i.i.i.i10.i24.i237 ], [ %.0910.i.i.i.i.i13.i27.i240.unr, %.lr.ph.i.i.i.i.i10.i24.i237.prol.loopexit ] ; 9 uses
  %i.aaw = load i64, ptr %.0910.i.i.i.i.i13.i27.i240, align 8, !tbaa !135
  store i64 %i.aaw, ptr %.0811.i.i.i.i.i12.i26.i239, align 8, !tbaa !375
  %i.aax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 8
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !376
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 8
  store ptr %i.aay, ptr %i.aaz, align 8, !tbaa !377
  %i.aba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 16
  %i.abb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 16
  %i.abc = load i64, ptr %i.aba, align 8, !tbaa !135
  store i64 %i.abc, ptr %i.abb, align 8, !tbaa !375
  %i.abd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 24
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !376
  %i.abf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 24
  store ptr %i.abe, ptr %i.abf, align 8, !tbaa !377
  %i.abg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 32
  %i.abh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 32
  %i.abi = load i64, ptr %i.abg, align 8, !tbaa !135
  store i64 %i.abi, ptr %i.abh, align 8, !tbaa !375
  %i.abj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 40
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !376
  %i.abl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 40
  store ptr %i.abk, ptr %i.abl, align 8, !tbaa !377
  %i.abm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 48
  %i.abn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 48
  %i.abo = load i64, ptr %i.abm, align 8, !tbaa !135
  store i64 %i.abo, ptr %i.abn, align 8, !tbaa !375
  %i.abp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 56
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !376
  %i.abr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 56
  store ptr %i.abq, ptr %i.abr, align 8, !tbaa !377
  %i.abs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i240, i64 64
  %i.abt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i239, i64 64
  %i.abu = add nsw i64 %.012.i.i.i.i.i11.i25.i238, -4
  %i.abv = icmp sgt i64 %.012.i.i.i.i.i11.i25.i238, 4
  br i1 %i.abv, label %.lr.ph.i.i.i.i.i10.i24.i237, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264, !llvm.loop !35

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264: ; preds = %.lr.ph.i.i.i.i.i10.i24.i237.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i237, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i235
  %i.abw = shl nsw i64 %.022.i.i, 2               ; 4 uses
  %.not65.i130 = icmp slt i64 %i.ge, %i.abw
  br i1 %.not65.i130, label %._crit_edge.i156, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264
  %.idx.i132 = shl nsw i64 %.022.i.i, 5           ; 2 uses
  %.idx56.i133 = shl nsw i64 %.022.i.i, 6         ; 2 uses
  %.not57.i134 = icmp eq i64 %.idx.i132, %.idx56.i133
  br label %bb.bh

bb.bh:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153, %.lr.ph.i131
  %.sroa.022.067.i135 = phi ptr [ %i.fw, %.lr.ph.i131 ], [ %i.afo, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153 ] ; 2 uses
  %.066.i136 = phi ptr [ %.sroa.10.0.i, %.lr.ph.i131 ], [ %i.aby, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153 ] ; 4 uses
  %i.abx = getelementptr inbounds i8, ptr %.066.i136, i64 %.idx.i132 ; 4 uses
  %i.aby = getelementptr inbounds i8, ptr %.066.i136, i64 %.idx56.i133 ; 4 uses
  br i1 %.not57.i134, label %._crit_edge.i.i147, label %.lr.ph.i.i137

.lr.ph.i.i137:                                    ; preds = %bb.bh, %bb.bk
  %.029.i.i138 = phi ptr [ %.1.i.i144, %bb.bk ], [ %.066.i136, %bb.bh ] ; 4 uses
  %.01628.i.i139 = phi ptr [ %.117.i.i143, %bb.bk ], [ %i.abx, %bb.bh ] ; 4 uses
  %.sroa.0.027.i.i140 = phi ptr [ %i.acf, %bb.bk ], [ %.sroa.022.067.i135, %bb.bh ] ; 3 uses
  %i.abz = load i64, ptr %.01628.i.i139, align 8, !tbaa !135 ; 2 uses
  %i.aca = load i64, ptr %.029.i.i138, align 8, !tbaa !135 ; 2 uses
  %i.acb = icmp ult i64 %i.abz, %i.aca
  br i1 %i.acb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i.i137
  %i.acc = getelementptr inbounds nuw i8, ptr %.01628.i.i139, i64 16
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i.i137
  %i.acd = getelementptr inbounds nuw i8, ptr %.029.i.i138, i64 16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sink34.i.i141 = phi i64 [ %i.abz, %bb.bi ], [ %i.aca, %bb.bj ]
  %.01628.pn.i.i142 = phi ptr [ %.01628.i.i139, %bb.bi ], [ %.029.i.i138, %bb.bj ]
  %.117.i.i143 = phi ptr [ %i.acc, %bb.bi ], [ %.01628.i.i139, %bb.bj ] ; 3 uses
  %.1.i.i144 = phi ptr [ %.029.i.i138, %bb.bi ], [ %i.acd, %bb.bj ] ; 3 uses
  %.sink.in.i.i145 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i142, i64 8
  %.sink.i.i146 = load ptr, ptr %.sink.in.i.i145, align 8, !tbaa !376
  store i64 %.sink34.i.i141, ptr %.sroa.0.027.i.i140, align 8, !tbaa !375
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i140, i64 8
  store ptr %.sink.i.i146, ptr %i.ace, align 8, !tbaa !377
  %i.acf = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i140, i64 16 ; 2 uses
  %i.acg = icmp ne ptr %.1.i.i144, %i.abx
  %i.ach = icmp ne ptr %.117.i.i143, %i.aby
  %i.aci = select i1 %i.acg, i1 %i.ach, i1 false
  br i1 %i.aci, label %.lr.ph.i.i137, label %._crit_edge.i.i147, !llvm.loop !37

._crit_edge.i.i147:                               ; preds = %bb.bk, %bb.bh
  %.sroa.0.0.lcssa.i.i148 = phi ptr [ %.sroa.022.067.i135, %bb.bh ], [ %i.acf, %bb.bk ] ; 5 uses
  %.016.lcssa.i.i149 = phi ptr [ %i.abx, %bb.bh ], [ %.117.i.i143, %bb.bk ] ; 3 uses
  %.0.lcssa.i.i150 = phi ptr [ %.066.i136, %bb.bh ], [ %.1.i.i144, %bb.bk ] ; 3 uses
  %i.acj = ptrtoint ptr %i.abx to i64
  %i.ack = ptrtoint ptr %.0.lcssa.i.i150 to i64
  %i.acl = sub i64 %i.acj, %i.ack
  %i.acm = ashr exact i64 %i.acl, 4               ; 5 uses
  %i.acn = icmp sgt i64 %i.acm, 0
  br i1 %i.acn, label %.lr.ph.i.i.i.i.i.i.i192.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i151

.lr.ph.i.i.i.i.i.i.i192.preheader:                ; preds = %._crit_edge.i.i147
  %xtraiter835 = and i64 %i.acm, 3                ; 2 uses
  %lcmp.mod836.not = icmp eq i64 %xtraiter835, 0
  br i1 %lcmp.mod836.not, label %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i192.prol

.lr.ph.i.i.i.i.i.i.i192.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i192.preheader, %.lr.ph.i.i.i.i.i.i.i192.prol
  %.012.i.i.i.i.i.i.i193.prol = phi i64 [ %i.acu, %.lr.ph.i.i.i.i.i.i.i192.prol ], [ %i.acm, %.lr.ph.i.i.i.i.i.i.i192.preheader ]
  %.0811.i.i.i.i.i.i.i194.prol = phi ptr [ %i.act, %.lr.ph.i.i.i.i.i.i.i192.prol ], [ %.sroa.0.0.lcssa.i.i148, %.lr.ph.i.i.i.i.i.i.i192.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i195.prol = phi ptr [ %i.acs, %.lr.ph.i.i.i.i.i.i.i192.prol ], [ %.0.lcssa.i.i150, %.lr.ph.i.i.i.i.i.i.i192.preheader ] ; 3 uses
  %prol.iter837 = phi i64 [ %prol.iter837.next, %.lr.ph.i.i.i.i.i.i.i192.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i192.preheader ]
  %i.aco = load i64, ptr %.0910.i.i.i.i.i.i.i195.prol, align 8, !tbaa !135
  store i64 %i.aco, ptr %.0811.i.i.i.i.i.i.i194.prol, align 8, !tbaa !375
  %i.acp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195.prol, i64 8
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !376
  %i.acr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194.prol, i64 8
  store ptr %i.acq, ptr %i.acr, align 8, !tbaa !377
  %i.acs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195.prol, i64 16 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194.prol, i64 16 ; 3 uses
  %i.acu = add nsw i64 %.012.i.i.i.i.i.i.i193.prol, -1 ; 2 uses
  %prol.iter837.next = add i64 %prol.iter837, 1   ; 2 uses
  %prol.iter837.cmp.not = icmp eq i64 %prol.iter837.next, %xtraiter835
  br i1 %prol.iter837.cmp.not, label %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i192.prol, !llvm.loop !690

.lr.ph.i.i.i.i.i.i.i192.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i192.prol, %.lr.ph.i.i.i.i.i.i.i192.preheader
  %.012.i.i.i.i.i.i.i193.unr = phi i64 [ %i.acm, %.lr.ph.i.i.i.i.i.i.i192.preheader ], [ %i.acu, %.lr.ph.i.i.i.i.i.i.i192.prol ]
  %.0811.i.i.i.i.i.i.i194.unr = phi ptr [ %.sroa.0.0.lcssa.i.i148, %.lr.ph.i.i.i.i.i.i.i192.preheader ], [ %i.act, %.lr.ph.i.i.i.i.i.i.i192.prol ]
  %.0910.i.i.i.i.i.i.i195.unr = phi ptr [ %.0.lcssa.i.i150, %.lr.ph.i.i.i.i.i.i.i192.preheader ], [ %i.acs, %.lr.ph.i.i.i.i.i.i.i192.prol ]
  %.lcssa749.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i192.preheader ], [ %i.act, %.lr.ph.i.i.i.i.i.i.i192.prol ]
  %i.acv = icmp ult i64 %i.acm, 4
  br i1 %i.acv, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i151, label %.lr.ph.i.i.i.i.i.i.i192

.lr.ph.i.i.i.i.i.i.i192:                          ; preds = %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i192
  %.012.i.i.i.i.i.i.i193 = phi i64 [ %i.adu, %.lr.ph.i.i.i.i.i.i.i192 ], [ %.012.i.i.i.i.i.i.i193.unr, %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i194 = phi ptr [ %i.adt, %.lr.ph.i.i.i.i.i.i.i192 ], [ %.0811.i.i.i.i.i.i.i194.unr, %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i195 = phi ptr [ %i.ads, %.lr.ph.i.i.i.i.i.i.i192 ], [ %.0910.i.i.i.i.i.i.i195.unr, %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit ] ; 9 uses
  %i.acw = load i64, ptr %.0910.i.i.i.i.i.i.i195, align 8, !tbaa !135
  store i64 %i.acw, ptr %.0811.i.i.i.i.i.i.i194, align 8, !tbaa !375
  %i.acx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 8
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !376
  %i.acz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 8
  store ptr %i.acy, ptr %i.acz, align 8, !tbaa !377
  %i.ada = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 16
  %i.adb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 16
  %i.adc = load i64, ptr %i.ada, align 8, !tbaa !135
  store i64 %i.adc, ptr %i.adb, align 8, !tbaa !375
  %i.add = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 24
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !376
  %i.adf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 24
  store ptr %i.ade, ptr %i.adf, align 8, !tbaa !377
  %i.adg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 32
  %i.adh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 32
  %i.adi = load i64, ptr %i.adg, align 8, !tbaa !135
  store i64 %i.adi, ptr %i.adh, align 8, !tbaa !375
  %i.adj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 40
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !376
  %i.adl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 40
  store ptr %i.adk, ptr %i.adl, align 8, !tbaa !377
  %i.adm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 48
  %i.adn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 48
  %i.ado = load i64, ptr %i.adm, align 8, !tbaa !135
  store i64 %i.ado, ptr %i.adn, align 8, !tbaa !375
  %i.adp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 56
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !376
  %i.adr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 56
  store ptr %i.adq, ptr %i.adr, align 8, !tbaa !377
  %i.ads = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i195, i64 64
  %i.adt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i194, i64 64 ; 2 uses
  %i.adu = add nsw i64 %.012.i.i.i.i.i.i.i193, -4
  %i.adv = icmp sgt i64 %.012.i.i.i.i.i.i.i193, 4
  br i1 %i.adv, label %.lr.ph.i.i.i.i.i.i.i192, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i151, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i151: ; preds = %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i192, %._crit_edge.i.i147
  %.08.lcssa.i.i.i.i.i.i.i152 = phi ptr [ %.sroa.0.0.lcssa.i.i148, %._crit_edge.i.i147 ], [ %.lcssa749.unr.a, %.lr.ph.i.i.i.i.i.i.i192.prol.loopexit ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i192 ]
  %i.adw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i152 to i64 ; 2 uses
  %i.adx = ptrtoint ptr %.sroa.0.0.lcssa.i.i148 to i64
  %i.ady = sub i64 %i.adw, %i.adx
  %i.adz = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i148, i64 %i.ady ; 4 uses
  %i.aea = ptrtoint ptr %i.aby to i64             ; 2 uses
  %i.aeb = ptrtoint ptr %.016.lcssa.i.i149 to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  %i.aed = ashr exact i64 %i.aec, 4               ; 5 uses
  %i.aee = icmp sgt i64 %i.aed, 0
  br i1 %i.aee, label %.lr.ph.i.i.i.i.i19.i.i187.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153

.lr.ph.i.i.i.i.i19.i.i187.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i151
  %xtraiter838 = and i64 %i.aed, 3                ; 2 uses
  %lcmp.mod839.not = icmp eq i64 %xtraiter838, 0
  br i1 %lcmp.mod839.not, label %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i187.prol

.lr.ph.i.i.i.i.i19.i.i187.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i187.preheader, %.lr.ph.i.i.i.i.i19.i.i187.prol
  %.012.i.i.i.i.i20.i.i188.prol = phi i64 [ %i.ael, %.lr.ph.i.i.i.i.i19.i.i187.prol ], [ %i.aed, %.lr.ph.i.i.i.i.i19.i.i187.preheader ]
  %.0811.i.i.i.i.i21.i.i189.prol = phi ptr [ %i.aek, %.lr.ph.i.i.i.i.i19.i.i187.prol ], [ %i.adz, %.lr.ph.i.i.i.i.i19.i.i187.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i190.prol = phi ptr [ %i.aej, %.lr.ph.i.i.i.i.i19.i.i187.prol ], [ %.016.lcssa.i.i149, %.lr.ph.i.i.i.i.i19.i.i187.preheader ] ; 3 uses
  %prol.iter840 = phi i64 [ %prol.iter840.next, %.lr.ph.i.i.i.i.i19.i.i187.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i187.preheader ]
  %i.aef = load i64, ptr %.0910.i.i.i.i.i22.i.i190.prol, align 8, !tbaa !135
  store i64 %i.aef, ptr %.0811.i.i.i.i.i21.i.i189.prol, align 8, !tbaa !375
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190.prol, i64 8
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !376
  %i.aei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189.prol, i64 8
  store ptr %i.aeh, ptr %i.aei, align 8, !tbaa !377
  %i.aej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190.prol, i64 16 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189.prol, i64 16 ; 3 uses
  %i.ael = add nsw i64 %.012.i.i.i.i.i20.i.i188.prol, -1 ; 2 uses
  %prol.iter840.next = add i64 %prol.iter840, 1   ; 2 uses
  %prol.iter840.cmp.not = icmp eq i64 %prol.iter840.next, %xtraiter838
  br i1 %prol.iter840.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i187.prol, !llvm.loop !691

.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i187.prol, %.lr.ph.i.i.i.i.i19.i.i187.preheader
  %.012.i.i.i.i.i20.i.i188.unr = phi i64 [ %i.aed, %.lr.ph.i.i.i.i.i19.i.i187.preheader ], [ %i.ael, %.lr.ph.i.i.i.i.i19.i.i187.prol ]
  %.0811.i.i.i.i.i21.i.i189.unr = phi ptr [ %i.adz, %.lr.ph.i.i.i.i.i19.i.i187.preheader ], [ %i.aek, %.lr.ph.i.i.i.i.i19.i.i187.prol ]
  %.0910.i.i.i.i.i22.i.i190.unr = phi ptr [ %.016.lcssa.i.i149, %.lr.ph.i.i.i.i.i19.i.i187.preheader ], [ %i.aej, %.lr.ph.i.i.i.i.i19.i.i187.prol ]
  %.lcssa750.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i187.preheader ], [ %i.aek, %.lr.ph.i.i.i.i.i19.i.i187.prol ]
  %i.aem = icmp ult i64 %i.aed, 4
  br i1 %i.aem, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153, label %.lr.ph.i.i.i.i.i19.i.i187

.lr.ph.i.i.i.i.i19.i.i187:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i187
  %.012.i.i.i.i.i20.i.i188 = phi i64 [ %i.afl, %.lr.ph.i.i.i.i.i19.i.i187 ], [ %.012.i.i.i.i.i20.i.i188.unr, %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i189 = phi ptr [ %i.afk, %.lr.ph.i.i.i.i.i19.i.i187 ], [ %.0811.i.i.i.i.i21.i.i189.unr, %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i190 = phi ptr [ %i.afj, %.lr.ph.i.i.i.i.i19.i.i187 ], [ %.0910.i.i.i.i.i22.i.i190.unr, %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit ] ; 9 uses
  %i.aen = load i64, ptr %.0910.i.i.i.i.i22.i.i190, align 8, !tbaa !135
  store i64 %i.aen, ptr %.0811.i.i.i.i.i21.i.i189, align 8, !tbaa !375
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 8
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !376
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 8
  store ptr %i.aep, ptr %i.aeq, align 8, !tbaa !377
  %i.aer = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 16
  %i.aes = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 16
  %i.aet = load i64, ptr %i.aer, align 8, !tbaa !135
  store i64 %i.aet, ptr %i.aes, align 8, !tbaa !375
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 24
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !376
  %i.aew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 24
  store ptr %i.aev, ptr %i.aew, align 8, !tbaa !377
  %i.aex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 32
  %i.aey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 32
  %i.aez = load i64, ptr %i.aex, align 8, !tbaa !135
  store i64 %i.aez, ptr %i.aey, align 8, !tbaa !375
  %i.afa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 40
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !376
  %i.afc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 40
  store ptr %i.afb, ptr %i.afc, align 8, !tbaa !377
  %i.afd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 48
  %i.afe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 48
  %i.aff = load i64, ptr %i.afd, align 8, !tbaa !135
  store i64 %i.aff, ptr %i.afe, align 8, !tbaa !375
  %i.afg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 56
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !376
  %i.afi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 56
  store ptr %i.afh, ptr %i.afi, align 8, !tbaa !377
  %i.afj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i190, i64 64
  %i.afk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i189, i64 64 ; 2 uses
  %i.afl = add nsw i64 %.012.i.i.i.i.i20.i.i188, -4
  %i.afm = icmp sgt i64 %.012.i.i.i.i.i20.i.i188, 4
  br i1 %i.afm, label %.lr.ph.i.i.i.i.i19.i.i187, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153, !llvm.loop !35

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153: ; preds = %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i187, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i151
  %.08.lcssa.i.i.i.i.i18.i.i154 = phi ptr [ %i.adz, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i151 ], [ %.lcssa750.unr, %.lr.ph.i.i.i.i.i19.i.i187.prol.loopexit ], [ %i.afk, %.lr.ph.i.i.i.i.i19.i.i187 ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i154 to i64
  %i.afn = sub i64 %3, %i.adw
  %i.afo = getelementptr inbounds i8, ptr %i.adz, i64 %i.afn ; 2 uses
  %i.afp = sub i64 %i.uw, %i.aea
  %i.afq = ashr exact i64 %i.afp, 4               ; 2 uses
  %.not.i155 = icmp slt i64 %i.afq, %i.abw
  br i1 %.not.i155, label %._crit_edge.i156, label %bb.bh, !llvm.loop !38

._crit_edge.i156:                                 ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264
  %.0.lcssa.i157 = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264 ], [ %i.aby, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153 ] ; 3 uses
  %.sroa.022.0.lcssa.i158 = phi ptr [ %i.fw, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264 ], [ %i.afo, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153 ] ; 2 uses
  %.lcssa63.i159 = phi i64 [ %i.ge, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit264 ], [ %i.afq, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i153 ]
  %.sroa.speculated.i160 = tail call i64 @llvm.smin.i64(i64 %i.ux, i64 %.lcssa63.i159) ; 2 uses
  %.idx58.i161 = shl nsw i64 %.sroa.speculated.i160, 4
  %i.afr = getelementptr inbounds i8, ptr %.0.lcssa.i157, i64 %.idx58.i161 ; 5 uses
  %i.afs = icmp ne i64 %.sroa.speculated.i160, 0
  %i.aft = icmp ne ptr %i.afr, %i.hc
  %i.afu = and i1 %i.afs, %i.aft
  br i1 %i.afu, label %.lr.ph.i41.i177, label %._crit_edge.i25.i162

.lr.ph.i41.i177:                                  ; preds = %._crit_edge.i156, %bb.bn
  %.029.i42.i178 = phi ptr [ %.1.i48.i184, %bb.bn ], [ %.0.lcssa.i157, %._crit_edge.i156 ] ; 4 uses
  %.01628.i43.i179 = phi ptr [ %.117.i47.i183, %bb.bn ], [ %i.afr, %._crit_edge.i156 ] ; 4 uses
  %.sroa.0.027.i44.i180 = phi ptr [ %i.agb, %bb.bn ], [ %.sroa.022.0.lcssa.i158, %._crit_edge.i156 ] ; 3 uses
  %i.afv = load i64, ptr %.01628.i43.i179, align 8, !tbaa !135 ; 2 uses
  %i.afw = load i64, ptr %.029.i42.i178, align 8, !tbaa !135 ; 2 uses
  %i.afx = icmp ult i64 %i.afv, %i.afw
  br i1 %i.afx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i41.i177
  %i.afy = getelementptr inbounds nuw i8, ptr %.01628.i43.i179, i64 16
  br label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i41.i177
  %i.afz = getelementptr inbounds nuw i8, ptr %.029.i42.i178, i64 16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sink34.i45.i181 = phi i64 [ %i.afv, %bb.bl ], [ %i.afw, %bb.bm ]
  %.01628.pn.i46.i182 = phi ptr [ %.01628.i43.i179, %bb.bl ], [ %.029.i42.i178, %bb.bm ]
  %.117.i47.i183 = phi ptr [ %i.afy, %bb.bl ], [ %.01628.i43.i179, %bb.bm ] ; 3 uses
  %.1.i48.i184 = phi ptr [ %.029.i42.i178, %bb.bl ], [ %i.afz, %bb.bm ] ; 3 uses
  %.sink.in.i49.i185 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i182, i64 8
  %.sink.i50.i186 = load ptr, ptr %.sink.in.i49.i185, align 8, !tbaa !376
  store i64 %.sink34.i45.i181, ptr %.sroa.0.027.i44.i180, align 8, !tbaa !375
  %i.aga = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i180, i64 8
  store ptr %.sink.i50.i186, ptr %i.aga, align 8, !tbaa !377
  %i.agb = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i180, i64 16 ; 2 uses
  %i.agc = icmp ne ptr %.1.i48.i184, %i.afr
  %i.agd = icmp ne ptr %.117.i47.i183, %i.hc
  %i.age = select i1 %i.agc, i1 %i.agd, i1 false
  br i1 %i.age, label %.lr.ph.i41.i177, label %._crit_edge.i25.i162, !llvm.loop !37

._crit_edge.i25.i162:                             ; preds = %bb.bn, %._crit_edge.i156
  %.sroa.0.0.lcssa.i26.i163 = phi ptr [ %.sroa.022.0.lcssa.i158, %._crit_edge.i156 ], [ %i.agb, %bb.bn ] ; 5 uses
  %.016.lcssa.i27.i164 = phi ptr [ %i.afr, %._crit_edge.i156 ], [ %.117.i47.i183, %bb.bn ] ; 3 uses
  %.0.lcssa.i28.i165 = phi ptr [ %.0.lcssa.i157, %._crit_edge.i156 ], [ %.1.i48.i184, %bb.bn ] ; 3 uses
  %i.agf = ptrtoint ptr %i.afr to i64
  %i.agg = ptrtoint ptr %.0.lcssa.i28.i165 to i64
  %i.agh = sub i64 %i.agf, %i.agg
  %i.agi = ashr exact i64 %i.agh, 4               ; 5 uses
  %i.agj = icmp sgt i64 %i.agi, 0
  br i1 %i.agj, label %.lr.ph.i.i.i.i.i.i37.i173.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i166

.lr.ph.i.i.i.i.i.i37.i173.preheader:              ; preds = %._crit_edge.i25.i162
  %xtraiter841 = and i64 %i.agi, 3                ; 2 uses
  %lcmp.mod842.not = icmp eq i64 %xtraiter841, 0
  br i1 %lcmp.mod842.not, label %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i173.prol

.lr.ph.i.i.i.i.i.i37.i173.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i37.i173.preheader, %.lr.ph.i.i.i.i.i.i37.i173.prol
  %.012.i.i.i.i.i.i38.i174.prol = phi i64 [ %i.agq, %.lr.ph.i.i.i.i.i.i37.i173.prol ], [ %i.agi, %.lr.ph.i.i.i.i.i.i37.i173.preheader ]
  %.0811.i.i.i.i.i.i39.i175.prol = phi ptr [ %i.agp, %.lr.ph.i.i.i.i.i.i37.i173.prol ], [ %.sroa.0.0.lcssa.i26.i163, %.lr.ph.i.i.i.i.i.i37.i173.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i176.prol = phi ptr [ %i.ago, %.lr.ph.i.i.i.i.i.i37.i173.prol ], [ %.0.lcssa.i28.i165, %.lr.ph.i.i.i.i.i.i37.i173.preheader ] ; 3 uses
  %prol.iter843 = phi i64 [ %prol.iter843.next, %.lr.ph.i.i.i.i.i.i37.i173.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i173.preheader ]
  %i.agk = load i64, ptr %.0910.i.i.i.i.i.i40.i176.prol, align 8, !tbaa !135
  store i64 %i.agk, ptr %.0811.i.i.i.i.i.i39.i175.prol, align 8, !tbaa !375
  %i.agl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176.prol, i64 8
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !376
  %i.agn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175.prol, i64 8
  store ptr %i.agm, ptr %i.agn, align 8, !tbaa !377
  %i.ago = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176.prol, i64 16 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175.prol, i64 16 ; 3 uses
  %i.agq = add nsw i64 %.012.i.i.i.i.i.i38.i174.prol, -1 ; 2 uses
  %prol.iter843.next = add i64 %prol.iter843, 1   ; 2 uses
  %prol.iter843.cmp.not = icmp eq i64 %prol.iter843.next, %xtraiter841
  br i1 %prol.iter843.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i173.prol, !llvm.loop !692

.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i37.i173.prol, %.lr.ph.i.i.i.i.i.i37.i173.preheader
  %.012.i.i.i.i.i.i38.i174.unr = phi i64 [ %i.agi, %.lr.ph.i.i.i.i.i.i37.i173.preheader ], [ %i.agq, %.lr.ph.i.i.i.i.i.i37.i173.prol ]
  %.0811.i.i.i.i.i.i39.i175.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i163, %.lr.ph.i.i.i.i.i.i37.i173.preheader ], [ %i.agp, %.lr.ph.i.i.i.i.i.i37.i173.prol ]
  %.0910.i.i.i.i.i.i40.i176.unr = phi ptr [ %.0.lcssa.i28.i165, %.lr.ph.i.i.i.i.i.i37.i173.preheader ], [ %i.ago, %.lr.ph.i.i.i.i.i.i37.i173.prol ]
  %.lcssa755.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i173.preheader ], [ %i.agp, %.lr.ph.i.i.i.i.i.i37.i173.prol ]
  %i.agr = icmp ult i64 %i.agi, 4
  br i1 %i.agr, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i166, label %.lr.ph.i.i.i.i.i.i37.i173

.lr.ph.i.i.i.i.i.i37.i173:                        ; preds = %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i173
  %.012.i.i.i.i.i.i38.i174 = phi i64 [ %i.ahq, %.lr.ph.i.i.i.i.i.i37.i173 ], [ %.012.i.i.i.i.i.i38.i174.unr, %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i175 = phi ptr [ %i.ahp, %.lr.ph.i.i.i.i.i.i37.i173 ], [ %.0811.i.i.i.i.i.i39.i175.unr, %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i176 = phi ptr [ %i.aho, %.lr.ph.i.i.i.i.i.i37.i173 ], [ %.0910.i.i.i.i.i.i40.i176.unr, %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit ] ; 9 uses
  %i.ags = load i64, ptr %.0910.i.i.i.i.i.i40.i176, align 8, !tbaa !135
  store i64 %i.ags, ptr %.0811.i.i.i.i.i.i39.i175, align 8, !tbaa !375
  %i.agt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !376
  %i.agv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 8
  store ptr %i.agu, ptr %i.agv, align 8, !tbaa !377
  %i.agw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 16
  %i.agx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 16
  %i.agy = load i64, ptr %i.agw, align 8, !tbaa !135
  store i64 %i.agy, ptr %i.agx, align 8, !tbaa !375
  %i.agz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 24
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !376
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 24
  store ptr %i.aha, ptr %i.ahb, align 8, !tbaa !377
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 32
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 32
  %i.ahe = load i64, ptr %i.ahc, align 8, !tbaa !135
  store i64 %i.ahe, ptr %i.ahd, align 8, !tbaa !375
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 40
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !376
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 40
  store ptr %i.ahg, ptr %i.ahh, align 8, !tbaa !377
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 48
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 48
  %i.ahk = load i64, ptr %i.ahi, align 8, !tbaa !135
  store i64 %i.ahk, ptr %i.ahj, align 8, !tbaa !375
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 56
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !376
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 56
  store ptr %i.ahm, ptr %i.ahn, align 8, !tbaa !377
  %i.aho = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i176, i64 64
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i175, i64 64 ; 2 uses
  %i.ahq = add nsw i64 %.012.i.i.i.i.i.i38.i174, -4
  %i.ahr = icmp sgt i64 %.012.i.i.i.i.i.i38.i174, 4
  br i1 %i.ahr, label %.lr.ph.i.i.i.i.i.i37.i173, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i166, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i166: ; preds = %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i173, %._crit_edge.i25.i162
  %.08.lcssa.i.i.i.i.i.i30.i167 = phi ptr [ %.sroa.0.0.lcssa.i26.i163, %._crit_edge.i25.i162 ], [ %.lcssa755.unr, %.lr.ph.i.i.i.i.i.i37.i173.prol.loopexit ], [ %i.ahp, %.lr.ph.i.i.i.i.i.i37.i173 ]
  %i.ahs = ptrtoint ptr %.016.lcssa.i27.i164 to i64
  %i.aht = sub i64 %i.uw, %i.ahs
  %i.ahu = ashr exact i64 %i.aht, 4               ; 5 uses
  %i.ahv = icmp sgt i64 %i.ahu, 0
  br i1 %i.ahv, label %.lr.ph.i.i.i.i.i19.i32.preheader.i168, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit196

.lr.ph.i.i.i.i.i19.i32.preheader.i168:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i166
  %i.ahw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i167 to i64
  %i.ahx = ptrtoint ptr %.sroa.0.0.lcssa.i26.i163 to i64
  %i.ahy = sub i64 %i.ahw, %i.ahx
  %i.ahz = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i163, i64 %i.ahy ; 2 uses
  %xtraiter844 = and i64 %i.ahu, 3                ; 2 uses
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod845.not, label %.lr.ph.i.i.i.i.i19.i32.i169.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i169.prol

.lr.ph.i.i.i.i.i19.i32.i169.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i168, %.lr.ph.i.i.i.i.i19.i32.i169.prol
  %.012.i.i.i.i.i20.i33.i170.prol = phi i64 [ %i.aig, %.lr.ph.i.i.i.i.i19.i32.i169.prol ], [ %i.ahu, %.lr.ph.i.i.i.i.i19.i32.preheader.i168 ]
  %.0811.i.i.i.i.i21.i34.i171.prol = phi ptr [ %i.aif, %.lr.ph.i.i.i.i.i19.i32.i169.prol ], [ %i.ahz, %.lr.ph.i.i.i.i.i19.i32.preheader.i168 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i172.prol = phi ptr [ %i.aie, %.lr.ph.i.i.i.i.i19.i32.i169.prol ], [ %.016.lcssa.i27.i164, %.lr.ph.i.i.i.i.i19.i32.preheader.i168 ] ; 3 uses
  %prol.iter846 = phi i64 [ %prol.iter846.next, %.lr.ph.i.i.i.i.i19.i32.i169.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i168 ]
  %i.aia = load i64, ptr %.0910.i.i.i.i.i22.i35.i172.prol, align 8, !tbaa !135
  store i64 %i.aia, ptr %.0811.i.i.i.i.i21.i34.i171.prol, align 8, !tbaa !375
  %i.aib = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i172.prol, i64 8
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !376
  %i.aid = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i171.prol, i64 8
  store ptr %i.aic, ptr %i.aid, align 8, !tbaa !377
  %i.aie = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i172.prol, i64 16 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i171.prol, i64 16 ; 2 uses
  %i.aig = add nsw i64 %.012.i.i.i.i.i20.i33.i170.prol, -1 ; 2 uses
  %prol.iter846.next = add i64 %prol.iter846, 1   ; 2 uses
  %prol.iter846.cmp.not = icmp eq i64 %prol.iter846.next, %xtraiter844
  br i1 %prol.iter846.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i169.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i169.prol, !llvm.loop !693

.lr.ph.i.i.i.i.i19.i32.i169.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i169.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i168
  %.012.i.i.i.i.i20.i33.i170.unr = phi i64 [ %i.ahu, %.lr.ph.i.i.i.i.i19.i32.preheader.i168 ], [ %i.aig, %.lr.ph.i.i.i.i.i19.i32.i169.prol ]
  %.0811.i.i.i.i.i21.i34.i171.unr = phi ptr [ %i.ahz, %.lr.ph.i.i.i.i.i19.i32.preheader.i168 ], [ %i.aif, %.lr.ph.i.i.i.i.i19.i32.i169.prol ]
  %.0910.i.i.i.i.i22.i35.i172.unr = phi ptr [ %.016.lcssa.i27.i164, %.lr.ph.i.i.i.i.i19.i32.preheader.i168 ], [ %i.aie, %.lr.ph.i.i.i.i.i19.i32.i169.prol ]
  %i.aih = icmp ult i64 %i.ahu, 4
  br i1 %i.aih, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit196, label %.lr.ph.i.i.i.i.i19.i32.i169

.lr.ph.i.i.i.i.i19.i32.i169:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i169.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i169
  %.012.i.i.i.i.i20.i33.i170 = phi i64 [ %i.ajg, %.lr.ph.i.i.i.i.i19.i32.i169 ], [ %.012.i.i.i.i.i20.i33.i170.unr, %.lr.ph.i.i.i.i.i19.i32.i169.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i171 = phi ptr [ %i.ajf, %.lr.ph.i.i.i.i.i19.i32.i169 ], [ %.0811.i.i.i.i.i21.i34.i171.unr, %.lr.ph.i.i.i.i.i19.i32.i169.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i172 = phi ptr [ %i.aje, %.lr.ph.i.i.i.i.i19.i32.i169 ], [ %.0910.i.i.i.i.i22.i35.i172.unr, %.lr.ph.i.i.i.i.i19.i32.i169.prol.loopexit ] ; 9 uses
  %i.aii = load i64, ptr %.0910.i.i.i.i.i22.i35.i172, align 8, !tbaa !135
  store i64 %i.aii, ptr %.0811.i.i.i.i.i21.i34.i171, align 8, !tbaa !375
  %i.aij = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i172, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !376
  %i.ail = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i171, i64 8
  store ptr %i.aik, ptr %i.ail, align 8, !tbaa !377
  %i.aim = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i172, i64 16
  %i.ain = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i171, i64 16
  %i.aio = load i64, ptr %i.aim, align 8, !tbaa !135
  store i64 %i.aio, ptr %i.ain, align 8, !tbaa !375
  %i.aip = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i172, i64 24
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !376
  %i.air = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i171, i64 24
  store ptr %i.aiq, ptr %i.air, align 8, !tbaa !377
  %i.ais = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i172, i64 32
  %i.ait = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i171, i64 32
  %i.aiu = load i64, ptr %i.ais, align 8, !tbaa !135
  store i64 %i.aiu, ptr %i.ait, align 8, !tbaa !375
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i172, i64 40
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !376
  %i.aix = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i171, i64 40
end_hunk_2
begin_hunk_3_@_ZN4llvm15InstrProfWriter30writeTextTemporalProfTraceDataERNS_14raw_fd_ostreamERNS_15InstrProfSymtabE:bb.a
.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.bdd, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.bcv, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.bdc, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.bdb, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter891 = phi i64 [ %prol.iter891.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.bcx = load i64, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !135
  store i64 %i.bcx, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !375
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !376
  %i.bda = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.bcz, ptr %i.bda, align 8, !tbaa !377
  %i.bdb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.bdd = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter891.next = add i64 %prol.iter891, 1   ; 2 uses
  %prol.iter891.cmp.not = icmp eq i64 %prol.iter891.next, %xtraiter889
  br i1 %prol.iter891.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !704

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.bcv, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bdd, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bdc, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bdb, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.bde = icmp ult i64 %i.bcv, 4
  br i1 %i.bde, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.bed, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.bec, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.beb, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.bdf = load i64, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !135
  store i64 %i.bdf, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !375
  %i.bdg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !376
  %i.bdi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.bdh, ptr %i.bdi, align 8, !tbaa !377
  %i.bdj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.bdk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.bdl = load i64, ptr %i.bdj, align 8, !tbaa !135
  store i64 %i.bdl, ptr %i.bdk, align 8, !tbaa !375
  %i.bdm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !376
  %i.bdo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.bdn, ptr %i.bdo, align 8, !tbaa !377
  %i.bdp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.bdq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.bdr = load i64, ptr %i.bdp, align 8, !tbaa !135
  store i64 %i.bdr, ptr %i.bdq, align 8, !tbaa !375
  %i.bds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !376
  %i.bdu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.bdt, ptr %i.bdu, align 8, !tbaa !377
  %i.bdv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.bdw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.bdx = load i64, ptr %i.bdv, align 8, !tbaa !135
  store i64 %i.bdx, ptr %i.bdw, align 8, !tbaa !375
  %i.bdy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !376
  %i.bea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.bdz, ptr %i.bea, align 8, !tbaa !377
  %i.beb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.bec = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.bed = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.bee = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.bee, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, !llvm.loop !35

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.bef = shl nsw i64 %.022.i16.i, 2             ; 4 uses
  %.not65.i = icmp slt i64 %i.ajk, %i.bef
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.idx.i = shl nsw i64 %.022.i16.i, 5            ; 2 uses
  %.idx56.i = shl nsw i64 %.022.i16.i, 6          ; 2 uses
  %.not57.i = icmp eq i64 %.idx.i, %.idx56.i
  br label %bb.cp

bb.cp:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %.lr.ph.i
  %.sroa.022.067.i = phi ptr [ %i.ha, %.lr.ph.i ], [ %i.bhx, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.066.i = phi ptr [ %.sroa.10.0.i, %.lr.ph.i ], [ %i.beh, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 4 uses
  %i.beg = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i ; 4 uses
  %i.beh = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br i1 %.not57.i, label %._crit_edge.i.i, label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %bb.cp, %bb.cs
  %.029.i.i = phi ptr [ %.1.i.i84, %bb.cs ], [ %.066.i, %bb.cp ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.cs ], [ %i.beg, %bb.cp ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.beo, %bb.cs ], [ %.sroa.022.067.i, %bb.cp ] ; 3 uses
  %i.bei = load i64, ptr %.01628.i.i, align 8, !tbaa !135 ; 2 uses
  %i.bej = load i64, ptr %.029.i.i, align 8, !tbaa !135 ; 2 uses
  %i.bek = icmp ult i64 %i.bei, %i.bej
  br i1 %i.bek, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i83
  %i.bel = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.cs

bb.cr:                                            ; preds = %.lr.ph.i.i83
  %i.bem = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sink34.i.i = phi i64 [ %i.bei, %bb.cq ], [ %i.bej, %bb.cr ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.cq ], [ %.029.i.i, %bb.cr ]
  %.117.i.i = phi ptr [ %i.bel, %bb.cq ], [ %.01628.i.i, %bb.cr ] ; 3 uses
  %.1.i.i84 = phi ptr [ %.029.i.i, %bb.cq ], [ %i.bem, %bb.cr ] ; 3 uses
  %.sink.in.i.i85 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 8
  %.sink.i.i86 = load ptr, ptr %.sink.in.i.i85, align 8, !tbaa !376
  store i64 %.sink34.i.i, ptr %.sroa.0.027.i.i, align 8, !tbaa !375
  %i.ben = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.sink.i.i86, ptr %i.ben, align 8, !tbaa !377
  %i.beo = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.bep = icmp ne ptr %.1.i.i84, %i.beg
  %i.beq = icmp ne ptr %.117.i.i, %i.beh
  %i.ber = select i1 %i.bep, i1 %i.beq, i1 false
  br i1 %i.ber, label %.lr.ph.i.i83, label %._crit_edge.i.i, !llvm.loop !37

._crit_edge.i.i:                                  ; preds = %bb.cs, %bb.cp
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.067.i, %bb.cp ], [ %i.beo, %bb.cs ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.beg, %bb.cp ], [ %.117.i.i, %bb.cs ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.066.i, %bb.cp ], [ %.1.i.i84, %bb.cs ] ; 3 uses
  %i.bes = ptrtoint ptr %i.beg to i64
  %i.bet = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.beu = sub i64 %i.bes, %i.bet
  %i.bev = ashr exact i64 %i.beu, 4               ; 5 uses
  %i.bew = icmp sgt i64 %i.bev, 0
  br i1 %i.bew, label %.lr.ph.i.i.i.i.i.i.i89.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i89.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter892 = and i64 %i.bev, 3                ; 2 uses
  %lcmp.mod893.not = icmp eq i64 %xtraiter892, 0
  br i1 %lcmp.mod893.not, label %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i89.prol

.lr.ph.i.i.i.i.i.i.i89.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i89.preheader, %.lr.ph.i.i.i.i.i.i.i89.prol
  %.012.i.i.i.i.i.i.i90.prol = phi i64 [ %i.bfd, %.lr.ph.i.i.i.i.i.i.i89.prol ], [ %i.bev, %.lr.ph.i.i.i.i.i.i.i89.preheader ]
  %.0811.i.i.i.i.i.i.i91.prol = phi ptr [ %i.bfc, %.lr.ph.i.i.i.i.i.i.i89.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i89.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i92.prol = phi ptr [ %i.bfb, %.lr.ph.i.i.i.i.i.i.i89.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i89.preheader ] ; 3 uses
  %prol.iter894 = phi i64 [ %prol.iter894.next, %.lr.ph.i.i.i.i.i.i.i89.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i89.preheader ]
  %i.bex = load i64, ptr %.0910.i.i.i.i.i.i.i92.prol, align 8, !tbaa !135
  store i64 %i.bex, ptr %.0811.i.i.i.i.i.i.i91.prol, align 8, !tbaa !375
  %i.bey = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92.prol, i64 8
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !376
  %i.bfa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91.prol, i64 8
  store ptr %i.bez, ptr %i.bfa, align 8, !tbaa !377
  %i.bfb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92.prol, i64 16 ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91.prol, i64 16 ; 3 uses
  %i.bfd = add nsw i64 %.012.i.i.i.i.i.i.i90.prol, -1 ; 2 uses
  %prol.iter894.next = add i64 %prol.iter894, 1   ; 2 uses
  %prol.iter894.cmp.not = icmp eq i64 %prol.iter894.next, %xtraiter892
  br i1 %prol.iter894.cmp.not, label %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i89.prol, !llvm.loop !705

.lr.ph.i.i.i.i.i.i.i89.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i89.prol, %.lr.ph.i.i.i.i.i.i.i89.preheader
  %.012.i.i.i.i.i.i.i90.unr = phi i64 [ %i.bev, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.bfd, %.lr.ph.i.i.i.i.i.i.i89.prol ]
  %.0811.i.i.i.i.i.i.i91.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.bfc, %.lr.ph.i.i.i.i.i.i.i89.prol ]
  %.0910.i.i.i.i.i.i.i92.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.bfb, %.lr.ph.i.i.i.i.i.i.i89.prol ]
  %.lcssa766.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.bfc, %.lr.ph.i.i.i.i.i.i.i89.prol ]
  %i.bfe = icmp ult i64 %i.bev, 4
  br i1 %i.bfe, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i89

.lr.ph.i.i.i.i.i.i.i89:                           ; preds = %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i89
  %.012.i.i.i.i.i.i.i90 = phi i64 [ %i.bgd, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.012.i.i.i.i.i.i.i90.unr, %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i91 = phi ptr [ %i.bgc, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.0811.i.i.i.i.i.i.i91.unr, %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i92 = phi ptr [ %i.bgb, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.0910.i.i.i.i.i.i.i92.unr, %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit ] ; 9 uses
  %i.bff = load i64, ptr %.0910.i.i.i.i.i.i.i92, align 8, !tbaa !135
  store i64 %i.bff, ptr %.0811.i.i.i.i.i.i.i91, align 8, !tbaa !375
  %i.bfg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 8
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !376
  %i.bfi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 8
  store ptr %i.bfh, ptr %i.bfi, align 8, !tbaa !377
  %i.bfj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 16
  %i.bfk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 16
  %i.bfl = load i64, ptr %i.bfj, align 8, !tbaa !135
  store i64 %i.bfl, ptr %i.bfk, align 8, !tbaa !375
  %i.bfm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 24
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !376
  %i.bfo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 24
  store ptr %i.bfn, ptr %i.bfo, align 8, !tbaa !377
  %i.bfp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 32
  %i.bfq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 32
  %i.bfr = load i64, ptr %i.bfp, align 8, !tbaa !135
  store i64 %i.bfr, ptr %i.bfq, align 8, !tbaa !375
  %i.bfs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 40
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !376
  %i.bfu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 40
  store ptr %i.bft, ptr %i.bfu, align 8, !tbaa !377
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 48
  %i.bfw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 48
  %i.bfx = load i64, ptr %i.bfv, align 8, !tbaa !135
  store i64 %i.bfx, ptr %i.bfw, align 8, !tbaa !375
  %i.bfy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 56
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !376
  %i.bga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 56
  store ptr %i.bfz, ptr %i.bga, align 8, !tbaa !377
  %i.bgb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92, i64 64
  %i.bgc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i91, i64 64 ; 2 uses
  %i.bgd = add nsw i64 %.012.i.i.i.i.i.i.i90, -4
  %i.bge = icmp sgt i64 %.012.i.i.i.i.i.i.i90, 4
  br i1 %i.bge, label %.lr.ph.i.i.i.i.i.i.i89, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i89, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa766.unr.a, %.lr.ph.i.i.i.i.i.i.i89.prol.loopexit ], [ %i.bgc, %.lr.ph.i.i.i.i.i.i.i89 ]
  %i.bgf = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.bgg = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.bgh = sub i64 %i.bgf, %i.bgg
  %i.bgi = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.bgh ; 4 uses
  %i.bgj = ptrtoint ptr %i.beh to i64             ; 2 uses
  %i.bgk = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.bgl = sub i64 %i.bgj, %i.bgk
  %i.bgm = ashr exact i64 %i.bgl, 4               ; 5 uses
  %i.bgn = icmp sgt i64 %i.bgm, 0
  br i1 %i.bgn, label %.lr.ph.i.i.i.i.i19.i.i88.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i88.preheader:               ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %xtraiter895 = and i64 %i.bgm, 3                ; 2 uses
  %lcmp.mod896.not = icmp eq i64 %xtraiter895, 0
  br i1 %lcmp.mod896.not, label %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i88.prol

.lr.ph.i.i.i.i.i19.i.i88.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i.i88.preheader, %.lr.ph.i.i.i.i.i19.i.i88.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.bgu, %.lr.ph.i.i.i.i.i19.i.i88.prol ], [ %i.bgm, %.lr.ph.i.i.i.i.i19.i.i88.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.bgt, %.lr.ph.i.i.i.i.i19.i.i88.prol ], [ %i.bgi, %.lr.ph.i.i.i.i.i19.i.i88.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.bgs, %.lr.ph.i.i.i.i.i19.i.i88.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i88.preheader ] ; 3 uses
  %prol.iter897 = phi i64 [ %prol.iter897.next, %.lr.ph.i.i.i.i.i19.i.i88.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i88.preheader ]
  %i.bgo = load i64, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !135
  store i64 %i.bgo, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !375
  %i.bgp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !376
  %i.bgr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.bgq, ptr %i.bgr, align 8, !tbaa !377
  %i.bgs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.bgu = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter897.next = add i64 %prol.iter897, 1   ; 2 uses
  %prol.iter897.cmp.not = icmp eq i64 %prol.iter897.next, %xtraiter895
  br i1 %prol.iter897.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i88.prol, !llvm.loop !706

.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i.i88.prol, %.lr.ph.i.i.i.i.i19.i.i88.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.bgm, %.lr.ph.i.i.i.i.i19.i.i88.preheader ], [ %i.bgu, %.lr.ph.i.i.i.i.i19.i.i88.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.bgi, %.lr.ph.i.i.i.i.i19.i.i88.preheader ], [ %i.bgt, %.lr.ph.i.i.i.i.i19.i.i88.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i88.preheader ], [ %i.bgs, %.lr.ph.i.i.i.i.i19.i.i88.prol ]
  %.lcssa767.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i88.preheader ], [ %i.bgt, %.lr.ph.i.i.i.i.i19.i.i88.prol ]
  %i.bgv = icmp ult i64 %i.bgm, 4
  br i1 %i.bgv, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, label %.lr.ph.i.i.i.i.i19.i.i88

.lr.ph.i.i.i.i.i19.i.i88:                         ; preds = %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i88
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.bhu, %.lr.ph.i.i.i.i.i19.i.i88 ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.bht, %.lr.ph.i.i.i.i.i19.i.i88 ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.bhs, %.lr.ph.i.i.i.i.i19.i.i88 ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit ] ; 9 uses
  %i.bgw = load i64, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !135
  store i64 %i.bgw, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !375
  %i.bgx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !376
  %i.bgz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.bgy, ptr %i.bgz, align 8, !tbaa !377
  %i.bha = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.bhb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.bhc = load i64, ptr %i.bha, align 8, !tbaa !135
  store i64 %i.bhc, ptr %i.bhb, align 8, !tbaa !375
  %i.bhd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !376
  %i.bhf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.bhe, ptr %i.bhf, align 8, !tbaa !377
  %i.bhg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.bhh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.bhi = load i64, ptr %i.bhg, align 8, !tbaa !135
  store i64 %i.bhi, ptr %i.bhh, align 8, !tbaa !375
  %i.bhj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !376
  %i.bhl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.bhk, ptr %i.bhl, align 8, !tbaa !377
  %i.bhm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.bhn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.bho = load i64, ptr %i.bhm, align 8, !tbaa !135
  store i64 %i.bho, ptr %i.bhn, align 8, !tbaa !375
  %i.bhp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !376
  %i.bhr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.bhq, ptr %i.bhr, align 8, !tbaa !377
  %i.bhs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.bht = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.bhu = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.bhv = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.bhv, label %.lr.ph.i.i.i.i.i19.i.i88, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, !llvm.loop !35

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i88, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.bgi, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %.lcssa767.unr, %.lr.ph.i.i.i.i.i19.i.i88.prol.loopexit ], [ %i.bht, %.lr.ph.i.i.i.i.i19.i.i88 ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.bhw = sub i64 %4, %i.bgf
  %i.bhx = getelementptr inbounds i8, ptr %i.bgi, i64 %i.bhw ; 2 uses
  %i.bhy = sub i64 %i.axf, %i.bgj
  %i.bhz = ashr exact i64 %i.bhy, 4               ; 2 uses
  %.not.i87 = icmp slt i64 %i.bhz, %i.bef
  br i1 %.not.i87, label %._crit_edge.i, label %bb.cp, !llvm.loop !38

._crit_edge.i:                                    ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.beh, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %i.ha, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bhx, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.ajk, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bhz, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.axg, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = shl nsw i64 %.sroa.speculated.i, 4
  %i.bia = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %.idx58.i ; 5 uses
  %i.bib = icmp ne i64 %.sroa.speculated.i, 0
  %i.bic = icmp ne ptr %i.bia, %i.ajl
  %i.bid = and i1 %i.bib, %i.bic
  br i1 %i.bid, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i, %bb.cv
  %.029.i42.i = phi ptr [ %.1.i48.i, %bb.cv ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i47.i, %bb.cv ], [ %i.bia, %._crit_edge.i ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.bik, %bb.cv ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bie = load i64, ptr %.01628.i43.i, align 8, !tbaa !135 ; 2 uses
  %i.bif = load i64, ptr %.029.i42.i, align 8, !tbaa !135 ; 2 uses
  %i.big = icmp ult i64 %i.bie, %i.bif
  br i1 %i.big, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i41.i
  %i.bih = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.cv

bb.cu:                                            ; preds = %.lr.ph.i41.i
  %i.bii = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sink34.i45.i = phi i64 [ %i.bie, %bb.ct ], [ %i.bif, %bb.cu ]
  %.01628.pn.i46.i = phi ptr [ %.01628.i43.i, %bb.ct ], [ %.029.i42.i, %bb.cu ]
  %.117.i47.i = phi ptr [ %i.bih, %bb.ct ], [ %.01628.i43.i, %bb.cu ] ; 3 uses
  %.1.i48.i = phi ptr [ %.029.i42.i, %bb.ct ], [ %i.bii, %bb.cu ] ; 3 uses
  %.sink.in.i49.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i, i64 8
  %.sink.i50.i = load ptr, ptr %.sink.in.i49.i, align 8, !tbaa !376
  store i64 %.sink34.i45.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !375
  %i.bij = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.sink.i50.i, ptr %i.bij, align 8, !tbaa !377
  %i.bik = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.bil = icmp ne ptr %.1.i48.i, %i.bia
  %i.bim = icmp ne ptr %.117.i47.i, %i.ajl
  %i.bin = select i1 %i.bil, i1 %i.bim, i1 false
  br i1 %i.bin, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !37

._crit_edge.i25.i:                                ; preds = %bb.cv, %._crit_edge.i
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i ], [ %i.bik, %bb.cv ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.bia, %._crit_edge.i ], [ %.117.i47.i, %bb.cv ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.1.i48.i, %bb.cv ] ; 3 uses
  %i.bio = ptrtoint ptr %i.bia to i64
  %i.bip = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.biq = sub i64 %i.bio, %i.bip
  %i.bir = ashr exact i64 %i.biq, 4               ; 5 uses
  %i.bis = icmp sgt i64 %i.bir, 0
  br i1 %i.bis, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter898 = and i64 %i.bir, 3                ; 2 uses
  %lcmp.mod899.not = icmp eq i64 %xtraiter898, 0
  br i1 %lcmp.mod899.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.biz, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.bir, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.biy, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.bix, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter900 = phi i64 [ %prol.iter900.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.bit = load i64, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !135
  store i64 %i.bit, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !375
  %i.biu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !376
  %i.biw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.biv, ptr %i.biw, align 8, !tbaa !377
  %i.bix = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.biz = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter900.next = add i64 %prol.iter900, 1   ; 2 uses
  %prol.iter900.cmp.not = icmp eq i64 %prol.iter900.next, %xtraiter898
  br i1 %prol.iter900.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !707

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.bir, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.biz, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.biy, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.bix, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa772.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.biy, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.bja = icmp ult i64 %i.bir, 4
  br i1 %i.bja, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.bjz, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.bjy, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.bjx, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.bjb = load i64, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !135
  store i64 %i.bjb, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !375
  %i.bjc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !376
  %i.bje = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.bjd, ptr %i.bje, align 8, !tbaa !377
  %i.bjf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.bjg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.bjh = load i64, ptr %i.bjf, align 8, !tbaa !135
  store i64 %i.bjh, ptr %i.bjg, align 8, !tbaa !375
  %i.bji = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !376
  %i.bjk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.bjj, ptr %i.bjk, align 8, !tbaa !377
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.bjm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.bjn = load i64, ptr %i.bjl, align 8, !tbaa !135
  store i64 %i.bjn, ptr %i.bjm, align 8, !tbaa !375
  %i.bjo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.bjp = load ptr, ptr %i.bjo, align 8, !tbaa !376
  %i.bjq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.bjp, ptr %i.bjq, align 8, !tbaa !377
  %i.bjr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.bjs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.bjt = load i64, ptr %i.bjr, align 8, !tbaa !135
  store i64 %i.bjt, ptr %i.bjs, align 8, !tbaa !375
  %i.bju = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !376
  %i.bjw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.bjv, ptr %i.bjw, align 8, !tbaa !377
  %i.bjx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.bjy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.bjz = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.bka = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.bka, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa772.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.bjy, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.bkb = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.bkc = sub i64 %i.axf, %i.bkb
  %i.bkd = ashr exact i64 %i.bkc, 4               ; 5 uses
  %i.bke = icmp sgt i64 %i.bkd, 0
  br i1 %i.bke, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.bkf = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.bkg = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.bkh = sub i64 %i.bkf, %i.bkg
  %i.bki = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.bkh ; 2 uses
  %xtraiter901 = and i64 %i.bkd, 3                ; 2 uses
  %lcmp.mod902.not = icmp eq i64 %xtraiter901, 0
  br i1 %lcmp.mod902.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.bkp, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bkd, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.bko, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bki, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.bkn, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter903 = phi i64 [ %prol.iter903.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.bkj = load i64, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 8, !tbaa !135
  store i64 %i.bkj, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !375
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !376
  %i.bkm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.bkl, ptr %i.bkm, align 8, !tbaa !377
  %i.bkn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.bkp = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter903.next = add i64 %prol.iter903, 1   ; 2 uses
  %prol.iter903.cmp.not = icmp eq i64 %prol.iter903.next, %xtraiter901
  br i1 %prol.iter903.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !708

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.bkd, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bkp, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.bki, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bko, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bkn, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.bkq = icmp ult i64 %i.bkd, 4
  br i1 %i.bkq, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.blp, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.blo, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.bln, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.bkr = load i64, ptr %.0910.i.i.i.i.i22.i35.i, align 8, !tbaa !135
  store i64 %i.bkr, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !375
  %i.bks = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !376
  %i.bku = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.bkt, ptr %i.bku, align 8, !tbaa !377
  %i.bkv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.bkw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.bkx = load i64, ptr %i.bkv, align 8, !tbaa !135
  store i64 %i.bkx, ptr %i.bkw, align 8, !tbaa !375
  %i.bky = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !376
  %i.bla = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.bkz, ptr %i.bla, align 8, !tbaa !377
  %i.blb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.blc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.bld = load i64, ptr %i.blb, align 8, !tbaa !135
  store i64 %i.bld, ptr %i.blc, align 8, !tbaa !375
  %i.ble = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !376
  %i.blg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
end_hunk_3
begin_hunk_4_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !377
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !790

.lr.ph.i.i.i.i.i10.i24.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i24.prol, %.lr.ph.i.i.i.i.i10.i24.preheader
  %.012.i.i.i.i.i11.i25.unr = phi i64 [ %i.et, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0811.i.i.i.i.i12.i26.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fa, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0910.i.i.i.i.i13.i27.unr = phi ptr [ %.sroa.015.0.lcssa.i18, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %i.fc = icmp ult i64 %i.et, 4
  br i1 %i.fc, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, label %.lr.ph.i.i.i.i.i10.i24

.lr.ph.i.i.i.i.i10.i24:                           ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24
  %.012.i.i.i.i.i11.i25 = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i10.i24 ], [ %.012.i.i.i.i.i11.i25.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0811.i.i.i.i.i12.i26.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0910.i.i.i.i.i13.i27.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %i.fd = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !135
  store i64 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !375
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !376
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !377
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !135
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !375
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !376
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !377
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !135
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !375
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !376
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !377
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !135
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !375
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !376
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !377
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, !llvm.loop !35

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not65 = icmp slt i64 %i.e, %i.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %.idx56 = shl nsw i64 %3, 5                     ; 2 uses
  %.not57 = icmp eq i64 %.idx, %.idx56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit
  %.sroa.022.067 = phi ptr [ %2, %.lr.ph ], [ %i.cw, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.066 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.066, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.066, i64 %.idx56 ; 4 uses
  br i1 %.not57, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029.i = phi ptr [ %.1.i, %bb.e ], [ %.066, %bb.b ] ; 4 uses
  %.01628.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.0.027.i = phi ptr [ %i.n, %bb.e ], [ %.sroa.022.067, %bb.b ] ; 3 uses
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !135 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !135 ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01628.i, i64 16
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.029.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink34.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %.01628.pn.i = phi ptr [ %.01628.i, %bb.c ], [ %.029.i, %bb.d ]
  %.117.i = phi ptr [ %i.k, %bb.c ], [ %.01628.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.029.i, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i, i64 8
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !376
  store i64 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !375
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !377
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.067, %bb.b ], [ %i.n, %bb.e ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.066, %bb.b ], [ %.1.i, %bb.e ] ; 3 uses
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %.0.lcssa.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4                   ; 5 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.w = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !135
  store i64 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !375
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !376
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !377
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !791

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa106.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.u, 4
  br i1 %i.ad, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !135
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !375
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !376
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !377
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !135
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !375
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !376
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !377
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !135
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !375
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !376
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !377
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !135
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !375
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !376
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !377
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa106.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.bf = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bg ; 4 uses
  %i.bi = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bj = ptrtoint ptr %.016.lcssa.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 4                 ; 5 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %xtraiter111 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.bn = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !135
  store i64 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !375
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !376
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !377
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !792

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa107.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bu = icmp ult i64 %i.bl, 4
  br i1 %i.bu, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.bv = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !135
  store i64 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !375
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !376
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !377
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !135
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !375
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !376
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !377
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !135
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !375
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !376
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !377
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !135
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !375
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !376
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !377
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !35

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.bh, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cv = sub i64 %4, %i.be
  %i.cw = getelementptr inbounds i8, ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cx = sub i64 %i.b, %i.bi
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %.not = icmp slt i64 %i.cy, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !38

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.cw, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.lcssa63 = phi i64 [ %i.e, %bb.a ], [ %i.cy, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa63) ; 2 uses
  %.idx58 = shl nsw i64 %.sroa.speculated, 4
  %i.cz = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx58 ; 5 uses
  %i.da = icmp ne i64 %.sroa.speculated, 0
  %i.db = icmp ne ptr %i.cz, %1
  %i.dc = and i1 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph.i41, label %._crit_edge.i25

.lr.ph.i41:                                       ; preds = %._crit_edge, %bb.h
  %.029.i42 = phi ptr [ %.1.i48, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.01628.i43 = phi ptr [ %.117.i47, %bb.h ], [ %i.cz, %._crit_edge ] ; 4 uses
  %.sroa.0.027.i44 = phi ptr [ %i.dj, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 3 uses
  %i.dd = load i64, ptr %.01628.i43, align 8, !tbaa !135 ; 2 uses
  %i.de = load i64, ptr %.029.i42, align 8, !tbaa !135 ; 2 uses
  %i.df = icmp ult i64 %i.dd, %i.de
  br i1 %i.df, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i41
  %i.dg = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i41
  %i.dh = getelementptr inbounds nuw i8, ptr %.029.i42, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink34.i45 = phi i64 [ %i.dd, %bb.f ], [ %i.de, %bb.g ]
  %.01628.pn.i46 = phi ptr [ %.01628.i43, %bb.f ], [ %.029.i42, %bb.g ]
  %.117.i47 = phi ptr [ %i.dg, %bb.f ], [ %.01628.i43, %bb.g ] ; 3 uses
  %.1.i48 = phi ptr [ %.029.i42, %bb.f ], [ %i.dh, %bb.g ] ; 3 uses
  %.sink.in.i49 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46, i64 8
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !376
  store i64 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !375
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !377
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !37

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.dj, %bb.h ] ; 5 uses
  %.016.lcssa.i27 = phi ptr [ %i.cz, %._crit_edge ], [ %.117.i47, %bb.h ] ; 3 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i48, %bb.h ] ; 3 uses
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4                 ; 5 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %._crit_edge.i25
  %xtraiter114 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i37.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i38.prol = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i37.prol ], [ %i.dq, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i39.prol = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.prol = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %i.ds = load i64, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !135
  store i64 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !375
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !376
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !377
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !793

.lr.ph.i.i.i.i.i.i37.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i38.unr = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dy, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ]
  %i.dz = icmp ult i64 %i.dq, 4
  br i1 %i.dz, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.ea = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !135
  store i64 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !375
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !376
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !377
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !135
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !375
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !376
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !377
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !135
  store i64 %i.em, ptr %i.el, align 8, !tbaa !375
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !376
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !377
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !135
  store i64 %i.es, ptr %i.er, align 8, !tbaa !375
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !376
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !377
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !35

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ], [ %i.ex, %.lr.ph.i.i.i.i.i.i37 ]
  %i.fa = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.fb = sub i64 %i.b, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4                 ; 5 uses
  %i.fd = icmp sgt i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit51

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29
  %i.fe = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.ff = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.fg ; 2 uses
  %xtraiter117 = and i64 %i.fc, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader, %.lr.ph.i.i.i.i.i19.i32.prol
  %.012.i.i.i.i.i20.i33.prol = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fc, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %.0811.i.i.i.i.i21.i34.prol = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fh, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.prol = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph.i.i.i.i.i19.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %i.fi = load i64, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !135
  store i64 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !375
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !376
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !377
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !794

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fo, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fn, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fm, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.fp = icmp ult i64 %i.fc, 4
  br i1 %i.fp, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit51, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %i.fq = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !135
  store i64 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !375
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !376
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !377
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !135
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !375
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !376
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !377
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !135
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !375
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !376
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_4
