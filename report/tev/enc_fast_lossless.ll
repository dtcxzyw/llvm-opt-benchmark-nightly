Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb:bb.a
  %i.el = icmp ult ptr %.239.i, %.0116.ph
  br i1 %i.el, label %.preheader41.i, label %.loopexit.i

.preheader41.i:                                   ; preds = %.critedge.i66, %.preheader41.i
  %.0.i72 = phi ptr [ %i.em, %.preheader41.i ], [ %.0116.ph, %.critedge.i66 ]
  %i.em = getelementptr inbounds i8, ptr %.0.i72, i64 -4 ; 3 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !94
  %i.eo = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val19.i73.pre, i32 noundef %.pre, i32 noundef %i.en) #38
  br i1 %i.eo, label %.preheader41.i, label %.loopexit.i, !llvm.loop !455

.loopexit.i:                                      ; preds = %.preheader41.i, %.critedge.i66
  %.1.i = phi ptr [ %.0116.ph, %.critedge.i66 ], [ %i.em, %.preheader41.i ] ; 3 uses
  %i.ep = icmp ult ptr %.239.i, %.1.i
  br i1 %i.ep, label %.lr.ph.preheader.i68, label %._crit_edge.i

.lr.ph.preheader.i68:                             ; preds = %.loopexit.i
  %.pre.i = load i32, ptr %.239.i, align 4, !tbaa !94
  %.pre56.i = load i32, ptr %.1.i, align 4, !tbaa !94
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.ap, %.lr.ph.preheader.i68
  %i.eq = phi i32 [ %i.ew, %bb.ap ], [ %.pre56.i, %.lr.ph.preheader.i68 ]
  %i.er = phi i32 [ %i.et, %bb.ap ], [ %.pre.i, %.lr.ph.preheader.i68 ]
  %.250.i = phi ptr [ %i.ev, %bb.ap ], [ %.1.i, %.lr.ph.preheader.i68 ] ; 2 uses
  %.34049.i = phi ptr [ %i.es, %bb.ap ], [ %.239.i, %.lr.ph.preheader.i68 ] ; 2 uses
  store i32 %i.eq, ptr %.34049.i, align 4, !tbaa !94
  store i32 %i.er, ptr %.250.i, align 4, !tbaa !94
  %.val15.i70 = load ptr, ptr %2, align 8         ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i69
  %.4.i = phi ptr [ %.34049.i, %.lr.ph.i69 ], [ %i.es, %bb.ao ]
  %i.es = getelementptr inbounds nuw i8, ptr %.4.i, i64 4 ; 5 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !94 ; 2 uses
  %i.eu = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val15.i70, i32 noundef %.pre, i32 noundef %i.et) #38
  br i1 %i.eu, label %.preheader.i71, label %bb.ao, !llvm.loop !456

.preheader.i71:                                   ; preds = %bb.ao, %.preheader.i71
  %.3.i = phi ptr [ %i.ev, %.preheader.i71 ], [ %.250.i, %bb.ao ]
  %i.ev = getelementptr inbounds i8, ptr %.3.i, i64 -4 ; 4 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !94 ; 2 uses
  %i.ex = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val15.i70, i32 noundef %.pre, i32 noundef %i.ew) #38
  br i1 %i.ex, label %.preheader.i71, label %bb.ap, !llvm.loop !457

bb.ap:                                            ; preds = %.preheader.i71
  %i.ey = icmp ult ptr %i.es, %i.ev
  br i1 %i.ey, label %.lr.ph.i69, label %._crit_edge.i, !llvm.loop !458

._crit_edge.i:                                    ; preds = %bb.ap, %.loopexit.i
  %.340.lcssa.i = phi ptr [ %.239.i, %.loopexit.i ], [ %i.es, %bb.ap ] ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.340.lcssa.i, i64 -4 ; 3 uses
  %.not.i67 = icmp eq ptr %.0113, %i.ez
  br i1 %.not.i67, label %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !94
  store i32 %i.fa, ptr %.0113, align 4, !tbaa !94
  br label %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit

_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit: ; preds = %._crit_edge.i, %bb.aq
  store i32 %.pre, ptr %i.ez, align 4, !tbaa !94
  br label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit.outer359.backedge

bb.ar:                                            ; preds = %.preheader, %bb.ar
  %.037.i74 = phi ptr [ %i.fb, %bb.ar ], [ %.0113, %.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.037.i74, i64 4 ; 5 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !94 ; 2 uses
  %i.fd = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val19.i73.pre, i32 noundef %i.fc, i32 noundef %.pre) #38
  br i1 %i.fd, label %bb.ar, label %bb.as, !llvm.loop !459

bb.as:                                            ; preds = %bb.ar
  %i.fe = icmp eq ptr %.0113, %.037.i74
  br i1 %i.fe, label %.preheader40.i, label %.preheader41.i75

.preheader40.i:                                   ; preds = %bb.as, %bb.at
  %.0.i86 = phi ptr [ %i.fg, %bb.at ], [ %.0116.ph, %bb.as ] ; 3 uses
  %i.ff = icmp ult ptr %i.fb, %.0.i86
  br i1 %i.ff, label %bb.at, label %.critedge.i77

bb.at:                                            ; preds = %.preheader40.i
  %i.fg = getelementptr inbounds i8, ptr %.0.i86, i64 -4 ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !94
  %i.fi = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val19.i73.pre, i32 noundef %i.fh, i32 noundef %.pre) #38
  br i1 %i.fi, label %.critedge.i77, label %.preheader40.i, !llvm.loop !460

.preheader41.i75:                                 ; preds = %bb.as, %.preheader41.i75
  %.1.i76 = phi ptr [ %i.fj, %.preheader41.i75 ], [ %.0116.ph, %bb.as ]
  %i.fj = getelementptr inbounds i8, ptr %.1.i76, i64 -4 ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !94
  %i.fl = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val19.i73.pre, i32 noundef %i.fk, i32 noundef %.pre) #38
  br i1 %i.fl, label %.critedge.i77, label %.preheader41.i75, !llvm.loop !461

.critedge.i77:                                    ; preds = %.preheader41.i75, %bb.at, %.preheader40.i
  %.2.i = phi ptr [ %i.fg, %bb.at ], [ %.0.i86, %.preheader40.i ], [ %i.fj, %.preheader41.i75 ] ; 3 uses
  %.not = icmp ult ptr %i.fb, %.2.i               ; 2 uses
  br i1 %.not, label %.lr.ph.preheader.i78, label %._crit_edge.i84

.lr.ph.preheader.i78:                             ; preds = %.critedge.i77
  %.pre.i79 = load i32, ptr %.2.i, align 4, !tbaa !94
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.av, %.lr.ph.preheader.i78
  %i.fm = phi i32 [ %i.fs, %bb.av ], [ %.pre.i79, %.lr.ph.preheader.i78 ]
  %i.fn = phi i32 [ %i.fp, %bb.av ], [ %i.fc, %.lr.ph.preheader.i78 ]
  %.347.i = phi ptr [ %i.fr, %bb.av ], [ %.2.i, %.lr.ph.preheader.i78 ] ; 2 uses
  %.13846.i = phi ptr [ %i.fo, %bb.av ], [ %i.fb, %.lr.ph.preheader.i78 ] ; 2 uses
  store i32 %i.fm, ptr %.13846.i, align 4, !tbaa !94
  store i32 %i.fn, ptr %.347.i, align 4, !tbaa !94
  %.val16.i = load ptr, ptr %2, align 8           ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i80
  %.239.i81 = phi ptr [ %.13846.i, %.lr.ph.i80 ], [ %i.fo, %bb.au ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.239.i81, i64 4 ; 4 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !94 ; 2 uses
  %i.fq = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val16.i, i32 noundef %i.fp, i32 noundef %.pre) #38
  br i1 %i.fq, label %bb.au, label %.preheader.i82, !llvm.loop !462

.preheader.i82:                                   ; preds = %bb.au, %.preheader.i82
  %.4.i83 = phi ptr [ %i.fr, %.preheader.i82 ], [ %.347.i, %bb.au ]
  %i.fr = getelementptr inbounds i8, ptr %.4.i83, i64 -4 ; 4 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !94 ; 2 uses
  %i.ft = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val16.i, i32 noundef %i.fs, i32 noundef %.pre) #38
  br i1 %i.ft, label %bb.av, label %.preheader.i82, !llvm.loop !463

bb.av:                                            ; preds = %.preheader.i82
  %i.fu = icmp ult ptr %i.fo, %i.fr
  br i1 %i.fu, label %.lr.ph.i80, label %._crit_edge.i84, !llvm.loop !464

._crit_edge.i84:                                  ; preds = %bb.av, %.critedge.i77
  %i.fv = phi ptr [ %.037.i74, %.critedge.i77 ], [ %.239.i81, %bb.av ] ; 8 uses
  %.not.i85 = icmp eq ptr %.0113, %i.fv
  br i1 %.not.i85, label %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i84
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !94
  store i32 %i.fw, ptr %.0113, align 4, !tbaa !94
  br label %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit

_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit: ; preds = %._crit_edge.i84, %bb.aw
  store i32 %.pre, ptr %i.fv, align 4, !tbaa !94
  br i1 %.not, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit
  %i.fx = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef nonnull %.0113, ptr noundef nonnull %i.fv, ptr noundef nonnull align 8 dereferenceable(8) %2) #38 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fz = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef nonnull %i.fy, ptr noundef %.0116.ph, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  br i1 %i.fz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.fx, label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit.thread, label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit.outer, !llvm.loop !465

bb.az:                                            ; preds = %bb.ax
  br i1 %i.fx, label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit, label %bb.ba, !llvm.loop !465

bb.ba:                                            ; preds = %bb.az, %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit
  tail call fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(ptr noundef nonnull %.0113, ptr noundef nonnull %i.fv, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.dp, i1 noundef zeroext %i.g) #38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  br label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit.outer359.backedge

_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit.outer359.backedge: ; preds = %bb.ba, %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit
  %.0113.ph360.be = phi ptr [ %.340.lcssa.i, %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN4AVX212_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit ], [ %i.ga, %bb.ba ]
  br label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit.outer359, !llvm.loop !465

_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit.thread: ; preds = %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit, %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit, %bb.ay, %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i, %bb.p, %bb.m, %bb.r, %bb.n, %bb.l, %bb.g, %bb.f, %bb.e, %bb.c, %bb.d, %bb.i, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr nofree readonly captures(none) %.0.val, i32 noundef %0, i32 noundef %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %1, i64 1 ; 4 uses
  %i.e = trunc <2 x i32> %i.d to <2 x i8>         ; 2 uses
  %i.f = lshr <2 x i32> %i.d, splat (i32 8)
  %i.g = trunc <2 x i32> %i.f to <2 x i8>         ; 2 uses
  %i.h = lshr <2 x i32> %i.d, splat (i32 16)
  %i.i = trunc <2 x i32> %i.h to <2 x i8>         ; 2 uses
  %i.j = load i64, ptr %.0.val, align 8, !tbaa !68
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = lshr <2 x i32> %i.d, splat (i32 24)
  %i.m = uitofp <2 x i8> %i.e to <2 x float>
  %i.n = uitofp <2 x i8> %i.g to <2 x float>
  %i.o = uitofp <2 x i8> %i.i to <2 x float>
  %i.p = trunc nuw <2 x i32> %i.l to <2 x i8>
  %i.q = fmul nnan <2 x float> %i.n, splat (float 5.870000e-01)
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float 2.990000e-01), <2 x float> %i.q)
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 1.140000e-01), <2 x float> %i.r)
  %i.t = fadd <2 x float> %i.s, splat (float f0x3C23D70A)
  %i.u = uitofp <2 x i8> %i.p to <2 x float>
  %i.v = fmul <2 x float> %i.t, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = uitofp <2 x i8> %i.e to <2 x float>
  %i.x = uitofp <2 x i8> %i.g to <2 x float>
  %i.y = uitofp <2 x i8> %i.i to <2 x float>
  %i.z = fmul nnan <2 x float> %i.x, splat (float 5.870000e-01)
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> splat (float 2.990000e-01), <2 x float> %i.z)
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> splat (float 1.140000e-01), <2 x float> %i.aa)
  %i.ac = fadd <2 x float> %i.ab, splat (float f0x3C23D70A)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi <2 x float> [ %i.v, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %shift = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = fcmp olt <2 x float> %i.ad, %shift
  %i.af = extractelement <2 x i1> %i.ae, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.015 = phi i1 [ %i.af, %bb.f ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.015
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SF_SE_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #21 {
bb.a:
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly align 8 dereferenceable(8) %5) #38
  %i.a = load i32, ptr %3, align 4, !tbaa !94     ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !94     ; 2 uses
  %.val5.i.i = load ptr, ptr %5, align 8          ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val5.i.i, i32 noundef %i.a, i32 noundef %i.b) #38
  br i1 %i.c, label %bb.b, label %_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_.exit.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %2, align 4, !tbaa !94
  store i32 %i.b, ptr %3, align 4, !tbaa !94
  %i.d = load i32, ptr %2, align 4, !tbaa !94     ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !94     ; 2 uses
  %.val4.i.i = load ptr, ptr %5, align 8          ; 2 uses
  %i.f = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val4.i.i, i32 noundef %i.d, i32 noundef %i.e) #38
  br i1 %i.f, label %bb.c, label %_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_.exit.i

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !94
  store i32 %i.e, ptr %2, align 4, !tbaa !94
  %i.g = load i32, ptr %1, align 4, !tbaa !94     ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !94     ; 2 uses
  %.val.i.i = load ptr, ptr %5, align 8           ; 2 uses
  %i.i = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val.i.i, i32 noundef %i.g, i32 noundef %i.h) #38
  br i1 %i.i, label %bb.d, label %_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %0, align 4, !tbaa !94
  store i32 %i.h, ptr %1, align 4, !tbaa !94
  %.val7.pre.i = load ptr, ptr %5, align 8
  br label %_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_.exit.i

_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.val7.i = phi ptr [ %.val5.i.i, %bb.a ], [ %.val4.i.i, %bb.b ], [ %.val.i.i, %bb.c ], [ %.val7.pre.i, %bb.d ]
  %i.j = load i32, ptr %4, align 4, !tbaa !94     ; 2 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !94     ; 2 uses
  %i.l = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val7.i, i32 noundef %i.j, i32 noundef %i.k) #38
  br i1 %i.l, label %bb.e, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

bb.e:                                             ; preds = %_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_.exit.i
  store i32 %i.j, ptr %3, align 4, !tbaa !94
  store i32 %i.k, ptr %4, align 4, !tbaa !94
  %i.m = load i32, ptr %3, align 4, !tbaa !94     ; 2 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !94     ; 2 uses
  %.val6.i = load ptr, ptr %5, align 8
  %i.o = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val6.i, i32 noundef %i.m, i32 noundef %i.n) #38
  br i1 %i.o, label %bb.f, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %2, align 4, !tbaa !94
  store i32 %i.n, ptr %3, align 4, !tbaa !94
  %i.p = load i32, ptr %2, align 4, !tbaa !94     ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !94     ; 2 uses
  %.val5.i = load ptr, ptr %5, align 8
  %i.r = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val5.i, i32 noundef %i.p, i32 noundef %i.q) #38
  br i1 %i.r, label %bb.g, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

bb.g:                                             ; preds = %bb.f
  store i32 %i.p, ptr %1, align 4, !tbaa !94
  store i32 %i.q, ptr %2, align 4, !tbaa !94
  %i.s = load i32, ptr %1, align 4, !tbaa !94     ; 2 uses
  %i.t = load i32, ptr %0, align 4, !tbaa !94     ; 2 uses
  %.val.i = load ptr, ptr %5, align 8
  %i.u = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val.i, i32 noundef %i.s, i32 noundef %i.t) #38
  br i1 %i.u, label %bb.h, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

bb.h:                                             ; preds = %bb.g
  store i32 %i.s, ptr %0, align 4, !tbaa !94
  store i32 %i.t, ptr %1, align 4, !tbaa !94
  br label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit: ; preds = %_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_.exit.i, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #22 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !94     ; 4 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !94     ; 5 uses
  %.val13 = load ptr, ptr %3, align 8             ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val13, i32 noundef %i.a, i32 noundef %i.b) #38
  %i.d = load i32, ptr %2, align 4, !tbaa !94     ; 3 uses
  %i.e = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val13, i32 noundef %i.d, i32 noundef %i.a) #38 ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !94
  store i32 %i.a, ptr %2, align 4, !tbaa !94
  %i.f = load i32, ptr %1, align 4, !tbaa !94     ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !94     ; 2 uses
  %.val11 = load ptr, ptr %3, align 8
  %i.h = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val11, i32 noundef %i.f, i32 noundef %i.g) #38
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %0, align 4, !tbaa !94
  store i32 %i.g, ptr %1, align 4, !tbaa !94
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.d, ptr %0, align 4, !tbaa !94
  store i32 %i.b, ptr %2, align 4, !tbaa !94
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i32 %i.a, ptr %0, align 4, !tbaa !94
  store i32 %i.b, ptr %1, align 4, !tbaa !94
  %i.i = load i32, ptr %2, align 4, !tbaa !94     ; 2 uses
  %.val = load ptr, ptr %3, align 8
  %i.j = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val, i32 noundef %i.i, i32 noundef %i.b) #38
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.i, ptr %1, align 4, !tbaa !94
  store i32 %i.b, ptr %2, align 4, !tbaa !94
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.d, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  switch i64 %i.d, label %bb.j [
    i64 0, label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit
    i64 1, label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !94   ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !94     ; 2 uses
  %.val31 = load ptr, ptr %2, align 8
  %i.h = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val31, i32 noundef %i.f, i32 noundef %i.g) #38
  br i1 %i.h, label %bb.c, label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %0, align 4, !tbaa !94
  store i32 %i.g, ptr %i.e, align 4, !tbaa !94
  br label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds i8, ptr %1, i64 -4
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  br label %_ZNSt3__124__sort4_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SE_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN4AVX212_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  %i.n = load i32, ptr %i.m, align 4, !tbaa !94   ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !94   ; 2 uses
  %.val5.i.i = load ptr, ptr %2, align 8
  %i.p = tail call fastcc noundef zeroext i1 @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj(ptr %.val5.i.i, i32 noundef %i.n, i32 noundef %i.o) #38
end_hunk_0
begin_hunk_1_@_ZN22default_implementation12_GLOBAL__N_122PrepareDCGlobalPaletteEbmmmPKN12_GLOBAL__N_110PrefixCodeERKNSt3__16vectorIjNS5_9allocatorIjEEEEmPNS1_9BitWriterE:bb.a
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !996

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.094.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.094 = phi i64 [ %i.fw, %scalar.ph ], [ %.094.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.094
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !94 ; 3 uses
  %i.fj = trunc i32 %i.fi to i16                  ; 2 uses
  %i.fk = and i16 %i.fj, 255
  %i.fl = add i64 %.094, 17                       ; 4 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.fl
  store i16 %i.fk, ptr %i.fm, align 2, !tbaa !104
  %i.fn = lshr i16 %i.fj, 8
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.fl
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !104
  %i.fp = lshr i32 %i.fi, 16
  %i.fq = trunc nuw i32 %i.fp to i16
  %i.fr = and i16 %i.fq, 255
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.fl
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !104
  %i.ft = lshr i32 %i.fi, 24
  %i.fu = trunc nuw nsw i32 %i.ft to i16
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.fl
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !104
  %i.fw = add nuw i64 %.094, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !997

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.en, i64 30 ; 6 uses
  store i16 0, ptr %i.fx, align 2, !tbaa !104
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 3 uses
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fx, i64 noundef %6) #38
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !104 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.en, i64 2142 ; 4 uses
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !104
  store i16 %i.fz, ptr %i.fx, align 2, !tbaa !104
  %i.gb = icmp ugt i64 %3, 1
  br i1 %i.gb, label %bb.j, label %.thread

.thread:                                          ; preds = %._crit_edge
  %i.gc = getelementptr inbounds nuw i8, ptr %i.en, i64 4254
  br label %.thread93

bb.j:                                             ; preds = %._crit_edge
  %i.gd = getelementptr inbounds nuw i8, ptr %i.en, i64 2144 ; 3 uses
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fx, i64 noundef %6) #38
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !104 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.en, i64 4254 ; 5 uses
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !104
  store i16 %i.ge, ptr %i.ga, align 2, !tbaa !104
  %.not = icmp eq i64 %3, 2
  br i1 %.not, label %.thread93, label %bb.k

.thread93:                                        ; preds = %.thread, %bb.j
  %.ph = phi ptr [ %i.gf, %bb.j ], [ %i.gc, %.thread ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.en, i64 4256
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !104
  store i16 %i.gh, ptr %.ph, align 2, !tbaa !104
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 4256 ; 3 uses
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.ga, i64 noundef %6) #38
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !104 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.en, i64 6366 ; 2 uses
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !104
  store i16 %i.gj, ptr %i.gf, align 2, !tbaa !104
  %i.gl = icmp ugt i64 %3, 3
  br i1 %i.gl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gm = getelementptr inbounds nuw i8, ptr %i.en, i64 6368
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gf, i64 noundef %6) #38
  br label %bb.m

bb.m:                                             ; preds = %.thread93, %bb.l, %bb.k
  %.val = load ptr, ptr %9, align 8, !tbaa !208   ; 2 uses
  %.val57 = load i64, ptr %i.ek, align 8, !tbaa !207
  %.val.val = load ptr, ptr %.val, align 64, !tbaa !211
  %i.gn = getelementptr i8, ptr %.val, i64 8
  %.val.val58 = load ptr, ptr %i.gn, align 8, !tbaa !210
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E8FinalizeEv(ptr %.val.val, ptr %.val.val58, i64 %.val57) #38
  br i1 %0, label %_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.go = load i64, ptr %i.e, align 8, !tbaa !86  ; 3 uses
  %.not.i = icmp eq i64 %i.go, 0
  br i1 %.not.i, label %_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gp = sub i64 8, %i.go
  %i.gq = load ptr, ptr %7, align 8, !tbaa !71
  %i.gr = load i64, ptr %i.b, align 8, !tbaa !74
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  %i.gt = load i64, ptr %i.f, align 8, !tbaa !68
  %i.gu = and i64 %i.gp, 4294967295
  %i.gv = add i64 %i.gu, %i.go
  store i64 %i.gv, ptr %i.e, align 8, !tbaa !68
  store i64 %i.gt, ptr %i.gs, align 1
  %i.gw = load i64, ptr %i.e, align 8, !tbaa !68  ; 3 uses
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = and i64 %i.gw, -8
  %i.gz = and i64 %i.gw, 7
  store i64 %i.gz, ptr %i.e, align 8, !tbaa !68
  %i.ha = load i64, ptr %i.f, align 8, !tbaa !68
  %i.hb = lshr i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.f, align 8, !tbaa !68
  %i.hc = load i64, ptr %i.b, align 8, !tbaa !74
  %i.hd = add i64 %i.hc, %i.gx
  store i64 %i.hd, ptr %i.b, align 8, !tbaa !74
  br label %_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.o, %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 8448) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #32 {
bb.a:
  %i.a = zext i1 %4 to i8
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer: ; preds = %bb.dd, %bb.a
  %.0132.ph = phi ptr [ %i.aqo, %bb.dd ], [ %1, %bb.a ] ; 29 uses
  %.0129.ph = phi ptr [ %.0129, %bb.dd ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph522, %bb.dd ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.tw, %bb.dd ], [ %3, %bb.a ]
  %i.b = ptrtoint ptr %.0132.ph to i64            ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.0132.ph, i64 -8
  %i.e = getelementptr inbounds i8, ptr %.0132.ph, i64 -12
  %i.f = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 3 uses
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520: ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer
  %.0129.ph521 = phi ptr [ %.0129.ph, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer ], [ %.0129.ph521.be, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge ]
  %.048.ph522 = phi i8 [ %.048.ph, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer ], [ 0, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge ] ; 3 uses
  %.046.ph523 = phi i64 [ %.046.ph, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer ], [ %i.tw, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge ]
  %i.h = trunc nuw i8 %.048.ph522 to i1           ; 2 uses
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit: ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520, %bb.de
  %.0129 = phi ptr [ %.154.lcssa.i, %bb.de ], [ %.0129.ph521, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520 ] ; 53 uses
  %.046 = phi i64 [ %i.tw, %bb.de ], [ %.046.ph523, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520 ] ; 2 uses
  %i.i = ptrtoint ptr %.0129 to i64               ; 3 uses
  %i.j = sub i64 %i.b, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 8 uses
  switch i64 %i.k, label %bb.j [
    i64 0, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread
    i64 1, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread
    i64 2, label %bb.b
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
  ]

bb.b:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.l = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !94   ; 3 uses
  %i.n = load i32, ptr %.0129, align 4, !tbaa !94 ; 3 uses
  %.val54 = load ptr, ptr %2, align 8
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %i.n, i64 1 ; 4 uses
  %i.s = trunc <2 x i32> %i.r to <2 x i8>         ; 2 uses
  %i.t = lshr <2 x i32> %i.r, splat (i32 8)
  %i.u = trunc <2 x i32> %i.t to <2 x i8>         ; 2 uses
  %i.v = lshr <2 x i32> %i.r, splat (i32 16)
  %i.w = trunc <2 x i32> %i.v to <2 x i8>         ; 2 uses
  %i.x = load i64, ptr %.val54, align 8, !tbaa !68
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = lshr <2 x i32> %i.r, splat (i32 24)
  %i.aa = uitofp <2 x i8> %i.s to <2 x float>
  %i.ab = uitofp <2 x i8> %i.u to <2 x float>
  %i.ac = uitofp <2 x i8> %i.w to <2 x float>
  %i.ad = trunc nuw <2 x i32> %i.z to <2 x i8>
  %i.ae = fmul nnan <2 x float> %i.ab, splat (float 5.870000e-01)
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ae)
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float 1.140000e-01), <2 x float> %i.af)
  %i.ah = fadd <2 x float> %i.ag, splat (float f0x3C23D70A)
  %i.ai = uitofp <2 x i8> %i.ad to <2 x float>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = uitofp <2 x i8> %i.s to <2 x float>
  %i.al = uitofp <2 x i8> %i.u to <2 x float>
  %i.am = uitofp <2 x i8> %i.w to <2 x float>
  %i.an = fmul nnan <2 x float> %i.al, splat (float 5.870000e-01)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> splat (float 2.990000e-01), <2 x float> %i.an)
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ao)
  %i.aq = fadd <2 x float> %i.ap, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit: ; preds = %bb.e, %bb.f
  %i.ar = phi <2 x float> [ %i.aj, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 1
  %i.au = fcmp olt float %i.as, %i.at
  br i1 %i.au, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread: ; preds = %bb.c, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  store i32 %i.m, ptr %.0129, align 4, !tbaa !94
  store i32 %i.n, ptr %i.l, align 4, !tbaa !94
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.g:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.aw = getelementptr inbounds i8, ptr %.0132.ph, i64 -4
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %.0129, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.h:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  %i.az = getelementptr inbounds i8, ptr %.0132.ph, i64 -4
  tail call fastcc void @_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_(ptr noundef %.0129, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.i:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0129, i64 12
  %i.bd = getelementptr inbounds i8, ptr %.0132.ph, i64 -4
  tail call fastcc void @_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SF_SE_(ptr noundef %.0129, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.j:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.be = icmp slt i64 %i.k, 24
  br i1 %i.be, label %bb.k, label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw i8 %.048.ph522 to i1
  %i.bg = icmp eq ptr %.0129, %.0132.ph
  %storemerge36.i = getelementptr inbounds nuw i8, ptr %.0129, i64 4 ; 3 uses
  %.not37.i = icmp eq ptr %storemerge36.i, %.0132.ph
  %or.cond.i = select i1 %i.bg, i1 true, i1 %.not37.i ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  br i1 %or.cond.i, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %.lr.ph40.i.preheader

.lr.ph40.i.preheader:                             ; preds = %bb.l
  %.val19.i.pre306 = load ptr, ptr %2, align 8
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.preheader, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i
  %.val19.i = phi ptr [ %.val19.i307, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i ], [ %.val19.i.pre306, %.lr.ph40.i.preheader ] ; 3 uses
  %storemerge39.i = phi ptr [ %storemerge.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i ], [ %storemerge36.i, %.lr.ph40.i.preheader ] ; 3 uses
  %.pn38.i = phi ptr [ %storemerge39.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i ], [ %.0129, %.lr.ph40.i.preheader ] ; 3 uses
  %i.bh = load <2 x i32>, ptr %.pn38.i, align 4, !tbaa !94 ; 9 uses
  %i.bi = extractelement <2 x i32> %i.bh, i64 1   ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph40.i
  %i.bk = extractelement <2 x i32> %i.bh, i64 0   ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = trunc <2 x i32> %i.bh to <2 x i8>       ; 2 uses
  %i.bn = lshr <2 x i32> %i.bh, splat (i32 8)
  %i.bo = trunc <2 x i32> %i.bn to <2 x i8>       ; 2 uses
  %i.bp = lshr <2 x i32> %i.bh, splat (i32 16)
  %i.bq = trunc <2 x i32> %i.bp to <2 x i8>       ; 2 uses
  %i.br = load i64, ptr %.val19.i, align 8, !tbaa !68
  %i.bs = icmp eq i64 %i.br, 4
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = lshr <2 x i32> %i.bh, splat (i32 24)
  %i.bu = uitofp <2 x i8> %i.bm to <2 x float>
  %i.bv = uitofp <2 x i8> %i.bo to <2 x float>
  %i.bw = uitofp <2 x i8> %i.bq to <2 x float>
  %i.bx = trunc nuw <2 x i32> %i.bt to <2 x i8>
  %i.by = fmul nnan <2 x float> %i.bv, splat (float 5.870000e-01)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float 2.990000e-01), <2 x float> %i.by)
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bz)
  %i.cb = fadd <2 x float> %i.ca, splat (float f0x3C23D70A)
  %i.cc = uitofp <2 x i8> %i.bx to <2 x float>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ce = uitofp <2 x i8> %i.bm to <2 x float>
  %i.cf = uitofp <2 x i8> %i.bo to <2 x float>
  %i.cg = uitofp <2 x i8> %i.bq to <2 x float>
  %i.ch = fmul nnan <2 x float> %i.cf, splat (float 5.870000e-01)
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ch)
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ci)
  %i.ck = fadd <2 x float> %i.cj, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i: ; preds = %bb.p, %bb.o
  %i.cl = phi <2 x float> [ %i.cd, %bb.o ], [ %i.ck, %bb.p ] ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %i.co = fcmp olt float %i.cn, %i.cm
  br i1 %i.co, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i, %bb.m
  store i32 %i.bk, ptr %storemerge39.i, align 4, !tbaa !94
  %.not1833.i = icmp eq ptr %.pn38.i, %.0129
  br i1 %.not1833.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i
  %i.cp = trunc i32 %i.bi to i8
  %i.cq = bitcast <2 x i32> %i.bh to <8 x i8>
  %i.cr = extractelement <8 x i8> %i.cq, i64 5
  %i.cs = bitcast <2 x i32> %i.bh to <8 x i8>
  %i.ct = extractelement <8 x i8> %i.cs, i64 6
  %i.cu = uitofp i8 %i.cp to float
  %i.cv = uitofp i8 %i.cr to float
  %i.cw = fmul nnan float %i.cv, 5.870000e-01
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float 2.990000e-01, float %i.cw)
  %i.cy = uitofp i8 %i.ct to float
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float 1.140000e-01, float %i.cx)
  %i.da = fadd float %i.cz, f0x3C23D70A           ; 2 uses
  %i.db = bitcast <2 x i32> %i.bh to <8 x i8>
  %i.dc = extractelement <8 x i8> %i.db, i64 7
  %i.dd = uitofp i8 %i.dc to float
  %i.de = fmul float %i.da, %i.dd
  br label %bb.q

bb.q:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i, %.lr.ph.i
  %.02834.i = phi ptr [ %.pn38.i, %.lr.ph.i ], [ %i.df, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i ] ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %.02834.i, i64 -4 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !94 ; 6 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i = load ptr, ptr %2, align 8
  %i.di = trunc i32 %i.dg to i8                   ; 2 uses
  %i.dj = lshr i32 %i.dg, 8
  %i.dk = trunc i32 %i.dj to i8                   ; 2 uses
  %i.dl = lshr i32 %i.dg, 16
  %i.dm = trunc i32 %i.dl to i8                   ; 2 uses
  %i.dn = load i64, ptr %.val.i, align 8, !tbaa !68
  %i.do = icmp eq i64 %i.dn, 4
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dp = lshr i32 %i.dg, 24
  %i.dq = trunc nuw i32 %i.dp to i8
  %i.dr = uitofp i8 %i.di to float
  %i.ds = uitofp i8 %i.dk to float
  %i.dt = fmul nnan float %i.ds, 5.870000e-01
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dr, float 2.990000e-01, float %i.dt)
  %i.dv = uitofp i8 %i.dm to float
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float 1.140000e-01, float %i.du)
  %i.dx = fadd float %i.dw, f0x3C23D70A
  %i.dy = uitofp i8 %i.dq to float
  %i.dz = fmul float %i.dx, %i.dy
  br label %.split.i

bb.t:                                             ; preds = %bb.r
  %i.ea = uitofp i8 %i.di to float
  %i.eb = uitofp i8 %i.dk to float
  %i.ec = fmul nnan float %i.eb, 5.870000e-01
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ea, float 2.990000e-01, float %i.ec)
  %i.ee = uitofp i8 %i.dm to float
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float 1.140000e-01, float %i.ed)
  %i.eg = fadd float %i.ef, f0x3C23D70A
  br label %.split.i

.split.i:                                         ; preds = %bb.t, %bb.s
  %.013.i20.i = phi float [ %i.de, %bb.s ], [ %i.da, %bb.t ]
  %.0.i21.i = phi float [ %i.dz, %bb.s ], [ %i.eg, %bb.t ]
  %i.eh = fcmp olt float %.013.i20.i, %.0.i21.i
  br i1 %i.eh, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i, label %.critedge.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i: ; preds = %.split.i, %bb.q
  store i32 %i.dg, ptr %.02834.i, align 4, !tbaa !94
  %.not18.i = icmp eq ptr %i.df, %.0129
  br i1 %.not18.i, label %.critedge.i, label %bb.q, !llvm.loop !998

.critedge.i:                                      ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i, %.split.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i
  %.028.lcssa.i = phi ptr [ %.0129, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i ], [ %.0129, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i ], [ %.02834.i, %.split.i ]
  store i32 %i.bi, ptr %.028.lcssa.i, align 4, !tbaa !94
  %.val19.i.pre = load ptr, ptr %2, align 8
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i: ; preds = %.critedge.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i, %.lr.ph40.i
  %.val19.i307 = phi ptr [ %.val19.i.pre, %.critedge.i ], [ %.val19.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i ], [ %.val19.i, %.lr.ph40.i ]
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge39.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.0132.ph
  br i1 %.not.i, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %.lr.ph40.i, !llvm.loop !999

bb.u:                                             ; preds = %bb.k
  br i1 %or.cond.i, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %.lr.ph.i56.preheader

.lr.ph.i56.preheader:                             ; preds = %bb.u
  %.val15.i.pre303 = load ptr, ptr %2, align 8
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.preheader, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i
  %.val15.i = phi ptr [ %.val15.i304, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i ], [ %.val15.i.pre303, %.lr.ph.i56.preheader ] ; 3 uses
  %storemerge32.i = phi ptr [ %storemerge.i60, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i ], [ %storemerge36.i, %.lr.ph.i56.preheader ] ; 3 uses
  %.pn31.i = phi ptr [ %storemerge32.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i ], [ %.0129, %.lr.ph.i56.preheader ] ; 2 uses
  %i.ei = load <2 x i32>, ptr %.pn31.i, align 4, !tbaa !94 ; 10 uses
  %i.ej = extractelement <2 x i32> %i.ei, i64 1   ; 3 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i56
  %i.el = extractelement <2 x i32> %i.ei, i64 0   ; 3 uses
  %i.em = icmp eq i32 %i.el, 0
  %.pre.i = trunc i32 %i.ej to i8                 ; 3 uses
  br i1 %i.em, label %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread_crit_edge.i, label %bb.w

._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread_crit_edge.i: ; preds = %bb.v
  %i.en = bitcast <2 x i32> %i.ei to <8 x i8>
  %.pre35.i = extractelement <8 x i8> %i.en, i64 5
  %i.eo = bitcast <2 x i32> %i.ei to <8 x i8>
  %.pre39.i = extractelement <8 x i8> %i.eo, i64 6
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i62

bb.w:                                             ; preds = %bb.v
  %i.ep = trunc i32 %i.el to i8                   ; 2 uses
  %i.eq = lshr <2 x i32> %i.ei, splat (i32 8)
  %i.er = bitcast <2 x i32> %i.ei to <8 x i8>
  %i.es = extractelement <8 x i8> %i.er, i64 5
  %i.et = trunc <2 x i32> %i.eq to <2 x i8>       ; 2 uses
  %i.eu = lshr <2 x i32> %i.ei, splat (i32 16)
  %i.ev = bitcast <2 x i32> %i.ei to <8 x i8>
  %i.ew = extractelement <8 x i8> %i.ev, i64 6
  %i.ex = trunc <2 x i32> %i.eu to <2 x i8>       ; 2 uses
  %i.ey = load i64, ptr %.val15.i, align 8, !tbaa !68
  %i.ez = icmp eq i64 %i.ey, 4
  br i1 %i.ez, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fa = lshr <2 x i32> %i.ei, splat (i32 24)
  %i.fb = insertelement <2 x i8> poison, i8 %i.ep, i64 0
  %i.fc = insertelement <2 x i8> %i.fb, i8 %.pre.i, i64 1
  %i.fd = uitofp <2 x i8> %i.fc to <2 x float>
  %i.fe = uitofp <2 x i8> %i.et to <2 x float>
  %i.ff = uitofp <2 x i8> %i.ex to <2 x float>
  %i.fg = trunc nuw <2 x i32> %i.fa to <2 x i8>
  %i.fh = fmul nnan <2 x float> %i.fe, splat (float 5.870000e-01)
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> splat (float 2.990000e-01), <2 x float> %i.fh)
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> splat (float 1.140000e-01), <2 x float> %i.fi)
  %i.fk = fadd <2 x float> %i.fj, splat (float f0x3C23D70A)
  %i.fl = uitofp <2 x i8> %i.fg to <2 x float>
  %i.fm = fmul <2 x float> %i.fk, %i.fl
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57

bb.y:                                             ; preds = %bb.w
  %i.fn = insertelement <2 x i8> poison, i8 %i.ep, i64 0
  %i.fo = insertelement <2 x i8> %i.fn, i8 %.pre.i, i64 1
  %i.fp = uitofp <2 x i8> %i.fo to <2 x float>
  %i.fq = uitofp <2 x i8> %i.et to <2 x float>
  %i.fr = uitofp <2 x i8> %i.ex to <2 x float>
  %i.fs = fmul nnan <2 x float> %i.fq, splat (float 5.870000e-01)
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> splat (float 2.990000e-01), <2 x float> %i.fs)
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ft)
  %i.fv = fadd <2 x float> %i.fu, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57: ; preds = %bb.y, %bb.x
  %i.fw = phi <2 x float> [ %i.fm, %bb.x ], [ %i.fv, %bb.y ] ; 2 uses
  %i.fx = extractelement <2 x float> %i.fw, i64 0
  %i.fy = extractelement <2 x float> %i.fw, i64 1
  %i.fz = fcmp olt float %i.fy, %i.fx
  br i1 %i.fz, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i62, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i62: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57, %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread_crit_edge.i
  %.pre-phi40.i = phi i8 [ %.pre39.i, %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread_crit_edge.i ], [ %i.ew, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57 ]
  %.pre-phi36.i = phi i8 [ %.pre35.i, %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread_crit_edge.i ], [ %i.es, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57 ]
  %i.ga = uitofp i8 %.pre.i to float
  %i.gb = uitofp i8 %.pre-phi36.i to float
  %i.gc = fmul nnan float %i.gb, 5.870000e-01
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.ga, float 2.990000e-01, float %i.gc)
  %i.ge = uitofp i8 %.pre-phi40.i to float
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float 1.140000e-01, float %i.gd)
  %i.gg = fadd float %i.gf, f0x3C23D70A           ; 2 uses
  %i.gh = bitcast <2 x i32> %i.ei to <8 x i8>
  %i.gi = extractelement <8 x i8> %i.gh, i64 7
  %i.gj = uitofp i8 %i.gi to float
  %i.gk = fmul float %i.gg, %i.gj
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i.backedge, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i62
  %i.gl = phi i32 [ %i.el, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i62 ], [ %i.gn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i.backedge ]
  %.024.i = phi ptr [ %.pn31.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i62 ], [ %i.gm, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i.backedge ] ; 3 uses
  %.0.i63 = phi ptr [ %storemerge32.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i62 ], [ %.024.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i.backedge ]
  store i32 %i.gl, ptr %.0.i63, align 4, !tbaa !94
  %i.gm = getelementptr inbounds i8, ptr %.024.i, i64 -4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !94 ; 6 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i.backedge, label %bb.z

bb.z:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i
  %.val.i64 = load ptr, ptr %2, align 8
  %i.gp = trunc i32 %i.gn to i8                   ; 2 uses
  %i.gq = lshr i32 %i.gn, 8
  %i.gr = trunc i32 %i.gq to i8                   ; 2 uses
  %i.gs = lshr i32 %i.gn, 16
  %i.gt = trunc i32 %i.gs to i8                   ; 2 uses
  %i.gu = load i64, ptr %.val.i64, align 8, !tbaa !68
  %i.gv = icmp eq i64 %i.gu, 4
  br i1 %i.gv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gw = lshr i32 %i.gn, 24
  %i.gx = trunc nuw i32 %i.gw to i8
  %i.gy = uitofp i8 %i.gp to float
  %i.gz = uitofp i8 %i.gr to float
  %i.ha = fmul nnan float %i.gz, 5.870000e-01
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gy, float 2.990000e-01, float %i.ha)
  %i.hc = uitofp i8 %i.gt to float
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.hc, float 1.140000e-01, float %i.hb)
  %i.he = fadd float %i.hd, f0x3C23D70A
  %i.hf = uitofp i8 %i.gx to float
  %i.hg = fmul float %i.he, %i.hf
  br label %.split.i65

bb.ab:                                            ; preds = %bb.z
  %i.hh = uitofp i8 %i.gp to float
  %i.hi = uitofp i8 %i.gr to float
  %i.hj = fmul nnan float %i.hi, 5.870000e-01
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hh, float 2.990000e-01, float %i.hj)
  %i.hl = uitofp i8 %i.gt to float
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hl, float 1.140000e-01, float %i.hk)
  %i.hn = fadd float %i.hm, f0x3C23D70A
  br label %.split.i65

.split.i65:                                       ; preds = %bb.ab, %bb.aa
  %.013.i16.i = phi float [ %i.gk, %bb.aa ], [ %i.gg, %bb.ab ]
  %.0.i17.i = phi float [ %i.hg, %bb.aa ], [ %i.hn, %bb.ab ]
  %i.ho = fcmp olt float %.013.i16.i, %.0.i17.i
  br i1 %i.ho, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i.backedge, label %bb.ac

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i.backedge: ; preds = %.split.i65, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i, !llvm.loop !1000

bb.ac:                                            ; preds = %.split.i65
  store i32 %i.ej, ptr %.024.i, align 4, !tbaa !94
  %.val15.i.pre = load ptr, ptr %2, align 8
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i: ; preds = %bb.ac, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57, %.lr.ph.i56
  %.val15.i304 = phi ptr [ %.val15.i.pre, %bb.ac ], [ %.val15.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i57 ], [ %.val15.i, %.lr.ph.i56 ]
  %storemerge.i60 = getelementptr inbounds nuw i8, ptr %storemerge32.i, i64 4 ; 2 uses
  %.not.i61 = icmp eq ptr %storemerge.i60, %.0132.ph
  br i1 %.not.i61, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %.lr.ph.i56, !llvm.loop !1001

bb.ad:                                            ; preds = %bb.j
  %i.hp = icmp eq i64 %.046, 0
  br i1 %i.hp, label %bb.ae, label %bb.bq

bb.ae:                                            ; preds = %bb.ad
  %i.hq = icmp eq ptr %.0129, %.0132.ph
  br i1 %i.hq, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hr = add nsw i64 %i.k, -2
  %i.hs = lshr i64 %i.hr, 1                       ; 3 uses
  %.val29.pre.i.pre300 = load ptr, ptr %2, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit, %bb.af
  %.val29.pre.i = phi ptr [ %.val29.pre.i.pre300, %bb.af ], [ %.val29.pre.i301, %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit ] ; 4 uses
  %.012.i.i.i = phi i64 [ %i.hs, %bb.af ], [ %i.oc, %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit ] ; 4 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.0129, i64 %.012.i.i.i ; 3 uses
  %i.hu = shl nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %i.hv = or disjoint i64 %i.hu, 1                ; 4 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.0129, i64 %i.hv ; 5 uses
  %i.hx = add nuw nsw i64 %i.hu, 2                ; 2 uses
  %i.hy = icmp slt i64 %i.hx, %i.k
  br i1 %i.hy, label %bb.ah, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i

bb.ah:                                            ; preds = %bb.ag
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ia = load <2 x i32>, ptr %i.hw, align 4, !tbaa !94 ; 6 uses
  %i.ib = extractelement <2 x i32> %i.ia, i64 0
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.thread.i, label %bb.ai

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.thread.i: ; preds = %bb.ah
  %i.id = load i32, ptr %i.ht, align 4, !tbaa !94
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.thread60.i

bb.ai:                                            ; preds = %bb.ah
  %i.ie = extractelement <2 x i32> %i.ia, i64 1
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i108, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ig = trunc <2 x i32> %i.ia to <2 x i8>       ; 2 uses
  %i.ih = lshr <2 x i32> %i.ia, splat (i32 8)
  %i.ii = trunc <2 x i32> %i.ih to <2 x i8>       ; 2 uses
  %i.ij = lshr <2 x i32> %i.ia, splat (i32 16)
  %i.ik = trunc <2 x i32> %i.ij to <2 x i8>       ; 2 uses
  %i.il = load i64, ptr %.val29.pre.i, align 8, !tbaa !68
  %i.im = icmp eq i64 %i.il, 4
  br i1 %i.im, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.in = lshr <2 x i32> %i.ia, splat (i32 24)
  %i.io = uitofp <2 x i8> %i.ig to <2 x float>
  %i.ip = uitofp <2 x i8> %i.ii to <2 x float>
  %i.iq = uitofp <2 x i8> %i.ik to <2 x float>
  %i.ir = trunc nuw <2 x i32> %i.in to <2 x i8>
  %i.is = fmul nnan <2 x float> %i.ip, splat (float 5.870000e-01)
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> splat (float 2.990000e-01), <2 x float> %i.is)
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> splat (float 1.140000e-01), <2 x float> %i.it)
  %i.iv = fadd <2 x float> %i.iu, splat (float f0x3C23D70A)
  %i.iw = uitofp <2 x i8> %i.ir to <2 x float>
  %i.ix = fmul <2 x float> %i.iv, %i.iw
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i105

bb.al:                                            ; preds = %bb.aj
  %i.iy = uitofp <2 x i8> %i.ig to <2 x float>
  %i.iz = uitofp <2 x i8> %i.ii to <2 x float>
  %i.ja = uitofp <2 x i8> %i.ik to <2 x float>
  %i.jb = fmul nnan <2 x float> %i.iz, splat (float 5.870000e-01)
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> splat (float 2.990000e-01), <2 x float> %i.jb)
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> splat (float 1.140000e-01), <2 x float> %i.jc)
  %i.je = fadd <2 x float> %i.jd, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i105

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i105: ; preds = %bb.al, %bb.ak
  %i.jf = phi <2 x float> [ %i.ix, %bb.ak ], [ %i.je, %bb.al ] ; 2 uses
  %i.jg = extractelement <2 x float> %i.jf, i64 0
  %i.jh = extractelement <2 x float> %i.jf, i64 1
  %i.ji = fcmp olt float %i.jg, %i.jh
  br i1 %i.ji, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i108, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i108: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i105, %bb.ai
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i108, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i105, %bb.ag
  %.052.ph.i = phi ptr [ %i.hw, %bb.ag ], [ %i.hw, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i105 ], [ %i.hz, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i108 ] ; 3 uses
  %.0.ph.i = phi i64 [ %i.hv, %bb.ag ], [ %i.hv, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i105 ], [ %i.hx, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i108 ] ; 2 uses
  %.pr.i = load i32, ptr %.052.ph.i, align 4, !tbaa !94 ; 3 uses
  %i.jj = load i32, ptr %i.ht, align 4, !tbaa !94 ; 4 uses
  %i.jk = icmp eq i32 %.pr.i, 0
  br i1 %i.jk, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.thread60.i, label %bb.am

bb.am:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i
  %i.jl = icmp eq i32 %i.jj, 0
  br i1 %i.jl, label %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jm = insertelement <2 x i32> poison, i32 %.pr.i, i64 0
  %i.jn = insertelement <2 x i32> %i.jm, i32 %i.jj, i64 1 ; 4 uses
  %i.jo = trunc <2 x i32> %i.jn to <2 x i8>       ; 2 uses
  %i.jp = lshr <2 x i32> %i.jn, splat (i32 8)
  %i.jq = trunc <2 x i32> %i.jp to <2 x i8>       ; 2 uses
  %i.jr = lshr <2 x i32> %i.jn, splat (i32 16)
  %i.js = trunc <2 x i32> %i.jr to <2 x i8>       ; 2 uses
  %i.jt = load i64, ptr %.val29.pre.i, align 8, !tbaa !68
  %i.ju = icmp eq i64 %i.jt, 4
  br i1 %i.ju, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jv = lshr <2 x i32> %i.jn, splat (i32 24)
  %i.jw = uitofp <2 x i8> %i.jo to <2 x float>
  %i.jx = uitofp <2 x i8> %i.jq to <2 x float>
  %i.jy = uitofp <2 x i8> %i.js to <2 x float>
  %i.jz = trunc nuw <2 x i32> %i.jv to <2 x i8>
  %i.ka = fmul nnan <2 x float> %i.jx, splat (float 5.870000e-01)
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ka)
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jy, <2 x float> splat (float 1.140000e-01), <2 x float> %i.kb)
  %i.kd = fadd <2 x float> %i.kc, splat (float f0x3C23D70A)
  %i.ke = uitofp <2 x i8> %i.jz to <2 x float>
  %i.kf = fmul <2 x float> %i.kd, %i.ke
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i

bb.ap:                                            ; preds = %bb.an
  %i.kg = uitofp <2 x i8> %i.jo to <2 x float>
  %i.kh = uitofp <2 x i8> %i.jq to <2 x float>
  %i.ki = uitofp <2 x i8> %i.js to <2 x float>
  %i.kj = fmul nnan <2 x float> %i.kh, splat (float 5.870000e-01)
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> splat (float 2.990000e-01), <2 x float> %i.kj)
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> splat (float 1.140000e-01), <2 x float> %i.kk)
  %i.km = fadd <2 x float> %i.kl, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i: ; preds = %bb.ap, %bb.ao
  %i.kn = phi <2 x float> [ %i.kf, %bb.ao ], [ %i.km, %bb.ap ] ; 2 uses
  %i.ko = extractelement <2 x float> %i.kn, i64 0
  %i.kp = extractelement <2 x float> %i.kn, i64 1
  %i.kq = fcmp olt float %i.ko, %i.kp
  br i1 %i.kq, label %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.thread60.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.thread60.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.thread.i
  %i.kr = phi i32 [ %.pr.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.thread.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i ]
  %i.ks = phi i32 [ %i.jj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i ], [ %i.id, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.thread.i ], [ %i.jj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i ] ; 6 uses
  %.071.i = phi i64 [ %.0.ph.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i ], [ %i.hv, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.thread.i ], [ %.0.ph.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i ] ; 2 uses
  %.05269.i = phi ptr [ %.052.ph.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i ], [ %i.hw, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.thread.i ], [ %.052.ph.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread57.i ] ; 2 uses
  store i32 %i.kr, ptr %i.ht, align 4, !tbaa !94
  %i.kt = icmp slt i64 %i.hs, %.071.i
  br i1 %i.kt, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit42.thread.i, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.thread60.i
  %i.ku = icmp eq i32 %i.ks, 0
  %i.kv = trunc i32 %i.ks to i8
  %i.kw = lshr i32 %i.ks, 8
  %i.kx = trunc i32 %i.kw to i8
  %i.ky = lshr i32 %i.ks, 16
  %i.kz = trunc i32 %i.ky to i8
  %i.la = uitofp i8 %i.kv to float
  %i.lb = uitofp i8 %i.kx to float
  %i.lc = fmul nnan float %i.lb, 5.870000e-01
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.la, float 2.990000e-01, float %i.lc)
  %i.le = uitofp i8 %i.kz to float
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.le, float 1.140000e-01, float %i.ld)
  %i.lg = fadd float %i.lf, f0x3C23D70A           ; 2 uses
  %i.lh = lshr i32 %i.ks, 24
  %i.li = trunc nuw i32 %i.lh to i8
  %i.lj = uitofp i8 %i.li to float
  %i.lk = fmul float %i.lg, %i.lj
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge.i, %.lr.ph.i103
  %.180.i = phi i64 [ %.071.i, %.lr.ph.i103 ], [ %.1.be.i, %.backedge.i ]
  %.15379.i = phi ptr [ %.05269.i, %.lr.ph.i103 ], [ %.153.be.i, %.backedge.i ] ; 3 uses
  %i.ll = shl nsw i64 %.180.i, 1                  ; 2 uses
  %i.lm = or disjoint i64 %i.ll, 1                ; 4 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %.0129, i64 %i.lm ; 5 uses
  %i.lo = add nsw i64 %i.ll, 2                    ; 2 uses
  %i.lp = icmp slt i64 %i.lo, %i.k
  %.val.pre.i = load ptr, ptr %2, align 8         ; 2 uses
  br i1 %i.lp, label %bb.ar, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i

bb.ar:                                            ; preds = %bb.aq
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lr = load <2 x i32>, ptr %i.ln, align 4, !tbaa !94 ; 6 uses
  %i.ls = extractelement <2 x i32> %i.lr, i64 0
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %.backedge.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lu = extractelement <2 x i32> %i.lr, i64 1
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lw = trunc <2 x i32> %i.lr to <2 x i8>       ; 2 uses
  %i.lx = lshr <2 x i32> %i.lr, splat (i32 8)
  %i.ly = trunc <2 x i32> %i.lx to <2 x i8>       ; 2 uses
  %i.lz = lshr <2 x i32> %i.lr, splat (i32 16)
  %i.ma = trunc <2 x i32> %i.lz to <2 x i8>       ; 2 uses
  %i.mb = load i64, ptr %.val.pre.i, align 8, !tbaa !68
  %i.mc = icmp eq i64 %i.mb, 4
  br i1 %i.mc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.md = lshr <2 x i32> %i.lr, splat (i32 24)
  %i.me = uitofp <2 x i8> %i.lw to <2 x float>
  %i.mf = uitofp <2 x i8> %i.ly to <2 x float>
  %i.mg = uitofp <2 x i8> %i.ma to <2 x float>
  %i.mh = trunc nuw <2 x i32> %i.md to <2 x i8>
  %i.mi = fmul nnan <2 x float> %i.mf, splat (float 5.870000e-01)
  %i.mj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> splat (float 2.990000e-01), <2 x float> %i.mi)
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> splat (float 1.140000e-01), <2 x float> %i.mj)
  %i.ml = fadd <2 x float> %i.mk, splat (float f0x3C23D70A)
  %i.mm = uitofp <2 x i8> %i.mh to <2 x float>
  %i.mn = fmul <2 x float> %i.ml, %i.mm
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.i

bb.av:                                            ; preds = %bb.at
  %i.mo = uitofp <2 x i8> %i.lw to <2 x float>
  %i.mp = uitofp <2 x i8> %i.ly to <2 x float>
  %i.mq = uitofp <2 x i8> %i.ma to <2 x float>
  %i.mr = fmul nnan <2 x float> %i.mp, splat (float 5.870000e-01)
  %i.ms = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mo, <2 x float> splat (float 2.990000e-01), <2 x float> %i.mr)
  %i.mt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ms)
  %i.mu = fadd <2 x float> %i.mt, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.i: ; preds = %bb.av, %bb.au
  %i.mv = phi <2 x float> [ %i.mn, %bb.au ], [ %i.mu, %bb.av ] ; 2 uses
  %i.mw = extractelement <2 x float> %i.mv, i64 0
  %i.mx = extractelement <2 x float> %i.mv, i64 1
  %i.my = fcmp olt float %i.mw, %i.mx
  br i1 %i.my, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.i, %bb.as
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.i, %bb.aq
  %.254.ph.i = phi ptr [ %i.ln, %bb.aq ], [ %i.ln, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.i ], [ %i.lq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread.i ] ; 3 uses
  %.2.ph.i = phi i64 [ %i.lm, %bb.aq ], [ %i.lm, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.i ], [ %i.lo, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread.i ] ; 2 uses
  %.pr73.i = load i32, ptr %.254.ph.i, align 4, !tbaa !94 ; 6 uses
  %i.mz = icmp eq i32 %.pr73.i, 0
  br i1 %i.mz, label %.backedge.i, label %bb.aw

bb.aw:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i
  br i1 %i.ku, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit42.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.na = trunc i32 %.pr73.i to i8                ; 2 uses
  %i.nb = lshr i32 %.pr73.i, 8
  %i.nc = trunc i32 %i.nb to i8                   ; 2 uses
  %i.nd = lshr i32 %.pr73.i, 16
  %i.ne = trunc i32 %i.nd to i8                   ; 2 uses
  %i.nf = load i64, ptr %.val.pre.i, align 8, !tbaa !68
  %i.ng = icmp eq i64 %i.nf, 4
  br i1 %i.ng, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nh = lshr i32 %.pr73.i, 24
  %i.ni = trunc nuw i32 %i.nh to i8
  %i.nj = uitofp i8 %i.na to float
  %i.nk = uitofp i8 %i.nc to float
  %i.nl = fmul nnan float %i.nk, 5.870000e-01
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.nj, float 2.990000e-01, float %i.nl)
  %i.nn = uitofp i8 %i.ne to float
  %i.no = tail call float @llvm.fmuladd.f32(float %i.nn, float 1.140000e-01, float %i.nm)
  %i.np = fadd float %i.no, f0x3C23D70A
  %i.nq = uitofp i8 %i.ni to float
  %i.nr = fmul float %i.np, %i.nq
  br label %.split.i104

bb.az:                                            ; preds = %bb.ax
  %i.ns = uitofp i8 %i.na to float
  %i.nt = uitofp i8 %i.nc to float
  %i.nu = fmul nnan float %i.nt, 5.870000e-01
  %i.nv = tail call float @llvm.fmuladd.f32(float %i.ns, float 2.990000e-01, float %i.nu)
  %i.nw = uitofp i8 %i.ne to float
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nw, float 1.140000e-01, float %i.nv)
  %i.ny = fadd float %i.nx, f0x3C23D70A
  br label %.split.i104

.split.i104:                                      ; preds = %bb.az, %bb.ay
  %.013.i39.i = phi float [ %i.nr, %bb.ay ], [ %i.ny, %bb.az ]
  %.0.i40.i = phi float [ %i.lk, %bb.ay ], [ %i.lg, %bb.az ]
  %i.nz = fcmp olt float %.013.i39.i, %.0.i40.i
  br i1 %i.nz, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit42.thread.i, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i104, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i, %bb.ar
  %i.oa = phi i32 [ %.pr73.i, %.split.i104 ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i ], [ 0, %bb.ar ]
  %.153.be.i = phi ptr [ %.254.ph.i, %.split.i104 ], [ %.254.ph.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i ], [ %i.ln, %bb.ar ] ; 2 uses
  %.1.be.i = phi i64 [ %.2.ph.i, %.split.i104 ], [ %.2.ph.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit38.thread63.i ], [ %i.lm, %bb.ar ] ; 2 uses
  store i32 %i.oa, ptr %.15379.i, align 4, !tbaa !94
  %i.ob = icmp slt i64 %i.hs, %.1.be.i
  br i1 %i.ob, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit42.thread.i, label %bb.aq, !llvm.loop !1002

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit42.thread.i: ; preds = %.backedge.i, %.split.i104, %bb.aw, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.thread60.i
  %.153.lcssa.i = phi ptr [ %.05269.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.thread60.i ], [ %.153.be.i, %.backedge.i ], [ %.15379.i, %.split.i104 ], [ %.15379.i, %bb.aw ]
  store i32 %i.ks, ptr %.153.lcssa.i, align 4, !tbaa !94
  %.val29.pre.i.pre = load ptr, ptr %2, align 8
  br label %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit

_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit: ; preds = %bb.am, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit42.thread.i
  %.val29.pre.i301 = phi ptr [ %.val29.pre.i, %bb.am ], [ %.val29.pre.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit34.i ], [ %.val29.pre.i.pre, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit42.thread.i ]
  %i.oc = add nsw i64 %.012.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %bb.ag, !llvm.loop !1003

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit, %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i
  %.017.i.i.i = phi i64 [ %i.tu, %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i ], [ %i.k, %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit ] ; 4 uses
  %.01316.i.i.i = phi ptr [ %i.px, %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i ], [ %.0132.ph, %_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_.exit ]
  %i.od = load i32, ptr %.0129, align 4, !tbaa !94 ; 2 uses
  %i.oe = add nsw i64 %.017.i.i.i, -2
  %i.of = lshr i64 %i.oe, 1
  br label %bb.ba

bb.ba:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i, %.lr.ph.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %.0129, %.lr.ph.i.i.i ], [ %.117.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i ] ; 2 uses
  %i.og = getelementptr [4 x i8], ptr %.016.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 2 uses
  %i.oh = getelementptr i8, ptr %i.og, i64 4      ; 4 uses
  %i.oi = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.oj = or disjoint i64 %i.oi, 1                ; 3 uses
  %i.ok = add nsw i64 %i.oi, 2                    ; 2 uses
  %i.ol = icmp slt i64 %i.ok, %.017.i.i.i
  br i1 %i.ol, label %bb.bb, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.om = getelementptr i8, ptr %i.og, i64 8
  %i.on = load <2 x i32>, ptr %i.oh, align 4, !tbaa !94 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %2, align 8
  %i.oo = extractelement <2 x i32> %i.on, i64 0
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oq = extractelement <2 x i32> %i.on, i64 1
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.os = trunc <2 x i32> %i.on to <2 x i8>       ; 2 uses
  %i.ot = lshr <2 x i32> %i.on, splat (i32 8)
  %i.ou = trunc <2 x i32> %i.ot to <2 x i8>       ; 2 uses
  %i.ov = lshr <2 x i32> %i.on, splat (i32 16)
  %i.ow = trunc <2 x i32> %i.ov to <2 x i8>       ; 2 uses
  %i.ox = load i64, ptr %.val.i.i.i.i.i, align 8, !tbaa !68
  %i.oy = icmp eq i64 %i.ox, 4
  br i1 %i.oy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.oz = lshr <2 x i32> %i.on, splat (i32 24)
  %i.pa = uitofp <2 x i8> %i.os to <2 x float>
  %i.pb = uitofp <2 x i8> %i.ou to <2 x float>
  %i.pc = uitofp <2 x i8> %i.ow to <2 x float>
  %i.pd = trunc nuw <2 x i32> %i.oz to <2 x i8>
  %i.pe = fmul nnan <2 x float> %i.pb, splat (float 5.870000e-01)
  %i.pf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pa, <2 x float> splat (float 2.990000e-01), <2 x float> %i.pe)
  %i.pg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pc, <2 x float> splat (float 1.140000e-01), <2 x float> %i.pf)
  %i.ph = fadd <2 x float> %i.pg, splat (float f0x3C23D70A)
  %i.pi = uitofp <2 x i8> %i.pd to <2 x float>
  %i.pj = fmul <2 x float> %i.ph, %i.pi
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.pk = uitofp <2 x i8> %i.os to <2 x float>
  %i.pl = uitofp <2 x i8> %i.ou to <2 x float>
  %i.pm = uitofp <2 x i8> %i.ow to <2 x float>
  %i.pn = fmul nnan <2 x float> %i.pl, splat (float 5.870000e-01)
  %i.po = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pk, <2 x float> splat (float 2.990000e-01), <2 x float> %i.pn)
  %i.pp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pm, <2 x float> splat (float 1.140000e-01), <2 x float> %i.po)
  %i.pq = fadd <2 x float> %i.pp, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i.i.i.i.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  %i.pr = phi <2 x float> [ %i.pj, %bb.be ], [ %i.pq, %bb.bf ] ; 2 uses
  %i.ps = extractelement <2 x float> %i.pr, i64 0
  %i.pt = extractelement <2 x float> %i.pr, i64 1
  %i.pu = fcmp olt float %i.ps, %i.pt
  br i1 %i.pu, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i.i.i.i.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i.i.i.i.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i.i.i.i.i, %bb.bc
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i.i.i.i.i, %bb.bb, %bb.ba
  %.117.i.i.i.i.i = phi ptr [ %i.om, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i.i.i.i.i ], [ %i.oh, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i.i.i.i.i ], [ %i.oh, %bb.ba ], [ %i.oh, %bb.bb ] ; 8 uses
  %.1.i.i.i.i.i = phi i64 [ %i.ok, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i.i.i.i.i ], [ %i.oj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i.i.i.i.i ], [ %i.oj, %bb.ba ], [ %i.oj, %bb.bb ] ; 2 uses
  %i.pv = load i32, ptr %.117.i.i.i.i.i, align 4, !tbaa !94
  store i32 %i.pv, ptr %.016.i.i.i.i.i, align 4, !tbaa !94
  %i.pw = icmp sgt i64 %.1.i.i.i.i.i, %i.of
  br i1 %i.pw, label %_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEET1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE.exit.i.i.i.i, label %bb.ba, !llvm.loop !1004

_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEET1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE.exit.i.i.i.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread19.i.i.i.i.i
  %i.px = getelementptr inbounds i8, ptr %.01316.i.i.i, i64 -4 ; 4 uses
  %i.py = icmp eq ptr %.117.i.i.i.i.i, %i.px
  br i1 %i.py, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEET1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE.exit.i.i.i.i
  store i32 %i.od, ptr %.117.i.i.i.i.i, align 4, !tbaa !94
  br label %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i

bb.bh:                                            ; preds = %_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEET1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE.exit.i.i.i.i
  %i.pz = load i32, ptr %i.px, align 4, !tbaa !94
  store i32 %i.pz, ptr %.117.i.i.i.i.i, align 4, !tbaa !94
  %i.qa = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i.i, i64 4
  store i32 %i.od, ptr %i.px, align 4, !tbaa !94
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = sub i64 %i.qb, %i.i
  %i.qd = ashr exact i64 %i.qc, 2                 ; 2 uses
  %i.qe = icmp sgt i64 %i.qd, 1
  br i1 %i.qe, label %bb.bi, label %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.qf = add nsw i64 %i.qd, -2
  %i.qg = lshr i64 %i.qf, 1                       ; 4 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.0129, i64 %i.qg ; 4 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !94 ; 3 uses
  %i.qj = load i32, ptr %.117.i.i.i.i.i, align 4, !tbaa !94
  %.fr33.i.i.i.i.i = freeze i32 %i.qj             ; 7 uses
  %.val12.i.i.i.i.i = load ptr, ptr %2, align 8
  %i.qk = icmp eq i32 %i.qi, 0
  br i1 %i.qk, label %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ql = icmp eq i32 %.fr33.i.i.i.i.i, 0         ; 2 uses
  br i1 %i.ql, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i16.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qm = insertelement <2 x i32> poison, i32 %i.qi, i64 0
  %i.qn = insertelement <2 x i32> %i.qm, i32 %.fr33.i.i.i.i.i, i64 1 ; 4 uses
  %i.qo = trunc <2 x i32> %i.qn to <2 x i8>       ; 2 uses
  %i.qp = lshr <2 x i32> %i.qn, splat (i32 8)
  %i.qq = trunc <2 x i32> %i.qp to <2 x i8>       ; 2 uses
  %i.qr = lshr <2 x i32> %i.qn, splat (i32 16)
  %i.qs = trunc <2 x i32> %i.qr to <2 x i8>       ; 2 uses
  %i.qt = load i64, ptr %.val12.i.i.i.i.i, align 8, !tbaa !68
  %i.qu = icmp eq i64 %i.qt, 4
  br i1 %i.qu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.qv = lshr <2 x i32> %i.qn, splat (i32 24)
  %i.qw = uitofp <2 x i8> %i.qo to <2 x float>
  %i.qx = uitofp <2 x i8> %i.qq to <2 x float>
  %i.qy = uitofp <2 x i8> %i.qs to <2 x float>
  %i.qz = trunc nuw <2 x i32> %i.qv to <2 x i8>
  %i.ra = fmul nnan <2 x float> %i.qx, splat (float 5.870000e-01)
  %i.rb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qw, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ra)
  %i.rc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qy, <2 x float> splat (float 1.140000e-01), <2 x float> %i.rb)
  %i.rd = fadd <2 x float> %i.rc, splat (float f0x3C23D70A)
  %i.re = uitofp <2 x i8> %i.qz to <2 x float>
  %i.rf = fmul <2 x float> %i.rd, %i.re
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i13.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.rg = uitofp <2 x i8> %i.qo to <2 x float>
  %i.rh = uitofp <2 x i8> %i.qq to <2 x float>
  %i.ri = uitofp <2 x i8> %i.qs to <2 x float>
  %i.rj = fmul nnan <2 x float> %i.rh, splat (float 5.870000e-01)
  %i.rk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rg, <2 x float> splat (float 2.990000e-01), <2 x float> %i.rj)
  %i.rl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ri, <2 x float> splat (float 1.140000e-01), <2 x float> %i.rk)
  %i.rm = fadd <2 x float> %i.rl, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i13.i.i.i.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i13.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %i.rn = phi <2 x float> [ %i.rf, %bb.bl ], [ %i.rm, %bb.bm ] ; 2 uses
  %i.ro = extractelement <2 x float> %i.rn, i64 0
  %i.rp = extractelement <2 x float> %i.rn, i64 1
  %i.rq = fcmp olt float %i.ro, %i.rp
  br i1 %i.rq, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i16.i.i.i.i, label %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i16.i.i.i.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i13.i.i.i.i, %bb.bj
  store i32 %i.qi, ptr %.117.i.i.i.i.i, align 4, !tbaa !94
  %i.rr = icmp eq i64 %i.qg, 0
  br i1 %i.rr, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i16.i.i.i.i
  %i.rs = trunc i32 %.fr33.i.i.i.i.i to i8
  %i.rt = lshr i32 %.fr33.i.i.i.i.i, 8
  %i.ru = trunc i32 %i.rt to i8
  %i.rv = lshr i32 %.fr33.i.i.i.i.i, 16
  %i.rw = trunc i32 %i.rv to i8
  %i.rx = uitofp i8 %i.rs to float
  %i.ry = uitofp i8 %i.ru to float
  %i.rz = fmul nnan float %i.ry, 5.870000e-01
  %i.sa = tail call float @llvm.fmuladd.f32(float %i.rx, float 2.990000e-01, float %i.rz)
  %i.sb = uitofp i8 %i.rw to float
  %i.sc = tail call float @llvm.fmuladd.f32(float %i.sb, float 1.140000e-01, float %i.sa)
  %i.sd = fadd float %i.sc, f0x3C23D70A           ; 2 uses
  %i.se = lshr i32 %.fr33.i.i.i.i.i, 24
  %i.sf = trunc nuw i32 %i.se to i8
  %i.sg = uitofp i8 %i.sf to float
  %i.sh = fmul float %i.sd, %i.sg
  br i1 %i.ql, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.us.i.i.i.i.i
  %.029.us.i.i.i.i.i = phi i64 [ %i.sj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.us.i.i.i.i.i ], [ %i.qg, %.lr.ph.i.i.i.i.i ]
  %.02228.us.i.i.i.i.i = phi ptr [ %i.sk, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.us.i.i.i.i.i ], [ %i.qh, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.si = add nsw i64 %.029.us.i.i.i.i.i, -1
  %i.sj = lshr i64 %i.si, 1                       ; 3 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.0129, i64 %i.sj ; 3 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !94 ; 2 uses
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.us.i.i.i.i.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  store i32 %i.sl, ptr %.02228.us.i.i.i.i.i, align 4, !tbaa !94
  %i.sn = icmp eq i64 %i.sj, 0
  br i1 %i.sn, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !1005

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.sp, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.i.i.i.i.i ], [ %i.qg, %.lr.ph.i.i.i.i.i ]
  %.02228.i.i.i.i.i = phi ptr [ %i.sq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.i.i.i.i.i ], [ %i.qh, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.so = add nsw i64 %.029.i.i.i.i.i, -1
  %i.sp = lshr i64 %i.so, 1                       ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.0129, i64 %i.sp ; 3 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !94 ; 6 uses
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %.val.i17.i.i.i.i = load ptr, ptr %2, align 8
  %i.st = trunc i32 %i.sr to i8                   ; 2 uses
  %i.su = lshr i32 %i.sr, 8
  %i.sv = trunc i32 %i.su to i8                   ; 2 uses
  %i.sw = lshr i32 %i.sr, 16
  %i.sx = trunc i32 %i.sw to i8                   ; 2 uses
  %i.sy = load i64, ptr %.val.i17.i.i.i.i, align 8, !tbaa !68
  %i.sz = icmp eq i64 %i.sy, 4
  br i1 %i.sz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ta = lshr i32 %i.sr, 24
  %i.tb = trunc nuw i32 %i.ta to i8
  %i.tc = uitofp i8 %i.st to float
  %i.td = uitofp i8 %i.sv to float
  %i.te = fmul nnan float %i.td, 5.870000e-01
  %i.tf = tail call float @llvm.fmuladd.f32(float %i.tc, float 2.990000e-01, float %i.te)
  %i.tg = uitofp i8 %i.sx to float
  %i.th = tail call float @llvm.fmuladd.f32(float %i.tg, float 1.140000e-01, float %i.tf)
  %i.ti = fadd float %i.th, f0x3C23D70A
  %i.tj = uitofp i8 %i.tb to float
  %i.tk = fmul float %i.ti, %i.tj
  br label %.split.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.tl = uitofp i8 %i.st to float
  %i.tm = uitofp i8 %i.sv to float
  %i.tn = fmul nnan float %i.tm, 5.870000e-01
  %i.to = tail call float @llvm.fmuladd.f32(float %i.tl, float 2.990000e-01, float %i.tn)
  %i.tp = uitofp i8 %i.sx to float
  %i.tq = tail call float @llvm.fmuladd.f32(float %i.tp, float 1.140000e-01, float %i.to)
  %i.tr = fadd float %i.tq, f0x3C23D70A
  br label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.bp, %bb.bo
  %.013.i13.i.i.i.i.i = phi float [ %i.tk, %bb.bo ], [ %i.tr, %bb.bp ]
  %.0.i14.i.i.i.i.i = phi float [ %i.sh, %bb.bo ], [ %i.sd, %bb.bp ]
  %i.ts = fcmp olt float %.013.i13.i.i.i.i.i, %.0.i14.i.i.i.i.i
  br i1 %i.ts, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.i.i.i.i.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i
  store i32 %i.sr, ptr %.02228.i.i.i.i.i, align 4, !tbaa !94
  %i.tt = icmp eq i64 %i.sp, 0
  br i1 %i.tt, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i, !llvm.loop !1005

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.i.i.i.i.i, %.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i16.i.i.i.i
  %.022.lcssa.i.i.i.i.i = phi ptr [ %i.qh, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i16.i.i.i.i ], [ %.02228.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i ], [ %i.sk, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.us.i.i.i.i.i ], [ %i.sq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.backedge.i.i.i.i.i ], [ %.02228.i.i.i.i.i, %.split.i.i.i.i.i ], [ %.02228.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ]
  store i32 %.fr33.i.i.i.i.i, ptr %.022.lcssa.i.i.i.i.i, align 4, !tbaa !94
  br label %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i

_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit16.thread.i.i.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i13.i.i.i.i, %bb.bi, %bb.bh, %bb.bg
  %i.tu = add nsw i64 %.017.i.i.i, -1
  %i.tv = icmp sgt i64 %.017.i.i.i, 2
  br i1 %i.tv, label %.lr.ph.i.i.i, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, !llvm.loop !1006

bb.bq:                                            ; preds = %bb.ad
  %i.tw = add nsw i64 %.046, -1                   ; 4 uses
  %i.tx = lshr i64 %i.k, 1
  %i.ty = icmp samesign ugt i64 %i.k, 128
  %i.tz = getelementptr [4 x i8], ptr %.0129, i64 %i.tx ; 7 uses
  br i1 %i.ty, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %.0129, ptr noundef %i.tz, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  %i.ua = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.ub = getelementptr i8, ptr %i.tz, i64 -4     ; 2 uses
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef nonnull %i.ua, ptr noundef %i.ub, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  %i.uc = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 4 ; 2 uses
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef nonnull %i.uc, ptr noundef nonnull %i.ud, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %i.ub, ptr noundef %i.tz, ptr noundef nonnull %i.ud, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  %i.ue = load i32, ptr %.0129, align 4, !tbaa !94
  %i.uf = load i32, ptr %i.tz, align 4, !tbaa !94
  store i32 %i.uf, ptr %.0129, align 4, !tbaa !94
  store i32 %i.ue, ptr %i.tz, align 4, !tbaa !94
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %i.tz, ptr noundef %.0129, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pre = load i32, ptr %.0129, align 4, !tbaa !94
  %.fr125.i = freeze i32 %.pre                    ; 37 uses
  %.val19.i82.pre = load ptr, ptr %2, align 8     ; 8 uses
  br i1 %i.h, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ug = getelementptr inbounds i8, ptr %.0129, i64 -4
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !94 ; 2 uses
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.uj = icmp eq i32 %.fr125.i, 0
  br i1 %i.uj, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.uk = insertelement <2 x i32> poison, i32 %i.uh, i64 0
  %i.ul = insertelement <2 x i32> %i.uk, i32 %.fr125.i, i64 1 ; 4 uses
  %i.um = trunc <2 x i32> %i.ul to <2 x i8>       ; 2 uses
  %i.un = lshr <2 x i32> %i.ul, splat (i32 8)
  %i.uo = trunc <2 x i32> %i.un to <2 x i8>       ; 2 uses
  %i.up = lshr <2 x i32> %i.ul, splat (i32 16)
  %i.uq = trunc <2 x i32> %i.up to <2 x i8>       ; 2 uses
  %i.ur = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.us = icmp eq i64 %i.ur, 4
  br i1 %i.us, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ut = lshr <2 x i32> %i.ul, splat (i32 24)
  %i.uu = uitofp <2 x i8> %i.um to <2 x float>
  %i.uv = uitofp <2 x i8> %i.uo to <2 x float>
  %i.uw = uitofp <2 x i8> %i.uq to <2 x float>
  %i.ux = trunc nuw <2 x i32> %i.ut to <2 x i8>
  %i.uy = fmul nnan <2 x float> %i.uv, splat (float 5.870000e-01)
  %i.uz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uu, <2 x float> splat (float 2.990000e-01), <2 x float> %i.uy)
  %i.va = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uw, <2 x float> splat (float 1.140000e-01), <2 x float> %i.uz)
  %i.vb = fadd <2 x float> %i.va, splat (float f0x3C23D70A)
  %i.vc = uitofp <2 x i8> %i.ux to <2 x float>
  %i.vd = fmul <2 x float> %i.vb, %i.vc
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70

bb.by:                                            ; preds = %bb.bw
  %i.ve = uitofp <2 x i8> %i.um to <2 x float>
  %i.vf = uitofp <2 x i8> %i.uo to <2 x float>
  %i.vg = uitofp <2 x i8> %i.uq to <2 x float>
  %i.vh = fmul nnan <2 x float> %i.vf, splat (float 5.870000e-01)
  %i.vi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ve, <2 x float> splat (float 2.990000e-01), <2 x float> %i.vh)
  %i.vj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vg, <2 x float> splat (float 1.140000e-01), <2 x float> %i.vi)
  %i.vk = fadd <2 x float> %i.vj, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70: ; preds = %bb.bx, %bb.by
  %i.vl = phi <2 x float> [ %i.vd, %bb.bx ], [ %i.vk, %bb.by ] ; 2 uses
  %i.vm = extractelement <2 x float> %i.vl, i64 0
  %i.vn = extractelement <2 x float> %i.vl, i64 1
  %i.vo = fcmp olt float %i.vm, %i.vn
  br i1 %i.vo, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread, label %.thread

.thread:                                          ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70
  %i.vp = load i32, ptr %i.f, align 4, !tbaa !94
  br label %._crit_edge

bb.bz:                                            ; preds = %bb.bu
  %i.vq = load i32, ptr %i.g, align 4, !tbaa !94  ; 2 uses
  %i.vr = icmp eq i32 %.fr125.i, 0
  br i1 %i.vr, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i, label %._crit_edge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i: ; preds = %.split.i72, %bb.bz
  %i.vs = phi i1 [ false, %.split.i72 ], [ true, %bb.bz ] ; 2 uses
  %i.vt = phi i32 [ %i.wn, %.split.i72 ], [ %i.vq, %bb.bz ] ; 4 uses
  %i.vu = phi ptr [ %i.wo, %.split.i72 ], [ %i.g, %bb.bz ] ; 5 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.0129, i64 4 ; 3 uses
  %i.vw = icmp ult ptr %i.vv, %.0132.ph
  br i1 %i.vw, label %.lr.ph.i79, label %.critedge.i75

.lr.ph.i79:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i
  %i.vx = trunc i32 %.fr125.i to i8
  %i.vy = lshr i32 %.fr125.i, 8
  %i.vz = trunc i32 %i.vy to i8
  %i.wa = lshr i32 %.fr125.i, 16
  %i.wb = trunc i32 %i.wa to i8
  %i.wc = uitofp i8 %i.vx to float
  %i.wd = uitofp i8 %i.vz to float
  %i.we = fmul nnan float %i.wd, 5.870000e-01
  %i.wf = tail call float @llvm.fmuladd.f32(float %i.wc, float 2.990000e-01, float %i.we)
  %i.wg = uitofp i8 %i.wb to float
  %i.wh = tail call float @llvm.fmuladd.f32(float %i.wg, float 1.140000e-01, float %i.wf)
  %i.wi = fadd float %i.wh, f0x3C23D70A           ; 2 uses
  %i.wj = lshr i32 %.fr125.i, 24
  %i.wk = trunc nuw i32 %i.wj to i8
  %i.wl = uitofp i8 %i.wk to float
  %i.wm = fmul float %i.wi, %i.wl
  br i1 %i.vs, label %.critedge.thread.i, label %.lr.ph.split.i

._crit_edge:                                      ; preds = %bb.bz, %.thread
  %i.wn = phi i32 [ %i.vp, %.thread ], [ %i.vq, %bb.bz ] ; 6 uses
  %i.wo = phi ptr [ %i.f, %.thread ], [ %i.g, %bb.bz ] ; 3 uses
  %.pre113.i.pre-phi = trunc i32 %.fr125.i to i8  ; 3 uses
  %i.wp = icmp eq i32 %i.wn, 0
  br i1 %i.wp, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge
  %i.wq = trunc i32 %i.wn to i8                   ; 2 uses
  %i.wr = insertelement <2 x i32> poison, i32 %.fr125.i, i64 0
  %i.ws = insertelement <2 x i32> %i.wr, i32 %i.wn, i64 1 ; 3 uses
  %i.wt = lshr <2 x i32> %i.ws, splat (i32 8)
  %i.wu = trunc <2 x i32> %i.wt to <2 x i8>       ; 2 uses
  %i.wv = lshr <2 x i32> %i.ws, splat (i32 16)
  %i.ww = trunc <2 x i32> %i.wv to <2 x i8>       ; 2 uses
  %i.wx = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.wy = icmp eq i64 %i.wx, 4
  br i1 %i.wy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.wz = lshr <2 x i32> %i.ws, splat (i32 24)
  %i.xa = insertelement <2 x i8> poison, i8 %.pre113.i.pre-phi, i64 0
  %i.xb = insertelement <2 x i8> %i.xa, i8 %i.wq, i64 1
  %i.xc = uitofp <2 x i8> %i.xb to <2 x float>
  %i.xd = uitofp <2 x i8> %i.wu to <2 x float>
  %i.xe = uitofp <2 x i8> %i.ww to <2 x float>
  %i.xf = trunc nuw <2 x i32> %i.wz to <2 x i8>
  %i.xg = fmul nnan <2 x float> %i.xd, splat (float 5.870000e-01)
  %i.xh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xc, <2 x float> splat (float 2.990000e-01), <2 x float> %i.xg)
  %i.xi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xe, <2 x float> splat (float 1.140000e-01), <2 x float> %i.xh)
  %i.xj = fadd <2 x float> %i.xi, splat (float f0x3C23D70A)
  %i.xk = uitofp <2 x i8> %i.xf to <2 x float>
  %i.xl = fmul <2 x float> %i.xj, %i.xk
  br label %.split.i72

bb.cc:                                            ; preds = %bb.ca
  %i.xm = insertelement <2 x i8> poison, i8 %.pre113.i.pre-phi, i64 0
  %i.xn = insertelement <2 x i8> %i.xm, i8 %i.wq, i64 1
  %i.xo = uitofp <2 x i8> %i.xn to <2 x float>
  %i.xp = uitofp <2 x i8> %i.wu to <2 x float>
  %i.xq = uitofp <2 x i8> %i.ww to <2 x float>
  %i.xr = fmul nnan <2 x float> %i.xp, splat (float 5.870000e-01)
  %i.xs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> splat (float 2.990000e-01), <2 x float> %i.xr)
  %i.xt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xq, <2 x float> splat (float 1.140000e-01), <2 x float> %i.xs)
  %i.xu = fadd <2 x float> %i.xt, splat (float f0x3C23D70A)
  br label %.split.i72

.split.i72:                                       ; preds = %bb.cc, %bb.cb
  %i.xv = phi <2 x float> [ %i.xl, %bb.cb ], [ %i.xu, %bb.cc ] ; 2 uses
  %i.xw = extractelement <2 x float> %i.xv, i64 0
  %i.xx = extractelement <2 x float> %i.xv, i64 1
  %i.xy = fcmp olt float %i.xw, %i.xx
  br i1 %i.xy, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i: ; preds = %._crit_edge, %.split.i72
  %.pre-phi117.i.in = lshr i32 %.fr125.i, 8
  %.pre-phi117.i = trunc i32 %.pre-phi117.i.in to i8
  %.pre-phi121.i.in = lshr i32 %.fr125.i, 16
  %.pre-phi121.i = trunc i32 %.pre-phi121.i.in to i8
  %i.xz = uitofp i8 %.pre113.i.pre-phi to float
  %i.ya = uitofp i8 %.pre-phi117.i to float
  %i.yb = fmul nnan float %i.ya, 5.870000e-01
  %i.yc = tail call float @llvm.fmuladd.f32(float %i.xz, float 2.990000e-01, float %i.yb)
  %i.yd = uitofp i8 %.pre-phi121.i to float
  %i.ye = tail call float @llvm.fmuladd.f32(float %i.yd, float 1.140000e-01, float %i.yc)
  %i.yf = fadd float %i.ye, f0x3C23D70A           ; 2 uses
  %i.yg = lshr i32 %.fr125.i, 24
  %i.yh = trunc nuw i32 %i.yg to i8
  %i.yi = uitofp i8 %i.yh to float
  %i.yj = fmul float %i.yf, %i.yi
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i: ; preds = %.split62.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i
  %.057.i = phi ptr [ %i.yk, %.split62.i ], [ %.0129, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i ]
  %i.yk = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 4 uses
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !94 ; 5 uses
  %i.ym = icmp eq i32 %i.yl, 0
  br i1 %i.ym, label %.critedge.i75, label %bb.cd

bb.cd:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i
  %i.yn = trunc i32 %i.yl to i8                   ; 2 uses
  %i.yo = lshr i32 %i.yl, 8
  %i.yp = trunc i32 %i.yo to i8                   ; 2 uses
  %i.yq = lshr i32 %i.yl, 16
  %i.yr = trunc i32 %i.yq to i8                   ; 2 uses
  %i.ys = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.yt = icmp eq i64 %i.ys, 4
  br i1 %i.yt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.yu = lshr i32 %i.yl, 24
  %i.yv = trunc nuw i32 %i.yu to i8
  %i.yw = uitofp i8 %i.yn to float
  %i.yx = uitofp i8 %i.yp to float
  %i.yy = fmul nnan float %i.yx, 5.870000e-01
  %i.yz = tail call float @llvm.fmuladd.f32(float %i.yw, float 2.990000e-01, float %i.yy)
  %i.za = uitofp i8 %i.yr to float
  %i.zb = tail call float @llvm.fmuladd.f32(float %i.za, float 1.140000e-01, float %i.yz)
  %i.zc = fadd float %i.zb, f0x3C23D70A
  %i.zd = uitofp i8 %i.yv to float
  %i.ze = fmul float %i.zc, %i.zd
  br label %.split62.i

bb.cf:                                            ; preds = %bb.cd
  %i.zf = uitofp i8 %i.yn to float
  %i.zg = uitofp i8 %i.yp to float
  %i.zh = fmul nnan float %i.zg, 5.870000e-01
  %i.zi = tail call float @llvm.fmuladd.f32(float %i.zf, float 2.990000e-01, float %i.zh)
  %i.zj = uitofp i8 %i.yr to float
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zj, float 1.140000e-01, float %i.zi)
  %i.zl = fadd float %i.zk, f0x3C23D70A
  br label %.split62.i

.split62.i:                                       ; preds = %bb.cf, %bb.ce
  %.013.i20.i80 = phi float [ %i.yj, %bb.ce ], [ %i.yf, %bb.cf ]
  %.0.i21.i81 = phi float [ %i.ze, %bb.ce ], [ %i.zl, %bb.cf ]
  %i.zm = fcmp olt float %.013.i20.i80, %.0.i21.i81
  br i1 %i.zm, label %.critedge.i75, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i, !llvm.loop !1007

.lr.ph.split.i:                                   ; preds = %.lr.ph.i79, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i
  %i.zn = phi ptr [ %i.aaq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vv, %.lr.ph.i79 ] ; 4 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !94 ; 5 uses
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %.critedge.i75, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.split.i
  %i.zq = trunc i32 %i.zo to i8                   ; 2 uses
  %i.zr = lshr i32 %i.zo, 8
  %i.zs = trunc i32 %i.zr to i8                   ; 2 uses
  %i.zt = lshr i32 %i.zo, 16
  %i.zu = trunc i32 %i.zt to i8                   ; 2 uses
  %i.zv = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.zw = icmp eq i64 %i.zv, 4
  br i1 %i.zw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.zx = lshr i32 %i.zo, 24
  %i.zy = trunc nuw i32 %i.zx to i8
  %i.zz = uitofp i8 %i.zq to float
  %i.aaa = uitofp i8 %i.zs to float
  %i.aab = fmul nnan float %i.aaa, 5.870000e-01
  %i.aac = tail call float @llvm.fmuladd.f32(float %i.zz, float 2.990000e-01, float %i.aab)
  %i.aad = uitofp i8 %i.zu to float
  %i.aae = tail call float @llvm.fmuladd.f32(float %i.aad, float 1.140000e-01, float %i.aac)
  %i.aaf = fadd float %i.aae, f0x3C23D70A
  %i.aag = uitofp i8 %i.zy to float
  %i.aah = fmul float %i.aaf, %i.aag
  br label %.split64.i

bb.ci:                                            ; preds = %bb.cg
  %i.aai = uitofp i8 %i.zq to float
  %i.aaj = uitofp i8 %i.zs to float
  %i.aak = fmul nnan float %i.aaj, 5.870000e-01
  %i.aal = tail call float @llvm.fmuladd.f32(float %i.aai, float 2.990000e-01, float %i.aak)
  %i.aam = uitofp i8 %i.zu to float
  %i.aan = tail call float @llvm.fmuladd.f32(float %i.aam, float 1.140000e-01, float %i.aal)
  %i.aao = fadd float %i.aan, f0x3C23D70A
  br label %.split64.i

.split64.i:                                       ; preds = %bb.ci, %bb.ch
  %.013.i24.i = phi float [ %i.wm, %bb.ch ], [ %i.wi, %bb.ci ]
  %.0.i25.i = phi float [ %i.aah, %bb.ch ], [ %i.aao, %bb.ci ]
  %i.aap = fcmp olt float %.013.i24.i, %.0.i25.i
  br i1 %i.aap, label %.critedge.i75, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i: ; preds = %.split64.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zn, i64 4 ; 3 uses
  %i.aar = icmp ult ptr %i.aaq, %.0132.ph
  br i1 %i.aar, label %.lr.ph.split.i, label %.critedge.i75, !llvm.loop !1008

.critedge.i75:                                    ; preds = %.split62.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i, %.split64.i, %.lr.ph.split.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i
  %i.aas = phi i1 [ false, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vs, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ false, %.lr.ph.split.i ], [ false, %.split64.i ], [ false, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ false, %.split62.i ]
  %i.aat = phi i32 [ %i.vt, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vt, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ %i.vt, %.lr.ph.split.i ], [ %i.vt, %.split64.i ], [ %i.wn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ %i.wn, %.split62.i ]
  %i.aau = phi ptr [ %i.vu, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vu, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ %i.vu, %.lr.ph.split.i ], [ %i.vu, %.split64.i ], [ %i.wo, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ %i.wo, %.split62.i ] ; 2 uses
  %.259.i = phi ptr [ %i.aaq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vv, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ %i.zn, %.split64.i ], [ %i.zn, %.lr.ph.split.i ], [ %i.yk, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ %i.yk, %.split62.i ] ; 3 uses
  %i.aav = icmp uge ptr %.259.i, %.0132.ph        ; 2 uses
  %brmerge.i = or i1 %i.aas, %i.aav
  %.mux.i = select i1 %i.aav, ptr %.0132.ph, ptr %i.aau
  br i1 %brmerge.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i, label %.lr.ph79.i

.critedge.thread.i:                               ; preds = %.lr.ph.i79
  %i.aaw = add i64 %i.b, -5
  %i.aax = sub i64 %i.aaw, %i.i
  %i.aay = and i64 %i.aax, -4
  %i.aaz = getelementptr i8, ptr %.0129, i64 %i.aay
  %scevgep.i = getelementptr i8, ptr %i.aaz, i64 8 ; 2 uses
  %i.aba = icmp ult ptr %scevgep.i, %.0132.ph
  %spec.select.i = select i1 %i.aba, ptr %i.vu, ptr %.0132.ph
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i

.lr.ph79.i:                                       ; preds = %.critedge.i75
  %i.abb = trunc i32 %.fr125.i to i8
  %i.abc = lshr i32 %.fr125.i, 8
  %i.abd = trunc i32 %i.abc to i8
  %i.abe = lshr i32 %.fr125.i, 16
  %i.abf = trunc i32 %i.abe to i8
  %i.abg = uitofp i8 %i.abb to float
  %i.abh = uitofp i8 %i.abd to float
  %i.abi = fmul nnan float %i.abh, 5.870000e-01
  %i.abj = tail call float @llvm.fmuladd.f32(float %i.abg, float 2.990000e-01, float %i.abi)
  %i.abk = uitofp i8 %i.abf to float
  %i.abl = tail call float @llvm.fmuladd.f32(float %i.abk, float 1.140000e-01, float %i.abj)
  %i.abm = fadd float %i.abl, f0x3C23D70A         ; 2 uses
  %i.abn = lshr i32 %.fr125.i, 24
  %i.abo = trunc nuw i32 %i.abn to i8
  %i.abp = uitofp i8 %i.abo to float
  %i.abq = fmul float %i.abm, %i.abp
  br label %bb.cj

bb.cj:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i, %.lr.ph79.i
  %i.abr = phi i32 [ %i.aat, %.lr.ph79.i ], [ %.pre.i78, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i ] ; 5 uses
  %i.abs = phi ptr [ %i.aau, %.lr.ph79.i ], [ %i.acu, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i ] ; 2 uses
  %i.abt = icmp eq i32 %i.abr, 0
  br i1 %i.abt, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.abu = trunc i32 %i.abr to i8                 ; 2 uses
  %i.abv = lshr i32 %i.abr, 8
  %i.abw = trunc i32 %i.abv to i8                 ; 2 uses
  %i.abx = lshr i32 %i.abr, 16
  %i.aby = trunc i32 %i.abx to i8                 ; 2 uses
  %i.abz = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.aca = icmp eq i64 %i.abz, 4
  br i1 %i.aca, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.acb = lshr i32 %i.abr, 24
  %i.acc = trunc nuw i32 %i.acb to i8
  %i.acd = uitofp i8 %i.abu to float
  %i.ace = uitofp i8 %i.abw to float
  %i.acf = fmul nnan float %i.ace, 5.870000e-01
  %i.acg = tail call float @llvm.fmuladd.f32(float %i.acd, float 2.990000e-01, float %i.acf)
  %i.ach = uitofp i8 %i.aby to float
  %i.aci = tail call float @llvm.fmuladd.f32(float %i.ach, float 1.140000e-01, float %i.acg)
  %i.acj = fadd float %i.aci, f0x3C23D70A
  %i.ack = uitofp i8 %i.acc to float
  %i.acl = fmul float %i.acj, %i.ack
  br label %.split66.i

bb.cm:                                            ; preds = %bb.ck
  %i.acm = uitofp i8 %i.abu to float
  %i.acn = uitofp i8 %i.abw to float
  %i.aco = fmul nnan float %i.acn, 5.870000e-01
  %i.acp = tail call float @llvm.fmuladd.f32(float %i.acm, float 2.990000e-01, float %i.aco)
  %i.acq = uitofp i8 %i.aby to float
  %i.acr = tail call float @llvm.fmuladd.f32(float %i.acq, float 1.140000e-01, float %i.acp)
  %i.acs = fadd float %i.acr, f0x3C23D70A
  br label %.split66.i

.split66.i:                                       ; preds = %bb.cm, %bb.cl
  %.013.i28.i = phi float [ %i.abq, %bb.cl ], [ %i.abm, %bb.cm ]
  %.0.i29.i = phi float [ %i.acl, %bb.cl ], [ %i.acs, %bb.cm ]
  %i.act = fcmp olt float %.013.i28.i, %.0.i29.i
  br i1 %i.act, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i: ; preds = %.split66.i, %bb.cj
  %i.acu = getelementptr inbounds i8, ptr %i.abs, i64 -4 ; 2 uses
  %.pre.i78 = load i32, ptr %i.acu, align 4, !tbaa !94
  br label %bb.cj

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i: ; preds = %.split66.i, %.critedge.thread.i, %.critedge.i75
  %.259141.i = phi ptr [ %.259.i, %.critedge.i75 ], [ %scevgep.i, %.critedge.thread.i ], [ %.259.i, %.split66.i ] ; 4 uses
  %.1.i = phi ptr [ %.mux.i, %.critedge.i75 ], [ %spec.select.i, %.critedge.thread.i ], [ %i.abs, %.split66.i ] ; 3 uses
  %i.acv = icmp ult ptr %.259141.i, %.1.i
  br i1 %i.acv, label %.lr.ph100.i, label %._crit_edge.i

.lr.ph100.i:                                      ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i
  %i.acw = trunc i32 %.fr125.i to i8
  %i.acx = lshr i32 %.fr125.i, 8
  %i.acy = trunc i32 %i.acx to i8
  %i.acz = lshr i32 %.fr125.i, 16
  %i.ada = trunc i32 %i.acz to i8
  %i.adb = uitofp i8 %i.acw to float
  %i.adc = uitofp i8 %i.acy to float
  %i.add = fmul nnan float %i.adc, 5.870000e-01
  %i.ade = tail call float @llvm.fmuladd.f32(float %i.adb, float 2.990000e-01, float %i.add)
  %i.adf = uitofp i8 %i.ada to float
  %i.adg = tail call float @llvm.fmuladd.f32(float %i.adf, float 1.140000e-01, float %i.ade)
  %i.adh = fadd float %i.adg, f0x3C23D70A         ; 3 uses
  %i.adi = lshr i32 %.fr125.i, 24
  %i.adj = trunc nuw i32 %i.adi to i8
  %i.adk = uitofp i8 %i.adj to float
  %i.adl = fmul float %i.adh, %i.adk              ; 2 uses
  %.pre111.i = load i32, ptr %.259141.i, align 4, !tbaa !94
  %.pre112.i = load i32, ptr %.1.i, align 4, !tbaa !94
  br label %.split84.i

.split84.i:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i, %.lr.ph100.i
  %i.adm = phi i32 [ %i.afj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.pre112.i, %.lr.ph100.i ]
  %i.adn = phi i32 [ %i.afh, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.pre111.i, %.lr.ph100.i ]
  %.299.i = phi ptr [ %i.afi, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.1.i, %.lr.ph100.i ] ; 2 uses
  %.36098.i = phi ptr [ %.lcssa.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.259141.i, %.lr.ph100.i ] ; 2 uses
  store i32 %i.adm, ptr %.36098.i, align 4, !tbaa !94
  store i32 %i.adn, ptr %.299.i, align 4, !tbaa !94
  %.val15.i77 = load ptr, ptr %2, align 8         ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.36098.i, i64 4 ; 4 uses
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !94 ; 3 uses
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %.split84.i
  %i.adr = load i64, ptr %.val15.i77, align 8, !tbaa !68
  %i.ads = icmp eq i64 %i.adr, 4
  br i1 %i.ads, label %.split67.us.i, label %.split67.i

.split67.us.i:                                    ; preds = %.lr.ph87.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i
  %i.adt = phi i32 [ %i.aen, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.adp, %.lr.ph87.i ] ; 5 uses
  %i.adu = phi ptr [ %i.aem, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.ado, %.lr.ph87.i ] ; 2 uses
  %i.adv = trunc i32 %i.adt to i8
  %i.adw = lshr i32 %i.adt, 8
  %i.adx = trunc i32 %i.adw to i8
  %i.ady = lshr i32 %i.adt, 16
  %i.adz = trunc i32 %i.ady to i8
  %i.aea = lshr i32 %i.adt, 24
  %i.aeb = trunc nuw i32 %i.aea to i8
  %i.aec = uitofp i8 %i.adv to float
  %i.aed = uitofp i8 %i.adx to float
  %i.aee = fmul nnan float %i.aed, 5.870000e-01
  %i.aef = tail call float @llvm.fmuladd.f32(float %i.aec, float 2.990000e-01, float %i.aee)
  %i.aeg = uitofp i8 %i.adz to float
  %i.aeh = tail call float @llvm.fmuladd.f32(float %i.aeg, float 1.140000e-01, float %i.aef)
  %i.aei = fadd float %i.aeh, f0x3C23D70A
  %i.aej = uitofp i8 %i.aeb to float
  %i.aek = fmul float %i.aei, %i.aej
  %i.ael = fcmp olt float %i.adl, %i.aek
  br i1 %i.ael, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i: ; preds = %.split67.us.i
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adu, i64 4 ; 3 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !94 ; 2 uses
  %i.aeo = icmp eq i32 %i.aen, 0
  br i1 %i.aeo, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.split67.us.i, !llvm.loop !1009

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i: ; preds = %.split67.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aet, i64 4 ; 3 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !94 ; 2 uses
  %i.aer = icmp eq i32 %i.aeq, 0
  br i1 %i.aer, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.split67.i, !llvm.loop !1009

.split67.i:                                       ; preds = %.lr.ph87.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i
  %i.aes = phi i32 [ %i.aeq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.adp, %.lr.ph87.i ] ; 4 uses
  %i.aet = phi ptr [ %i.aep, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.ado, %.lr.ph87.i ] ; 2 uses
  %i.aeu = trunc i32 %i.aes to i8
  %i.aev = lshr i32 %i.aes, 8
  %i.aew = trunc i32 %i.aev to i8
  %i.aex = lshr i32 %i.aes, 16
  %i.aey = trunc i32 %i.aex to i8
  %i.aez = uitofp i8 %i.aeu to float
  %i.afa = uitofp i8 %i.aew to float
  %i.afb = fmul nnan float %i.afa, 5.870000e-01
  %i.afc = tail call float @llvm.fmuladd.f32(float %i.aez, float 2.990000e-01, float %i.afb)
  %i.afd = uitofp i8 %i.aey to float
  %i.afe = tail call float @llvm.fmuladd.f32(float %i.afd, float 1.140000e-01, float %i.afc)
  %i.aff = fadd float %i.afe, f0x3C23D70A
  %i.afg = fcmp olt float %i.adh, %i.aff
  br i1 %i.afg, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i: ; preds = %.split67.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i, %.split67.us.i, %.split84.i
  %i.afh = phi i32 [ 0, %.split84.i ], [ %i.adt, %.split67.us.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.aes, %.split67.i ]
  %.lcssa.i = phi ptr [ %i.ado, %.split84.i ], [ %i.adu, %.split67.us.i ], [ %i.aem, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.aep, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.aet, %.split67.i ] ; 3 uses
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i
  %.3.i = phi ptr [ %.299.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i ], [ %i.afi, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge ]
  %i.afi = getelementptr inbounds i8, ptr %.3.i, i64 -4 ; 4 uses
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !94 ; 6 uses
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, label %bb.cn

bb.cn:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i
  %i.afl = trunc i32 %i.afj to i8                 ; 2 uses
  %i.afm = lshr i32 %i.afj, 8
  %i.afn = trunc i32 %i.afm to i8                 ; 2 uses
  %i.afo = lshr i32 %i.afj, 16
  %i.afp = trunc i32 %i.afo to i8                 ; 2 uses
  %i.afq = load i64, ptr %.val15.i77, align 8, !tbaa !68
  %i.afr = icmp eq i64 %i.afq, 4
  br i1 %i.afr, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.afs = lshr i32 %i.afj, 24
  %i.aft = trunc nuw i32 %i.afs to i8
  %i.afu = uitofp i8 %i.afl to float
  %i.afv = uitofp i8 %i.afn to float
  %i.afw = fmul nnan float %i.afv, 5.870000e-01
  %i.afx = tail call float @llvm.fmuladd.f32(float %i.afu, float 2.990000e-01, float %i.afw)
  %i.afy = uitofp i8 %i.afp to float
  %i.afz = tail call float @llvm.fmuladd.f32(float %i.afy, float 1.140000e-01, float %i.afx)
  %i.aga = fadd float %i.afz, f0x3C23D70A
  %i.agb = uitofp i8 %i.aft to float
  %i.agc = fmul float %i.aga, %i.agb
  br label %.split69.i

bb.cp:                                            ; preds = %bb.cn
  %i.agd = uitofp i8 %i.afl to float
  %i.age = uitofp i8 %i.afn to float
  %i.agf = fmul nnan float %i.age, 5.870000e-01
  %i.agg = tail call float @llvm.fmuladd.f32(float %i.agd, float 2.990000e-01, float %i.agf)
  %i.agh = uitofp i8 %i.afp to float
  %i.agi = tail call float @llvm.fmuladd.f32(float %i.agh, float 1.140000e-01, float %i.agg)
  %i.agj = fadd float %i.agi, f0x3C23D70A
  br label %.split69.i

.split69.i:                                       ; preds = %bb.cp, %bb.co
  %.013.i36.i = phi float [ %i.adl, %bb.co ], [ %i.adh, %bb.cp ]
  %.0.i37.i = phi float [ %i.agc, %bb.co ], [ %i.agj, %bb.cp ]
  %i.agk = fcmp olt float %.013.i36.i, %.0.i37.i
  br i1 %i.agk, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge: ; preds = %.split69.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i, !llvm.loop !1010

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i: ; preds = %.split69.i
  %i.agl = icmp ult ptr %.lcssa.i, %i.afi
  br i1 %i.agl, label %.split84.i, label %._crit_edge.i, !llvm.loop !1011

._crit_edge.i:                                    ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i
  %.360.lcssa.i = phi ptr [ %.259141.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i ], [ %.lcssa.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ] ; 2 uses
  %i.agm = getelementptr inbounds i8, ptr %.360.lcssa.i, i64 -4 ; 3 uses
  %.not.i76 = icmp eq ptr %.0129, %i.agm
  br i1 %.not.i76, label %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge.i
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !94
  store i32 %i.agn, ptr %.0129, align 4, !tbaa !94
  br label %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit

_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit: ; preds = %._crit_edge.i, %bb.cq
  store i32 %.fr125.i, ptr %i.agm, align 4, !tbaa !94
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread: ; preds = %bb.bv, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70, %bb.bt
  %i.ago = getelementptr inbounds nuw i8, ptr %.0129, i64 4 ; 5 uses
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !94 ; 5 uses
  %i.agq = icmp eq i32 %i.agp, 0
  br i1 %i.agq, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread
  %i.agr = icmp eq i32 %.fr125.i, 0               ; 2 uses
  %i.ags = trunc i32 %.fr125.i to i8
  %i.agt = lshr i32 %.fr125.i, 8
  %i.agu = trunc i32 %i.agt to i8
  %i.agv = lshr i32 %.fr125.i, 16
  %i.agw = trunc i32 %i.agv to i8
  %i.agx = uitofp i8 %i.ags to float
  %i.agy = uitofp i8 %i.agu to float
  %i.agz = fmul nnan float %i.agy, 5.870000e-01
  %i.aha = tail call float @llvm.fmuladd.f32(float %i.agx, float 2.990000e-01, float %i.agz)
  %i.ahb = uitofp i8 %i.agw to float
  %i.ahc = tail call float @llvm.fmuladd.f32(float %i.ahb, float 1.140000e-01, float %i.aha)
  %i.ahd = fadd float %i.ahc, f0x3C23D70A         ; 4 uses
  %i.ahe = lshr i32 %.fr125.i, 24
  %i.ahf = trunc nuw i32 %i.ahe to i8
  %i.ahg = uitofp i8 %i.ahf to float
  %i.ahh = fmul float %i.ahd, %i.ahg              ; 2 uses
  br i1 %i.agr, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i, label %.lr.ph.split.i84

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i: ; preds = %.lr.ph.i83
  %scevgep.i102 = getelementptr i8, ptr %.0129, i64 8
  %wcslen.i = tail call i64 @wcslen(ptr %scevgep.i102)
  %i.ahi = shl i64 %wcslen.i, 2
  %i.ahj = getelementptr i8, ptr %.0129, i64 %i.ahi ; 2 uses
  %scevgep154.i = getelementptr i8, ptr %i.ahj, i64 4
  %scevgep155.i = getelementptr i8, ptr %i.ahj, i64 8
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101

.lr.ph.split.i84:                                 ; preds = %.lr.ph.i83
  %i.ahk = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.ahl = icmp eq i64 %i.ahk, 4
  br i1 %i.ahl, label %.split.us.i, label %.lr.ph.split.split.i

.split.us.i:                                      ; preds = %.lr.ph.split.i84, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i
  %i.ahm = phi i32 [ %i.aig, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %i.agp, %.lr.ph.split.i84 ] ; 4 uses
  %i.ahn = phi ptr [ %i.aif, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %i.ago, %.lr.ph.split.i84 ] ; 3 uses
  %.05369.us77.i = phi ptr [ %i.ahn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %.0129, %.lr.ph.split.i84 ]
  %i.aho = trunc i32 %i.ahm to i8
  %i.ahp = lshr i32 %i.ahm, 8
  %i.ahq = trunc i32 %i.ahp to i8
  %i.ahr = lshr i32 %i.ahm, 16
  %i.ahs = trunc i32 %i.ahr to i8
  %i.aht = lshr i32 %i.ahm, 24
  %i.ahu = trunc nuw i32 %i.aht to i8
  %i.ahv = uitofp i8 %i.aho to float
  %i.ahw = uitofp i8 %i.ahq to float
  %i.ahx = fmul nnan float %i.ahw, 5.870000e-01
  %i.ahy = tail call float @llvm.fmuladd.f32(float %i.ahv, float 2.990000e-01, float %i.ahx)
  %i.ahz = uitofp i8 %i.ahs to float
  %i.aia = tail call float @llvm.fmuladd.f32(float %i.ahz, float 1.140000e-01, float %i.ahy)
  %i.aib = fadd float %i.aia, f0x3C23D70A
  %i.aic = uitofp i8 %i.ahu to float
  %i.aid = fmul float %i.aib, %i.aic
  %i.aie = fcmp olt float %i.aid, %i.ahh
  br i1 %i.aie, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i: ; preds = %.split.us.i
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4 ; 3 uses
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !94 ; 2 uses
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, label %.split.us.i, !llvm.loop !1012

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i84
  %i.aii = trunc i32 %i.agp to i8
  %i.aij = lshr i32 %i.agp, 8
  %i.aik = trunc i32 %i.aij to i8
  %i.ail = lshr i32 %i.agp, 16
  %i.aim = trunc i32 %i.ail to i8
  %i.ain = uitofp i8 %i.aii to float
  %i.aio = uitofp i8 %i.aik to float
  %i.aip = fmul nnan float %i.aio, 5.870000e-01
  %i.aiq = tail call float @llvm.fmuladd.f32(float %i.ain, float 2.990000e-01, float %i.aip)
  %i.air = uitofp i8 %i.aim to float
  %i.ais = tail call float @llvm.fmuladd.f32(float %i.air, float 1.140000e-01, float %i.aiq)
  %i.ait = fadd float %i.ais, f0x3C23D70A
  %i.aiu = fcmp olt float %i.ait, %i.ahd
  br i1 %i.aiu, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85

.split.i97:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96
  %i.aiv = trunc i32 %i.ajk to i8
  %i.aiw = lshr i32 %i.ajk, 8
  %i.aix = trunc i32 %i.aiw to i8
  %i.aiy = lshr i32 %i.ajk, 16
  %i.aiz = trunc i32 %i.aiy to i8
  %i.aja = uitofp i8 %i.aiv to float
  %i.ajb = uitofp i8 %i.aix to float
  %i.ajc = fmul nnan float %i.ajb, 5.870000e-01
  %i.ajd = tail call float @llvm.fmuladd.f32(float %i.aja, float 2.990000e-01, float %i.ajc)
  %i.aje = uitofp i8 %i.aiz to float
  %i.ajf = tail call float @llvm.fmuladd.f32(float %i.aje, float 1.140000e-01, float %i.ajd)
  %i.ajg = fadd float %i.ajf, f0x3C23D70A
  %i.ajh = fcmp olt float %i.ajg, %i.ahd
  br i1 %i.ajh, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, !llvm.loop !1012

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96: ; preds = %.lr.ph.split.split.i, %.split.i97
  %i.aji = phi ptr [ %i.ajj, %.split.i97 ], [ %i.ago, %.lr.ph.split.split.i ]
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 4 ; 4 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !94 ; 4 uses
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, label %.split.i97, !llvm.loop !1012

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101: ; preds = %.split.us.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i
  %.053.lcssa.i = phi ptr [ %scevgep154.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i ], [ %.05369.us77.i, %.split.us.i ]
  %.lcssa68.i = phi ptr [ %scevgep155.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i ], [ %i.ahn, %.split.us.i ] ; 2 uses
  %i.ajm = icmp eq ptr %.0129, %.053.lcssa.i
  br i1 %i.ajm, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96, %.split.i97, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101
  %.lcssa68177.i = phi ptr [ %.lcssa68.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101 ], [ %i.aif, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %i.ajj, %.split.i97 ], [ %i.ajj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96 ] ; 2 uses
  br i1 %i.agr, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i
  %.1.us.i = phi ptr [ %i.ajn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i ], [ %.0132.ph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i ]
  %i.ajn = getelementptr inbounds i8, ptr %.1.us.i, i64 -4 ; 3 uses
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !94
  %i.ajp = icmp eq i32 %i.ajo, 0
  br i1 %i.ajp, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i, label %.critedge.i86, !llvm.loop !1013

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101, %.lr.ph.split.split.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread
  %.lcssa68182.i = phi ptr [ %.lcssa68.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101 ], [ %i.ago, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread ], [ %i.ago, %.lr.ph.split.split.i ] ; 8 uses
  %i.ajq = icmp ult ptr %.lcssa68182.i, %.0132.ph
  br i1 %i.ajq, label %.lr.ph94.i, label %.critedge.i86

.lr.ph94.i:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85
  %i.ajr = icmp eq i32 %.fr125.i, 0
  %i.ajs = trunc i32 %.fr125.i to i8
  %i.ajt = lshr i32 %.fr125.i, 8
  %i.aju = trunc i32 %i.ajt to i8
  %i.ajv = lshr i32 %.fr125.i, 16
  %i.ajw = trunc i32 %i.ajv to i8
  %i.ajx = uitofp i8 %i.ajs to float
  %i.ajy = uitofp i8 %i.aju to float
  %i.ajz = fmul nnan float %i.ajy, 5.870000e-01
  %i.aka = tail call float @llvm.fmuladd.f32(float %i.ajx, float 2.990000e-01, float %i.ajz)
  %i.akb = uitofp i8 %i.ajw to float
  %i.akc = tail call float @llvm.fmuladd.f32(float %i.akb, float 1.140000e-01, float %i.aka)
  %i.akd = fadd float %i.akc, f0x3C23D70A         ; 2 uses
  %i.ake = lshr i32 %.fr125.i, 24
  %i.akf = trunc nuw i32 %i.ake to i8
  %i.akg = uitofp i8 %i.akf to float
  %i.akh = fmul float %i.akd, %i.akg
  br i1 %i.ajr, label %.lr.ph94.split.us.i, label %.lr.ph94.split.i

.lr.ph94.split.us.i:                              ; preds = %.lr.ph94.i, %.lr.ph94.split.us.i
  %.093.us.i = phi ptr [ %i.aki, %.lr.ph94.split.us.i ], [ %.0132.ph, %.lr.ph94.i ]
  %i.aki = getelementptr inbounds i8, ptr %.093.us.i, i64 -4 ; 4 uses
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !94
  %i.akk = icmp eq i32 %i.akj, 0
  %i.akl = icmp ult ptr %.lcssa68182.i, %i.aki
  %or.cond.i95 = and i1 %i.akk, %i.akl
  br i1 %or.cond.i95, label %.lr.ph94.split.us.i, label %.critedge.i86, !llvm.loop !1014

.lr.ph94.split.i:                                 ; preds = %.lr.ph94.i, %.lr.ph94.split.i.backedge
  %.093.i = phi ptr [ %i.akm, %.lr.ph94.split.i.backedge ], [ %.0132.ph, %.lr.ph94.i ]
  %i.akm = getelementptr inbounds i8, ptr %.093.i, i64 -4 ; 6 uses
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !94 ; 5 uses
  %i.ako = icmp eq i32 %i.akn, 0
  br i1 %i.ako, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph94.split.i
  %i.akp = trunc i32 %i.akn to i8                 ; 2 uses
  %i.akq = lshr i32 %i.akn, 8
  %i.akr = trunc i32 %i.akq to i8                 ; 2 uses
  %i.aks = lshr i32 %i.akn, 16
  %i.akt = trunc i32 %i.aks to i8                 ; 2 uses
  %i.aku = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.akv = icmp eq i64 %i.aku, 4
  br i1 %i.akv, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.akw = lshr i32 %i.akn, 24
  %i.akx = trunc nuw i32 %i.akw to i8
  %i.aky = uitofp i8 %i.akp to float
  %i.akz = uitofp i8 %i.akr to float
  %i.ala = fmul nnan float %i.akz, 5.870000e-01
  %i.alb = tail call float @llvm.fmuladd.f32(float %i.aky, float 2.990000e-01, float %i.ala)
  %i.alc = uitofp i8 %i.akt to float
  %i.ald = tail call float @llvm.fmuladd.f32(float %i.alc, float 1.140000e-01, float %i.alb)
  %i.ale = fadd float %i.ald, f0x3C23D70A
  %i.alf = uitofp i8 %i.akx to float
  %i.alg = fmul float %i.ale, %i.alf
  br label %.split58.i

bb.ct:                                            ; preds = %bb.cr
  %i.alh = uitofp i8 %i.akp to float
  %i.ali = uitofp i8 %i.akr to float
  %i.alj = fmul nnan float %i.ali, 5.870000e-01
  %i.alk = tail call float @llvm.fmuladd.f32(float %i.alh, float 2.990000e-01, float %i.alj)
  %i.all = uitofp i8 %i.akt to float
  %i.alm = tail call float @llvm.fmuladd.f32(float %i.all, float 1.140000e-01, float %i.alk)
  %i.aln = fadd float %i.alm, f0x3C23D70A
  br label %.split58.i

.split58.i:                                       ; preds = %bb.ct, %bb.cs
  %.013.i20.i92 = phi float [ %i.alg, %bb.cs ], [ %i.aln, %bb.ct ]
  %.0.i21.i93 = phi float [ %i.akh, %bb.cs ], [ %i.akd, %bb.ct ]
  %i.alo = fcmp uge float %.013.i20.i92, %.0.i21.i93
  %i.alp = icmp ult ptr %.lcssa68182.i, %i.akm
  %or.cond124.i = and i1 %i.alp, %i.alo
  br i1 %or.cond124.i, label %.lr.ph94.split.i.backedge, label %.critedge.i86

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94: ; preds = %.lr.ph94.split.i
  %.old.i = icmp ult ptr %.lcssa68182.i, %i.akm
  br i1 %.old.i, label %.lr.ph94.split.i.backedge, label %.critedge.i86

.lr.ph94.split.i.backedge:                        ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94, %.split58.i
  br label %.lr.ph94.split.i, !llvm.loop !1014

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge
  %.1.i98 = phi ptr [ %i.alq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge ], [ %.0132.ph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i ]
  %i.alq = getelementptr inbounds i8, ptr %.1.i98, i64 -4 ; 3 uses
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !94 ; 5 uses
  %i.als = icmp eq i32 %i.alr, 0
  br i1 %i.als, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge, label %bb.cu

bb.cu:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i
  %i.alt = trunc i32 %i.alr to i8                 ; 2 uses
  %i.alu = lshr i32 %i.alr, 8
  %i.alv = trunc i32 %i.alu to i8                 ; 2 uses
  %i.alw = lshr i32 %i.alr, 16
  %i.alx = trunc i32 %i.alw to i8                 ; 2 uses
  %i.aly = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.alz = icmp eq i64 %i.aly, 4
  br i1 %i.alz, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ama = lshr i32 %i.alr, 24
  %i.amb = trunc nuw i32 %i.ama to i8
  %i.amc = uitofp i8 %i.alt to float
  %i.amd = uitofp i8 %i.alv to float
  %i.ame = fmul nnan float %i.amd, 5.870000e-01
  %i.amf = tail call float @llvm.fmuladd.f32(float %i.amc, float 2.990000e-01, float %i.ame)
  %i.amg = uitofp i8 %i.alx to float
  %i.amh = tail call float @llvm.fmuladd.f32(float %i.amg, float 1.140000e-01, float %i.amf)
  %i.ami = fadd float %i.amh, f0x3C23D70A
  %i.amj = uitofp i8 %i.amb to float
  %i.amk = fmul float %i.ami, %i.amj
  br label %.split60.i

bb.cw:                                            ; preds = %bb.cu
  %i.aml = uitofp i8 %i.alt to float
  %i.amm = uitofp i8 %i.alv to float
  %i.amn = fmul nnan float %i.amm, 5.870000e-01
  %i.amo = tail call float @llvm.fmuladd.f32(float %i.aml, float 2.990000e-01, float %i.amn)
  %i.amp = uitofp i8 %i.alx to float
  %i.amq = tail call float @llvm.fmuladd.f32(float %i.amp, float 1.140000e-01, float %i.amo)
  %i.amr = fadd float %i.amq, f0x3C23D70A
  br label %.split60.i

.split60.i:                                       ; preds = %bb.cw, %bb.cv
  %.013.i24.i99 = phi float [ %i.amk, %bb.cv ], [ %i.amr, %bb.cw ]
  %.0.i25.i100 = phi float [ %i.ahh, %bb.cv ], [ %i.ahd, %bb.cw ]
  %i.ams = fcmp olt float %.013.i24.i99, %.0.i25.i100
  br i1 %i.ams, label %.critedge.i86, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge: ; preds = %.split60.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i, !llvm.loop !1013

.critedge.i86:                                    ; preds = %.split60.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94, %.split58.i, %.lr.ph94.split.us.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85
  %.lcssa68176.i = phi ptr [ %.lcssa68182.i, %.lr.ph94.split.us.i ], [ %.lcssa68182.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94 ], [ %.lcssa68182.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85 ], [ %.lcssa68177.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i ], [ %.lcssa68182.i, %.split58.i ], [ %.lcssa68177.i, %.split60.i ] ; 3 uses
  %.2.i = phi ptr [ %i.aki, %.lr.ph94.split.us.i ], [ %i.akm, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94 ], [ %.0132.ph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85 ], [ %i.ajn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i ], [ %i.akm, %.split58.i ], [ %i.alq, %.split60.i ] ; 3 uses
  %.not = icmp ult ptr %.lcssa68176.i, %.2.i      ; 2 uses
  br i1 %.not, label %.lr.ph122.i, label %._crit_edge.i90

.lr.ph122.i:                                      ; preds = %.critedge.i86
  %i.amt = icmp eq i32 %.fr125.i, 0               ; 2 uses
  %i.amu = trunc i32 %.fr125.i to i8
  %i.amv = lshr i32 %.fr125.i, 8
  %i.amw = trunc i32 %i.amv to i8
  %i.amx = lshr i32 %.fr125.i, 16
  %i.amy = trunc i32 %i.amx to i8
  %i.amz = uitofp i8 %i.amu to float
  %i.ana = uitofp i8 %i.amw to float
  %i.anb = fmul nnan float %i.ana, 5.870000e-01
  %i.anc = tail call float @llvm.fmuladd.f32(float %i.amz, float 2.990000e-01, float %i.anb)
  %i.and = uitofp i8 %i.amy to float
  %i.ane = tail call float @llvm.fmuladd.f32(float %i.and, float 1.140000e-01, float %i.anc)
  %i.anf = fadd float %i.ane, f0x3C23D70A         ; 3 uses
  %i.ang = lshr i32 %.fr125.i, 24
  %i.anh = trunc nuw i32 %i.ang to i8
  %i.ani = uitofp i8 %i.anh to float
  %i.anj = fmul float %i.anf, %i.ani              ; 2 uses
  %.pre.i87 = load i32, ptr %.2.i, align 4, !tbaa !94
  br label %bb.cx

bb.cx:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, %.lr.ph122.i
  %i.ank = phi i32 [ %.pre.i87, %.lr.ph122.i ], [ %i.aqm, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ]
  %.3121.i = phi ptr [ %.2.i, %.lr.ph122.i ], [ %.us-phi117.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ] ; 3 uses
  %.154120.i = phi ptr [ %.lcssa68176.i, %.lr.ph122.i ], [ %.lcssa.i88, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ] ; 4 uses
  %i.anl = load i32, ptr %.154120.i, align 4, !tbaa !94
  store i32 %i.ank, ptr %.154120.i, align 4, !tbaa !94
  store i32 %i.anl, ptr %.3121.i, align 4, !tbaa !94
  %.val16.i = load ptr, ptr %2, align 8           ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.154120.i, i64 4 ; 4 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !94 ; 3 uses
  %i.ano = icmp eq i32 %i.ann, 0
  br i1 %i.ano, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, label %.lr.ph103.i, !llvm.loop !1015

.lr.ph103.i:                                      ; preds = %bb.cx
  br i1 %i.amt, label %.critedge64.backedge.us.preheader.i, label %.lr.ph103.split.i, !llvm.loop !1015

.critedge64.backedge.us.preheader.i:              ; preds = %.lr.ph103.i
  %scevgep156.i = getelementptr i8, ptr %.154120.i, i64 8 ; 2 uses
  %wcslen157.i = tail call i64 @wcslen(ptr %scevgep156.i)
  %i.anp = shl i64 %wcslen157.i, 2
  %scevgep158.i = getelementptr i8, ptr %scevgep156.i, i64 %i.anp
  br label %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i

.lr.ph103.split.i:                                ; preds = %.lr.ph103.i
  %i.anq = load i64, ptr %.val16.i, align 8, !tbaa !68
  %i.anr = icmp eq i64 %i.anq, 4
  br i1 %i.anr, label %.split61.us.i, label %.lr.ph103.split.split.i, !llvm.loop !1015

.split61.us.i:                                    ; preds = %.lr.ph103.split.i, %.critedge64.backedge.us110.i
  %i.ans = phi i32 [ %i.aom, %.critedge64.backedge.us110.i ], [ %i.ann, %.lr.ph103.split.i ] ; 4 uses
  %i.ant = phi ptr [ %i.aol, %.critedge64.backedge.us110.i ], [ %i.anm, %.lr.ph103.split.i ] ; 2 uses
  %i.anu = trunc i32 %i.ans to i8
  %i.anv = lshr i32 %i.ans, 8
  %i.anw = trunc i32 %i.anv to i8
  %i.anx = lshr i32 %i.ans, 16
  %i.any = trunc i32 %i.anx to i8
  %i.anz = lshr i32 %i.ans, 24
  %i.aoa = trunc nuw i32 %i.anz to i8
  %i.aob = uitofp i8 %i.anu to float
  %i.aoc = uitofp i8 %i.anw to float
  %i.aod = fmul nnan float %i.aoc, 5.870000e-01
  %i.aoe = tail call float @llvm.fmuladd.f32(float %i.aob, float 2.990000e-01, float %i.aod)
  %i.aof = uitofp i8 %i.any to float
  %i.aog = tail call float @llvm.fmuladd.f32(float %i.aof, float 1.140000e-01, float %i.aoe)
  %i.aoh = fadd float %i.aog, f0x3C23D70A
  %i.aoi = uitofp i8 %i.aoa to float
  %i.aoj = fmul float %i.aoh, %i.aoi
  %i.aok = fcmp olt float %i.aoj, %i.anj
  br i1 %i.aok, label %.critedge64.backedge.us110.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i

.critedge64.backedge.us110.i:                     ; preds = %.split61.us.i
  %i.aol = getelementptr inbounds nuw i8, ptr %i.ant, i64 4 ; 3 uses
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !94 ; 2 uses
  %i.aon = icmp eq i32 %i.aom, 0
  br i1 %i.aon, label %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i, label %.split61.us.i, !llvm.loop !1015

.lr.ph103.split.split.i:                          ; preds = %.lr.ph103.split.i
  br label %.split61.i, !llvm.loop !1015

.split61.i:                                       ; preds = %.critedge64.backedge.i, %.lr.ph103.split.split.i
  %i.aoo = phi i32 [ %i.ann, %.lr.ph103.split.split.i ], [ %i.ape, %.critedge64.backedge.i ] ; 3 uses
  %i.aop = phi ptr [ %i.anm, %.lr.ph103.split.split.i ], [ %i.apd, %.critedge64.backedge.i ] ; 2 uses
  %i.aoq = trunc i32 %i.aoo to i8
  %i.aor = lshr i32 %i.aoo, 8
  %i.aos = trunc i32 %i.aor to i8
  %i.aot = lshr i32 %i.aoo, 16
  %i.aou = trunc i32 %i.aot to i8
  %i.aov = uitofp i8 %i.aoq to float
  %i.aow = uitofp i8 %i.aos to float
  %i.aox = fmul nnan float %i.aow, 5.870000e-01
  %i.aoy = tail call float @llvm.fmuladd.f32(float %i.aov, float 2.990000e-01, float %i.aox)
  %i.aoz = uitofp i8 %i.aou to float
  %i.apa = tail call float @llvm.fmuladd.f32(float %i.aoz, float 1.140000e-01, float %i.aoy)
  %i.apb = fadd float %i.apa, f0x3C23D70A
  %i.apc = fcmp olt float %i.apb, %i.anf
  br i1 %i.apc, label %.critedge64.backedge.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i

.critedge64.backedge.i:                           ; preds = %.split61.i
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aop, i64 4 ; 3 uses
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !94 ; 2 uses
  %i.apf = icmp eq i32 %i.ape, 0
  br i1 %i.apf, label %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i, label %.split61.i, !llvm.loop !1015

.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i: ; preds = %.critedge64.backedge.i, %.critedge64.backedge.us110.i, %.critedge64.backedge.us.preheader.i
  %.us-phi108.i = phi ptr [ %i.aol, %.critedge64.backedge.us110.i ], [ %scevgep158.i, %.critedge64.backedge.us.preheader.i ], [ %i.apd, %.critedge64.backedge.i ]
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, !llvm.loop !1015

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i: ; preds = %.split61.i, %.split61.us.i, %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i, %bb.cx
  %.lcssa.i88 = phi ptr [ %i.anm, %bb.cx ], [ %.us-phi108.i, %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i ], [ %i.ant, %.split61.us.i ], [ %i.aop, %.split61.i ] ; 3 uses
  br i1 %i.amt, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i
  %.4.us.i = phi ptr [ %i.apg, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i ], [ %.3121.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i ]
  %i.apg = getelementptr inbounds i8, ptr %.4.us.i, i64 -4 ; 3 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !94 ; 2 uses
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, !llvm.loop !1016

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge
  %.4.i = phi ptr [ %i.apj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge ], [ %.3121.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i ]
  %i.apj = getelementptr inbounds i8, ptr %.4.i, i64 -4 ; 3 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !94 ; 6 uses
  %i.apl = icmp eq i32 %i.apk, 0
  br i1 %i.apl, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge, label %bb.cy

bb.cy:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i
  %i.apm = trunc i32 %i.apk to i8                 ; 2 uses
  %i.apn = lshr i32 %i.apk, 8
  %i.apo = trunc i32 %i.apn to i8                 ; 2 uses
  %i.app = lshr i32 %i.apk, 16
  %i.apq = trunc i32 %i.app to i8                 ; 2 uses
  %i.apr = load i64, ptr %.val16.i, align 8, !tbaa !68
  %i.aps = icmp eq i64 %i.apr, 4
  br i1 %i.aps, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.apt = lshr i32 %i.apk, 24
  %i.apu = trunc nuw i32 %i.apt to i8
  %i.apv = uitofp i8 %i.apm to float
  %i.apw = uitofp i8 %i.apo to float
  %i.apx = fmul nnan float %i.apw, 5.870000e-01
  %i.apy = tail call float @llvm.fmuladd.f32(float %i.apv, float 2.990000e-01, float %i.apx)
  %i.apz = uitofp i8 %i.apq to float
  %i.aqa = tail call float @llvm.fmuladd.f32(float %i.apz, float 1.140000e-01, float %i.apy)
  %i.aqb = fadd float %i.aqa, f0x3C23D70A
  %i.aqc = uitofp i8 %i.apu to float
  %i.aqd = fmul float %i.aqb, %i.aqc
  br label %.split63.i

bb.da:                                            ; preds = %bb.cy
  %i.aqe = uitofp i8 %i.apm to float
  %i.aqf = uitofp i8 %i.apo to float
  %i.aqg = fmul nnan float %i.aqf, 5.870000e-01
  %i.aqh = tail call float @llvm.fmuladd.f32(float %i.aqe, float 2.990000e-01, float %i.aqg)
  %i.aqi = uitofp i8 %i.apq to float
  %i.aqj = tail call float @llvm.fmuladd.f32(float %i.aqi, float 1.140000e-01, float %i.aqh)
  %i.aqk = fadd float %i.aqj, f0x3C23D70A
  br label %.split63.i

.split63.i:                                       ; preds = %bb.da, %bb.cz
  %.013.i32.i = phi float [ %i.aqd, %bb.cz ], [ %i.aqk, %bb.da ]
  %.0.i33.i = phi float [ %i.anj, %bb.cz ], [ %i.anf, %bb.da ]
  %i.aql = fcmp olt float %.013.i32.i, %.0.i33.i
  br i1 %i.aql, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge: ; preds = %.split63.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i, !llvm.loop !1016

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i: ; preds = %.split63.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i
  %i.aqm = phi i32 [ %i.aph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i ], [ %i.apk, %.split63.i ]
  %.us-phi117.i = phi ptr [ %i.apg, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i ], [ %i.apj, %.split63.i ] ; 2 uses
  %i.aqn = icmp ult ptr %.lcssa.i88, %.us-phi117.i
  br i1 %i.aqn, label %bb.cx, label %._crit_edge.i90, !llvm.loop !1017

._crit_edge.i90:                                  ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, %.critedge.i86
  %.154.lcssa.i = phi ptr [ %.lcssa68176.i, %.critedge.i86 ], [ %.lcssa.i88, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ] ; 4 uses
  %i.aqo = getelementptr inbounds i8, ptr %.154.lcssa.i, i64 -4 ; 6 uses
  %.not.i91 = icmp eq ptr %.0129, %i.aqo
  br i1 %.not.i91, label %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit, label %bb.db

bb.db:                                            ; preds = %._crit_edge.i90
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !94
  store i32 %i.aqp, ptr %.0129, align 4, !tbaa !94
  br label %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit

_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit: ; preds = %._crit_edge.i90, %bb.db
  store i32 %.fr125.i, ptr %i.aqo, align 4, !tbaa !94
  br i1 %.not, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit
  %i.aqq = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef nonnull %.0129, ptr noundef nonnull %i.aqo, ptr noundef nonnull align 8 dereferenceable(8) %2) #38 ; 2 uses
  %i.aqr = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef nonnull %.154.lcssa.i, ptr noundef %.0132.ph, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  br i1 %i.aqr, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.aqq, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer, !llvm.loop !1018

bb.de:                                            ; preds = %bb.dc
  br i1 %i.aqq, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit, label %bb.df, !llvm.loop !1018

bb.df:                                            ; preds = %bb.de, %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit
  tail call fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(ptr noundef nonnull %.0129, ptr noundef nonnull %i.aqo, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.tw, i1 noundef zeroext %i.h) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge: ; preds = %bb.df, %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit
  %.0129.ph521.be = phi ptr [ %.360.lcssa.i, %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit ], [ %.154.lcssa.i, %bb.df ]
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520, !llvm.loop !1018

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread: ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit, %bb.dd, %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i, %bb.b, %bb.ae, %bb.u, %bb.l, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, %bb.h, %bb.g, %bb.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SF_SE_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #21 {
bb.a:
  tail call fastcc void @_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull readonly align 8 dereferenceable(8) %5) #38
  %i.a = load i32, ptr %4, align 4, !tbaa !94     ; 3 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !94     ; 3 uses
  %.val7.i = load ptr, ptr %5, align 8
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %i.b, i64 1 ; 4 uses
  %i.g = trunc <2 x i32> %i.f to <2 x i8>         ; 2 uses
  %i.h = lshr <2 x i32> %i.f, splat (i32 8)
  %i.i = trunc <2 x i32> %i.h to <2 x i8>         ; 2 uses
  %i.j = lshr <2 x i32> %i.f, splat (i32 16)
  %i.k = trunc <2 x i32> %i.j to <2 x i8>         ; 2 uses
  %i.l = load i64, ptr %.val7.i, align 8, !tbaa !68
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = lshr <2 x i32> %i.f, splat (i32 24)
  %i.o = uitofp <2 x i8> %i.g to <2 x float>
  %i.p = uitofp <2 x i8> %i.i to <2 x float>
  %i.q = uitofp <2 x i8> %i.k to <2 x float>
  %i.r = trunc nuw <2 x i32> %i.n to <2 x i8>
  %i.s = fmul nnan <2 x float> %i.p, splat (float 5.870000e-01)
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 2.990000e-01), <2 x float> %i.s)
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float 1.140000e-01), <2 x float> %i.t)
  %i.v = fadd <2 x float> %i.u, splat (float f0x3C23D70A)
  %i.w = uitofp <2 x i8> %i.r to <2 x float>
  %i.x = fmul <2 x float> %i.v, %i.w
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = uitofp <2 x i8> %i.g to <2 x float>
  %i.z = uitofp <2 x i8> %i.i to <2 x float>
  %i.aa = uitofp <2 x i8> %i.k to <2 x float>
  %i.ab = fmul nnan <2 x float> %i.z, splat (float 5.870000e-01)
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ab)
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ac)
  %i.ae = fadd <2 x float> %i.ad, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i: ; preds = %bb.e, %bb.d
  %i.af = phi <2 x float> [ %i.x, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = extractelement <2 x float> %i.af, i64 1
  %i.ai = fcmp olt float %i.ag, %i.ah
  br i1 %i.ai, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i, %bb.b
  store i32 %i.a, ptr %3, align 4, !tbaa !94
  store i32 %i.b, ptr %4, align 4, !tbaa !94
  %i.aj = load i32, ptr %3, align 4, !tbaa !94    ; 3 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !94    ; 3 uses
  %.val6.i = load ptr, ptr %5, align 8
  %i.al = icmp eq i32 %i.aj, 0
  br i1 %i.al, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %i.ak, i64 1 ; 4 uses
  %i.ap = trunc <2 x i32> %i.ao to <2 x i8>       ; 2 uses
  %i.aq = lshr <2 x i32> %i.ao, splat (i32 8)
  %i.ar = trunc <2 x i32> %i.aq to <2 x i8>       ; 2 uses
  %i.as = lshr <2 x i32> %i.ao, splat (i32 16)
  %i.at = trunc <2 x i32> %i.as to <2 x i8>       ; 2 uses
  %i.au = load i64, ptr %.val6.i, align 8, !tbaa !68
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = lshr <2 x i32> %i.ao, splat (i32 24)
  %i.ax = uitofp <2 x i8> %i.ap to <2 x float>
  %i.ay = uitofp <2 x i8> %i.ar to <2 x float>
  %i.az = uitofp <2 x i8> %i.at to <2 x float>
  %i.ba = trunc nuw <2 x i32> %i.aw to <2 x i8>
  %i.bb = fmul nnan <2 x float> %i.ay, splat (float 5.870000e-01)
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bb)
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bc)
  %i.be = fadd <2 x float> %i.bd, splat (float f0x3C23D70A)
  %i.bf = uitofp <2 x i8> %i.ba to <2 x float>
  %i.bg = fmul <2 x float> %i.be, %i.bf
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.i

bb.i:                                             ; preds = %bb.g
  %i.bh = uitofp <2 x i8> %i.ap to <2 x float>
  %i.bi = uitofp <2 x i8> %i.ar to <2 x float>
  %i.bj = uitofp <2 x i8> %i.at to <2 x float>
  %i.bk = fmul nnan <2 x float> %i.bi, splat (float 5.870000e-01)
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bk)
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bl)
  %i.bn = fadd <2 x float> %i.bm, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.i: ; preds = %bb.i, %bb.h
  %i.bo = phi <2 x float> [ %i.bg, %bb.h ], [ %i.bn, %bb.i ] ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = extractelement <2 x float> %i.bo, i64 1
  %i.br = fcmp olt float %i.bp, %i.bq
  br i1 %i.br, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.thread.i, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.thread.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.i, %bb.f
  store i32 %i.aj, ptr %2, align 4, !tbaa !94
  store i32 %i.ak, ptr %3, align 4, !tbaa !94
  %i.bs = load i32, ptr %2, align 4, !tbaa !94    ; 3 uses
  %i.bt = load i32, ptr %1, align 4, !tbaa !94    ; 3 uses
  %.val5.i = load ptr, ptr %5, align 8
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.thread.i
  %i.bv = icmp eq i32 %i.bt, 0
  br i1 %i.bv, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %i.bx = insertelement <2 x i32> %i.bw, i32 %i.bt, i64 1 ; 4 uses
  %i.by = trunc <2 x i32> %i.bx to <2 x i8>       ; 2 uses
  %i.bz = lshr <2 x i32> %i.bx, splat (i32 8)
  %i.ca = trunc <2 x i32> %i.bz to <2 x i8>       ; 2 uses
  %i.cb = lshr <2 x i32> %i.bx, splat (i32 16)
  %i.cc = trunc <2 x i32> %i.cb to <2 x i8>       ; 2 uses
  %i.cd = load i64, ptr %.val5.i, align 8, !tbaa !68
  %i.ce = icmp eq i64 %i.cd, 4
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = lshr <2 x i32> %i.bx, splat (i32 24)
  %i.cg = uitofp <2 x i8> %i.by to <2 x float>
  %i.ch = uitofp <2 x i8> %i.ca to <2 x float>
  %i.ci = uitofp <2 x i8> %i.cc to <2 x float>
  %i.cj = trunc nuw <2 x i32> %i.cf to <2 x i8>
  %i.ck = fmul nnan <2 x float> %i.ch, splat (float 5.870000e-01)
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ck)
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> splat (float 1.140000e-01), <2 x float> %i.cl)
  %i.cn = fadd <2 x float> %i.cm, splat (float f0x3C23D70A)
  %i.co = uitofp <2 x i8> %i.cj to <2 x float>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.i

bb.m:                                             ; preds = %bb.k
  %i.cq = uitofp <2 x i8> %i.by to <2 x float>
  %i.cr = uitofp <2 x i8> %i.ca to <2 x float>
  %i.cs = uitofp <2 x i8> %i.cc to <2 x float>
  %i.ct = fmul nnan <2 x float> %i.cr, splat (float 5.870000e-01)
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ct)
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float 1.140000e-01), <2 x float> %i.cu)
  %i.cw = fadd <2 x float> %i.cv, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.i: ; preds = %bb.m, %bb.l
  %i.cx = phi <2 x float> [ %i.cp, %bb.l ], [ %i.cw, %bb.m ] ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  %i.da = fcmp olt float %i.cy, %i.cz
  br i1 %i.da, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.thread.i, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.thread.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.i, %bb.j
  store i32 %i.bs, ptr %1, align 4, !tbaa !94
  store i32 %i.bt, ptr %2, align 4, !tbaa !94
  %i.db = load i32, ptr %1, align 4, !tbaa !94    ; 3 uses
  %i.dc = load i32, ptr %0, align 4, !tbaa !94    ; 3 uses
  %.val.i = load ptr, ptr %5, align 8
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.thread.i
  %i.de = icmp eq i32 %i.dc, 0
  br i1 %i.de, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = insertelement <2 x i32> poison, i32 %i.db, i64 0
  %i.dg = insertelement <2 x i32> %i.df, i32 %i.dc, i64 1 ; 4 uses
  %i.dh = trunc <2 x i32> %i.dg to <2 x i8>       ; 2 uses
  %i.di = lshr <2 x i32> %i.dg, splat (i32 8)
  %i.dj = trunc <2 x i32> %i.di to <2 x i8>       ; 2 uses
  %i.dk = lshr <2 x i32> %i.dg, splat (i32 16)
  %i.dl = trunc <2 x i32> %i.dk to <2 x i8>       ; 2 uses
  %i.dm = load i64, ptr %.val.i, align 8, !tbaa !68
  %i.dn = icmp eq i64 %i.dm, 4
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.do = lshr <2 x i32> %i.dg, splat (i32 24)
  %i.dp = uitofp <2 x i8> %i.dh to <2 x float>
  %i.dq = uitofp <2 x i8> %i.dj to <2 x float>
  %i.dr = uitofp <2 x i8> %i.dl to <2 x float>
  %i.ds = trunc nuw <2 x i32> %i.do to <2 x i8>
  %i.dt = fmul nnan <2 x float> %i.dq, splat (float 5.870000e-01)
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> splat (float 2.990000e-01), <2 x float> %i.dt)
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> splat (float 1.140000e-01), <2 x float> %i.du)
  %i.dw = fadd <2 x float> %i.dv, splat (float f0x3C23D70A)
  %i.dx = uitofp <2 x i8> %i.ds to <2 x float>
  %i.dy = fmul <2 x float> %i.dw, %i.dx
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i

bb.q:                                             ; preds = %bb.o
  %i.dz = uitofp <2 x i8> %i.dh to <2 x float>
  %i.ea = uitofp <2 x i8> %i.dj to <2 x float>
  %i.eb = uitofp <2 x i8> %i.dl to <2 x float>
  %i.ec = fmul nnan <2 x float> %i.ea, splat (float 5.870000e-01)
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ec)
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ed)
  %i.ef = fadd <2 x float> %i.ee, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i: ; preds = %bb.q, %bb.p
  %i.eg = phi <2 x float> [ %i.dy, %bb.p ], [ %i.ef, %bb.q ] ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0
  %i.ei = extractelement <2 x float> %i.eg, i64 1
  %i.ej = fcmp olt float %i.eh, %i.ei
  br i1 %i.ej, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.thread.i, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.thread.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i, %bb.n
  store i32 %i.db, ptr %0, align 4, !tbaa !94
  store i32 %i.dc, ptr %1, align 4, !tbaa !94
  br label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit

_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit: ; preds = %bb.a, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit11.thread.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit15.thread.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit19.thread.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #22 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !94     ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !94     ; 6 uses
  %.val13 = load ptr, ptr %3, align 8             ; 2 uses
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 0                      ; 2 uses
  br i1 %i.d, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %i.b, i64 1 ; 4 uses
  %i.g = trunc <2 x i32> %i.f to <2 x i8>         ; 4 uses
  %i.h = lshr <2 x i32> %i.f, splat (i32 8)
  %i.i = trunc <2 x i32> %i.h to <2 x i8>         ; 4 uses
  %i.j = lshr <2 x i32> %i.f, splat (i32 16)
  %i.k = trunc <2 x i32> %i.j to <2 x i8>         ; 4 uses
  %i.l = load i64, ptr %.val13, align 8, !tbaa !68
  %i.m = icmp eq i64 %i.l, 4                      ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = lshr <2 x i32> %i.f, splat (i32 24)
  %i.o = uitofp <2 x i8> %i.g to <2 x float>
  %i.p = uitofp <2 x i8> %i.i to <2 x float>
  %i.q = uitofp <2 x i8> %i.k to <2 x float>
  %i.r = trunc nuw <2 x i32> %i.n to <2 x i8>
  %i.s = fmul nnan <2 x float> %i.p, splat (float 5.870000e-01)
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 2.990000e-01), <2 x float> %i.s)
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float 1.140000e-01), <2 x float> %i.t)
  %i.v = fadd <2 x float> %i.u, splat (float f0x3C23D70A)
  %i.w = uitofp <2 x i8> %i.r to <2 x float>
  %i.x = fmul <2 x float> %i.v, %i.w
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

bb.e:                                             ; preds = %bb.c
  %i.y = uitofp <2 x i8> %i.g to <2 x float>
  %i.z = uitofp <2 x i8> %i.i to <2 x float>
  %i.aa = uitofp <2 x i8> %i.k to <2 x float>
  %i.ab = fmul nnan <2 x float> %i.z, splat (float 5.870000e-01)
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ab)
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ac)
  %i.ae = fadd <2 x float> %i.ad, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit: ; preds = %bb.d, %bb.e
  %i.af = phi <2 x float> [ %i.x, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = extractelement <2 x float> %i.af, i64 1
  %i.ai = fcmp olt float %i.ag, %i.ah
  br i1 %i.ai, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread48: ; preds = %bb.a
  %i.aj = load i32, ptr %2, align 4, !tbaa !94    ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread52

.thread:                                          ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  %i.al = load i32, ptr %2, align 4, !tbaa !94    ; 6 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread, label %.thread50

.thread50:                                        ; preds = %.thread
  %i.an = trunc i32 %i.al to i8                   ; 2 uses
  %i.ao = lshr i32 %i.al, 8
  %i.ap = trunc i32 %i.ao to i8                   ; 2 uses
  %i.aq = lshr i32 %i.al, 16
  %i.ar = trunc i32 %i.aq to i8                   ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread50
  %i.as = lshr i32 %i.a, 24
  %i.at = lshr i32 %i.al, 24
  %i.au = shufflevector <2 x i8> %i.g, <2 x i8> poison, <2 x i32> <i32 poison, i32 0>
  %i.av = insertelement <2 x i8> %i.au, i8 %i.an, i64 0
  %i.aw = uitofp <2 x i8> %i.av to <2 x float>
  %i.ax = shufflevector <2 x i8> %i.i, <2 x i8> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x i8> %i.ax, i8 %i.ap, i64 0
  %i.az = uitofp <2 x i8> %i.ay to <2 x float>
  %i.ba = shufflevector <2 x i8> %i.k, <2 x i8> poison, <2 x i32> <i32 poison, i32 0>
  %i.bb = insertelement <2 x i8> %i.ba, i8 %i.ar, i64 0
  %i.bc = uitofp <2 x i8> %i.bb to <2 x float>
  %i.bd = trunc nuw i32 %i.as to i8
  %i.be = trunc nuw i32 %i.at to i8
  %i.bf = fmul nnan <2 x float> %i.az, splat (float 5.870000e-01)
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bf)
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bg)
  %i.bi = fadd <2 x float> %i.bh, splat (float f0x3C23D70A)
  %i.bj = insertelement <2 x i8> poison, i8 %i.be, i64 0
  %i.bk = insertelement <2 x i8> %i.bj, i8 %i.bd, i64 1
  %i.bl = uitofp <2 x i8> %i.bk to <2 x float>
  %i.bm = fmul <2 x float> %i.bi, %i.bl
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17

bb.g:                                             ; preds = %.thread50
  %i.bn = shufflevector <2 x i8> %i.g, <2 x i8> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x i8> %i.bn, i8 %i.an, i64 0
  %i.bp = uitofp <2 x i8> %i.bo to <2 x float>
  %i.bq = shufflevector <2 x i8> %i.i, <2 x i8> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x i8> %i.bq, i8 %i.ap, i64 0
  %i.bs = uitofp <2 x i8> %i.br to <2 x float>
  %i.bt = shufflevector <2 x i8> %i.k, <2 x i8> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = insertelement <2 x i8> %i.bt, i8 %i.ar, i64 0
  %i.bv = uitofp <2 x i8> %i.bu to <2 x float>
  %i.bw = fmul nnan <2 x float> %i.bs, splat (float 5.870000e-01)
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bw)
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bx)
  %i.bz = fadd <2 x float> %i.by, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17: ; preds = %bb.f, %bb.g
  %i.ca = phi <2 x float> [ %i.bm, %bb.f ], [ %i.bz, %bb.g ] ; 2 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 0
  %i.cc = extractelement <2 x float> %i.ca, i64 1
  %i.cd = fcmp olt float %i.cb, %i.cc
  br i1 %i.cd, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread52, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread52: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread48, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17
  %i.ce = phi i32 [ %i.al, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17 ], [ %i.aj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread48 ]
  store i32 %i.ce, ptr %1, align 4, !tbaa !94
  store i32 %i.a, ptr %2, align 4, !tbaa !94
  %i.cf = load i32, ptr %1, align 4, !tbaa !94    ; 3 uses
  %i.cg = load i32, ptr %0, align 4, !tbaa !94    ; 3 uses
  %.val11 = load ptr, ptr %3, align 8
  %i.ch = icmp eq i32 %i.cf, 0
  br i1 %i.ch, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread, label %bb.h

bb.h:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread52
  %i.ci = icmp eq i32 %i.cg, 0
  br i1 %i.ci, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ck = insertelement <2 x i32> %i.cj, i32 %i.cg, i64 1 ; 4 uses
  %i.cl = trunc <2 x i32> %i.ck to <2 x i8>       ; 2 uses
  %i.cm = lshr <2 x i32> %i.ck, splat (i32 8)
  %i.cn = trunc <2 x i32> %i.cm to <2 x i8>       ; 2 uses
  %i.co = lshr <2 x i32> %i.ck, splat (i32 16)
  %i.cp = trunc <2 x i32> %i.co to <2 x i8>       ; 2 uses
  %i.cq = load i64, ptr %.val11, align 8, !tbaa !68
  %i.cr = icmp eq i64 %i.cq, 4
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cs = lshr <2 x i32> %i.ck, splat (i32 24)
  %i.ct = uitofp <2 x i8> %i.cl to <2 x float>
  %i.cu = uitofp <2 x i8> %i.cn to <2 x float>
  %i.cv = uitofp <2 x i8> %i.cp to <2 x float>
  %i.cw = trunc nuw <2 x i32> %i.cs to <2 x i8>
  %i.cx = fmul nnan <2 x float> %i.cu, splat (float 5.870000e-01)
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> splat (float 2.990000e-01), <2 x float> %i.cx)
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> splat (float 1.140000e-01), <2 x float> %i.cy)
  %i.da = fadd <2 x float> %i.cz, splat (float f0x3C23D70A)
  %i.db = uitofp <2 x i8> %i.cw to <2 x float>
  %i.dc = fmul <2 x float> %i.da, %i.db
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21

bb.k:                                             ; preds = %bb.i
  %i.dd = uitofp <2 x i8> %i.cl to <2 x float>
  %i.de = uitofp <2 x i8> %i.cn to <2 x float>
  %i.df = uitofp <2 x i8> %i.cp to <2 x float>
  %i.dg = fmul nnan <2 x float> %i.de, splat (float 5.870000e-01)
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> splat (float 2.990000e-01), <2 x float> %i.dg)
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> splat (float 1.140000e-01), <2 x float> %i.dh)
  %i.dj = fadd <2 x float> %i.di, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21: ; preds = %bb.j, %bb.k
  %i.dk = phi <2 x float> [ %i.dc, %bb.j ], [ %i.dj, %bb.k ] ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = extractelement <2 x float> %i.dk, i64 1
  %i.dn = fcmp olt float %i.dl, %i.dm
  br i1 %i.dn, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21.thread: ; preds = %bb.h, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21
  store i32 %i.cf, ptr %0, align 4, !tbaa !94
  store i32 %i.cg, ptr %1, align 4, !tbaa !94
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread: ; preds = %bb.b, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  %i.do = load i32, ptr %2, align 4, !tbaa !94    ; 3 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25.thread, label %bb.l

bb.l:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread
  %i.dq = insertelement <2 x i32> poison, i32 %i.do, i64 0
  %i.dr = insertelement <2 x i32> %i.dq, i32 %i.a, i64 1 ; 4 uses
  %i.ds = trunc <2 x i32> %i.dr to <2 x i8>       ; 2 uses
  %i.dt = lshr <2 x i32> %i.dr, splat (i32 8)
  %i.du = trunc <2 x i32> %i.dt to <2 x i8>       ; 2 uses
  %i.dv = lshr <2 x i32> %i.dr, splat (i32 16)
  %i.dw = trunc <2 x i32> %i.dv to <2 x i8>       ; 2 uses
  %i.dx = load i64, ptr %.val13, align 8, !tbaa !68
  %i.dy = icmp eq i64 %i.dx, 4
  br i1 %i.dy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dz = lshr <2 x i32> %i.dr, splat (i32 24)
  %i.ea = uitofp <2 x i8> %i.ds to <2 x float>
  %i.eb = uitofp <2 x i8> %i.du to <2 x float>
  %i.ec = uitofp <2 x i8> %i.dw to <2 x float>
  %i.ed = trunc nuw <2 x i32> %i.dz to <2 x i8>
  %i.ee = fmul nnan <2 x float> %i.eb, splat (float 5.870000e-01)
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ee)
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ef)
  %i.eh = fadd <2 x float> %i.eg, splat (float f0x3C23D70A)
  %i.ei = uitofp <2 x i8> %i.ed to <2 x float>
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25

bb.n:                                             ; preds = %bb.l
  %i.ek = uitofp <2 x i8> %i.ds to <2 x float>
  %i.el = uitofp <2 x i8> %i.du to <2 x float>
  %i.em = uitofp <2 x i8> %i.dw to <2 x float>
  %i.en = fmul nnan <2 x float> %i.el, splat (float 5.870000e-01)
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> splat (float 2.990000e-01), <2 x float> %i.en)
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> splat (float 1.140000e-01), <2 x float> %i.eo)
  %i.eq = fadd <2 x float> %i.ep, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25: ; preds = %bb.m, %bb.n
  %i.er = phi <2 x float> [ %i.ej, %bb.m ], [ %i.eq, %bb.n ] ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 0
  %i.et = extractelement <2 x float> %i.er, i64 1
  %i.eu = fcmp olt float %i.es, %i.et
  br i1 %i.eu, label %bb.o, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25.thread

bb.o:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25
  store i32 %i.do, ptr %0, align 4, !tbaa !94
  store i32 %i.b, ptr %2, align 4, !tbaa !94
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25.thread: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25
  store i32 %i.a, ptr %0, align 4, !tbaa !94
  store i32 %i.b, ptr %1, align 4, !tbaa !94
  %i.ev = load i32, ptr %2, align 4, !tbaa !94    ; 3 uses
  %.val = load ptr, ptr %3, align 8
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread, label %bb.p

bb.p:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25.thread
  br i1 %i.d, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = insertelement <2 x i32> poison, i32 %i.ev, i64 0
  %i.ey = insertelement <2 x i32> %i.ex, i32 %i.b, i64 1 ; 4 uses
  %i.ez = trunc <2 x i32> %i.ey to <2 x i8>       ; 2 uses
  %i.fa = lshr <2 x i32> %i.ey, splat (i32 8)
  %i.fb = trunc <2 x i32> %i.fa to <2 x i8>       ; 2 uses
  %i.fc = lshr <2 x i32> %i.ey, splat (i32 16)
  %i.fd = trunc <2 x i32> %i.fc to <2 x i8>       ; 2 uses
  %i.fe = load i64, ptr %.val, align 8, !tbaa !68
  %i.ff = icmp eq i64 %i.fe, 4
  br i1 %i.ff, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fg = lshr <2 x i32> %i.ey, splat (i32 24)
  %i.fh = uitofp <2 x i8> %i.ez to <2 x float>
  %i.fi = uitofp <2 x i8> %i.fb to <2 x float>
  %i.fj = uitofp <2 x i8> %i.fd to <2 x float>
  %i.fk = trunc nuw <2 x i32> %i.fg to <2 x i8>
  %i.fl = fmul nnan <2 x float> %i.fi, splat (float 5.870000e-01)
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> splat (float 2.990000e-01), <2 x float> %i.fl)
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> splat (float 1.140000e-01), <2 x float> %i.fm)
  %i.fo = fadd <2 x float> %i.fn, splat (float f0x3C23D70A)
  %i.fp = uitofp <2 x i8> %i.fk to <2 x float>
  %i.fq = fmul <2 x float> %i.fo, %i.fp
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29

bb.s:                                             ; preds = %bb.q
  %i.fr = uitofp <2 x i8> %i.ez to <2 x float>
  %i.fs = uitofp <2 x i8> %i.fb to <2 x float>
  %i.ft = uitofp <2 x i8> %i.fd to <2 x float>
  %i.fu = fmul nnan <2 x float> %i.fs, splat (float 5.870000e-01)
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> splat (float 2.990000e-01), <2 x float> %i.fu)
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> splat (float 1.140000e-01), <2 x float> %i.fv)
  %i.fx = fadd <2 x float> %i.fw, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29: ; preds = %bb.r, %bb.s
  %i.fy = phi <2 x float> [ %i.fq, %bb.r ], [ %i.fx, %bb.s ] ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  %i.ga = extractelement <2 x float> %i.fy, i64 1
  %i.gb = fcmp olt float %i.fz, %i.ga
  br i1 %i.gb, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29.thread: ; preds = %bb.p, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29
  store i32 %i.ev, ptr %1, align 4, !tbaa !94
  store i32 %i.b, ptr %2, align 4, !tbaa !94
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit25.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17.thread52, %.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread48, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit29.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit21.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit17, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  switch i64 %i.d, label %bb.j [
    i64 0, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53
    i64 1, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53
    i64 2, label %bb.b
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !94   ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !94     ; 3 uses
  %.val31 = load ptr, ptr %2, align 8
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.k = insertelement <2 x i32> %i.j, i32 %i.g, i64 1 ; 4 uses
  %i.l = trunc <2 x i32> %i.k to <2 x i8>         ; 2 uses
  %i.m = lshr <2 x i32> %i.k, splat (i32 8)
  %i.n = trunc <2 x i32> %i.m to <2 x i8>         ; 2 uses
  %i.o = lshr <2 x i32> %i.k, splat (i32 16)
  %i.p = trunc <2 x i32> %i.o to <2 x i8>         ; 2 uses
  %i.q = load i64, ptr %.val31, align 8, !tbaa !68
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = lshr <2 x i32> %i.k, splat (i32 24)
  %i.t = uitofp <2 x i8> %i.l to <2 x float>
  %i.u = uitofp <2 x i8> %i.n to <2 x float>
  %i.v = uitofp <2 x i8> %i.p to <2 x float>
  %i.w = trunc nuw <2 x i32> %i.s to <2 x i8>
  %i.x = fmul nnan <2 x float> %i.u, splat (float 5.870000e-01)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> splat (float 2.990000e-01), <2 x float> %i.x)
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float 1.140000e-01), <2 x float> %i.y)
  %i.aa = fadd <2 x float> %i.z, splat (float f0x3C23D70A)
  %i.ab = uitofp <2 x i8> %i.w to <2 x float>
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = uitofp <2 x i8> %i.l to <2 x float>
  %i.ae = uitofp <2 x i8> %i.n to <2 x float>
  %i.af = uitofp <2 x i8> %i.p to <2 x float>
  %i.ag = fmul nnan <2 x float> %i.ae, splat (float 5.870000e-01)
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ag)
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ah)
  %i.aj = fadd <2 x float> %i.ai, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit: ; preds = %bb.e, %bb.f
  %i.ak = phi <2 x float> [ %i.ac, %bb.e ], [ %i.aj, %bb.f ] ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = extractelement <2 x float> %i.ak, i64 1
  %i.an = fcmp olt float %i.al, %i.am
  br i1 %i.an, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread: ; preds = %bb.c, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  store i32 %i.f, ptr %0, align 4, !tbaa !94
  store i32 %i.g, ptr %i.e, align 4, !tbaa !94
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53

bb.g:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = getelementptr inbounds i8, ptr %1, i64 -4
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %0, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53

bb.h:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds i8, ptr %1, i64 -4
  tail call fastcc void @_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53

bb.i:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = getelementptr inbounds i8, ptr %1, i64 -4
  tail call fastcc void @_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SF_SE_(ptr noundef %0, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53

bb.j:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not63 = icmp eq ptr %i.az, %1
  br i1 %.not63, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56
  %.02066 = phi i32 [ %.121, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56 ], [ 0, %bb.j ] ; 3 uses
  %.02265 = phi ptr [ %storemerge64, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56 ], [ %i.ax, %bb.j ] ; 2 uses
  %storemerge64 = phi ptr [ %i.ej, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56 ], [ %i.az, %bb.j ] ; 4 uses
  %i.ba = load <2 x i32>, ptr %.02265, align 4, !tbaa !94 ; 10 uses
  %i.bb = extractelement <2 x i32> %i.ba, i64 1   ; 3 uses
  %.val30 = load ptr, ptr %2, align 8
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bd = extractelement <2 x i32> %i.ba, i64 0   ; 3 uses
  %i.be = icmp eq i32 %i.bd, 0
  %.pre = trunc i32 %i.bb to i8                   ; 3 uses
  br i1 %i.be, label %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread_crit_edge, label %bb.l

._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread_crit_edge: ; preds = %bb.k
  %i.bf = bitcast <2 x i32> %i.ba to <8 x i8>
  %.pre70 = extractelement <8 x i8> %i.bf, i64 5
  %i.bg = bitcast <2 x i32> %i.ba to <8 x i8>
  %.pre74 = extractelement <8 x i8> %i.bg, i64 6
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread

bb.l:                                             ; preds = %bb.k
  %i.bh = trunc i32 %i.bd to i8                   ; 2 uses
  %i.bi = lshr <2 x i32> %i.ba, splat (i32 8)
  %i.bj = bitcast <2 x i32> %i.ba to <8 x i8>
  %i.bk = extractelement <8 x i8> %i.bj, i64 5
  %i.bl = trunc <2 x i32> %i.bi to <2 x i8>       ; 2 uses
  %i.bm = lshr <2 x i32> %i.ba, splat (i32 16)
  %i.bn = bitcast <2 x i32> %i.ba to <8 x i8>
  %i.bo = extractelement <8 x i8> %i.bn, i64 6
  %i.bp = trunc <2 x i32> %i.bm to <2 x i8>       ; 2 uses
  %i.bq = load i64, ptr %.val30, align 8, !tbaa !68
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = lshr <2 x i32> %i.ba, splat (i32 24)
  %i.bt = insertelement <2 x i8> poison, i8 %i.bh, i64 0
  %i.bu = insertelement <2 x i8> %i.bt, i8 %.pre, i64 1
  %i.bv = uitofp <2 x i8> %i.bu to <2 x float>
  %i.bw = uitofp <2 x i8> %i.bl to <2 x float>
  %i.bx = uitofp <2 x i8> %i.bp to <2 x float>
  %i.by = trunc nuw <2 x i32> %i.bs to <2 x i8>
  %i.bz = fmul nnan <2 x float> %i.bw, splat (float 5.870000e-01)
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bz)
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ca)
  %i.cc = fadd <2 x float> %i.cb, splat (float f0x3C23D70A)
  %i.cd = uitofp <2 x i8> %i.by to <2 x float>
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35

bb.n:                                             ; preds = %bb.l
  %i.cf = insertelement <2 x i8> poison, i8 %i.bh, i64 0
  %i.cg = insertelement <2 x i8> %i.cf, i8 %.pre, i64 1
  %i.ch = uitofp <2 x i8> %i.cg to <2 x float>
  %i.ci = uitofp <2 x i8> %i.bl to <2 x float>
  %i.cj = uitofp <2 x i8> %i.bp to <2 x float>
  %i.ck = fmul nnan <2 x float> %i.ci, splat (float 5.870000e-01)
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ck)
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> splat (float 1.140000e-01), <2 x float> %i.cl)
  %i.cn = fadd <2 x float> %i.cm, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35: ; preds = %bb.m, %bb.n
  %i.co = phi <2 x float> [ %i.ce, %bb.m ], [ %i.cn, %bb.n ] ; 2 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = extractelement <2 x float> %i.co, i64 1
  %i.cr = fcmp olt float %i.cq, %i.cp
  br i1 %i.cr, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread: ; preds = %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread_crit_edge, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35
  %.pre-phi75 = phi i8 [ %.pre74, %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread_crit_edge ], [ %i.bo, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35 ]
  %.pre-phi71 = phi i8 [ %.pre70, %._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread_crit_edge ], [ %i.bk, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35 ]
  store i32 %i.bd, ptr %storemerge64, align 4, !tbaa !94
  %i.cs = uitofp i8 %.pre to float
  %i.ct = uitofp i8 %.pre-phi71 to float
  %i.cu = fmul nnan float %i.ct, 5.870000e-01
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cs, float 2.990000e-01, float %i.cu)
  %i.cw = uitofp i8 %.pre-phi75 to float
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float 1.140000e-01, float %i.cv)
  %i.cy = fadd float %i.cx, f0x3C23D70A           ; 2 uses
  %i.cz = bitcast <2 x i32> %i.ba to <8 x i8>
  %i.da = extractelement <8 x i8> %i.cz, i64 7
  %i.db = uitofp i8 %i.da to float
  %i.dc = fmul float %i.cy, %i.db
  br label %bb.o

bb.o:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.backedge
  %.062 = phi ptr [ %.02265, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread ], [ %i.dd, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.backedge ] ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.062, i64 -4 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !94 ; 6 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %2, align 8
  %i.dg = trunc i32 %i.de to i8                   ; 2 uses
  %i.dh = lshr i32 %i.de, 8
  %i.di = trunc i32 %i.dh to i8                   ; 2 uses
  %i.dj = lshr i32 %i.de, 16
  %i.dk = trunc i32 %i.dj to i8                   ; 2 uses
  %i.dl = load i64, ptr %.val, align 8, !tbaa !68
  %i.dm = icmp eq i64 %i.dl, 4
  br i1 %i.dm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dn = lshr i32 %i.de, 24
  %i.do = trunc nuw i32 %i.dn to i8
  %i.dp = uitofp i8 %i.dg to float
  %i.dq = uitofp i8 %i.di to float
  %i.dr = fmul nnan float %i.dq, 5.870000e-01
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dp, float 2.990000e-01, float %i.dr)
  %i.dt = uitofp i8 %i.dk to float
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float 1.140000e-01, float %i.ds)
  %i.dv = fadd float %i.du, f0x3C23D70A
  %i.dw = uitofp i8 %i.do to float
  %i.dx = fmul float %i.dv, %i.dw
  br label %.split

bb.r:                                             ; preds = %bb.p
  %i.dy = uitofp i8 %i.dg to float
  %i.dz = uitofp i8 %i.di to float
  %i.ea = fmul nnan float %i.dz, 5.870000e-01
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dy, float 2.990000e-01, float %i.ea)
  %i.ec = uitofp i8 %i.dk to float
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float 1.140000e-01, float %i.eb)
  %i.ee = fadd float %i.ed, f0x3C23D70A
  br label %.split

.split:                                           ; preds = %bb.r, %bb.q
  %.013.i36 = phi float [ %i.dc, %bb.q ], [ %i.cy, %bb.r ]
  %.0.i37 = phi float [ %i.dx, %bb.q ], [ %i.ee, %bb.r ]
  %i.ef = fcmp olt float %.013.i36, %.0.i37
  br i1 %i.ef, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.backedge, label %.critedge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.backedge: ; preds = %.split, %bb.o
  store i32 %i.de, ptr %.062, align 4, !tbaa !94
  %.not28 = icmp eq ptr %i.dd, %0
  br i1 %.not28, label %.critedge, label %bb.o, !llvm.loop !1019

.critedge:                                        ; preds = %.split, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.backedge
  %.0.lcssa = phi ptr [ %.062, %.split ], [ %0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.backedge ]
  store i32 %i.bb, ptr %.0.lcssa, align 4, !tbaa !94
  %i.eg = add i32 %.02066, 1                      ; 2 uses
  %.not29 = icmp eq i32 %i.eg, 8
  br i1 %.not29, label %.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56

.thread:                                          ; preds = %.critedge
  %i.eh = getelementptr inbounds nuw i8, ptr %storemerge64, i64 4
  %i.ei = icmp eq ptr %i.eh, %1
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56: ; preds = %.lr.ph, %.critedge, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35
  %.121 = phi i32 [ %i.eg, %.critedge ], [ %.02066, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35 ], [ %.02066, %.lr.ph ]
  %i.ej = getelementptr inbounds nuw i8, ptr %storemerge64, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ej, %1
  br i1 %.not, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53, label %.lr.ph, !llvm.loop !1020

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread53: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56, %bb.j, %.thread, %bb.b, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, %bb.a, %bb.a, %bb.i, %bb.h, %bb.g
  %.5 = phi i1 [ true, %bb.b ], [ true, %bb.i ], [ true, %bb.a ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.a ], [ true, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread ], [ true, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit ], [ %i.ei, %.thread ], [ true, %bb.j ], [ true, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread56 ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #22 {
bb.a:
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  %i.a = load i32, ptr %3, align 4, !tbaa !94     ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !94     ; 3 uses
  %.val5 = load ptr, ptr %4, align 8
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %i.b, i64 1 ; 4 uses
  %i.g = trunc <2 x i32> %i.f to <2 x i8>         ; 2 uses
  %i.h = lshr <2 x i32> %i.f, splat (i32 8)
  %i.i = trunc <2 x i32> %i.h to <2 x i8>         ; 2 uses
  %i.j = lshr <2 x i32> %i.f, splat (i32 16)
  %i.k = trunc <2 x i32> %i.j to <2 x i8>         ; 2 uses
  %i.l = load i64, ptr %.val5, align 8, !tbaa !68
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = lshr <2 x i32> %i.f, splat (i32 24)
  %i.o = uitofp <2 x i8> %i.g to <2 x float>
  %i.p = uitofp <2 x i8> %i.i to <2 x float>
  %i.q = uitofp <2 x i8> %i.k to <2 x float>
  %i.r = trunc nuw <2 x i32> %i.n to <2 x i8>
  %i.s = fmul nnan <2 x float> %i.p, splat (float 5.870000e-01)
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 2.990000e-01), <2 x float> %i.s)
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float 1.140000e-01), <2 x float> %i.t)
  %i.v = fadd <2 x float> %i.u, splat (float f0x3C23D70A)
  %i.w = uitofp <2 x i8> %i.r to <2 x float>
  %i.x = fmul <2 x float> %i.v, %i.w
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

bb.e:                                             ; preds = %bb.c
  %i.y = uitofp <2 x i8> %i.g to <2 x float>
  %i.z = uitofp <2 x i8> %i.i to <2 x float>
  %i.aa = uitofp <2 x i8> %i.k to <2 x float>
  %i.ab = fmul nnan <2 x float> %i.z, splat (float 5.870000e-01)
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ab)
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ac)
  %i.ae = fadd <2 x float> %i.ad, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit: ; preds = %bb.d, %bb.e
  %i.af = phi <2 x float> [ %i.x, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = extractelement <2 x float> %i.af, i64 1
  %i.ai = fcmp olt float %i.ag, %i.ah
  br i1 %i.ai, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread: ; preds = %bb.b, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  store i32 %i.a, ptr %2, align 4, !tbaa !94
  store i32 %i.b, ptr %3, align 4, !tbaa !94
  %i.aj = load i32, ptr %2, align 4, !tbaa !94    ; 3 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !94    ; 3 uses
  %.val4 = load ptr, ptr %4, align 8
  %i.al = icmp eq i32 %i.aj, 0
  br i1 %i.al, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26, label %bb.f

bb.f:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %i.ak, i64 1 ; 4 uses
  %i.ap = trunc <2 x i32> %i.ao to <2 x i8>       ; 2 uses
  %i.aq = lshr <2 x i32> %i.ao, splat (i32 8)
  %i.ar = trunc <2 x i32> %i.aq to <2 x i8>       ; 2 uses
  %i.as = lshr <2 x i32> %i.ao, splat (i32 16)
  %i.at = trunc <2 x i32> %i.as to <2 x i8>       ; 2 uses
  %i.au = load i64, ptr %.val4, align 8, !tbaa !68
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = lshr <2 x i32> %i.ao, splat (i32 24)
  %i.ax = uitofp <2 x i8> %i.ap to <2 x float>
  %i.ay = uitofp <2 x i8> %i.ar to <2 x float>
  %i.az = uitofp <2 x i8> %i.at to <2 x float>
  %i.ba = trunc nuw <2 x i32> %i.aw to <2 x i8>
  %i.bb = fmul nnan <2 x float> %i.ay, splat (float 5.870000e-01)
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bb)
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bc)
  %i.be = fadd <2 x float> %i.bd, splat (float f0x3C23D70A)
  %i.bf = uitofp <2 x i8> %i.ba to <2 x float>
  %i.bg = fmul <2 x float> %i.be, %i.bf
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9

bb.i:                                             ; preds = %bb.g
  %i.bh = uitofp <2 x i8> %i.ap to <2 x float>
  %i.bi = uitofp <2 x i8> %i.ar to <2 x float>
  %i.bj = uitofp <2 x i8> %i.at to <2 x float>
  %i.bk = fmul nnan <2 x float> %i.bi, splat (float 5.870000e-01)
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bk)
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bl)
  %i.bn = fadd <2 x float> %i.bm, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9: ; preds = %bb.h, %bb.i
  %i.bo = phi <2 x float> [ %i.bg, %bb.h ], [ %i.bn, %bb.i ] ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = extractelement <2 x float> %i.bo, i64 1
  %i.br = fcmp olt float %i.bp, %i.bq
  br i1 %i.br, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9.thread: ; preds = %bb.f, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9
  store i32 %i.aj, ptr %1, align 4, !tbaa !94
  store i32 %i.ak, ptr %2, align 4, !tbaa !94
  %i.bs = load i32, ptr %1, align 4, !tbaa !94    ; 3 uses
  %i.bt = load i32, ptr %0, align 4, !tbaa !94    ; 3 uses
  %.val = load ptr, ptr %4, align 8
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26, label %bb.j

bb.j:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9.thread
  %i.bv = icmp eq i32 %i.bt, 0
  br i1 %i.bv, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %i.bx = insertelement <2 x i32> %i.bw, i32 %i.bt, i64 1 ; 4 uses
  %i.by = trunc <2 x i32> %i.bx to <2 x i8>       ; 2 uses
  %i.bz = lshr <2 x i32> %i.bx, splat (i32 8)
  %i.ca = trunc <2 x i32> %i.bz to <2 x i8>       ; 2 uses
  %i.cb = lshr <2 x i32> %i.bx, splat (i32 16)
  %i.cc = trunc <2 x i32> %i.cb to <2 x i8>       ; 2 uses
  %i.cd = load i64, ptr %.val, align 8, !tbaa !68
  %i.ce = icmp eq i64 %i.cd, 4
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = lshr <2 x i32> %i.bx, splat (i32 24)
  %i.cg = uitofp <2 x i8> %i.by to <2 x float>
  %i.ch = uitofp <2 x i8> %i.ca to <2 x float>
  %i.ci = uitofp <2 x i8> %i.cc to <2 x float>
  %i.cj = trunc nuw <2 x i32> %i.cf to <2 x i8>
  %i.ck = fmul nnan <2 x float> %i.ch, splat (float 5.870000e-01)
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ck)
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> splat (float 1.140000e-01), <2 x float> %i.cl)
  %i.cn = fadd <2 x float> %i.cm, splat (float f0x3C23D70A)
  %i.co = uitofp <2 x i8> %i.cj to <2 x float>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13

bb.m:                                             ; preds = %bb.k
  %i.cq = uitofp <2 x i8> %i.by to <2 x float>
  %i.cr = uitofp <2 x i8> %i.ca to <2 x float>
  %i.cs = uitofp <2 x i8> %i.cc to <2 x float>
  %i.ct = fmul nnan <2 x float> %i.cr, splat (float 5.870000e-01)
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ct)
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float 1.140000e-01), <2 x float> %i.cu)
  %i.cw = fadd <2 x float> %i.cv, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13: ; preds = %bb.l, %bb.m
  %i.cx = phi <2 x float> [ %i.cp, %bb.l ], [ %i.cw, %bb.m ] ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  %i.da = fcmp olt float %i.cy, %i.cz
  br i1 %i.da, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13.thread, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13.thread: ; preds = %bb.j, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13
  store i32 %i.bs, ptr %0, align 4, !tbaa !94
  store i32 %i.bt, ptr %1, align 4, !tbaa !94
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, %bb.a, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit9, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13.thread, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit13, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN22default_implementation12_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483647, 2147483649) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1280) ptr @_Znwm(i64 noundef 1280) #40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1280) %i.a, i8 0, i64 1280, i1 false)
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %_ZNSt3__16vectorINS_5arrayIsLm320EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i59 = icmp eq i64 %2, 0                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 702
  %i.c = add nsw i64 %2, -1                       ; 4 uses
  %xtraiter = and i64 %2, 1
  %i.d = icmp eq i64 %i.c, 0
  %unroll_iter = and i64 %2, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod7 = trunc i64 %2 to i1
  %xtraiter8 = and i64 %2, 1
  %i.e = icmp eq i64 %i.c, 0
  %unroll_iter11 = and i64 %2, -2
  %lcmp.mod9.not = icmp eq i64 %xtraiter8, 0
  %lcmp.mod10 = trunc i64 %2 to i1
  %xtraiter13 = and i64 %2, 1
  %i.f = icmp eq i64 %i.c, 0
  %unroll_iter16 = and i64 %2, -2
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  %lcmp.mod15 = trunc i64 %2 to i1
  %xtraiter18 = and i64 %2, 1
  %i.g = icmp eq i64 %i.c, 0
  %unroll_iter21 = and i64 %2, -2
  %lcmp.mod19.not = icmp eq i64 %xtraiter18, 0
  %lcmp.mod20 = trunc i64 %2 to i1
  br label %bb.b

_ZNSt3__16vectorINS_5arrayIsLm320EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.h, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1280) #39
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.077 = phi i64 [ 0, %.lr.ph ], [ %i.fh, %bb.h ] ; 4 uses
  %i.h = add i64 %.077, %1
  %i.i = mul i64 %i.h, %4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 12 uses
  %i.k = and i64 %.077, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw [640 x i8], ptr %i.a, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 13 uses
  switch i64 %6, label %_ZN22default_implementation12_GLOBAL__N_114FillRowPaletteILm1EEEvPKhmPKsPs.exit [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i59, label %_ZN22default_implementation12_GLOBAL__N_114FillRowPaletteILm1EEEvPKhmPKsPs.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  br i1 %i.g, label %.preheader.i.epil.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.01416.i = phi i64 [ %i.ag, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %niter22 = phi i64 [ %niter22.next.1, %.preheader.i ], [ 0, %.preheader.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01416.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !85
  %i.p = zext i8 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 2654435761
  %i.r = lshr i64 %i.q, 16
  %i.s = and i64 %i.r, 65535
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !104
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.01416.i
  store i16 %i.u, ptr %i.v, align 2, !tbaa !104
  %i.w = or disjoint i64 %.01416.i, 1             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !85
  %i.z = zext i8 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 2654435761
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = and i64 %i.ab, 65535
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !104
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.w
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !104
  %i.ag = add nuw i64 %.01416.i, 2                ; 2 uses
  %niter22.next.1 = add nuw i64 %niter22, 2       ; 2 uses
  %niter22.ncmp.1 = icmp eq i64 %niter22.next.1, %unroll_iter21
  br i1 %niter22.ncmp.1, label %_ZN22default_implementation12_GLOBAL__N_114FillRowPaletteILm1EEEvPKhmPKsPs.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !28

bb.d:                                             ; preds = %bb.b
  br i1 %.not.i59, label %_ZN22default_implementation12_GLOBAL__N_114FillRowPaletteILm1EEEvPKhmPKsPs.exit, label %.preheader.i53.preheader

.preheader.i53.preheader:                         ; preds = %bb.d
  br i1 %i.f, label %.preheader.i53.epil.preheader, label %.preheader.i53

.preheader.i53:                                   ; preds = %.preheader.i53.preheader, %.preheader.i53
  %.01417.i = phi i64 [ %i.bc, %.preheader.i53 ], [ 0, %.preheader.i53.preheader ] ; 4 uses
  %niter17 = phi i64 [ %niter17.next.1, %.preheader.i53 ], [ 0, %.preheader.i53.preheader ]
  %i.ah = shl nuw i64 %.01417.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = zext i16 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, 2654435761
  %i.am = lshr i64 %i.al, 16
  %i.an = and i64 %i.am, 65535
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !104
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.01417.i
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !104
  %i.ar = or disjoint i64 %.01417.i, 1            ; 2 uses
  %i.as = shl nuw i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.as
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 2654435761
  %i.ax = lshr i64 %i.aw, 16
  %i.ay = and i64 %i.ax, 65535
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !104
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ar
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !104
  %i.bc = add nuw i64 %.01417.i, 2                ; 2 uses
  %niter17.next.1 = add nuw i64 %niter17, 2       ; 2 uses
  %niter17.ncmp.1 = icmp eq i64 %niter17.next.1, %unroll_iter16
  br i1 %niter17.ncmp.1, label %_ZN22default_implementation12_GLOBAL__N_114FillRowPaletteILm1EEEvPKhmPKsPs.exit.loopexit4.unr-lcssa, label %.preheader.i53, !llvm.loop !29

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i59, label %_ZN22default_implementation12_GLOBAL__N_114FillRowPaletteILm1EEEvPKhmPKsPs.exit, label %.preheader.i56.preheader

.preheader.i56.preheader:                         ; preds = %bb.e
  br i1 %i.e, label %.preheader.i56.epil.preheader, label %.preheader.i56

.preheader.i56:                                   ; preds = %.preheader.i56.preheader, %.preheader.i56
  %.01417.i57 = phi i64 [ %i.ci, %.preheader.i56 ], [ 0, %.preheader.i56.preheader ] ; 4 uses
  %niter12 = phi i64 [ %niter12.next.1, %.preheader.i56 ], [ 0, %.preheader.i56.preheader ]
  %i.bd = mul i64 %.01417.i57, 3
  %i.be = getelementptr i8, ptr %i.j, i64 %i.bd   ; 2 uses
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = zext i16 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.be, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !85
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 16
  %i.bl = or disjoint i64 %i.bk, %i.bg
  %i.bm = mul nuw nsw i64 %i.bl, 2654435761
  %i.bn = lshr i64 %i.bm, 16
  %i.bo = and i64 %i.bn, 65535
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !104
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.01417.i57
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !104
  %i.bs = or disjoint i64 %.01417.i57, 1          ; 2 uses
  %i.bt = mul i64 %i.bs, 3
  %i.bu = getelementptr i8, ptr %i.j, i64 %i.bt   ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 1
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr i8, ptr %i.bu, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !85
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 16
  %i.cb = or disjoint i64 %i.ca, %i.bw
  %i.cc = mul nuw nsw i64 %i.cb, 2654435761
  %i.cd = lshr i64 %i.cc, 16
  %i.ce = and i64 %i.cd, 65535
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !104
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bs
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !104
  %i.ci = add nuw i64 %.01417.i57, 2              ; 2 uses
  %niter12.next.1 = add nuw i64 %niter12, 2       ; 2 uses
  %niter12.ncmp.1 = icmp eq i64 %niter12.next.1, %unroll_iter11
end_hunk_1
