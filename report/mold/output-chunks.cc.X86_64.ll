Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-chunks.cc.X86_64?download=true
inline.NumInlined: 10657
inline.NumDeleted: 4361
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_:bb.a
  %.val2.i.i.4.i = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !397 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val1.i.i.4.i, i64 40 ; 2 uses
  %.val1.val.i.i.4.i = load i64, ptr %i.bl, align 8, !tbaa !348 ; 2 uses
  %i.bm = getelementptr i8, ptr %.val2.i.i.4.i, i64 40
  %.val2.val.i.i.4.i = load i64, ptr %i.bm, align 8, !tbaa !348
  %i.bn = icmp ult i64 %.val1.val.i.i.4.i, %.val2.val.i.i.4.i
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %.val3.i9.i.i.4.i = load ptr, ptr %.sroa.0.021.i.ptr.3.i, align 8, !tbaa !397 ; 2 uses
  %i.bo = getelementptr i8, ptr %.val3.i9.i.i.4.i, i64 40
  %.val3.val.i10.i.i.4.i = load i64, ptr %i.bo, align 8, !tbaa !348
  %i.bp = icmp ult i64 %.val1.val.i.i.4.i, %.val3.val.i10.i.i.4.i
  br i1 %i.bp, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.u, %.lr.ph.i.i.4.i
  %.val3.i13.i.i.4.i = phi ptr [ %.val3.i.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.val3.i9.i.i.4.i, %bb.u ]
  %.sroa.0.012.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.021.i.ptr.3.i, %bb.u ] ; 3 uses
  %.sroa.04.011.i.i.4.i = phi ptr [ %.sroa.0.012.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.021.i.ptr.4.i, %bb.u ]
  store ptr %.val3.i13.i.i.4.i, ptr %.sroa.04.011.i.i.4.i, align 8, !tbaa !397
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.4.i, i64 -8 ; 2 uses
  %.val.val.i.i.4.i = load i64, ptr %i.bl, align 8, !tbaa !348
  %.val3.i.i.i.4.i = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !397 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val3.i.i.i.4.i, i64 40
  %.val3.val.i.i.i.4.i = load i64, ptr %i.bq, align 8, !tbaa !348
  %i.br = icmp ult i64 %.val.val.i.i.4.i, %.val3.val.i.i.i.4.i
  br i1 %i.br, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, !llvm.loop !14

bb.v:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.bs = ptrtoint ptr %.sroa.0.021.i.ptr.4.i to i64
  %i.bt = sub i64 %i.bs, %i.g                     ; 3 uses
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1
  br i1 %i.bv, label %bb.y, label %bb.w, !prof !400

bb.w:                                             ; preds = %bb.v
  %i.bw = icmp eq i64 %i.bt, 8
  br i1 %i.bw, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.x:                                             ; preds = %bb.w
  store ptr %.val2.i.i.4.i, ptr %.sroa.0.021.i.ptr.4.i, align 8, !tbaa !397
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.y:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 48
  %i.by = sub nsw i64 0, %i.bu
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.01.04.i, i64 %i.bt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.y, %bb.x, %bb.w, %bb.u
  %.sink.i.4.i = phi ptr [ %.sroa.01.04.i, %bb.x ], [ %.sroa.01.04.i, %bb.y ], [ %.sroa.01.04.i, %bb.w ], [ %.sroa.0.021.i.ptr.4.i, %bb.u ], [ %.sroa.0.012.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %.val1.i.i.4.i, ptr %.sink.i.4.i, align 8, !tbaa !397
  %.sroa.0.021.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 48 ; 5 uses
  %.val1.i.i.5.i = load ptr, ptr %.sroa.0.021.i.ptr.5.i, align 8, !tbaa !397 ; 2 uses
  %.val2.i.i.5.i = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !397 ; 2 uses
  %i.ca = getelementptr i8, ptr %.val1.i.i.5.i, i64 40 ; 2 uses
  %.val1.val.i.i.5.i = load i64, ptr %i.ca, align 8, !tbaa !348 ; 2 uses
  %i.cb = getelementptr i8, ptr %.val2.i.i.5.i, i64 40
  %.val2.val.i.i.5.i = load i64, ptr %i.cb, align 8, !tbaa !348
  %i.cc = icmp ult i64 %.val1.val.i.i.5.i, %.val2.val.i.i.5.i
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %.val3.i9.i.i.5.i = load ptr, ptr %.sroa.0.021.i.ptr.4.i, align 8, !tbaa !397 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val3.i9.i.i.5.i, i64 40
  %.val3.val.i10.i.i.5.i = load i64, ptr %i.cd, align 8, !tbaa !348
  %i.ce = icmp ult i64 %.val1.val.i.i.5.i, %.val3.val.i10.i.i.5.i
  br i1 %i.ce, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.z, %.lr.ph.i.i.5.i
  %.val3.i13.i.i.5.i = phi ptr [ %.val3.i.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.val3.i9.i.i.5.i, %bb.z ]
  %.sroa.0.012.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.021.i.ptr.4.i, %bb.z ] ; 3 uses
  %.sroa.04.011.i.i.5.i = phi ptr [ %.sroa.0.012.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.021.i.ptr.5.i, %bb.z ]
  store ptr %.val3.i13.i.i.5.i, ptr %.sroa.04.011.i.i.5.i, align 8, !tbaa !397
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.5.i, i64 -8 ; 2 uses
  %.val.val.i.i.5.i = load i64, ptr %i.ca, align 8, !tbaa !348
  %.val3.i.i.i.5.i = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !397 ; 2 uses
  %i.cf = getelementptr i8, ptr %.val3.i.i.i.5.i, i64 40
  %.val3.val.i.i.i.5.i = load i64, ptr %i.cf, align 8, !tbaa !348
  %i.cg = icmp ult i64 %.val.val.i.i.5.i, %.val3.val.i.i.i.5.i
  br i1 %i.cg, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, !llvm.loop !14

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.ch = ptrtoint ptr %.sroa.0.021.i.ptr.5.i to i64
  %i.ci = sub i64 %i.ch, %i.g                     ; 3 uses
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 1
  br i1 %i.ck, label %bb.ad, label %bb.ab, !prof !400

bb.ab:                                            ; preds = %bb.aa
  %i.cl = icmp eq i64 %i.ci, 8
  br i1 %i.cl, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %.val2.i.i.5.i, ptr %.sroa.0.021.i.ptr.5.i, align 8, !tbaa !397
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ad:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 56
  %i.cn = sub nsw i64 0, %i.cj
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.01.04.i, i64 %i.ci, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sink.i.5.i = phi ptr [ %.sroa.01.04.i, %bb.ac ], [ %.sroa.01.04.i, %bb.ad ], [ %.sroa.01.04.i, %bb.ab ], [ %.sroa.0.021.i.ptr.5.i, %bb.z ], [ %.sroa.0.012.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %.val1.i.i.5.i, ptr %.sink.i.5.i, align 8, !tbaa !397
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 56 ; 3 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cr = sub i64 %i.a, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 48
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !1793

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, %bb.a
  %.sroa.01.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.cp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ] ; 8 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ]
  %i.ct = icmp eq ptr %.sroa.01.0.lcssa.i, %1
  %.sroa.0.019.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i, i64 8 ; 2 uses
  %i.cu = icmp eq ptr %.sroa.0.019.i11.i, %1
  %or.cond.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_.exit, label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i
  %.sroa.0.021.i13.i = phi ptr [ %.sroa.0.0.i23.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i ], [ %.sroa.0.019.i11.i, %._crit_edge.i ] ; 6 uses
  %.pn20.i14.i = phi ptr [ %.sroa.0.021.i13.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i ], [ %.sroa.01.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.val1.i.i15.i = load ptr, ptr %.sroa.0.021.i13.i, align 8, !tbaa !397 ; 2 uses
  %.val2.i.i16.i = load ptr, ptr %.sroa.01.0.lcssa.i, align 8, !tbaa !397 ; 2 uses
  %i.cv = getelementptr i8, ptr %.val1.i.i15.i, i64 40 ; 2 uses
  %.val1.val.i.i17.i = load i64, ptr %i.cv, align 8, !tbaa !348 ; 2 uses
  %i.cw = getelementptr i8, ptr %.val2.i.i16.i, i64 40
  %.val2.val.i.i18.i = load i64, ptr %i.cw, align 8, !tbaa !348
  %i.cx = icmp ult i64 %.val1.val.i.i17.i, %.val2.val.i.i18.i
  br i1 %i.cx, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph.i12.i
  %i.cy = ptrtoint ptr %.sroa.0.021.i13.i to i64
  %i.cz = sub i64 %i.cy, %.lcssa.i                ; 3 uses
  %i.da = ashr exact i64 %i.cz, 3                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 1
  br i1 %i.db, label %bb.af, label %bb.ag, !prof !400

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn20.i14.i, i64 16
  %i.dd = sub nsw i64 0, %i.da
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.de, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.01.0.lcssa.i, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i

bb.ag:                                            ; preds = %bb.ae
  %i.df = icmp eq i64 %i.cz, 8
  br i1 %i.df, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn20.i14.i, i64 8
  store ptr %.val2.i.i16.i, ptr %i.dg, align 8, !tbaa !397
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i

bb.ai:                                            ; preds = %.lr.ph.i12.i
  %.val3.i9.i.i19.i = load ptr, ptr %.pn20.i14.i, align 8, !tbaa !397 ; 2 uses
  %i.dh = getelementptr i8, ptr %.val3.i9.i.i19.i, i64 40
  %.val3.val.i10.i.i20.i = load i64, ptr %i.dh, align 8, !tbaa !348
  %i.di = icmp ult i64 %.val1.val.i.i17.i, %.val3.val.i10.i.i20.i
  br i1 %i.di, label %.lr.ph.i.i24.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i

.lr.ph.i.i24.i:                                   ; preds = %bb.ai, %.lr.ph.i.i24.i
  %.val3.i13.i.i25.i = phi ptr [ %.val3.i.i.i30.i, %.lr.ph.i.i24.i ], [ %.val3.i9.i.i19.i, %bb.ai ]
  %.sroa.0.012.i.i26.i = phi ptr [ %.sroa.0.0.i.i28.i, %.lr.ph.i.i24.i ], [ %.pn20.i14.i, %bb.ai ] ; 3 uses
  %.sroa.04.011.i.i27.i = phi ptr [ %.sroa.0.012.i.i26.i, %.lr.ph.i.i24.i ], [ %.sroa.0.021.i13.i, %bb.ai ]
  store ptr %.val3.i13.i.i25.i, ptr %.sroa.04.011.i.i27.i, align 8, !tbaa !397
  %.sroa.0.0.i.i28.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i26.i, i64 -8 ; 2 uses
  %.val.val.i.i29.i = load i64, ptr %i.cv, align 8, !tbaa !348
  %.val3.i.i.i30.i = load ptr, ptr %.sroa.0.0.i.i28.i, align 8, !tbaa !397 ; 2 uses
  %i.dj = getelementptr i8, ptr %.val3.i.i.i30.i, i64 40
  %.val3.val.i.i.i31.i = load i64, ptr %i.dj, align 8, !tbaa !348
  %i.dk = icmp ult i64 %.val.val.i.i29.i, %.val3.val.i.i.i31.i
  br i1 %i.dk, label %.lr.ph.i.i24.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i, !llvm.loop !14

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i: ; preds = %.lr.ph.i.i24.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i22.i = phi ptr [ %.sroa.01.0.lcssa.i, %bb.ah ], [ %.sroa.01.0.lcssa.i, %bb.af ], [ %.sroa.01.0.lcssa.i, %bb.ag ], [ %.sroa.0.021.i13.i, %bb.ai ], [ %.sroa.0.012.i.i26.i, %.lr.ph.i.i24.i ]
  store ptr %.val1.i.i15.i, ptr %.sink.i22.i, align 8, !tbaa !397
  %.sroa.0.0.i23.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %.sroa.0.0.i23.i, %1
  br i1 %i.dl, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_.exit, label %.lr.ph.i12.i, !llvm.loop !15

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i21.i, %._crit_edge.i
  %i.dm = icmp sgt i64 %i.d, 7
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_.exit
  %i.dn = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit
  %.034 = phi i64 [ 7, %.lr.ph ], [ %i.gc, %_ZSt17__merge_sort_loopIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit ] ; 8 uses
  %i.do = shl nsw i64 %.034, 1                    ; 6 uses
  %.not60.i = icmp slt i64 %i.d, %i.do
  br i1 %.not60.i, label %._crit_edge.i26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %.idx.i = shl i64 %.034, 3                      ; 10 uses
  %.idx55.i = shl i64 %.034, 4                    ; 2 uses
  %i.dp = icmp eq i64 %.idx.i, %.idx55.i
  br i1 %i.dp, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dq = icmp sgt i64 %.idx.i, 8
  br i1 %i.dq, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !400

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.062.us.i.us = phi ptr [ %i.ds, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.047.061.us.i.us = phi ptr [ %i.dr, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.047.061.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.062.us.i.us, ptr align 8 %.sroa.047.061.us.i.us, i64 %.idx.i, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %.062.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr nonnull align 8 %i.dr, i64 %.idx.i, i1 false)
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.a, %i.dt
  %i.dv = ashr exact i64 %i.du, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.dv, %i.do
  br i1 %.not.us.i.us, label %._crit_edge.i26, label %.critedge.i.us.i.us, !llvm.loop !1794

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.dw = icmp eq i64 %.idx.i, 8
  br i1 %i.dw, label %.critedge.i.us.i.us23.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us23.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !397
  br label %.critedge.i.us.i.us23

.critedge.i.us.i.us23:                            ; preds = %.critedge.i.us.i.us23.preheader, %.critedge.i.us.i.us23
  %i.dx = phi ptr [ %i.ea, %.critedge.i.us.i.us23 ], [ %.pre, %.critedge.i.us.i.us23.preheader ]
  %.062.us.i.us24 = phi ptr [ %i.dz, %.critedge.i.us.i.us23 ], [ %2, %.critedge.i.us.i.us23.preheader ] ; 2 uses
  %.sroa.047.061.us.i.us25 = phi ptr [ %i.dy, %.critedge.i.us.i.us23 ], [ %0, %.critedge.i.us.i.us23.preheader ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.047.061.us.i.us25, i64 8 ; 4 uses
  store ptr %i.dx, ptr %.062.us.i.us24, align 8, !tbaa !397
  %i.dz = getelementptr inbounds nuw i8, ptr %.062.us.i.us24, i64 8 ; 3 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !397 ; 2 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !397
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.a, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %.not.us.i.us27 = icmp slt i64 %i.ed, %i.do
  br i1 %.not.us.i.us27, label %._crit_edge.i26, label %.critedge.i.us.i.us23, !llvm.loop !1794

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.062.us.i = phi ptr [ %i.ef, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.047.061.us.i = phi ptr [ %i.ee, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.ee = getelementptr inbounds i8, ptr %.sroa.047.061.us.i, i64 %.idx.i ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.062.us.i, i64 %.idx.i ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.a, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ei, %i.do
  br i1 %.not.us.i, label %._crit_edge.i26, label %.critedge.i.us.i, !llvm.loop !1794

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i
  %.062.i = phi ptr [ %i.fe, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ], [ %2, %.lr.ph.i ]
  %.sroa.047.061.i = phi ptr [ %i.ek, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.047.061.i, i64 %.idx.i ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.047.061.i, i64 %.idx55.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.011.i.i = phi ptr [ %i.eo, %.lr.ph.i.i21 ], [ %.062.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.05.010.i.i = phi ptr [ %.sroa.05.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.047.061.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.01.09.i.i = phi ptr [ %.sroa.01.1.i.i, %.lr.ph.i.i21 ], [ %i.ej, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val1.i.i.i22 = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !397 ; 2 uses
  %.val2.i.i.i23 = load ptr, ptr %.sroa.05.010.i.i, align 8, !tbaa !397 ; 2 uses
  %i.el = getelementptr i8, ptr %.val1.i.i.i22, i64 40
  %.val1.val.i.i.i24 = load i64, ptr %i.el, align 8, !tbaa !348
  %i.em = getelementptr i8, ptr %.val2.i.i.i23, i64 40
  %.val2.val.i.i.i25 = load i64, ptr %i.em, align 8, !tbaa !348
  %i.en = icmp ult i64 %.val1.val.i.i.i24, %.val2.val.i.i.i25 ; 3 uses
  %.val2.i.sink.i.i = select i1 %i.en, ptr %.val1.i.i.i22, ptr %.val2.i.i.i23
  %.sroa.01.1.idx.i.i = select i1 %i.en, i64 8, i64 0
  %.sroa.01.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i.i, i64 %.sroa.01.1.idx.i.i ; 5 uses
  %.sroa.05.1.idx.i.i = select i1 %i.en, i64 0, i64 8
  %.sroa.05.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 %.sroa.05.1.idx.i.i ; 5 uses
  store ptr %.val2.i.sink.i.i, ptr %.011.i.i, align 8, !tbaa !397
  %i.eo = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 4 uses
  %i.ep = icmp eq ptr %.sroa.05.1.i.i, %i.ej
  %i.eq = icmp eq ptr %.sroa.01.1.i.i, %i.ek
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i.i, label %.critedge.i.loopexit.i, label %.lr.ph.i.i21, !llvm.loop !1795

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.er = ptrtoint ptr %i.ej to i64
  %i.es = ptrtoint ptr %.sroa.05.1.i.i to i64
  %i.et = sub i64 %i.er, %i.es                    ; 4 uses
  %i.eu = icmp sgt i64 %i.et, 8
  br i1 %i.eu, label %bb.ak, label %bb.al, !prof !400

bb.ak:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr nonnull align 8 %.sroa.05.1.i.i, i64 %i.et, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  %i.ev = icmp eq i64 %i.et, 8
  br i1 %i.ev, label %bb.am, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.ew = load ptr, ptr %.sroa.05.1.i.i, align 8, !tbaa !397
  store ptr %i.ew, ptr %i.eo, align 8, !tbaa !397
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ex = getelementptr inbounds i8, ptr %i.eo, i64 %i.et ; 3 uses
  %i.ey = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.ez = ptrtoint ptr %.sroa.01.1.i.i to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp sgt i64 %i.fa, 8
  br i1 %i.fb, label %bb.an, label %bb.ao, !prof !400

bb.an:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ex, ptr nonnull align 8 %.sroa.01.1.i.i, i64 %i.fa, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.fc = icmp eq i64 %i.fa, 8
  br i1 %i.fc, label %bb.ap, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.fd = load ptr, ptr %.sroa.01.1.i.i, align 8, !tbaa !397
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !397
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.fe = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa ; 2 uses
  %i.ff = sub i64 %i.a, %i.ey
  %i.fg = ashr exact i64 %i.ff, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fg, %i.do
  br i1 %.not.i, label %._crit_edge.i26, label %.lr.ph.i.preheader.i, !llvm.loop !1794

._crit_edge.i26:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us23, %.critedge.i.us.i.us, %bb.aj
  %.sroa.047.0.lcssa.i = phi ptr [ %0, %bb.aj ], [ %i.dr, %.critedge.i.us.i.us ], [ %i.dy, %.critedge.i.us.i.us23 ], [ %i.ee, %.critedge.i.us.i ], [ %i.ek, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.aj ], [ %i.ds, %.critedge.i.us.i.us ], [ %i.dz, %.critedge.i.us.i.us23 ], [ %i.ef, %.critedge.i.us.i ], [ %i.fe, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ] ; 2 uses
  %.lcssa58.i = phi i64 [ %i.d, %bb.aj ], [ %i.dv, %.critedge.i.us.i.us ], [ %i.ed, %.critedge.i.us.i.us23 ], [ %i.ei, %.critedge.i.us.i ], [ %i.fg, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.034, i64 %.lcssa58.i) ; 2 uses
  %.idx56.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fh = getelementptr inbounds i8, ptr %.sroa.047.0.lcssa.i, i64 %.idx56.i ; 5 uses
  %i.fi = icmp eq i64 %.sroa.speculated.i, 0
  %i.fj = icmp eq ptr %i.fh, %1
  %or.cond8.i16.i = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond8.i16.i, label %.critedge.i31.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %._crit_edge.i26, %.lr.ph.i17.i
  %.011.i18.i = phi ptr [ %i.fn, %.lr.ph.i17.i ], [ %.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.05.010.i19.i = phi ptr [ %.sroa.05.1.i29.i, %.lr.ph.i17.i ], [ %.sroa.047.0.lcssa.i, %._crit_edge.i26 ] ; 2 uses
  %.sroa.01.09.i20.i = phi ptr [ %.sroa.01.1.i27.i, %.lr.ph.i17.i ], [ %i.fh, %._crit_edge.i26 ] ; 2 uses
  %.val1.i.i21.i = load ptr, ptr %.sroa.01.09.i20.i, align 8, !tbaa !397 ; 2 uses
  %.val2.i.i22.i = load ptr, ptr %.sroa.05.010.i19.i, align 8, !tbaa !397 ; 2 uses
  %i.fk = getelementptr i8, ptr %.val1.i.i21.i, i64 40
  %.val1.val.i.i23.i = load i64, ptr %i.fk, align 8, !tbaa !348
  %i.fl = getelementptr i8, ptr %.val2.i.i22.i, i64 40
  %.val2.val.i.i24.i = load i64, ptr %i.fl, align 8, !tbaa !348
  %i.fm = icmp ult i64 %.val1.val.i.i23.i, %.val2.val.i.i24.i ; 3 uses
  %.val2.i.sink.i25.i = select i1 %i.fm, ptr %.val1.i.i21.i, ptr %.val2.i.i22.i
  %.sroa.01.1.idx.i26.i = select i1 %i.fm, i64 8, i64 0
  %.sroa.01.1.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i20.i, i64 %.sroa.01.1.idx.i26.i ; 3 uses
  %.sroa.05.1.idx.i28.i = select i1 %i.fm, i64 0, i64 8
  %.sroa.05.1.i29.i = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i19.i, i64 %.sroa.05.1.idx.i28.i ; 3 uses
  store ptr %.val2.i.sink.i25.i, ptr %.011.i18.i, align 8, !tbaa !397
  %i.fn = getelementptr inbounds nuw i8, ptr %.011.i18.i, i64 8 ; 2 uses
  %i.fo = icmp eq ptr %.sroa.05.1.i29.i, %i.fh
  %i.fp = icmp eq ptr %.sroa.01.1.i27.i, %1
  %or.cond.i30.i = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %or.cond.i30.i, label %.critedge.i31.i, label %.lr.ph.i17.i, !llvm.loop !1795

.critedge.i31.i:                                  ; preds = %.lr.ph.i17.i, %._crit_edge.i26
  %.sroa.01.0.lcssa.i32.i = phi ptr [ %i.fh, %._crit_edge.i26 ], [ %.sroa.01.1.i27.i, %.lr.ph.i17.i ] ; 3 uses
  %.sroa.05.0.lcssa.i33.i = phi ptr [ %.sroa.047.0.lcssa.i, %._crit_edge.i26 ], [ %.sroa.05.1.i29.i, %.lr.ph.i17.i ] ; 3 uses
  %.0.lcssa.i34.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i26 ], [ %i.fn, %.lr.ph.i17.i ] ; 3 uses
  %i.fq = ptrtoint ptr %i.fh to i64
  %i.fr = ptrtoint ptr %.sroa.05.0.lcssa.i33.i to i64
  %i.fs = sub i64 %i.fq, %i.fr                    ; 4 uses
  %i.ft = icmp sgt i64 %i.fs, 8
  br i1 %i.ft, label %bb.aq, label %bb.ar, !prof !400

bb.aq:                                            ; preds = %.critedge.i31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i34.i, ptr align 8 %.sroa.05.0.lcssa.i33.i, i64 %i.fs, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i35.i

bb.ar:                                            ; preds = %.critedge.i31.i
  %i.fu = icmp eq i64 %i.fs, 8
  br i1 %i.fu, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i35.i

bb.as:                                            ; preds = %bb.ar
  %i.fv = load ptr, ptr %.sroa.05.0.lcssa.i33.i, align 8, !tbaa !397
  store ptr %i.fv, ptr %.0.lcssa.i34.i, align 8, !tbaa !397
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i35.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i35.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.fw = getelementptr inbounds i8, ptr %.0.lcssa.i34.i, i64 %i.fs ; 2 uses
  %i.fx = ptrtoint ptr %.sroa.01.0.lcssa.i32.i to i64
  %i.fy = sub i64 %i.a, %i.fx                     ; 3 uses
  %i.fz = icmp sgt i64 %i.fy, 8
  br i1 %i.fz, label %bb.at, label %bb.au, !prof !400

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i35.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fw, ptr align 8 %.sroa.01.0.lcssa.i32.i, i64 %i.fy, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i35.i
  %i.ga = icmp eq i64 %i.fy, 8
  br i1 %i.ga, label %bb.av, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit

bb.av:                                            ; preds = %bb.au
  %i.gb = load ptr, ptr %.sroa.01.0.lcssa.i32.i, align 8, !tbaa !397
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !397
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit: ; preds = %bb.at, %bb.au, %bb.av
  %i.gc = shl nsw i64 %.034, 2                    ; 5 uses
  %.not56.i = icmp slt i64 %i.d, %i.gc
  br i1 %.not56.i, label %._crit_edge.i32, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit
  %.idx.i28 = shl i64 %.034, 4                    ; 8 uses
  %.idx50.i = shl nsw i64 %.034, 5                ; 2 uses
  %.not51.i = icmp eq i64 %.idx.i28, %.idx50.i
  br i1 %.not51.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i29

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i27
  %i.gd = icmp sgt i64 %.034, 0
  %i.ge = icmp sgt i64 %.idx.i28, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.022.058.us.i = phi ptr [ %i.gh, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.057.us.i = phi ptr [ %i.gf, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.057.us.i, i64 %.idx.i28 ; 4 uses
  br i1 %i.gd, label %bb.aw, label %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !400

bb.aw:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.058.us.i, ptr align 8 %.057.us.i, i64 %.idx.i28, i1 false)
  br label %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.aw
  %i.gg = getelementptr inbounds i8, ptr %.sroa.022.058.us.i, i64 %.idx.i28 ; 2 uses
  br i1 %i.ge, label %bb.ax, label %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i, !prof !909

bb.ax:                                            ; preds = %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr nonnull align 8 %i.gf, i64 %.idx.i28, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i

_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i: ; preds = %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.ax
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %.idx.i28 ; 2 uses
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.dn, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.gk, %i.gc
  br i1 %.not.us.i35, label %._crit_edge.i32, label %._crit_edge.i.us.i, !llvm.loop !1796

.lr.ph.i.preheader.i29:                           ; preds = %.lr.ph.i27, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i
  %.sroa.022.058.i = phi ptr [ %i.hh, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ], [ %0, %.lr.ph.i27 ]
  %.057.i = phi ptr [ %i.gm, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ], [ %2, %.lr.ph.i27 ] ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %.057.i, i64 %.idx.i28 ; 3 uses
  %i.gm = getelementptr inbounds i8, ptr %.057.i, i64 %.idx50.i ; 4 uses
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30, %.lr.ph.i.preheader.i29
  %.05.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i30 ], [ %.057.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.0164.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i30 ], [ %i.gl, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.sroa.0.03.i.i = phi ptr [ %i.gq, %.lr.ph.i.i30 ], [ %.sroa.022.058.i, %.lr.ph.i.preheader.i29 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.0164.i.i, align 8, !tbaa !397 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !397 ; 2 uses
  %i.gn = getelementptr i8, ptr %.016.val.i.i, i64 40
  %.016.val.val.i.i = load i64, ptr %i.gn, align 8, !tbaa !348
  %i.go = getelementptr i8, ptr %.0.val.i.i, i64 40
  %.0.val.val.i.i = load i64, ptr %i.go, align 8, !tbaa !348
  %i.gp = icmp ult i64 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gp, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gp, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.0164.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gp, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.03.i.i, align 8, !tbaa !397
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 8 ; 4 uses
  %i.gr = icmp ne ptr %.1.i.i, %i.gl
  %i.gs = icmp ne ptr %.117.i.i, %i.gm
  %i.gt = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %i.gt, label %.lr.ph.i.i30, label %._crit_edge.i.loopexit.i, !llvm.loop !1797

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i30
  %i.gu = ptrtoint ptr %i.gl to i64
  %i.gv = ptrtoint ptr %.1.i.i to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 4 uses
  %i.gx = icmp sgt i64 %i.gw, 8
  br i1 %i.gx, label %bb.ay, label %bb.az, !prof !400

bb.ay:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr nonnull align 8 %.1.i.i, i64 %i.gw, i1 false)
  br label %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gy = icmp eq i64 %i.gw, 8
  br i1 %i.gy, label %bb.ba, label %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gz = load ptr, ptr %.1.i.i, align 8, !tbaa !397
  store ptr %i.gz, ptr %i.gq, align 8, !tbaa !397
  br label %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ha = getelementptr inbounds i8, ptr %i.gq, i64 %i.gw ; 3 uses
  %i.hb = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.hc = ptrtoint ptr %.117.i.i to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 4 uses
  %i.he = icmp sgt i64 %i.hd, 8
  br i1 %i.he, label %bb.bb, label %bb.bc, !prof !400

bb.bb:                                            ; preds = %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %.117.i.i, i64 %i.hd, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i

bb.bc:                                            ; preds = %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.hf = icmp eq i64 %i.hd, 8
  br i1 %i.hf, label %bb.bd, label %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.hg = load ptr, ptr %.117.i.i, align 8, !tbaa !397
  store ptr %i.hg, ptr %i.ha, align 8, !tbaa !397
  br label %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i

_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.hh = getelementptr inbounds i8, ptr %i.ha, i64 %i.hd ; 2 uses
  %i.hi = sub i64 %i.dn, %i.hb
  %i.hj = ashr exact i64 %i.hi, 3                 ; 2 uses
  %.not.i31 = icmp slt i64 %i.hj, %i.gc
  br i1 %.not.i31, label %._crit_edge.i32, label %.lr.ph.i.preheader.i29, !llvm.loop !1796

._crit_edge.i32:                                  ; preds = %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit
  %.0.lcssa.i33 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit ], [ %i.gf, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i ], [ %i.gm, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit ], [ %i.gh, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i ], [ %i.hh, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ] ; 2 uses
  %.lcssa54.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_.exit ], [ %i.gk, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.us.i ], [ %i.hj, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_L11create_phdrIS2_EES8_INS0_7ElfPhdrIT_EESaISL_EERNS0_7ContextISK_EEEUlS4_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEST_SK_SK_SK_SK_ST_T1_.exit.i ]
  %.sroa.speculated.i34 = tail call i64 @llvm.smin.i64(i64 %i.do, i64 %.lcssa54.i) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SO_SQ_SQ_T1_T2_:bb.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %bb.c, label %bb.d, !prof !400

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 8
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !519
  store ptr %i.f, ptr %5, align 8, !tbaa !519
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit, %bb.f
  %.024.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 6 uses
  %.sroa.0.023.i = phi ptr [ %i.j, %bb.f ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 4 uses
  %.sroa.016.022.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 4 uses
  %i.h = icmp eq ptr %.sroa.016.022.i, %2
  br i1 %i.h, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.i = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold14VerneedSectionINS3_6X86_64EE9constructERNS3_7ContextIS5_EEEUlPNS3_6SymbolIS5_EEE_EEDaRT_RT0_ENKUlOSE_OSG_E_clIRSC_SM_EEbSI_SJ_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.016.022.i, ptr noundef nonnull align 8 dereferenceable(8) %.024.i) ; 3 uses
  %.sink.in.i = select i1 %i.i, ptr %.sroa.016.022.i, ptr %.024.i
  %.sroa.016.1.idx.i = select i1 %i.i, i64 8, i64 0
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.022.i, i64 %.sroa.016.1.idx.i
  %.1.idx.i = select i1 %i.i, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.024.i, i64 %.1.idx.i ; 2 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !519
  store ptr %.sink.i, ptr %.sroa.0.023.i, align 8, !tbaa !519
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.g
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !2270

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %.024.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp sgt i64 %i.m, 8
  br i1 %i.n, label %bb.g, label %bb.h, !prof !400

bb.g:                                             ; preds = %.critedge.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.023.i, ptr align 8 %.024.i, i64 %i.m, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.h:                                             ; preds = %.critedge.i
  %i.o = icmp eq i64 %i.m, 8
  br i1 %i.o, label %bb.i, label %_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %.024.i, align 8, !tbaa !519
  store ptr %i.p, ptr %.sroa.0.023.i, align 8, !tbaa !519
  br label %_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit: ; preds = %bb.f, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.k, label %bb.l, !prof !400

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.s, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19

bb.l:                                             ; preds = %bb.j
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %1, align 8, !tbaa !519
  store ptr %i.v, ptr %5, align 8, !tbaa !519
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19: ; preds = %bb.k, %bb.l, %bb.m
  %i.w = getelementptr inbounds i8, ptr %5, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.x = icmp eq ptr %0, %1
  br i1 %i.x, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19
  %i.y = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.o, label %bb.p, !prof !400

bb.o:                                             ; preds = %bb.n
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %5, i64 %i.s, i1 false)
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = icmp eq i64 %i.s, 8
  br i1 %i.ac, label %bb.q, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ae = load ptr, ptr %5, align 8, !tbaa !519
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !519
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19
  %i.af = icmp eq ptr %2, %1
  br i1 %i.af, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -8
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.s
  %.sroa.022.0.i.ph.pn = phi ptr [ %1, %bb.s ], [ %.sroa.022.0.i.ph, %bb.u ]
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.s ], [ %i.ai, %bb.u ]
  %.0.i.ph = phi ptr [ %i.ag, %bb.s ], [ %.0.i, %bb.u ]
  %.sroa.022.0.i.ph = getelementptr inbounds i8, ptr %.sroa.022.0.i.ph.pn, i64 -8 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.aa
  %.sroa.0.0.i = phi ptr [ %i.ai, %bb.aa ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.ay, %bb.aa ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ah = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold14VerneedSectionINS3_6X86_64EE9constructERNS3_7ContextIS5_EEEUlPNS3_6SymbolIS5_EEE_EEDaRT_RT0_ENKUlOSE_OSG_E_clIRSC_SM_EEbSI_SJ_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.022.0.i.ph)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 5 uses
  br i1 %i.ah, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.aj = load ptr, ptr %.sroa.022.0.i.ph, align 8, !tbaa !519
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !519
  %i.ak = icmp eq ptr %0, %.sroa.022.0.i.ph
  br i1 %i.ak, label %bb.v, label %.outer, !llvm.loop !2271

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %5 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.w, label %bb.x, !prof !400

bb.w:                                             ; preds = %bb.v
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ar
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %5, i64 %i.ao, i1 false)
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.x:                                             ; preds = %bb.v
  %i.at = icmp eq i64 %i.ao, 8
  br i1 %i.at, label %bb.y, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16
  %i.av = load ptr, ptr %5, align 8, !tbaa !519
  store ptr %i.av, ptr %i.au, align 8, !tbaa !519
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit

bb.z:                                             ; preds = %bb.t
  %i.aw = load ptr, ptr %.0.i, align 8, !tbaa !519
  store ptr %i.aw, ptr %i.ai, align 8, !tbaa !519
  %i.ax = icmp eq ptr %5, %.0.i
  br i1 %i.ax, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds i8, ptr %.0.i, i64 -8
  br label %bb.t, !llvm.loop !2271

_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit: ; preds = %bb.z, %bb.o, %bb.p, %bb.q, %bb.r, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit, %_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_SQ_T1_T2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.995", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.995", align 8 ; 7 uses
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not58 = icmp slt i64 %i.e, %i.a
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 9 uses
  %.idx53 = shl i64 %3, 4                         ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = icmp eq i64 %.idx, %.idx53
  br i1 %i.f, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 8
  %i.h = icmp eq i64 %.idx, 8
  %8 = shl i64 %3, 4
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us
  %.060.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.045.059.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.045.059.us, i64 %.idx ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br i1 %i.g, label %bb.d, label %bb.b, !prof !400

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %.sroa.045.059.us, align 8, !tbaa !519
  store ptr %i.j, ptr %.060.us, align 8, !tbaa !519
  %i.k = getelementptr inbounds nuw i8, ptr %.060.us, i64 %.idx
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !519
  store ptr %i.l, ptr %i.k, align 8, !tbaa !519
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.060.us, ptr align 8 %.sroa.045.059.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.060.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.060.us, i64 %8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !2272

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit
  %.060 = phi ptr [ %i.ak, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.045.059 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.045.059, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.045.059, i64 %.idx53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  store ptr %5, ptr %.sroa.237.0..sroa_idx, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.020.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.060, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %.lr.ph.i ], [ %.sroa.045.059, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %.lr.ph.i ], [ %i.r, %.lr.ph.i.preheader ] ; 3 uses
  %i.t = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold14VerneedSectionINS3_6X86_64EE9constructERNS3_7ContextIS5_EEEUlPNS3_6SymbolIS5_EEE_EEDaRT_RT0_ENKUlOSE_OSG_E_clIRSC_SM_EEbSI_SJ_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.018.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.019.i) ; 3 uses
  %.sink.in.i = select i1 %i.t, ptr %.sroa.010.018.i, ptr %.sroa.014.019.i
  %.sroa.010.1.idx.i = select i1 %i.t, i64 8, i64 0
  %.sroa.010.1.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 %.sroa.010.1.idx.i ; 5 uses
  %.sroa.014.1.idx.i = select i1 %i.t, i64 0, i64 8
  %.sroa.014.1.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 %.sroa.014.1.idx.i ; 5 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !519
  store ptr %.sink.i, ptr %.020.i, align 8, !tbaa !519
  %i.u = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 4 uses
  %i.v = icmp eq ptr %.sroa.014.1.i, %i.r
  %i.w = icmp eq ptr %.sroa.010.1.i, %i.s
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %.critedge.i.loopexit, label %.lr.ph.i, !llvm.loop !2273

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %.sroa.014.1.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = icmp sgt i64 %i.z, 8
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !400

bb.e:                                             ; preds = %.critedge.i.loopexit
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.z, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %.critedge.i.loopexit
  %i.ab = icmp eq i64 %i.z, 8
  br i1 %i.ab, label %bb.g, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %.sroa.014.1.i, align 8, !tbaa !519
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !519
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 %i.z ; 3 uses
  %i.ae = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.af = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 8
  br i1 %i.ah, label %bb.h, label %bb.i, !prof !400

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.ag, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %i.ai = icmp eq i64 %i.ag, 8
  br i1 %i.ai, label %bb.j, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.sroa.010.1.i, align 8, !tbaa !519
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !519
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.al = sub i64 %i.b, %i.ae
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %.not = icmp slt i64 %i.am, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !2272

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us, %bb.a
  %.sroa.045.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us ], [ %i.ak, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit ] ; 2 uses
  %.lcssa56 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us ], [ %i.am, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit ]
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa56) ; 2 uses
  %.idx54 = shl nsw i64 %.sroa.speculated, 3
  %i.an = getelementptr inbounds i8, ptr %.sroa.045.0.lcssa, i64 %.idx54 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %4, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ao = icmp eq i64 %.sroa.speculated, 0
  %i.ap = icmp eq ptr %i.an, %1
  %or.cond17.i16 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond17.i16, label %.critedge.i28, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %._crit_edge, %.lr.ph.i17
  %.020.i18 = phi ptr [ %i.ar, %.lr.ph.i17 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.014.019.i19 = phi ptr [ %.sroa.014.1.i25, %.lr.ph.i17 ], [ %.sroa.045.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.010.018.i20 = phi ptr [ %.sroa.010.1.i23, %.lr.ph.i17 ], [ %i.an, %._crit_edge ] ; 3 uses
  %i.aq = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold14VerneedSectionINS3_6X86_64EE9constructERNS3_7ContextIS5_EEEUlPNS3_6SymbolIS5_EEE_EEDaRT_RT0_ENKUlOSE_OSG_E_clIRSC_SM_EEbSI_SJ_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.018.i20, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.019.i19) ; 3 uses
  %.sink.in.i21 = select i1 %i.aq, ptr %.sroa.010.018.i20, ptr %.sroa.014.019.i19
  %.sroa.010.1.idx.i22 = select i1 %i.aq, i64 8, i64 0
  %.sroa.010.1.i23 = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20, i64 %.sroa.010.1.idx.i22 ; 3 uses
  %.sroa.014.1.idx.i24 = select i1 %i.aq, i64 0, i64 8
  %.sroa.014.1.i25 = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19, i64 %.sroa.014.1.idx.i24 ; 3 uses
  %.sink.i26 = load ptr, ptr %.sink.in.i21, align 8, !tbaa !519
  store ptr %.sink.i26, ptr %.020.i18, align 8, !tbaa !519
  %i.ar = getelementptr inbounds nuw i8, ptr %.020.i18, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.014.1.i25, %i.an
  %i.at = icmp eq ptr %.sroa.010.1.i23, %1
  %or.cond.i27 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i27, label %.critedge.i28, label %.lr.ph.i17, !llvm.loop !2273

.critedge.i28:                                    ; preds = %.lr.ph.i17, %._crit_edge
  %.sroa.010.0.lcssa.i29 = phi ptr [ %i.an, %._crit_edge ], [ %.sroa.010.1.i23, %.lr.ph.i17 ] ; 3 uses
  %.sroa.014.0.lcssa.i30 = phi ptr [ %.sroa.045.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i25, %.lr.ph.i17 ] ; 3 uses
  %.0.lcssa.i31 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ar, %.lr.ph.i17 ] ; 3 uses
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = ptrtoint ptr %.sroa.014.0.lcssa.i30 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp sgt i64 %i.aw, 8
  br i1 %i.ax, label %bb.k, label %bb.l, !prof !400

bb.k:                                             ; preds = %.critedge.i28
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i31, ptr align 8 %.sroa.014.0.lcssa.i30, i64 %i.aw, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i32

bb.l:                                             ; preds = %.critedge.i28
  %i.ay = icmp eq i64 %i.aw, 8
  br i1 %i.ay, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %.sroa.014.0.lcssa.i30, align 8, !tbaa !519
  store ptr %i.az, ptr %.0.lcssa.i31, align 8, !tbaa !519
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i32

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.ba = getelementptr inbounds i8, ptr %.0.lcssa.i31, i64 %i.aw ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.010.0.lcssa.i29 to i64
  %i.bc = sub i64 %i.b, %i.bb                     ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 8
  br i1 %i.bd, label %bb.n, label %bb.o, !prof !400

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i32
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ba, ptr align 8 %.sroa.010.0.lcssa.i29, i64 %i.bc, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit33

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i32
  %i.be = icmp eq i64 %i.bc, 8
  br i1 %i.be, label %bb.p, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit33

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %.sroa.010.0.lcssa.i29, align 8, !tbaa !519
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !519
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit33

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit33: ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.995", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.995", align 8 ; 7 uses
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 10 uses
  %.idx47 = shl nsw i64 %3, 4                     ; 2 uses
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not48 = icmp eq i64 %.idx, %.idx47
  br i1 %.not48, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 8
  %i.i = icmp eq i64 %.idx, 8
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us
  %.sroa.022.055.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.054.us = phi ptr [ %i.j, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_14VerneedSectionIS2_E9constructERNS0_7ContextIS2_EEEUlS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESQ_SO_SO_SO_SO_SQ_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.054.us, i64 %.idx ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br i1 %i.f, label %bb.c, label %bb.b, !prof !400

end_hunk_1
