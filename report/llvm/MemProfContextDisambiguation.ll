Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemProfContextDisambiguation?download=true
inline.NumInlined: 24972
inline.NumDeleted: 9896
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN4llvm28MemProfContextDisambiguation10performICPERNS_6ModuleENS_8ArrayRefINS_12CallsiteInfoEEENS3_ISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISA_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISH_EEEENS3_INS0_17ICallAnalysisDataEEERNS_25OptimizationRemarkEmitterE:bb.a
.lr.ph.i.i.i.i.i10.i24.i422.prol:                 ; preds = %.lr.ph.i.i.i.i.i10.i24.i422.preheader, %.lr.ph.i.i.i.i.i10.i24.i422.prol
  %.012.i.i.i.i.i11.i25.i423.prol = phi i64 [ %i.adm, %.lr.ph.i.i.i.i.i10.i24.i422.prol ], [ %i.ade, %.lr.ph.i.i.i.i.i10.i24.i422.preheader ]
  %.0811.i.i.i.i.i12.i26.i424.prol = phi ptr [ %i.adl, %.lr.ph.i.i.i.i.i10.i24.i422.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i421, %.lr.ph.i.i.i.i.i10.i24.i422.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i425.prol = phi ptr [ %i.adk, %.lr.ph.i.i.i.i.i10.i24.i422.prol ], [ %.sroa.015.0.lcssa.i18.i417, %.lr.ph.i.i.i.i.i10.i24.i422.preheader ] ; 3 uses
  %prol.iter1223 = phi i64 [ %prol.iter1223.next, %.lr.ph.i.i.i.i.i10.i24.i422.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i422.preheader ]
  %i.adg = load i64, ptr %.0910.i.i.i.i.i13.i27.i425.prol, align 8, !tbaa !460
  store i64 %i.adg, ptr %.0811.i.i.i.i.i12.i26.i424.prol, align 8, !tbaa !619
  %i.adh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425.prol, i64 8
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !409
  %i.adj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424.prol, i64 8
  store ptr %i.adi, ptr %i.adj, align 8, !tbaa !620
  %i.adk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425.prol, i64 16 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424.prol, i64 16 ; 2 uses
  %i.adm = add nsw i64 %.012.i.i.i.i.i11.i25.i423.prol, -1 ; 2 uses
  %prol.iter1223.next = add i64 %prol.iter1223, 1 ; 2 uses
  %prol.iter1223.cmp.not = icmp eq i64 %prol.iter1223.next, %xtraiter1221
  br i1 %prol.iter1223.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i422.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i422.prol, !llvm.loop !1623

.lr.ph.i.i.i.i.i10.i24.i422.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i10.i24.i422.prol, %.lr.ph.i.i.i.i.i10.i24.i422.preheader
  %.012.i.i.i.i.i11.i25.i423.unr = phi i64 [ %i.ade, %.lr.ph.i.i.i.i.i10.i24.i422.preheader ], [ %i.adm, %.lr.ph.i.i.i.i.i10.i24.i422.prol ]
  %.0811.i.i.i.i.i12.i26.i424.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i421, %.lr.ph.i.i.i.i.i10.i24.i422.preheader ], [ %i.adl, %.lr.ph.i.i.i.i.i10.i24.i422.prol ]
  %.0910.i.i.i.i.i13.i27.i425.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i417, %.lr.ph.i.i.i.i.i10.i24.i422.preheader ], [ %i.adk, %.lr.ph.i.i.i.i.i10.i24.i422.prol ]
  %i.adn = icmp ult i64 %i.ade, 4
  br i1 %i.adn, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449, label %.lr.ph.i.i.i.i.i10.i24.i422

.lr.ph.i.i.i.i.i10.i24.i422:                      ; preds = %.lr.ph.i.i.i.i.i10.i24.i422.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i422
  %.012.i.i.i.i.i11.i25.i423 = phi i64 [ %i.aem, %.lr.ph.i.i.i.i.i10.i24.i422 ], [ %.012.i.i.i.i.i11.i25.i423.unr, %.lr.ph.i.i.i.i.i10.i24.i422.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i424 = phi ptr [ %i.ael, %.lr.ph.i.i.i.i.i10.i24.i422 ], [ %.0811.i.i.i.i.i12.i26.i424.unr, %.lr.ph.i.i.i.i.i10.i24.i422.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i425 = phi ptr [ %i.aek, %.lr.ph.i.i.i.i.i10.i24.i422 ], [ %.0910.i.i.i.i.i13.i27.i425.unr, %.lr.ph.i.i.i.i.i10.i24.i422.prol.loopexit ] ; 9 uses
  %i.ado = load i64, ptr %.0910.i.i.i.i.i13.i27.i425, align 8, !tbaa !460
  store i64 %i.ado, ptr %.0811.i.i.i.i.i12.i26.i424, align 8, !tbaa !619
  %i.adp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 8
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !409
  %i.adr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 8
  store ptr %i.adq, ptr %i.adr, align 8, !tbaa !620
  %i.ads = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 16
  %i.adt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 16
  %i.adu = load i64, ptr %i.ads, align 8, !tbaa !460
  store i64 %i.adu, ptr %i.adt, align 8, !tbaa !619
  %i.adv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 24
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !409
  %i.adx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 24
  store ptr %i.adw, ptr %i.adx, align 8, !tbaa !620
  %i.ady = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 32
  %i.adz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 32
  %i.aea = load i64, ptr %i.ady, align 8, !tbaa !460
  store i64 %i.aea, ptr %i.adz, align 8, !tbaa !619
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 40
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !409
  %i.aed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 40
  store ptr %i.aec, ptr %i.aed, align 8, !tbaa !620
  %i.aee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 48
  %i.aef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 48
  %i.aeg = load i64, ptr %i.aee, align 8, !tbaa !460
  store i64 %i.aeg, ptr %i.aef, align 8, !tbaa !619
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 56
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !409
  %i.aej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 56
  store ptr %i.aei, ptr %i.aej, align 8, !tbaa !620
  %i.aek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i425, i64 64
  %i.ael = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i424, i64 64
  %i.aem = add nsw i64 %.012.i.i.i.i.i11.i25.i423, -4
  %i.aen = icmp sgt i64 %.012.i.i.i.i.i11.i25.i423, 4
  br i1 %i.aen, label %.lr.ph.i.i.i.i.i10.i24.i422, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449, !llvm.loop !17

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449: ; preds = %.lr.ph.i.i.i.i.i10.i24.i422.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i422, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i420
  %i.aeo = shl nsw i64 %.022.i.i, 2               ; 4 uses
  %.not65.i315 = icmp slt i64 %i.iw, %i.aeo
  br i1 %.not65.i315, label %._crit_edge.i341, label %.lr.ph.i316

.lr.ph.i316:                                      ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449
  %.idx.i317 = shl nsw i64 %.022.i.i, 5           ; 2 uses
  %.idx56.i318 = shl nsw i64 %.022.i.i, 6         ; 2 uses
  %.not57.i319 = icmp eq i64 %.idx.i317, %.idx56.i318
  br label %bb.ap

bb.ap:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338, %.lr.ph.i316
  %.sroa.022.067.i320 = phi ptr [ %i.in, %.lr.ph.i316 ], [ %i.aig, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338 ] ; 2 uses
  %.066.i321 = phi ptr [ %.sroa.10.0.i, %.lr.ph.i316 ], [ %i.aeq, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338 ] ; 4 uses
  %i.aep = getelementptr inbounds i8, ptr %.066.i321, i64 %.idx.i317 ; 4 uses
  %i.aeq = getelementptr inbounds i8, ptr %.066.i321, i64 %.idx56.i318 ; 4 uses
  br i1 %.not57.i319, label %._crit_edge.i.i332, label %.lr.ph.i.i322

.lr.ph.i.i322:                                    ; preds = %bb.ap, %bb.as
  %.029.i.i323 = phi ptr [ %.1.i.i329, %bb.as ], [ %.066.i321, %bb.ap ] ; 4 uses
  %.01628.i.i324 = phi ptr [ %.117.i.i328, %bb.as ], [ %i.aep, %bb.ap ] ; 4 uses
  %.sroa.0.027.i.i325 = phi ptr [ %i.aex, %bb.as ], [ %.sroa.022.067.i320, %bb.ap ] ; 3 uses
  %i.aer = load i64, ptr %.01628.i.i324, align 8, !tbaa !460 ; 2 uses
  %i.aes = load i64, ptr %.029.i.i323, align 8, !tbaa !460 ; 2 uses
  %i.aet = icmp ult i64 %i.aer, %i.aes
  br i1 %i.aet, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i322
  %i.aeu = getelementptr inbounds nuw i8, ptr %.01628.i.i324, i64 16
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i.i322
  %i.aev = getelementptr inbounds nuw i8, ptr %.029.i.i323, i64 16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink34.i.i326 = phi i64 [ %i.aer, %bb.aq ], [ %i.aes, %bb.ar ]
  %.01628.pn.i.i327 = phi ptr [ %.01628.i.i324, %bb.aq ], [ %.029.i.i323, %bb.ar ]
  %.117.i.i328 = phi ptr [ %i.aeu, %bb.aq ], [ %.01628.i.i324, %bb.ar ] ; 3 uses
  %.1.i.i329 = phi ptr [ %.029.i.i323, %bb.aq ], [ %i.aev, %bb.ar ] ; 3 uses
  %.sink.in.i.i330 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i327, i64 8
  %.sink.i.i331 = load ptr, ptr %.sink.in.i.i330, align 8, !tbaa !409
  store i64 %.sink34.i.i326, ptr %.sroa.0.027.i.i325, align 8, !tbaa !619
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i325, i64 8
  store ptr %.sink.i.i331, ptr %i.aew, align 8, !tbaa !620
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i325, i64 16 ; 2 uses
  %i.aey = icmp ne ptr %.1.i.i329, %i.aep
  %i.aez = icmp ne ptr %.117.i.i328, %i.aeq
  %i.afa = select i1 %i.aey, i1 %i.aez, i1 false
  br i1 %i.afa, label %.lr.ph.i.i322, label %._crit_edge.i.i332, !llvm.loop !19

._crit_edge.i.i332:                               ; preds = %bb.as, %bb.ap
  %.sroa.0.0.lcssa.i.i333 = phi ptr [ %.sroa.022.067.i320, %bb.ap ], [ %i.aex, %bb.as ] ; 5 uses
  %.016.lcssa.i.i334 = phi ptr [ %i.aep, %bb.ap ], [ %.117.i.i328, %bb.as ] ; 3 uses
  %.0.lcssa.i.i335 = phi ptr [ %.066.i321, %bb.ap ], [ %.1.i.i329, %bb.as ] ; 3 uses
  %i.afb = ptrtoint ptr %i.aep to i64
  %i.afc = ptrtoint ptr %.0.lcssa.i.i335 to i64
  %i.afd = sub i64 %i.afb, %i.afc
  %i.afe = ashr exact i64 %i.afd, 4               ; 5 uses
  %i.aff = icmp sgt i64 %i.afe, 0
  br i1 %i.aff, label %.lr.ph.i.i.i.i.i.i.i377.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i336

.lr.ph.i.i.i.i.i.i.i377.preheader:                ; preds = %._crit_edge.i.i332
  %xtraiter1224 = and i64 %i.afe, 3               ; 2 uses
  %lcmp.mod1225.not = icmp eq i64 %xtraiter1224, 0
  br i1 %lcmp.mod1225.not, label %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i377.prol

.lr.ph.i.i.i.i.i.i.i377.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i377.preheader, %.lr.ph.i.i.i.i.i.i.i377.prol
  %.012.i.i.i.i.i.i.i378.prol = phi i64 [ %i.afm, %.lr.ph.i.i.i.i.i.i.i377.prol ], [ %i.afe, %.lr.ph.i.i.i.i.i.i.i377.preheader ]
  %.0811.i.i.i.i.i.i.i379.prol = phi ptr [ %i.afl, %.lr.ph.i.i.i.i.i.i.i377.prol ], [ %.sroa.0.0.lcssa.i.i333, %.lr.ph.i.i.i.i.i.i.i377.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i380.prol = phi ptr [ %i.afk, %.lr.ph.i.i.i.i.i.i.i377.prol ], [ %.0.lcssa.i.i335, %.lr.ph.i.i.i.i.i.i.i377.preheader ] ; 3 uses
  %prol.iter1226 = phi i64 [ %prol.iter1226.next, %.lr.ph.i.i.i.i.i.i.i377.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i377.preheader ]
  %i.afg = load i64, ptr %.0910.i.i.i.i.i.i.i380.prol, align 8, !tbaa !460
  store i64 %i.afg, ptr %.0811.i.i.i.i.i.i.i379.prol, align 8, !tbaa !619
  %i.afh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380.prol, i64 8
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !409
  %i.afj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379.prol, i64 8
  store ptr %i.afi, ptr %i.afj, align 8, !tbaa !620
  %i.afk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380.prol, i64 16 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379.prol, i64 16 ; 3 uses
  %i.afm = add nsw i64 %.012.i.i.i.i.i.i.i378.prol, -1 ; 2 uses
  %prol.iter1226.next = add i64 %prol.iter1226, 1 ; 2 uses
  %prol.iter1226.cmp.not = icmp eq i64 %prol.iter1226.next, %xtraiter1224
  br i1 %prol.iter1226.cmp.not, label %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i377.prol, !llvm.loop !1624

.lr.ph.i.i.i.i.i.i.i377.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i377.prol, %.lr.ph.i.i.i.i.i.i.i377.preheader
  %.012.i.i.i.i.i.i.i378.unr = phi i64 [ %i.afe, %.lr.ph.i.i.i.i.i.i.i377.preheader ], [ %i.afm, %.lr.ph.i.i.i.i.i.i.i377.prol ]
  %.0811.i.i.i.i.i.i.i379.unr = phi ptr [ %.sroa.0.0.lcssa.i.i333, %.lr.ph.i.i.i.i.i.i.i377.preheader ], [ %i.afl, %.lr.ph.i.i.i.i.i.i.i377.prol ]
  %.0910.i.i.i.i.i.i.i380.unr = phi ptr [ %.0.lcssa.i.i335, %.lr.ph.i.i.i.i.i.i.i377.preheader ], [ %i.afk, %.lr.ph.i.i.i.i.i.i.i377.prol ]
  %.lcssa1131.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i377.preheader ], [ %i.afl, %.lr.ph.i.i.i.i.i.i.i377.prol ]
  %i.afn = icmp ult i64 %i.afe, 4
  br i1 %i.afn, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i336, label %.lr.ph.i.i.i.i.i.i.i377

.lr.ph.i.i.i.i.i.i.i377:                          ; preds = %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i377
  %.012.i.i.i.i.i.i.i378 = phi i64 [ %i.agm, %.lr.ph.i.i.i.i.i.i.i377 ], [ %.012.i.i.i.i.i.i.i378.unr, %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i379 = phi ptr [ %i.agl, %.lr.ph.i.i.i.i.i.i.i377 ], [ %.0811.i.i.i.i.i.i.i379.unr, %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i380 = phi ptr [ %i.agk, %.lr.ph.i.i.i.i.i.i.i377 ], [ %.0910.i.i.i.i.i.i.i380.unr, %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit ] ; 9 uses
  %i.afo = load i64, ptr %.0910.i.i.i.i.i.i.i380, align 8, !tbaa !460
  store i64 %i.afo, ptr %.0811.i.i.i.i.i.i.i379, align 8, !tbaa !619
  %i.afp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 8
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !409
  %i.afr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 8
  store ptr %i.afq, ptr %i.afr, align 8, !tbaa !620
  %i.afs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 16
  %i.aft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 16
  %i.afu = load i64, ptr %i.afs, align 8, !tbaa !460
  store i64 %i.afu, ptr %i.aft, align 8, !tbaa !619
  %i.afv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 24
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !409
  %i.afx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 24
  store ptr %i.afw, ptr %i.afx, align 8, !tbaa !620
  %i.afy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 32
  %i.afz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 32
  %i.aga = load i64, ptr %i.afy, align 8, !tbaa !460
  store i64 %i.aga, ptr %i.afz, align 8, !tbaa !619
  %i.agb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 40
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !409
  %i.agd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 40
  store ptr %i.agc, ptr %i.agd, align 8, !tbaa !620
  %i.age = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 48
  %i.agf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 48
  %i.agg = load i64, ptr %i.age, align 8, !tbaa !460
  store i64 %i.agg, ptr %i.agf, align 8, !tbaa !619
  %i.agh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 56
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !409
  %i.agj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 56
  store ptr %i.agi, ptr %i.agj, align 8, !tbaa !620
  %i.agk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i380, i64 64
  %i.agl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i379, i64 64 ; 2 uses
  %i.agm = add nsw i64 %.012.i.i.i.i.i.i.i378, -4
  %i.agn = icmp sgt i64 %.012.i.i.i.i.i.i.i378, 4
  br i1 %i.agn, label %.lr.ph.i.i.i.i.i.i.i377, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i336, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i336: ; preds = %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i377, %._crit_edge.i.i332
  %.08.lcssa.i.i.i.i.i.i.i337 = phi ptr [ %.sroa.0.0.lcssa.i.i333, %._crit_edge.i.i332 ], [ %.lcssa1131.unr.a, %.lr.ph.i.i.i.i.i.i.i377.prol.loopexit ], [ %i.agl, %.lr.ph.i.i.i.i.i.i.i377 ]
  %i.ago = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i337 to i64 ; 3 uses
  %i.agp = ptrtoint ptr %.sroa.0.0.lcssa.i.i333 to i64
  %i.agq = sub i64 %i.ago, %i.agp
  %i.agr = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i333, i64 %i.agq ; 3 uses
  %i.ags = ptrtoint ptr %i.aeq to i64             ; 2 uses
  %i.agt = ptrtoint ptr %.016.lcssa.i.i334 to i64
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = ashr exact i64 %i.agu, 4               ; 5 uses
  %i.agw = icmp sgt i64 %i.agv, 0
  br i1 %i.agw, label %.lr.ph.i.i.i.i.i19.i.i372.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338

.lr.ph.i.i.i.i.i19.i.i372.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i336
  %xtraiter1227 = and i64 %i.agv, 3               ; 2 uses
  %lcmp.mod1228.not = icmp eq i64 %xtraiter1227, 0
  br i1 %lcmp.mod1228.not, label %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i372.prol

.lr.ph.i.i.i.i.i19.i.i372.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i372.preheader, %.lr.ph.i.i.i.i.i19.i.i372.prol
  %.012.i.i.i.i.i20.i.i373.prol = phi i64 [ %i.ahd, %.lr.ph.i.i.i.i.i19.i.i372.prol ], [ %i.agv, %.lr.ph.i.i.i.i.i19.i.i372.preheader ]
  %.0811.i.i.i.i.i21.i.i374.prol = phi ptr [ %i.ahc, %.lr.ph.i.i.i.i.i19.i.i372.prol ], [ %i.agr, %.lr.ph.i.i.i.i.i19.i.i372.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i375.prol = phi ptr [ %i.ahb, %.lr.ph.i.i.i.i.i19.i.i372.prol ], [ %.016.lcssa.i.i334, %.lr.ph.i.i.i.i.i19.i.i372.preheader ] ; 3 uses
  %prol.iter1229 = phi i64 [ %prol.iter1229.next, %.lr.ph.i.i.i.i.i19.i.i372.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i372.preheader ]
  %i.agx = load i64, ptr %.0910.i.i.i.i.i22.i.i375.prol, align 8, !tbaa !460
  store i64 %i.agx, ptr %.0811.i.i.i.i.i21.i.i374.prol, align 8, !tbaa !619
  %i.agy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375.prol, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !409
  %i.aha = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374.prol, i64 8
  store ptr %i.agz, ptr %i.aha, align 8, !tbaa !620
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375.prol, i64 16 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374.prol, i64 16 ; 3 uses
  %i.ahd = add nsw i64 %.012.i.i.i.i.i20.i.i373.prol, -1 ; 2 uses
  %prol.iter1229.next = add i64 %prol.iter1229, 1 ; 2 uses
  %prol.iter1229.cmp.not = icmp eq i64 %prol.iter1229.next, %xtraiter1227
  br i1 %prol.iter1229.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i372.prol, !llvm.loop !1625

.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i372.prol, %.lr.ph.i.i.i.i.i19.i.i372.preheader
  %.012.i.i.i.i.i20.i.i373.unr = phi i64 [ %i.agv, %.lr.ph.i.i.i.i.i19.i.i372.preheader ], [ %i.ahd, %.lr.ph.i.i.i.i.i19.i.i372.prol ]
  %.0811.i.i.i.i.i21.i.i374.unr = phi ptr [ %i.agr, %.lr.ph.i.i.i.i.i19.i.i372.preheader ], [ %i.ahc, %.lr.ph.i.i.i.i.i19.i.i372.prol ]
  %.0910.i.i.i.i.i22.i.i375.unr = phi ptr [ %.016.lcssa.i.i334, %.lr.ph.i.i.i.i.i19.i.i372.preheader ], [ %i.ahb, %.lr.ph.i.i.i.i.i19.i.i372.prol ]
  %.lcssa1132.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i372.preheader ], [ %i.ahc, %.lr.ph.i.i.i.i.i19.i.i372.prol ]
  %i.ahe = icmp ult i64 %i.agv, 4
  br i1 %i.ahe, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i376, label %.lr.ph.i.i.i.i.i19.i.i372

.lr.ph.i.i.i.i.i19.i.i372:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i372
  %.012.i.i.i.i.i20.i.i373 = phi i64 [ %i.aid, %.lr.ph.i.i.i.i.i19.i.i372 ], [ %.012.i.i.i.i.i20.i.i373.unr, %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i374 = phi ptr [ %i.aic, %.lr.ph.i.i.i.i.i19.i.i372 ], [ %.0811.i.i.i.i.i21.i.i374.unr, %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i375 = phi ptr [ %i.aib, %.lr.ph.i.i.i.i.i19.i.i372 ], [ %.0910.i.i.i.i.i22.i.i375.unr, %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit ] ; 9 uses
  %i.ahf = load i64, ptr %.0910.i.i.i.i.i22.i.i375, align 8, !tbaa !460
  store i64 %i.ahf, ptr %.0811.i.i.i.i.i21.i.i374, align 8, !tbaa !619
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 8
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !409
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 8
  store ptr %i.ahh, ptr %i.ahi, align 8, !tbaa !620
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 16
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 16
  %i.ahl = load i64, ptr %i.ahj, align 8, !tbaa !460
  store i64 %i.ahl, ptr %i.ahk, align 8, !tbaa !619
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 24
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !409
  %i.aho = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 24
  store ptr %i.ahn, ptr %i.aho, align 8, !tbaa !620
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 32
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 32
  %i.ahr = load i64, ptr %i.ahp, align 8, !tbaa !460
  store i64 %i.ahr, ptr %i.ahq, align 8, !tbaa !619
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 40
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !409
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 40
  store ptr %i.aht, ptr %i.ahu, align 8, !tbaa !620
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 48
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 48
  %i.ahx = load i64, ptr %i.ahv, align 8, !tbaa !460
  store i64 %i.ahx, ptr %i.ahw, align 8, !tbaa !619
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 56
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !409
  %i.aia = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 56
  store ptr %i.ahz, ptr %i.aia, align 8, !tbaa !620
  %i.aib = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i375, i64 64
  %i.aic = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i374, i64 64 ; 2 uses
  %i.aid = add nsw i64 %.012.i.i.i.i.i20.i.i373, -4
  %i.aie = icmp sgt i64 %.012.i.i.i.i.i20.i.i373, 4
  br i1 %i.aie, label %.lr.ph.i.i.i.i.i19.i.i372, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i376, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i376: ; preds = %.lr.ph.i.i.i.i.i19.i.i372, %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit
  %.lcssa1132 = phi ptr [ %.lcssa1132.unr, %.lr.ph.i.i.i.i.i19.i.i372.prol.loopexit ], [ %i.aic, %.lr.ph.i.i.i.i.i19.i.i372 ]
  %32 = ptrtoint ptr %.lcssa1132 to i64
  br label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338: ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i376, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i336
  %.08.lcssa.i.i.i.i.i18.i.i339 = phi i64 [ %i.ago, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i336 ], [ %32, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i376 ]
  %i.aif = sub i64 %.08.lcssa.i.i.i.i.i18.i.i339, %i.ago
  %i.aig = getelementptr inbounds i8, ptr %i.agr, i64 %i.aif ; 2 uses
  %i.aih = sub i64 %i.xo, %i.ags
  %i.aii = ashr exact i64 %i.aih, 4               ; 2 uses
  %.not.i340 = icmp slt i64 %i.aii, %i.aeo
  br i1 %.not.i340, label %._crit_edge.i341, label %bb.ap, !llvm.loop !20

._crit_edge.i341:                                 ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449
  %.0.lcssa.i342 = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449 ], [ %i.aeq, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338 ] ; 3 uses
  %.sroa.022.0.lcssa.i343 = phi ptr [ %i.in, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449 ], [ %i.aig, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338 ] ; 2 uses
  %.lcssa63.i344 = phi i64 [ %i.iw, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit449 ], [ %i.aii, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i338 ]
  %.sroa.speculated.i345 = call i64 @llvm.smin.i64(i64 %i.xp, i64 %.lcssa63.i344) ; 2 uses
  %.idx58.i346 = shl nsw i64 %.sroa.speculated.i345, 4
  %i.aij = getelementptr inbounds i8, ptr %.0.lcssa.i342, i64 %.idx58.i346 ; 5 uses
  %i.aik = icmp ne i64 %.sroa.speculated.i345, 0
  %i.ail = icmp ne ptr %i.aij, %i.ju
  %i.aim = and i1 %i.aik, %i.ail
  br i1 %i.aim, label %.lr.ph.i41.i362, label %._crit_edge.i25.i347

.lr.ph.i41.i362:                                  ; preds = %._crit_edge.i341, %bb.av
  %.029.i42.i363 = phi ptr [ %.1.i48.i369, %bb.av ], [ %.0.lcssa.i342, %._crit_edge.i341 ] ; 4 uses
  %.01628.i43.i364 = phi ptr [ %.117.i47.i368, %bb.av ], [ %i.aij, %._crit_edge.i341 ] ; 4 uses
  %.sroa.0.027.i44.i365 = phi ptr [ %i.ait, %bb.av ], [ %.sroa.022.0.lcssa.i343, %._crit_edge.i341 ] ; 3 uses
  %i.ain = load i64, ptr %.01628.i43.i364, align 8, !tbaa !460 ; 2 uses
  %i.aio = load i64, ptr %.029.i42.i363, align 8, !tbaa !460 ; 2 uses
  %i.aip = icmp ult i64 %i.ain, %i.aio
  br i1 %i.aip, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i41.i362
  %i.aiq = getelementptr inbounds nuw i8, ptr %.01628.i43.i364, i64 16
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph.i41.i362
  %i.air = getelementptr inbounds nuw i8, ptr %.029.i42.i363, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink34.i45.i366 = phi i64 [ %i.ain, %bb.at ], [ %i.aio, %bb.au ]
  %.01628.pn.i46.i367 = phi ptr [ %.01628.i43.i364, %bb.at ], [ %.029.i42.i363, %bb.au ]
  %.117.i47.i368 = phi ptr [ %i.aiq, %bb.at ], [ %.01628.i43.i364, %bb.au ] ; 3 uses
  %.1.i48.i369 = phi ptr [ %.029.i42.i363, %bb.at ], [ %i.air, %bb.au ] ; 3 uses
  %.sink.in.i49.i370 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i367, i64 8
  %.sink.i50.i371 = load ptr, ptr %.sink.in.i49.i370, align 8, !tbaa !409
  store i64 %.sink34.i45.i366, ptr %.sroa.0.027.i44.i365, align 8, !tbaa !619
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i365, i64 8
  store ptr %.sink.i50.i371, ptr %i.ais, align 8, !tbaa !620
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i365, i64 16 ; 2 uses
  %i.aiu = icmp ne ptr %.1.i48.i369, %i.aij
  %i.aiv = icmp ne ptr %.117.i47.i368, %i.ju
  %i.aiw = select i1 %i.aiu, i1 %i.aiv, i1 false
  br i1 %i.aiw, label %.lr.ph.i41.i362, label %._crit_edge.i25.i347, !llvm.loop !19

._crit_edge.i25.i347:                             ; preds = %bb.av, %._crit_edge.i341
  %.sroa.0.0.lcssa.i26.i348 = phi ptr [ %.sroa.022.0.lcssa.i343, %._crit_edge.i341 ], [ %i.ait, %bb.av ] ; 5 uses
  %.016.lcssa.i27.i349 = phi ptr [ %i.aij, %._crit_edge.i341 ], [ %.117.i47.i368, %bb.av ] ; 3 uses
  %.0.lcssa.i28.i350 = phi ptr [ %.0.lcssa.i342, %._crit_edge.i341 ], [ %.1.i48.i369, %bb.av ] ; 3 uses
  %i.aix = ptrtoint ptr %i.aij to i64
  %i.aiy = ptrtoint ptr %.0.lcssa.i28.i350 to i64
  %i.aiz = sub i64 %i.aix, %i.aiy
  %i.aja = ashr exact i64 %i.aiz, 4               ; 5 uses
  %i.ajb = icmp sgt i64 %i.aja, 0
  br i1 %i.ajb, label %.lr.ph.i.i.i.i.i.i37.i358.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i351

.lr.ph.i.i.i.i.i.i37.i358.preheader:              ; preds = %._crit_edge.i25.i347
  %xtraiter1230 = and i64 %i.aja, 3               ; 2 uses
  %lcmp.mod1231.not = icmp eq i64 %xtraiter1230, 0
  br i1 %lcmp.mod1231.not, label %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i358.prol

.lr.ph.i.i.i.i.i.i37.i358.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i37.i358.preheader, %.lr.ph.i.i.i.i.i.i37.i358.prol
  %.012.i.i.i.i.i.i38.i359.prol = phi i64 [ %i.aji, %.lr.ph.i.i.i.i.i.i37.i358.prol ], [ %i.aja, %.lr.ph.i.i.i.i.i.i37.i358.preheader ]
  %.0811.i.i.i.i.i.i39.i360.prol = phi ptr [ %i.ajh, %.lr.ph.i.i.i.i.i.i37.i358.prol ], [ %.sroa.0.0.lcssa.i26.i348, %.lr.ph.i.i.i.i.i.i37.i358.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i361.prol = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i.i37.i358.prol ], [ %.0.lcssa.i28.i350, %.lr.ph.i.i.i.i.i.i37.i358.preheader ] ; 3 uses
  %prol.iter1232 = phi i64 [ %prol.iter1232.next, %.lr.ph.i.i.i.i.i.i37.i358.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i358.preheader ]
  %i.ajc = load i64, ptr %.0910.i.i.i.i.i.i40.i361.prol, align 8, !tbaa !460
  store i64 %i.ajc, ptr %.0811.i.i.i.i.i.i39.i360.prol, align 8, !tbaa !619
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361.prol, i64 8
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !409
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360.prol, i64 8
  store ptr %i.aje, ptr %i.ajf, align 8, !tbaa !620
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361.prol, i64 16 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360.prol, i64 16 ; 3 uses
  %i.aji = add nsw i64 %.012.i.i.i.i.i.i38.i359.prol, -1 ; 2 uses
  %prol.iter1232.next = add i64 %prol.iter1232, 1 ; 2 uses
  %prol.iter1232.cmp.not = icmp eq i64 %prol.iter1232.next, %xtraiter1230
  br i1 %prol.iter1232.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i358.prol, !llvm.loop !1626

.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i37.i358.prol, %.lr.ph.i.i.i.i.i.i37.i358.preheader
  %.012.i.i.i.i.i.i38.i359.unr = phi i64 [ %i.aja, %.lr.ph.i.i.i.i.i.i37.i358.preheader ], [ %i.aji, %.lr.ph.i.i.i.i.i.i37.i358.prol ]
  %.0811.i.i.i.i.i.i39.i360.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i348, %.lr.ph.i.i.i.i.i.i37.i358.preheader ], [ %i.ajh, %.lr.ph.i.i.i.i.i.i37.i358.prol ]
  %.0910.i.i.i.i.i.i40.i361.unr = phi ptr [ %.0.lcssa.i28.i350, %.lr.ph.i.i.i.i.i.i37.i358.preheader ], [ %i.ajg, %.lr.ph.i.i.i.i.i.i37.i358.prol ]
  %.lcssa1137.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i358.preheader ], [ %i.ajh, %.lr.ph.i.i.i.i.i.i37.i358.prol ]
  %i.ajj = icmp ult i64 %i.aja, 4
  br i1 %i.ajj, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i351, label %.lr.ph.i.i.i.i.i.i37.i358

.lr.ph.i.i.i.i.i.i37.i358:                        ; preds = %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i358
  %.012.i.i.i.i.i.i38.i359 = phi i64 [ %i.aki, %.lr.ph.i.i.i.i.i.i37.i358 ], [ %.012.i.i.i.i.i.i38.i359.unr, %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i360 = phi ptr [ %i.akh, %.lr.ph.i.i.i.i.i.i37.i358 ], [ %.0811.i.i.i.i.i.i39.i360.unr, %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i361 = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i.i37.i358 ], [ %.0910.i.i.i.i.i.i40.i361.unr, %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit ] ; 9 uses
  %i.ajk = load i64, ptr %.0910.i.i.i.i.i.i40.i361, align 8, !tbaa !460
  store i64 %i.ajk, ptr %.0811.i.i.i.i.i.i39.i360, align 8, !tbaa !619
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !409
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 8
  store ptr %i.ajm, ptr %i.ajn, align 8, !tbaa !620
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 16
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 16
  %i.ajq = load i64, ptr %i.ajo, align 8, !tbaa !460
  store i64 %i.ajq, ptr %i.ajp, align 8, !tbaa !619
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 24
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !409
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 24
  store ptr %i.ajs, ptr %i.ajt, align 8, !tbaa !620
  %i.aju = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 32
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 32
  %i.ajw = load i64, ptr %i.aju, align 8, !tbaa !460
  store i64 %i.ajw, ptr %i.ajv, align 8, !tbaa !619
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 40
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !409
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 40
  store ptr %i.ajy, ptr %i.ajz, align 8, !tbaa !620
  %i.aka = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 48
  %i.akb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 48
  %i.akc = load i64, ptr %i.aka, align 8, !tbaa !460
  store i64 %i.akc, ptr %i.akb, align 8, !tbaa !619
  %i.akd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 56
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !409
  %i.akf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 56
  store ptr %i.ake, ptr %i.akf, align 8, !tbaa !620
  %i.akg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i361, i64 64
  %i.akh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i360, i64 64 ; 2 uses
  %i.aki = add nsw i64 %.012.i.i.i.i.i.i38.i359, -4
  %i.akj = icmp sgt i64 %.012.i.i.i.i.i.i38.i359, 4
  br i1 %i.akj, label %.lr.ph.i.i.i.i.i.i37.i358, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i351, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i351: ; preds = %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i358, %._crit_edge.i25.i347
  %.08.lcssa.i.i.i.i.i.i30.i352 = phi ptr [ %.sroa.0.0.lcssa.i26.i348, %._crit_edge.i25.i347 ], [ %.lcssa1137.unr, %.lr.ph.i.i.i.i.i.i37.i358.prol.loopexit ], [ %i.akh, %.lr.ph.i.i.i.i.i.i37.i358 ]
  %i.akk = ptrtoint ptr %.016.lcssa.i27.i349 to i64
  %i.akl = sub i64 %i.xo, %i.akk
  %i.akm = ashr exact i64 %i.akl, 4               ; 5 uses
  %i.akn = icmp sgt i64 %i.akm, 0
  br i1 %i.akn, label %.lr.ph.i.i.i.i.i19.i32.preheader.i353, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit381

.lr.ph.i.i.i.i.i19.i32.preheader.i353:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i351
  %i.ako = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i352 to i64
  %i.akp = ptrtoint ptr %.sroa.0.0.lcssa.i26.i348 to i64
  %i.akq = sub i64 %i.ako, %i.akp
  %i.akr = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i348, i64 %i.akq ; 2 uses
  %xtraiter1233 = and i64 %i.akm, 3               ; 2 uses
  %lcmp.mod1234.not = icmp eq i64 %xtraiter1233, 0
  br i1 %lcmp.mod1234.not, label %.lr.ph.i.i.i.i.i19.i32.i354.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i354.prol

.lr.ph.i.i.i.i.i19.i32.i354.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i353, %.lr.ph.i.i.i.i.i19.i32.i354.prol
  %.012.i.i.i.i.i20.i33.i355.prol = phi i64 [ %i.aky, %.lr.ph.i.i.i.i.i19.i32.i354.prol ], [ %i.akm, %.lr.ph.i.i.i.i.i19.i32.preheader.i353 ]
  %.0811.i.i.i.i.i21.i34.i356.prol = phi ptr [ %i.akx, %.lr.ph.i.i.i.i.i19.i32.i354.prol ], [ %i.akr, %.lr.ph.i.i.i.i.i19.i32.preheader.i353 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i357.prol = phi ptr [ %i.akw, %.lr.ph.i.i.i.i.i19.i32.i354.prol ], [ %.016.lcssa.i27.i349, %.lr.ph.i.i.i.i.i19.i32.preheader.i353 ] ; 3 uses
  %prol.iter1235 = phi i64 [ %prol.iter1235.next, %.lr.ph.i.i.i.i.i19.i32.i354.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i353 ]
  %i.aks = load i64, ptr %.0910.i.i.i.i.i22.i35.i357.prol, align 8, !tbaa !460
  store i64 %i.aks, ptr %.0811.i.i.i.i.i21.i34.i356.prol, align 8, !tbaa !619
  %i.akt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i357.prol, i64 8
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !409
  %i.akv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i356.prol, i64 8
  store ptr %i.aku, ptr %i.akv, align 8, !tbaa !620
  %i.akw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i357.prol, i64 16 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i356.prol, i64 16 ; 2 uses
  %i.aky = add nsw i64 %.012.i.i.i.i.i20.i33.i355.prol, -1 ; 2 uses
  %prol.iter1235.next = add i64 %prol.iter1235, 1 ; 2 uses
  %prol.iter1235.cmp.not = icmp eq i64 %prol.iter1235.next, %xtraiter1233
  br i1 %prol.iter1235.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i354.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i354.prol, !llvm.loop !1627

.lr.ph.i.i.i.i.i19.i32.i354.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i354.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i353
  %.012.i.i.i.i.i20.i33.i355.unr = phi i64 [ %i.akm, %.lr.ph.i.i.i.i.i19.i32.preheader.i353 ], [ %i.aky, %.lr.ph.i.i.i.i.i19.i32.i354.prol ]
  %.0811.i.i.i.i.i21.i34.i356.unr = phi ptr [ %i.akr, %.lr.ph.i.i.i.i.i19.i32.preheader.i353 ], [ %i.akx, %.lr.ph.i.i.i.i.i19.i32.i354.prol ]
  %.0910.i.i.i.i.i22.i35.i357.unr = phi ptr [ %.016.lcssa.i27.i349, %.lr.ph.i.i.i.i.i19.i32.preheader.i353 ], [ %i.akw, %.lr.ph.i.i.i.i.i19.i32.i354.prol ]
  %i.akz = icmp ult i64 %i.akm, 4
  br i1 %i.akz, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit381, label %.lr.ph.i.i.i.i.i19.i32.i354

.lr.ph.i.i.i.i.i19.i32.i354:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i354.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i354
  %.012.i.i.i.i.i20.i33.i355 = phi i64 [ %i.aly, %.lr.ph.i.i.i.i.i19.i32.i354 ], [ %.012.i.i.i.i.i20.i33.i355.unr, %.lr.ph.i.i.i.i.i19.i32.i354.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i356 = phi ptr [ %i.alx, %.lr.ph.i.i.i.i.i19.i32.i354 ], [ %.0811.i.i.i.i.i21.i34.i356.unr, %.lr.ph.i.i.i.i.i19.i32.i354.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i357 = phi ptr [ %i.alw, %.lr.ph.i.i.i.i.i19.i32.i354 ], [ %.0910.i.i.i.i.i22.i35.i357.unr, %.lr.ph.i.i.i.i.i19.i32.i354.prol.loopexit ] ; 9 uses
  %i.ala = load i64, ptr %.0910.i.i.i.i.i22.i35.i357, align 8, !tbaa !460
  store i64 %i.ala, ptr %.0811.i.i.i.i.i21.i34.i356, align 8, !tbaa !619
  %i.alb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i357, i64 8
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !409
  %i.ald = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i356, i64 8
  store ptr %i.alc, ptr %i.ald, align 8, !tbaa !620
  %i.ale = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i357, i64 16
  %i.alf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i356, i64 16
  %i.alg = load i64, ptr %i.ale, align 8, !tbaa !460
  store i64 %i.alg, ptr %i.alf, align 8, !tbaa !619
  %i.alh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i357, i64 24
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !409
  %i.alj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i356, i64 24
  store ptr %i.ali, ptr %i.alj, align 8, !tbaa !620
  %i.alk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i357, i64 32
  %i.all = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i356, i64 32
  %i.alm = load i64, ptr %i.alk, align 8, !tbaa !460
  store i64 %i.alm, ptr %i.all, align 8, !tbaa !619
  %i.aln = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i357, i64 40
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !409
  %i.alp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i356, i64 40
end_hunk_0
begin_hunk_1_@_ZN4llvm28MemProfContextDisambiguation10performICPERNS_6ModuleENS_8ArrayRefINS_12CallsiteInfoEEENS3_ISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISA_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISH_EEEENS3_INS0_17ICallAnalysisDataEEERNS_25OptimizationRemarkEmitterE:bb.a
.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.bfv, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.bfn, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.bfu, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.bft, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter1280 = phi i64 [ %prol.iter1280.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.bfp = load i64, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !460
  store i64 %i.bfp, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !619
  %i.bfq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !409
  %i.bfs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.bfr, ptr %i.bfs, align 8, !tbaa !620
  %i.bft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.bfv = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter1280.next = add i64 %prol.iter1280, 1 ; 2 uses
  %prol.iter1280.cmp.not = icmp eq i64 %prol.iter1280.next, %xtraiter1278
  br i1 %prol.iter1280.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !1638

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.bfn, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bfv, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bfu, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bft, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.bfw = icmp ult i64 %i.bfn, 4
  br i1 %i.bfw, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.bgv, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.bgu, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.bgt, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.bfx = load i64, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !460
  store i64 %i.bfx, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !619
  %i.bfy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !409
  %i.bga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.bfz, ptr %i.bga, align 8, !tbaa !620
  %i.bgb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.bgc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.bgd = load i64, ptr %i.bgb, align 8, !tbaa !460
  store i64 %i.bgd, ptr %i.bgc, align 8, !tbaa !619
  %i.bge = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !409
  %i.bgg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.bgf, ptr %i.bgg, align 8, !tbaa !620
  %i.bgh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.bgi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.bgj = load i64, ptr %i.bgh, align 8, !tbaa !460
  store i64 %i.bgj, ptr %i.bgi, align 8, !tbaa !619
  %i.bgk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !409
  %i.bgm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.bgl, ptr %i.bgm, align 8, !tbaa !620
  %i.bgn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.bgp = load i64, ptr %i.bgn, align 8, !tbaa !460
  store i64 %i.bgp, ptr %i.bgo, align 8, !tbaa !619
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !409
  %i.bgs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.bgr, ptr %i.bgs, align 8, !tbaa !620
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.bgu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.bgv = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.bgw = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.bgw, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, !llvm.loop !17

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.bgx = shl nsw i64 %.022.i16.i, 2             ; 4 uses
  %.not65.i = icmp slt i64 %i.amc, %i.bgx
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.idx.i = shl nsw i64 %.022.i16.i, 5            ; 2 uses
  %.idx56.i = shl nsw i64 %.022.i16.i, 6          ; 2 uses
  %.not57.i = icmp eq i64 %.idx.i, %.idx56.i
  br label %bb.bx

bb.bx:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %.lr.ph.i267
  %.sroa.022.067.i = phi ptr [ %i.js, %.lr.ph.i267 ], [ %i.bkp, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.066.i = phi ptr [ %.sroa.10.0.i, %.lr.ph.i267 ], [ %i.bgz, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 4 uses
  %i.bgy = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i ; 4 uses
  %i.bgz = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br i1 %.not57.i, label %._crit_edge.i.i, label %.lr.ph.i.i268

.lr.ph.i.i268:                                    ; preds = %bb.bx, %bb.ca
  %.029.i.i = phi ptr [ %.1.i.i269, %bb.ca ], [ %.066.i, %bb.bx ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.ca ], [ %i.bgy, %bb.bx ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.bhg, %bb.ca ], [ %.sroa.022.067.i, %bb.bx ] ; 3 uses
  %i.bha = load i64, ptr %.01628.i.i, align 8, !tbaa !460 ; 2 uses
  %i.bhb = load i64, ptr %.029.i.i, align 8, !tbaa !460 ; 2 uses
  %i.bhc = icmp ult i64 %i.bha, %i.bhb
  br i1 %i.bhc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i.i268
  %i.bhd = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.ca

bb.bz:                                            ; preds = %.lr.ph.i.i268
  %i.bhe = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink34.i.i = phi i64 [ %i.bha, %bb.by ], [ %i.bhb, %bb.bz ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.by ], [ %.029.i.i, %bb.bz ]
  %.117.i.i = phi ptr [ %i.bhd, %bb.by ], [ %.01628.i.i, %bb.bz ] ; 3 uses
  %.1.i.i269 = phi ptr [ %.029.i.i, %bb.by ], [ %i.bhe, %bb.bz ] ; 3 uses
  %.sink.in.i.i270 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 8
  %.sink.i.i271 = load ptr, ptr %.sink.in.i.i270, align 8, !tbaa !409
  store i64 %.sink34.i.i, ptr %.sroa.0.027.i.i, align 8, !tbaa !619
  %i.bhf = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.sink.i.i271, ptr %i.bhf, align 8, !tbaa !620
  %i.bhg = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.bhh = icmp ne ptr %.1.i.i269, %i.bgy
  %i.bhi = icmp ne ptr %.117.i.i, %i.bgz
  %i.bhj = select i1 %i.bhh, i1 %i.bhi, i1 false
  br i1 %i.bhj, label %.lr.ph.i.i268, label %._crit_edge.i.i, !llvm.loop !19

._crit_edge.i.i:                                  ; preds = %bb.ca, %bb.bx
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.067.i, %bb.bx ], [ %i.bhg, %bb.ca ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.bgy, %bb.bx ], [ %.117.i.i, %bb.ca ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.066.i, %bb.bx ], [ %.1.i.i269, %bb.ca ] ; 3 uses
  %i.bhk = ptrtoint ptr %i.bgy to i64
  %i.bhl = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bhm = sub i64 %i.bhk, %i.bhl
  %i.bhn = ashr exact i64 %i.bhm, 4               ; 5 uses
  %i.bho = icmp sgt i64 %i.bhn, 0
  br i1 %i.bho, label %.lr.ph.i.i.i.i.i.i.i274.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i274.preheader:                ; preds = %._crit_edge.i.i
  %xtraiter1281 = and i64 %i.bhn, 3               ; 2 uses
  %lcmp.mod1282.not = icmp eq i64 %xtraiter1281, 0
  br i1 %lcmp.mod1282.not, label %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i274.prol

.lr.ph.i.i.i.i.i.i.i274.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i274.preheader, %.lr.ph.i.i.i.i.i.i.i274.prol
  %.012.i.i.i.i.i.i.i275.prol = phi i64 [ %i.bhv, %.lr.ph.i.i.i.i.i.i.i274.prol ], [ %i.bhn, %.lr.ph.i.i.i.i.i.i.i274.preheader ]
  %.0811.i.i.i.i.i.i.i276.prol = phi ptr [ %i.bhu, %.lr.ph.i.i.i.i.i.i.i274.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i274.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i277.prol = phi ptr [ %i.bht, %.lr.ph.i.i.i.i.i.i.i274.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i274.preheader ] ; 3 uses
  %prol.iter1283 = phi i64 [ %prol.iter1283.next, %.lr.ph.i.i.i.i.i.i.i274.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i274.preheader ]
  %i.bhp = load i64, ptr %.0910.i.i.i.i.i.i.i277.prol, align 8, !tbaa !460
  store i64 %i.bhp, ptr %.0811.i.i.i.i.i.i.i276.prol, align 8, !tbaa !619
  %i.bhq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277.prol, i64 8
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !409
  %i.bhs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276.prol, i64 8
  store ptr %i.bhr, ptr %i.bhs, align 8, !tbaa !620
  %i.bht = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277.prol, i64 16 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276.prol, i64 16 ; 3 uses
  %i.bhv = add nsw i64 %.012.i.i.i.i.i.i.i275.prol, -1 ; 2 uses
  %prol.iter1283.next = add i64 %prol.iter1283, 1 ; 2 uses
  %prol.iter1283.cmp.not = icmp eq i64 %prol.iter1283.next, %xtraiter1281
  br i1 %prol.iter1283.cmp.not, label %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i274.prol, !llvm.loop !1639

.lr.ph.i.i.i.i.i.i.i274.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i274.prol, %.lr.ph.i.i.i.i.i.i.i274.preheader
  %.012.i.i.i.i.i.i.i275.unr = phi i64 [ %i.bhn, %.lr.ph.i.i.i.i.i.i.i274.preheader ], [ %i.bhv, %.lr.ph.i.i.i.i.i.i.i274.prol ]
  %.0811.i.i.i.i.i.i.i276.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i274.preheader ], [ %i.bhu, %.lr.ph.i.i.i.i.i.i.i274.prol ]
  %.0910.i.i.i.i.i.i.i277.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i274.preheader ], [ %i.bht, %.lr.ph.i.i.i.i.i.i.i274.prol ]
  %.lcssa1148.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i274.preheader ], [ %i.bhu, %.lr.ph.i.i.i.i.i.i.i274.prol ]
  %i.bhw = icmp ult i64 %i.bhn, 4
  br i1 %i.bhw, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i274

.lr.ph.i.i.i.i.i.i.i274:                          ; preds = %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i274
  %.012.i.i.i.i.i.i.i275 = phi i64 [ %i.biv, %.lr.ph.i.i.i.i.i.i.i274 ], [ %.012.i.i.i.i.i.i.i275.unr, %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i276 = phi ptr [ %i.biu, %.lr.ph.i.i.i.i.i.i.i274 ], [ %.0811.i.i.i.i.i.i.i276.unr, %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i277 = phi ptr [ %i.bit, %.lr.ph.i.i.i.i.i.i.i274 ], [ %.0910.i.i.i.i.i.i.i277.unr, %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit ] ; 9 uses
  %i.bhx = load i64, ptr %.0910.i.i.i.i.i.i.i277, align 8, !tbaa !460
  store i64 %i.bhx, ptr %.0811.i.i.i.i.i.i.i276, align 8, !tbaa !619
  %i.bhy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !409
  %i.bia = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 8
  store ptr %i.bhz, ptr %i.bia, align 8, !tbaa !620
  %i.bib = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 16
  %i.bic = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 16
  %i.bid = load i64, ptr %i.bib, align 8, !tbaa !460
  store i64 %i.bid, ptr %i.bic, align 8, !tbaa !619
  %i.bie = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 24
  %i.bif = load ptr, ptr %i.bie, align 8, !tbaa !409
  %i.big = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 24
  store ptr %i.bif, ptr %i.big, align 8, !tbaa !620
  %i.bih = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 32
  %i.bii = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 32
  %i.bij = load i64, ptr %i.bih, align 8, !tbaa !460
  store i64 %i.bij, ptr %i.bii, align 8, !tbaa !619
  %i.bik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 40
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !409
  %i.bim = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 40
  store ptr %i.bil, ptr %i.bim, align 8, !tbaa !620
  %i.bin = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 48
  %i.bio = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 48
  %i.bip = load i64, ptr %i.bin, align 8, !tbaa !460
  store i64 %i.bip, ptr %i.bio, align 8, !tbaa !619
  %i.biq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 56
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !409
  %i.bis = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 56
  store ptr %i.bir, ptr %i.bis, align 8, !tbaa !620
  %i.bit = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i277, i64 64
  %i.biu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i276, i64 64 ; 2 uses
  %i.biv = add nsw i64 %.012.i.i.i.i.i.i.i275, -4
  %i.biw = icmp sgt i64 %.012.i.i.i.i.i.i.i275, 4
  br i1 %i.biw, label %.lr.ph.i.i.i.i.i.i.i274, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i274, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa1148.unr.a, %.lr.ph.i.i.i.i.i.i.i274.prol.loopexit ], [ %i.biu, %.lr.ph.i.i.i.i.i.i.i274 ]
  %i.bix = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.biy = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.biz = sub i64 %i.bix, %i.biy
  %i.bja = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.biz ; 3 uses
  %i.bjb = ptrtoint ptr %i.bgz to i64             ; 2 uses
  %i.bjc = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.bjd = sub i64 %i.bjb, %i.bjc
  %i.bje = ashr exact i64 %i.bjd, 4               ; 5 uses
  %i.bjf = icmp sgt i64 %i.bje, 0
  br i1 %i.bjf, label %.lr.ph.i.i.i.i.i19.i.i273.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i273.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %xtraiter1284 = and i64 %i.bje, 3               ; 2 uses
  %lcmp.mod1285.not = icmp eq i64 %xtraiter1284, 0
  br i1 %lcmp.mod1285.not, label %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i273.prol

.lr.ph.i.i.i.i.i19.i.i273.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i273.preheader, %.lr.ph.i.i.i.i.i19.i.i273.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.bjm, %.lr.ph.i.i.i.i.i19.i.i273.prol ], [ %i.bje, %.lr.ph.i.i.i.i.i19.i.i273.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.bjl, %.lr.ph.i.i.i.i.i19.i.i273.prol ], [ %i.bja, %.lr.ph.i.i.i.i.i19.i.i273.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.bjk, %.lr.ph.i.i.i.i.i19.i.i273.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i273.preheader ] ; 3 uses
  %prol.iter1286 = phi i64 [ %prol.iter1286.next, %.lr.ph.i.i.i.i.i19.i.i273.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i273.preheader ]
  %i.bjg = load i64, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !460
  store i64 %i.bjg, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !619
  %i.bjh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.bji = load ptr, ptr %i.bjh, align 8, !tbaa !409
  %i.bjj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.bji, ptr %i.bjj, align 8, !tbaa !620
  %i.bjk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.bjm = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter1286.next = add i64 %prol.iter1286, 1 ; 2 uses
  %prol.iter1286.cmp.not = icmp eq i64 %prol.iter1286.next, %xtraiter1284
  br i1 %prol.iter1286.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i273.prol, !llvm.loop !1640

.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i273.prol, %.lr.ph.i.i.i.i.i19.i.i273.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.bje, %.lr.ph.i.i.i.i.i19.i.i273.preheader ], [ %i.bjm, %.lr.ph.i.i.i.i.i19.i.i273.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.bja, %.lr.ph.i.i.i.i.i19.i.i273.preheader ], [ %i.bjl, %.lr.ph.i.i.i.i.i19.i.i273.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i273.preheader ], [ %i.bjk, %.lr.ph.i.i.i.i.i19.i.i273.prol ]
  %.lcssa1149.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i273.preheader ], [ %i.bjl, %.lr.ph.i.i.i.i.i19.i.i273.prol ]
  %i.bjn = icmp ult i64 %i.bje, 4
  br i1 %i.bjn, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i, label %.lr.ph.i.i.i.i.i19.i.i273

.lr.ph.i.i.i.i.i19.i.i273:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i273
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.bkm, %.lr.ph.i.i.i.i.i19.i.i273 ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.bkl, %.lr.ph.i.i.i.i.i19.i.i273 ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.bkk, %.lr.ph.i.i.i.i.i19.i.i273 ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit ] ; 9 uses
  %i.bjo = load i64, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !460
  store i64 %i.bjo, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !619
  %i.bjp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !409
  %i.bjr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.bjq, ptr %i.bjr, align 8, !tbaa !620
  %i.bjs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.bjt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.bju = load i64, ptr %i.bjs, align 8, !tbaa !460
  store i64 %i.bju, ptr %i.bjt, align 8, !tbaa !619
  %i.bjv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !409
  %i.bjx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.bjw, ptr %i.bjx, align 8, !tbaa !620
  %i.bjy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.bjz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.bka = load i64, ptr %i.bjy, align 8, !tbaa !460
  store i64 %i.bka, ptr %i.bjz, align 8, !tbaa !619
  %i.bkb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !409
  %i.bkd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.bkc, ptr %i.bkd, align 8, !tbaa !620
  %i.bke = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.bkf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.bkg = load i64, ptr %i.bke, align 8, !tbaa !460
  store i64 %i.bkg, ptr %i.bkf, align 8, !tbaa !619
  %i.bkh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !409
  %i.bkj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.bki, ptr %i.bkj, align 8, !tbaa !620
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.bkl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.bkm = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.bkn = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.bkn, label %.lr.ph.i.i.i.i.i19.i.i273, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i273, %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit
  %.lcssa1149 = phi ptr [ %.lcssa1149.unr, %.lr.ph.i.i.i.i.i19.i.i273.prol.loopexit ], [ %i.bkl, %.lr.ph.i.i.i.i.i19.i.i273 ]
  %33 = ptrtoint ptr %.lcssa1149 to i64
  br label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i: ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.bix, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %33, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i ]
  %i.bko = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.bix
  %i.bkp = getelementptr inbounds i8, ptr %i.bja, i64 %i.bko ; 2 uses
  %i.bkq = sub i64 %i.azx, %i.bjb
  %i.bkr = ashr exact i64 %i.bkq, 4               ; 2 uses
  %.not.i272 = icmp slt i64 %i.bkr, %i.bgx
  br i1 %.not.i272, label %._crit_edge.i, label %bb.bx, !llvm.loop !20

._crit_edge.i:                                    ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bgz, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %i.js, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bkp, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.amc, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bkr, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ]
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.azy, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = shl nsw i64 %.sroa.speculated.i, 4
  %i.bks = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %.idx58.i ; 5 uses
  %i.bkt = icmp ne i64 %.sroa.speculated.i, 0
  %i.bku = icmp ne ptr %i.bks, %i.amd
  %i.bkv = and i1 %i.bkt, %i.bku
  br i1 %i.bkv, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i, %bb.cd
  %.029.i42.i = phi ptr [ %.1.i48.i, %bb.cd ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i47.i, %bb.cd ], [ %i.bks, %._crit_edge.i ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.blc, %bb.cd ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bkw = load i64, ptr %.01628.i43.i, align 8, !tbaa !460 ; 2 uses
  %i.bkx = load i64, ptr %.029.i42.i, align 8, !tbaa !460 ; 2 uses
  %i.bky = icmp ult i64 %i.bkw, %i.bkx
  br i1 %i.bky, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i41.i
  %i.bkz = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.cd

bb.cc:                                            ; preds = %.lr.ph.i41.i
  %i.bla = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink34.i45.i = phi i64 [ %i.bkw, %bb.cb ], [ %i.bkx, %bb.cc ]
  %.01628.pn.i46.i = phi ptr [ %.01628.i43.i, %bb.cb ], [ %.029.i42.i, %bb.cc ]
  %.117.i47.i = phi ptr [ %i.bkz, %bb.cb ], [ %.01628.i43.i, %bb.cc ] ; 3 uses
  %.1.i48.i = phi ptr [ %.029.i42.i, %bb.cb ], [ %i.bla, %bb.cc ] ; 3 uses
  %.sink.in.i49.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i, i64 8
  %.sink.i50.i = load ptr, ptr %.sink.in.i49.i, align 8, !tbaa !409
  store i64 %.sink34.i45.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !619
  %i.blb = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.sink.i50.i, ptr %i.blb, align 8, !tbaa !620
  %i.blc = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.bld = icmp ne ptr %.1.i48.i, %i.bks
  %i.ble = icmp ne ptr %.117.i47.i, %i.amd
  %i.blf = select i1 %i.bld, i1 %i.ble, i1 false
  br i1 %i.blf, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !19

._crit_edge.i25.i:                                ; preds = %bb.cd, %._crit_edge.i
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i ], [ %i.blc, %bb.cd ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.bks, %._crit_edge.i ], [ %.117.i47.i, %bb.cd ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.1.i48.i, %bb.cd ] ; 3 uses
  %i.blg = ptrtoint ptr %i.bks to i64
  %i.blh = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.bli = sub i64 %i.blg, %i.blh
  %i.blj = ashr exact i64 %i.bli, 4               ; 5 uses
  %i.blk = icmp sgt i64 %i.blj, 0
  br i1 %i.blk, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter1287 = and i64 %i.blj, 3               ; 2 uses
  %lcmp.mod1288.not = icmp eq i64 %xtraiter1287, 0
  br i1 %lcmp.mod1288.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.blr, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.blj, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.blq, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.blp, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter1289 = phi i64 [ %prol.iter1289.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.bll = load i64, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !460
  store i64 %i.bll, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !619
  %i.blm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !409
  %i.blo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.bln, ptr %i.blo, align 8, !tbaa !620
  %i.blp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.blr = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter1289.next = add i64 %prol.iter1289, 1 ; 2 uses
  %prol.iter1289.cmp.not = icmp eq i64 %prol.iter1289.next, %xtraiter1287
  br i1 %prol.iter1289.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !1641

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.blj, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.blr, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.blq, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.blp, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa1154.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.blq, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.bls = icmp ult i64 %i.blj, 4
  br i1 %i.bls, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.bmr, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.bmq, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.bmp, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.blt = load i64, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !460
  store i64 %i.blt, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !619
  %i.blu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !409
  %i.blw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.blv, ptr %i.blw, align 8, !tbaa !620
  %i.blx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.bly = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.blz = load i64, ptr %i.blx, align 8, !tbaa !460
  store i64 %i.blz, ptr %i.bly, align 8, !tbaa !619
  %i.bma = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !409
  %i.bmc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.bmb, ptr %i.bmc, align 8, !tbaa !620
  %i.bmd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.bme = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.bmf = load i64, ptr %i.bmd, align 8, !tbaa !460
  store i64 %i.bmf, ptr %i.bme, align 8, !tbaa !619
  %i.bmg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !409
  %i.bmi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.bmh, ptr %i.bmi, align 8, !tbaa !620
  %i.bmj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.bmk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.bml = load i64, ptr %i.bmj, align 8, !tbaa !460
  store i64 %i.bml, ptr %i.bmk, align 8, !tbaa !619
  %i.bmm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.bmn = load ptr, ptr %i.bmm, align 8, !tbaa !409
  %i.bmo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.bmn, ptr %i.bmo, align 8, !tbaa !620
  %i.bmp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.bmq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.bmr = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.bms = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.bms, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa1154.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.bmq, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.bmt = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.bmu = sub i64 %i.azx, %i.bmt
  %i.bmv = ashr exact i64 %i.bmu, 4               ; 5 uses
  %i.bmw = icmp sgt i64 %i.bmv, 0
  br i1 %i.bmw, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.bmx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.bmy = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.bmz = sub i64 %i.bmx, %i.bmy
  %i.bna = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.bmz ; 2 uses
  %xtraiter1290 = and i64 %i.bmv, 3               ; 2 uses
  %lcmp.mod1291.not = icmp eq i64 %xtraiter1290, 0
  br i1 %lcmp.mod1291.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.bnh, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bmv, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.bng, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bna, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.bnf, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter1292 = phi i64 [ %prol.iter1292.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.bnb = load i64, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 8, !tbaa !460
  store i64 %i.bnb, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !619
  %i.bnc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.bnd = load ptr, ptr %i.bnc, align 8, !tbaa !409
  %i.bne = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.bnd, ptr %i.bne, align 8, !tbaa !620
  %i.bnf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.bnh = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter1292.next = add i64 %prol.iter1292, 1 ; 2 uses
  %prol.iter1292.cmp.not = icmp eq i64 %prol.iter1292.next, %xtraiter1290
  br i1 %prol.iter1292.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !1642

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.bmv, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bnh, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.bna, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bng, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bnf, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.bni = icmp ult i64 %i.bmv, 4
  br i1 %i.bni, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.boh, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.bog, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.bof, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.bnj = load i64, ptr %.0910.i.i.i.i.i22.i35.i, align 8, !tbaa !460
  store i64 %i.bnj, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !619
  %i.bnk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !409
  %i.bnm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.bnl, ptr %i.bnm, align 8, !tbaa !620
  %i.bnn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.bno = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.bnp = load i64, ptr %i.bnn, align 8, !tbaa !460
  store i64 %i.bnp, ptr %i.bno, align 8, !tbaa !619
  %i.bnq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !409
  %i.bns = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.bnr, ptr %i.bns, align 8, !tbaa !620
  %i.bnt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.bnu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.bnv = load i64, ptr %i.bnt, align 8, !tbaa !460
  store i64 %i.bnv, ptr %i.bnu, align 8, !tbaa !619
  %i.bnw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !409
  %i.bny = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
end_hunk_1
begin_hunk_2_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !620
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !3101

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
  %i.fd = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !460
  store i64 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !619
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !409
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !620
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !460
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !619
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !409
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !620
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !460
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !619
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !409
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !620
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !460
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !619
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !409
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !620
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, !llvm.loop !17

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
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
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !460 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !460 ; 2 uses
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
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !409
  store i64 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !619
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !620
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

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
  %i.w = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !460
  store i64 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !619
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !409
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !620
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3102

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
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !460
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !619
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !409
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !620
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !460
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !619
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !409
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !620
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !460
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !619
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !409
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !620
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !460
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !619
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !409
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !620
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa106.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.bf = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bg ; 3 uses
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
  %i.bn = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !460
  store i64 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !619
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !409
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !620
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !3103

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa107.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bu = icmp ult i64 %i.bl, 4
  br i1 %i.bu, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.bv = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !460
  store i64 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !619
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !409
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !620
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !460
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !619
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !409
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !620
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !460
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !619
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !409
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !620
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !460
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !619
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !620
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, !llvm.loop !17

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit
  %.lcssa107 = phi ptr [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.lcssa107 to i64
  br label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.be, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %4, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i ]
  %i.cv = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.be
  %i.cw = getelementptr inbounds i8, ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cx = sub i64 %i.b, %i.bi
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %.not = icmp slt i64 %i.cy, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !20

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
  %i.dd = load i64, ptr %.01628.i43, align 8, !tbaa !460 ; 2 uses
  %i.de = load i64, ptr %.029.i42, align 8, !tbaa !460 ; 2 uses
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
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !409
  store i64 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !619
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !620
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !19

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
  %i.ds = load i64, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !460
  store i64 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !619
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !409
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !620
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !3104

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
  %i.ea = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !460
  store i64 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !619
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !409
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !620
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !460
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !619
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !409
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !620
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !460
  store i64 %i.em, ptr %i.el, align 8, !tbaa !619
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !409
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !620
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !460
  store i64 %i.es, ptr %i.er, align 8, !tbaa !619
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !409
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !620
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !17

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
  %i.fi = load i64, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !460
  store i64 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !619
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !409
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !620
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !3105

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
  %i.fq = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !460
  store i64 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !619
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !409
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !620
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !460
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !619
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !409
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !620
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !460
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !619
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !409
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_2
begin_hunk_3_@_ZSt12__move_mergeIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEENSA_5__ops15_Iter_comp_iterIZNS7_16updateStackNodesEvEUlRKS8_SJ_E_EEET0_T_SN_SN_SN_SM_T1_:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 32
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !791
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 60 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !646 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !647
  %i.bj = zext i32 %i.bg to i64                   ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 31
  %i.bl = lshr i64 %i.bk, 5
  %i.bm = add nuw nsw i64 %i.bl, %i.bj
  %i.bn = shl nuw nsw i64 %i.bm, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bi, i64 noundef %i.bn, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.01639, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.01639, i64 48
  %i.bq = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !419
  store <2 x ptr> %i.bq, ptr %i.be, align 8, !tbaa !419
  store ptr null, ptr %i.bo, align 8, !tbaa !767
  store ptr null, ptr %i.bp, align 8, !tbaa !428
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %.01639, i64 56 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !231
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !231
  store i32 0, ptr %i.bs, align 8, !tbaa !231
  %i.bu = getelementptr inbounds nuw i8, ptr %.01639, i64 60 ; 2 uses
  %i.bv = load i32, ptr %i.bf, align 4, !tbaa !231
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !231
  store i32 %i.bw, ptr %i.bf, align 4, !tbaa !231
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !231
  %i.bx = getelementptr inbounds nuw i8, ptr %.01639, i64 64
  br label %bb.k

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit.thread34: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit.thread34_crit_edge, %_ZSteqImSaImEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %_ZStltImSaImEEbRKSt6vectorIT_T0_ES6_.exit.thread13.i.i, %bb.b
  %i.by = phi ptr [ %.pre46, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit.thread34_crit_edge ], [ %i.n, %_ZSteqImSaImEEbRKSt6vectorIT_T0_ES6_.exit.i.i ], [ %i.n, %_ZStltImSaImEEbRKSt6vectorIT_T0_ES6_.exit.thread13.i.i ], [ %i.n, %bb.b ]
  %i.bz = phi ptr [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit.thread34_crit_edge ], [ %i.o, %_ZSteqImSaImEEbRKSt6vectorIT_T0_ES6_.exit.i.i ], [ %i.o, %_ZStltImSaImEEbRKSt6vectorIT_T0_ES6_.exit.thread13.i.i ], [ %i.o, %bb.b ]
  %i.ca = load ptr, ptr %.040, align 8, !tbaa !790
  store ptr %i.ca, ptr %.sroa.032.037, align 8, !tbaa !790
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !702 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !703
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !702
  store ptr %i.by, ptr %i.cd, align 8, !tbaa !740
  %i.cg = getelementptr inbounds nuw i8, ptr %.040, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !703
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !703
  %.not.i.i.i.i.i.i19 = icmp eq ptr %i.cc, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i19, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20, label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit.thread34
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.cc to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ck) #29
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20

_ZNSt6vectorImSaImEEaSEOS1_.exit.i20:             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclIPSA_SG_EEbT_T0_.exit.thread34
  %i.cl = getelementptr inbounds nuw i8, ptr %.040, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !791
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 32
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !791
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 40 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 60 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !646 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit21, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !647
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = add nuw nsw i64 %i.ct, 31
  %i.cv = lshr i64 %i.cu, 5
  %i.cw = add nuw nsw i64 %i.cv, %i.ct
  %i.cx = shl nuw nsw i64 %i.cw, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cs, i64 noundef %i.cx, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit21

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit21: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20, %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %.040, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.040, i64 48
  %i.da = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !419
  store <2 x ptr> %i.da, ptr %i.co, align 8, !tbaa !419
  store ptr null, ptr %i.cy, align 8, !tbaa !767
  store ptr null, ptr %i.cz, align 8, !tbaa !428
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %.040, i64 56 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !231
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !231
  store i32 0, ptr %i.dc, align 8, !tbaa !231
  %i.de = getelementptr inbounds nuw i8, ptr %.040, i64 60 ; 2 uses
  %i.df = load i32, ptr %i.cp, align 4, !tbaa !231
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !231
  store i32 %i.dg, ptr %i.cp, align 4, !tbaa !231
  store i32 %i.df, ptr %i.de, align 4, !tbaa !231
  %i.dh = getelementptr inbounds nuw i8, ptr %.040, i64 64
  br label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit21, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit
  %.117 = phi ptr [ %i.bx, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit ], [ %.01639, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit21 ] ; 3 uses
  %.1 = phi ptr [ %.040, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit ], [ %i.dh, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit21 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 64 ; 2 uses
  %i.dj = icmp ne ptr %.1, %1
  %i.dk = icmp ne ptr %.117, %3
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph, label %._crit_edge, !llvm.loop !4115

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.sroa.032.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.di, %bb.k ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.k ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.k ] ; 2 uses
  %i.dm = ptrtoint ptr %1 to i64
  %i.dn = ptrtoint ptr %.0.lcssa to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 6                 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.fb, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i ], [ %i.dp, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.fa, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i ], [ %.sroa.032.0.lcssa, %._crit_edge ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ez, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !702 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !703
  %i.dx = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !419
  store <2 x ptr> %i.dx, ptr %.0811.i.i.i.i.i, align 8, !tbaa !419
  %i.dy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.dz = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !792
  store <2 x ptr> %i.dz, ptr %i.du, align 8, !tbaa !792
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = ptrtoint ptr %i.dt to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.ec) #29
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i:     ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !791
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !791
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 60 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !646 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !647
  %i.el = zext i32 %i.ei to i64                   ; 2 uses
  %i.em = add nuw nsw i64 %i.el, 31
  %i.en = lshr i64 %i.em, 5
  %i.eo = add nuw nsw i64 %i.en, %i.el
  %i.ep = shl nuw nsw i64 %i.eo, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ek, i64 noundef %i.ep, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.es = load <2 x ptr>, ptr %i.eq, align 8, !tbaa !419
  store <2 x ptr> %i.es, ptr %i.eg, align 8, !tbaa !419
  store ptr null, ptr %i.eq, align 8, !tbaa !767
  store ptr null, ptr %i.er, align 8, !tbaa !428
  %i.et = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  %i.eu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !231
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !231
  store i32 0, ptr %i.eu, align 8, !tbaa !231
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 60 ; 2 uses
  %i.ex = load i32, ptr %i.eh, align 4, !tbaa !231
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !231
  store i32 %i.ey, ptr %i.eh, align 4, !tbaa !231
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !231
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i, -1
  %i.fc = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit, !llvm.loop !113

_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit: ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.032.0.lcssa, %._crit_edge ], [ %i.fa, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i ]
  %i.fd = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.fe = ptrtoint ptr %.sroa.032.0.lcssa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = getelementptr inbounds i8, ptr %.sroa.032.0.lcssa, i64 %i.ff ; 2 uses
  %i.fh = ptrtoint ptr %3 to i64
  %i.fi = ptrtoint ptr %.016.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 6                 ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.gw, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29 ], [ %i.fk, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.gv, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29 ], [ %i.fg, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit ] ; 9 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.gu, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29 ], [ %.016.lcssa, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit ] ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !702 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !703
  %i.fs = load <2 x ptr>, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !419
  store <2 x ptr> %i.fs, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !419
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 16
  %i.fu = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !792
  store <2 x ptr> %i.fu, ptr %i.fp, align 8, !tbaa !792
  %.not.i.i.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.fo, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i27, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i23
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = sub i64 %i.fv, %i.fw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fx) #29
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28:   ; preds = %bb.n, %.lr.ph.i.i.i.i.i23
  %i.fy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !791
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 32
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !791
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 40 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 60 ; 3 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !646 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !647
  %i.gg = zext i32 %i.gd to i64                   ; 2 uses
  %i.gh = add nuw nsw i64 %i.gg, 31
  %i.gi = lshr i64 %i.gh, 5
  %i.gj = add nuw nsw i64 %i.gi, %i.gg
  %i.gk = shl nuw nsw i64 %i.gj, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gf, i64 noundef %i.gk, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29: ; preds = %bb.o, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28
  %i.gl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 48
  %i.gn = load <2 x ptr>, ptr %i.gl, align 8, !tbaa !419
  store <2 x ptr> %i.gn, ptr %i.gb, align 8, !tbaa !419
  store ptr null, ptr %i.gl, align 8, !tbaa !767
  store ptr null, ptr %i.gm, align 8, !tbaa !428
  %i.go = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 56
  %i.gp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 56 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !231
  store i32 %i.gq, ptr %i.go, align 8, !tbaa !231
  store i32 0, ptr %i.gp, align 8, !tbaa !231
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 60 ; 2 uses
  %i.gs = load i32, ptr %i.gc, align 4, !tbaa !231
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !231
  store i32 %i.gt, ptr %i.gc, align 4, !tbaa !231
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !231
  %i.gu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 64 ; 2 uses
  %i.gw = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.gx = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit30.loopexit, !llvm.loop !113

_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit30.loopexit: ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i.i.i.i.i29
  %6 = ptrtoint ptr %i.gv to i64
  br label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit30

_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit30: ; preds = %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit30.loopexit, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit
  %.08.lcssa.i.i.i.i.i22 = phi i64 [ %i.fd, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit ], [ %6, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit30.loopexit ]
  %i.gy = sub i64 %.08.lcssa.i.i.i.i.i22, %i.fd
  %i.gz = getelementptr inbounds i8, ptr %i.fg, i64 %i.gy
  ret ptr %i.gz
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_16updateStackNodesEvEUlRKSA_SJ_E_EEEvT_SM_SM_T0_SN_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond81 = or i1 %i.a, %i.b
  br i1 %or.cond81, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr7785 = phi i64 [ %i.w, %tailrecurse ], [ %4, %bb.a ] ; 4 uses
  %.tr7684 = phi i64 [ %i.v, %tailrecurse ], [ %3, %bb.a ] ; 4 uses
  %.tr7483 = phi ptr [ %.sroa.0.0, %tailrecurse ], [ %1, %bb.a ] ; 7 uses
  %.tr82 = phi ptr [ %i.u, %tailrecurse ], [ %0, %bb.a ] ; 6 uses
  %i.c = add nsw i64 %.tr7785, %.tr7684
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call fastcc noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclINS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEESL_EEbT_T0_(ptr %5, ptr %.tr7483, ptr %.tr82)
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEESF_EvT_T0_(ptr %.tr82, ptr %.tr7483)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.tr7684, %.tr7785
  br i1 %i.f, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.d
  %i.g = sdiv i64 %.tr7684, 2                     ; 2 uses
  %i.h = getelementptr inbounds [64 x i8], ptr %.tr82, i64 %i.g ; 2 uses
  %i.i = tail call fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIZNS9_16updateStackNodesEvEUlRKSA_SJ_E_EEET_SM_SM_RKT0_T1_(ptr %.tr7483, ptr %2, ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr %5) ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.tr7483 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 6
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61: ; preds = %bb.d
  %i.n = sdiv i64 %.tr7785, 2                     ; 2 uses
  %i.o = getelementptr inbounds [64 x i8], ptr %.tr7483, i64 %i.n ; 2 uses
  %i.p = tail call fastcc ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIZNS9_16updateStackNodesEvEUlRKSA_SJ_E_EEET_SM_SM_RKT0_T1_(ptr %.tr82, ptr %.tr7483, ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr %5) ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.tr82 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.063.0 = phi ptr [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %.049 = phi i64 [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %.0 = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %i.u = tail call fastcc ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE15CallContextInfoESt6vectorISB_SaISB_EEEEEET_SH_SH_SH_(ptr %.sroa.063.0, ptr %.tr7483, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_16updateStackNodesEvEUlRKSA_SJ_E_EEEvT_SM_SM_T0_SN_T1_(ptr %.tr82, ptr %.sroa.063.0, ptr %i.u, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.v = sub nsw i64 %.tr7684, %.0                ; 2 uses
  %i.w = sub nsw i64 %.tr7785, %.049              ; 2 uses
  %i.x = icmp eq i64 %i.v, 0
  %i.y = icmp eq i64 %i.w, 0
  %or.cond = or i1 %i.x, %i.y
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEESF_EvT_T0_(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %0, align 8, !tbaa !419
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !791
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load <2 x ptr>, ptr %i.g, align 8, !tbaa !419
  store ptr null, ptr %i.g, align 8, !tbaa !767
  store ptr null, ptr %i.h, align 8, !tbaa !428
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !231
  store i32 0, ptr %i.j, align 8, !tbaa !231
  store i32 0, ptr %i.k, align 4, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load <2 x ptr>, ptr %1, align 8, !tbaa !419
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !419
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load <2 x ptr>, ptr %i.o, align 8, !tbaa !792
  store <2 x ptr> %i.q, ptr %i.c, align 8, !tbaa !792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !791
  store ptr %i.s, ptr %i.e, align 8, !tbaa !791
  %i.t = load i32, ptr %i.k, align 4, !tbaa !646  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !647
  %i.w = zext i32 %i.t to i64                     ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 31
  %i.y = lshr i64 %i.x, 5
  %i.z = add nuw nsw i64 %i.y, %i.w
  %i.aa = shl nuw nsw i64 %i.z, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.v, i64 noundef %i.aa, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i: ; preds = %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !419
  store <2 x ptr> %i.ad, ptr %i.g, align 8, !tbaa !419
  store ptr null, ptr %i.ab, align 8, !tbaa !767
  store ptr null, ptr %i.ac, align 8, !tbaa !428
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !231
  store i32 %i.af, ptr %i.j, align 8, !tbaa !231
  store i32 0, ptr %i.ae, align 8, !tbaa !231
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.ah = load i32, ptr %i.k, align 4, !tbaa !231 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !231
  store i32 %i.ai, ptr %i.k, align 4, !tbaa !231
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !231
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !702 ; 3 uses
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !703
  store <2 x ptr> %i.b, ptr %1, align 8, !tbaa !419
  store <2 x ptr> %i.d, ptr %i.o, align 8, !tbaa !792
  %.not.i.i.i.i.i.i4.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i4.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #29
  %.pre.i = load i32, ptr %i.ag, align 4, !tbaa !646
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i:            ; preds = %bb.c, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i
  %i.ao = phi i32 [ %.pre.i, %bb.c ], [ %i.ah, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15CallContextInfoaSEOS7_.exit.i ] ; 2 uses
  store ptr %i.f, ptr %i.r, align 8, !tbaa !791
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZSt4swapIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISC_ESt18is_move_assignableISC_EEE5valueEvE4typeERSC_SL_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !647
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.av, i64 noundef 4) #28
  br label %_ZSt4swapIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISC_ESt18is_move_assignableISC_EEE5valueEvE4typeERSC_SL_.exit

_ZSt4swapIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE15CallContextInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISC_ESt18is_move_assignableISC_EEE5valueEvE4typeERSC_SL_.exit: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i, %bb.d
  store <2 x ptr> %i.i, ptr %i.ab, align 8, !tbaa !419
  store <2 x i32> %i.l, ptr %i.ae, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIZNS9_16updateStackNodesEvEUlRKSA_SJ_E_EEET_SM_SM_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 6                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %._crit_edge

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclINS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEESB_EEbT_RT0_.exit.thread19
  %.021 = phi i64 [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.1, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclINS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEESB_EEbT_RT0_.exit.thread19 ] ; 2 uses
  %.sroa.014.020 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE15CallContextInfoESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.sroa.014.1, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE16updateStackNodesEvEUlRKNS9_15CallContextInfoESC_E_EclINS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEESB_EEbT_RT0_.exit.thread19 ] ; 5 uses
  %i.i = lshr i64 %.021, 1                        ; 6 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %.sroa.014.020, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !740  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !702  ; 6 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !740  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZSt12__move_mergeIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS6_16updateStackNodesEvEUlRKS7_SI_E_EEET0_T_SM_SM_SM_SL_T1_:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.01639, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1003
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 32
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !1003
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 60 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !646 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !647
  %i.bh = zext i32 %i.be to i64                   ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 31
  %i.bj = lshr i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bj, %i.bh
  %i.bl = shl nuw nsw i64 %i.bk, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bl, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.01639, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.01639, i64 48
  %i.bo = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !419
  store <2 x ptr> %i.bo, ptr %i.bc, align 8, !tbaa !419
  store ptr null, ptr %i.bm, align 8, !tbaa !767
  store ptr null, ptr %i.bn, align 8, !tbaa !428
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.01639, i64 56 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !231
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !231
  store i32 0, ptr %i.bq, align 8, !tbaa !231
  %i.bs = getelementptr inbounds nuw i8, ptr %.01639, i64 60 ; 2 uses
  %i.bt = load i32, ptr %i.bd, align 4, !tbaa !231
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !231
  store i32 %i.bu, ptr %i.bd, align 4, !tbaa !231
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !231
  %i.bv = getelementptr inbounds nuw i8, ptr %.01639, i64 64
  br label %bb.k

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclIPS9_SF_EEbT_T0_.exit.thread34: ; preds = %_ZSteqImSaImEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %_ZStltImSaImEEbRKSt6vectorIT_T0_ES6_.exit.thread13.i.i, %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclIPS9_SF_EEbT_T0_.exit
  %i.bw = load i64, ptr %.040, align 8
  store i64 %i.bw, ptr %.sroa.032.037, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !702 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !703
  %i.cb = load <2 x ptr>, ptr %i.l, align 8, !tbaa !792
  store <2 x ptr> %i.cb, ptr %i.bx, align 8, !tbaa !792
  %i.cc = getelementptr inbounds nuw i8, ptr %.040, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !703
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !703
  %.not.i.i.i.i.i.i19 = icmp eq ptr %i.by, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i19, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20, label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclIPS9_SF_EEbT_T0_.exit.thread34
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cg) #29
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20

_ZNSt6vectorImSaImEEaSEOS1_.exit.i20:             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclIPS9_SF_EEbT_T0_.exit.thread34
  %i.ch = getelementptr inbounds nuw i8, ptr %.040, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1003
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 32
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !1003
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 40 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 60 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !646 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit21, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !647
  %i.cp = zext i32 %i.cm to i64                   ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 31
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = add nuw nsw i64 %i.cr, %i.cp
  %i.ct = shl nuw nsw i64 %i.cs, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.co, i64 noundef %i.ct, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit21

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit21: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i20, %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %.040, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.040, i64 48
  %i.cw = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !419
  store <2 x ptr> %i.cw, ptr %i.ck, align 8, !tbaa !419
  store ptr null, ptr %i.cu, align 8, !tbaa !767
  store ptr null, ptr %i.cv, align 8, !tbaa !428
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %.040, i64 56 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !231
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !231
  store i32 0, ptr %i.cy, align 8, !tbaa !231
  %i.da = getelementptr inbounds nuw i8, ptr %.040, i64 60 ; 2 uses
  %i.db = load i32, ptr %i.cl, align 4, !tbaa !231
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !231
  store i32 %i.dc, ptr %i.cl, align 4, !tbaa !231
  store i32 %i.db, ptr %i.da, align 4, !tbaa !231
  %i.dd = getelementptr inbounds nuw i8, ptr %.040, i64 64
  br label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit21, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit
  %.117 = phi ptr [ %i.bv, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit ], [ %.01639, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit21 ] ; 3 uses
  %.1 = phi ptr [ %.040, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit ], [ %i.dd, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit21 ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 64 ; 2 uses
  %i.df = icmp ne ptr %.1, %1
  %i.dg = icmp ne ptr %.117, %3
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %.lr.ph, label %._crit_edge, !llvm.loop !5483

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.sroa.032.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.de, %bb.k ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.k ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.k ] ; 2 uses
  %i.di = ptrtoint ptr %1 to i64
  %i.dj = ptrtoint ptr %.0.lcssa to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 6                 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ex, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i ], [ %i.dl, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ew, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.032.0.lcssa, %._crit_edge ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ev, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 9 uses
  %i.dn = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.dn, ptr %.0811.i.i.i.i.i, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !702 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !703
  %i.dt = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !792
  store <2 x ptr> %i.dt, ptr %i.do, align 8, !tbaa !792
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !703
  store ptr %i.dv, ptr %i.dr, align 8, !tbaa !703
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = ptrtoint ptr %i.dq to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i:     ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1003
  %i.eb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !1003
  %i.ec = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 60 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !646 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !647
  %i.eh = zext i32 %i.ee to i64                   ; 2 uses
  %i.ei = add nuw nsw i64 %i.eh, 31
  %i.ej = lshr i64 %i.ei, 5
  %i.ek = add nuw nsw i64 %i.ej, %i.eh
  %i.el = shl nuw nsw i64 %i.ek, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.eg, i64 noundef %i.el, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.eo = load <2 x ptr>, ptr %i.em, align 8, !tbaa !419
  store <2 x ptr> %i.eo, ptr %i.ec, align 8, !tbaa !419
  store ptr null, ptr %i.em, align 8, !tbaa !767
  store ptr null, ptr %i.en, align 8, !tbaa !428
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !231
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !231
  store i32 0, ptr %i.eq, align 8, !tbaa !231
  %i.es = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 60 ; 2 uses
  %i.et = load i32, ptr %i.ed, align 4, !tbaa !231
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !231
  store i32 %i.eu, ptr %i.ed, align 4, !tbaa !231
  store i32 %i.et, ptr %i.es, align 4, !tbaa !231
  %i.ev = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.ex = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ey = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, !llvm.loop !136

_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit: ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.032.0.lcssa, %._crit_edge ], [ %i.ew, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i ]
  %i.ez = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.fa = ptrtoint ptr %.sroa.032.0.lcssa to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %.sroa.032.0.lcssa, i64 %i.fb ; 2 uses
  %i.fd = ptrtoint ptr %3 to i64
  %i.fe = ptrtoint ptr %.016.lcssa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 6                 ; 2 uses
  %i.fh = icmp sgt i64 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.gs, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29 ], [ %i.fg, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.gr, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29 ], [ %i.fc, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ] ; 8 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.gq, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29 ], [ %.016.lcssa, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ] ; 9 uses
  %i.fi = load i64, ptr %.0910.i.i.i.i.i26, align 8
  store i64 %i.fi, ptr %.0811.i.i.i.i.i25, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !702 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !703
  %i.fo = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !792
  store <2 x ptr> %i.fo, ptr %i.fj, align 8, !tbaa !792
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !703
  store ptr %i.fq, ptr %i.fm, align 8, !tbaa !703
  %.not.i.i.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.fl, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i27, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i23
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = ptrtoint ptr %i.fl to i64
  %i.ft = sub i64 %i.fr, %i.fs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.ft) #29
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28:   ; preds = %bb.n, %.lr.ph.i.i.i.i.i23
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1003
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 32
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !1003
  %i.fx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 40 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 60 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !646 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !647
  %i.gc = zext i32 %i.fz to i64                   ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 31
  %i.ge = lshr i64 %i.gd, 5
  %i.gf = add nuw nsw i64 %i.ge, %i.gc
  %i.gg = shl nuw nsw i64 %i.gf, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gb, i64 noundef %i.gg, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29: ; preds = %bb.o, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i.i.i28
  %i.gh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 48
  %i.gj = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !419
  store <2 x ptr> %i.gj, ptr %i.fx, align 8, !tbaa !419
  store ptr null, ptr %i.gh, align 8, !tbaa !767
  store ptr null, ptr %i.gi, align 8, !tbaa !428
  %i.gk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 56 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !231
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !231
  store i32 0, ptr %i.gl, align 8, !tbaa !231
  %i.gn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 60 ; 2 uses
  %i.go = load i32, ptr %i.fy, align 4, !tbaa !231
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !231
  store i32 %i.gp, ptr %i.fy, align 4, !tbaa !231
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !231
  %i.gq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 64 ; 2 uses
  %i.gs = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.gt = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit30.loopexit, !llvm.loop !136

_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit30.loopexit: ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i.i.i.i.i29
  %6 = ptrtoint ptr %i.gr to i64
  br label %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit30

_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit30: ; preds = %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit30.loopexit, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i22 = phi i64 [ %i.ez, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ], [ %6, %_ZSt4moveIPN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit30.loopexit ]
  %i.gu = sub i64 %.08.lcssa.i.i.i.i.i22, %i.ez
  %i.gv = getelementptr inbounds i8, ptr %i.fc, i64 %i.gu
  ret ptr %i.gv
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS8_16updateStackNodesEvEUlRKS9_SI_E_EEEvT_SL_SL_T0_SM_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond81 = or i1 %i.a, %i.b
  br i1 %or.cond81, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr7785 = phi i64 [ %i.w, %tailrecurse ], [ %4, %bb.a ] ; 4 uses
  %.tr7684 = phi i64 [ %i.v, %tailrecurse ], [ %3, %bb.a ] ; 4 uses
  %.tr7483 = phi ptr [ %.sroa.0.0, %tailrecurse ], [ %1, %bb.a ] ; 7 uses
  %.tr82 = phi ptr [ %i.u, %tailrecurse ], [ %0, %bb.a ] ; 6 uses
  %i.c = add nsw i64 %.tr7785, %.tr7684
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call fastcc noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESK_EEbT_T0_(ptr %5, ptr %.tr7483, ptr %.tr82)
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEESE_EvT_T0_(ptr %.tr82, ptr %.tr7483)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.tr7684, %.tr7785
  br i1 %i.f, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.d
  %i.g = sdiv i64 %.tr7684, 2                     ; 2 uses
  %i.h = getelementptr inbounds [64 x i8], ptr %.tr82, i64 %i.g ; 2 uses
  %i.i = tail call fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS8_16updateStackNodesEvEUlRKS9_SI_E_EEET_SL_SL_RKT0_T1_(ptr %.tr7483, ptr %2, ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr %5) ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.tr7483 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 6
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit61: ; preds = %bb.d
  %i.n = sdiv i64 %.tr7785, 2                     ; 2 uses
  %i.o = getelementptr inbounds [64 x i8], ptr %.tr7483, i64 %i.n ; 2 uses
  %i.p = tail call fastcc ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNS8_16updateStackNodesEvEUlRKS9_SI_E_EEET_SL_SL_RKT0_T1_(ptr %.tr82, ptr %.tr7483, ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr %5) ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.tr82 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.063.0 = phi ptr [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %.049 = phi i64 [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %.0 = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ] ; 2 uses
  %i.u = tail call fastcc ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE15CallContextInfoESt6vectorISA_SaISA_EEEEEET_SG_SG_SG_(ptr %.sroa.063.0, ptr %.tr7483, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS8_16updateStackNodesEvEUlRKS9_SI_E_EEEvT_SL_SL_T0_SM_T1_(ptr %.tr82, ptr %.sroa.063.0, ptr %i.u, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.v = sub nsw i64 %.tr7684, %.0                ; 2 uses
  %i.w = sub nsw i64 %.tr7785, %.049              ; 2 uses
  %i.x = icmp eq i64 %i.v, 0
  %i.y = icmp eq i64 %i.w, 0
  %or.cond = or i1 %i.x, %i.y
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEESE_EvT_T0_(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !792
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !703
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1003
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !419
  store ptr null, ptr %i.h, align 8, !tbaa !767
  store ptr null, ptr %i.i, align 8, !tbaa !428
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !231
  store i32 0, ptr %i.k, align 8, !tbaa !231
  store i32 0, ptr %i.l, align 4, !tbaa !231
  %i.n = load i64, ptr %1, align 8
  store i64 %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !792
  store <2 x ptr> %i.p, ptr %i.b, align 8, !tbaa !792
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !703
  store ptr %i.r, ptr %i.d, align 8, !tbaa !703
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1003
  store ptr %i.t, ptr %i.f, align 8, !tbaa !1003
  %i.u = load i32, ptr %i.l, align 4, !tbaa !646  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !647
  %i.x = zext i32 %i.u to i64                     ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = shl nuw nsw i64 %i.aa, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ab, i64 noundef 4) #28
  br label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i

_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i: ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !419
  store <2 x ptr> %i.ae, ptr %i.h, align 8, !tbaa !419
  store ptr null, ptr %i.ac, align 8, !tbaa !767
  store ptr null, ptr %i.ad, align 8, !tbaa !428
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !231
  store i32 %i.ag, ptr %i.k, align 8, !tbaa !231
  store i32 0, ptr %i.af, align 8, !tbaa !231
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !231 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !231
  store i32 %i.aj, ptr %i.l, align 4, !tbaa !231
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !231
  store i64 %i.a, ptr %1, align 8
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !702 ; 3 uses
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !703
  store <2 x ptr> %i.c, ptr %i.o, align 8, !tbaa !792
  store ptr %i.e, ptr %i.q, align 8, !tbaa !703
  %.not.i.i.i.i.i.i4.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i4.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #29
  %.pre.i = load i32, ptr %i.ah, align 4, !tbaa !646
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i:            ; preds = %bb.c, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i
  %i.ap = phi i32 [ %.pre.i, %bb.c ], [ %i.ai, %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15CallContextInfoaSEOS6_.exit.i ] ; 2 uses
  store ptr %i.g, ptr %i.s, align 8, !tbaa !1003
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSt4swapIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !647
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 31
  %i.au = lshr i64 %i.at, 5
  %i.av = add nuw nsw i64 %i.au, %i.as
  %i.aw = shl nuw nsw i64 %i.av, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ar, i64 noundef %i.aw, i64 noundef 4) #28
  br label %_ZSt4swapIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit

_ZSt4swapIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE15CallContextInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i5.i, %bb.d
  store <2 x ptr> %i.j, ptr %i.ac, align 8, !tbaa !419
  store <2 x i32> %i.m, ptr %i.af, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS8_16updateStackNodesEvEUlRKS9_SI_E_EEET_SL_SL_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 6                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %._crit_edge

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESA_EEbT_RT0_.exit.thread19
  %.021 = phi i64 [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.1, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESA_EEbT_RT0_.exit.thread19 ] ; 2 uses
  %.sroa.014.020 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE15CallContextInfoESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.sroa.014.1, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE16updateStackNodesEvEUlRKNS8_15CallContextInfoESB_E_EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESA_EEbT_RT0_.exit.thread19 ] ; 5 uses
  %i.i = lshr i64 %.021, 1                        ; 6 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %.sroa.014.020, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !740  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !702  ; 6 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
end_hunk_4
begin_hunk_5_@_ZSt12__move_mergeIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNS8_14identifyClonesEPNS8_11ContextNodeERNS4_8DenseSetIPKSK_NS4_12DenseMapInfoISO_vEEEERKNSM_IjNSP_IjvEEEEEUlRKSA_SY_E_EEET0_T_S12_S12_S12_S11_T1_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01649, i8 0, i64 16, i1 false)
  store ptr %.016.val, ptr %.sroa.036.047, align 8, !tbaa !825
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !765 ; 8 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !765
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclIPSP_SV_EEbT_T0_.exit.thread
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.by, align 8, !tbaa !759
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !760
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28, !inline_history !155
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28, !inline_history !155
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit

bb.i:                                             ; preds = %bb.g
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.j ], [ %i.cl, %bb.k ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.l, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit, !prof !609

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclIPSP_SV_EEbT_T0_.exit.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %.01649, i64 16
  br label %bb.s

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclIPSP_SV_EEbT_T0_.exit.thread38: ; preds = %.lr.ph, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclIPSP_SV_EEbT_T0_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !765
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.050, i8 0, i64 16, i1 false)
  store ptr %.0.val, ptr %.sroa.036.047, align 8, !tbaa !825
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !765 ; 8 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !765
  %.not.i.i.i.i20 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i20, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclIPSP_SV_EEbT_T0_.exit.thread38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cs, align 8, !tbaa !759
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !760
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !198
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !155
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !198
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !155
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24

bb.o:                                             ; preds = %bb.m
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i21 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

bb.q:                                             ; preds = %bb.o
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i23 = phi i32 [ %i.cv, %bb.p ], [ %i.df, %bb.q ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i23, 1
  br i1 %i.dg, label %bb.r, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24, !prof !609

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclIPSP_SV_EEbT_T0_.exit.thread38, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.050, i64 16
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit
  %.117 = phi ptr [ %i.cn, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit ], [ %.01649, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24 ] ; 3 uses
  %.1 = phi ptr [ %.050, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit ], [ %i.dh, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit24 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 16 ; 2 uses
  %i.dj = icmp ne ptr %.1, %1
  %i.dk = icmp ne ptr %.117, %3
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph, label %._crit_edge, !llvm.loop !6894

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %.sroa.036.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.di, %bb.s ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.s ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.s ] ; 2 uses
  %i.dm = ptrtoint ptr %1 to i64
  %i.dn = ptrtoint ptr %.0.lcssa to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 4                 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.el, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ], [ %i.dp, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ek, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ], [ %.sroa.036.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ej, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ds = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.ds, ptr %.0811.i.i.i.i.i, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.du, align 8, !tbaa !759
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !760
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !198
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28, !inline_history !156
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !198
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28, !inline_history !156
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dx, %bb.w ], [ %i.eh, %bb.x ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.y, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i, !prof !609

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.u, %.lr.ph.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.el = add nsw i64 %.012.i.i.i.i.i, -1
  %i.em = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.em, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit, !llvm.loop !104

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.036.0.lcssa, %._crit_edge ], [ %i.ek, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ]
  %i.en = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.eo = ptrtoint ptr %.sroa.036.0.lcssa to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %.sroa.036.0.lcssa, i64 %i.ep ; 2 uses
  %i.er = ptrtoint ptr %3 to i64
  %i.es = ptrtoint ptr %.016.lcssa to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 4                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i26, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit35

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34
  %.012.i.i.i.i.i27 = phi i64 [ %i.fq, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34 ], [ %i.eu, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.fp, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34 ], [ %i.eq, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ] ; 3 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.fo, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34 ], [ %.016.lcssa, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.ex = load <2 x ptr>, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i29, i8 0, i64 16, i1 false)
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.ex, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ez, align 8, !tbaa !759
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !760
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !198
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  tail call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28, !inline_history !156
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !198
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  tail call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28, !inline_history !156
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34

bb.ab:                                            ; preds = %bb.z
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i31 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i31, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32

bb.ad:                                            ; preds = %bb.ab
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i.i.i.i33 = phi i32 [ %i.fc, %bb.ac ], [ %i.fm, %bb.ad ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i33, 1
  br i1 %i.fn, label %bb.ae, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34, !prof !609

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32, %bb.aa, %.lr.ph.i.i.i.i.i26
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16 ; 2 uses
  %i.fq = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.fr = icmp sgt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i26, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit35.loopexit, !llvm.loop !104

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit35.loopexit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i34
  %6 = ptrtoint ptr %i.fp to i64
  br label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit35

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit35: ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit35.loopexit, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit
  %.08.lcssa.i.i.i.i.i25 = phi i64 [ %i.en, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ], [ %6, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit35.loopexit ]
  %i.fs = sub i64 %.08.lcssa.i.i.i.i.i25, %i.en
  %i.ft = getelementptr inbounds i8, ptr %i.eq, i64 %i.fs
  ret ptr %i.ft
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNSA_14identifyClonesEPNSA_11ContextNodeERNS6_8DenseSetIPKSK_NS6_12DenseMapInfoISO_vEEEERKNSM_IjNSP_IjvEEEEEUlRKSC_SY_E_EEEvT_S11_S11_T0_S12_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree readonly captures(none) %5) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond92 = or i1 %i.a, %i.b
  br i1 %or.cond92, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread76, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit
  %.tr8396 = phi i64 [ %i.fl, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %4, %bb.a ] ; 4 uses
  %.tr8295 = phi i64 [ %i.fk, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %3, %bb.a ] ; 4 uses
  %.tr8094 = phi ptr [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %1, %bb.a ] ; 13 uses
  %.tr93 = phi ptr [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %0, %bb.a ] ; 7 uses
  %i.c = add nsw i64 %.tr8396, %.tr8295
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %.val3.i = load ptr, ptr %.tr8094, align 8, !tbaa !753 ; 6 uses
  %.val4.i = load ptr, ptr %.tr93, align 8        ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val3.i, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !670
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread76, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.val4.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !670
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !756   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !756   ; 2 uses
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !647, !noalias !6911 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val3.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !669, !noalias !6911 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val3.i, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !646, !noalias !6911 ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.w ; 3 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.not.i.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nuw nsw i64 %i.w, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !231, !noalias !6912 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, label %.lr.ph134

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph134
  %i.ad = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.z
  br i1 %i.ae, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, label %.lr.ph134, !llvm.loop !24

.lr.ph134:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.af = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !231, !noalias !6912 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !24

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph134
  %i.aj = shl i64 %i.af, 7
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.loopexit.i.i.i.i.i, %bb.f
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.aj, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.ah, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %i.ak = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.r, i64 %.012.lcssa.i.i.i.i.i.i
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.al
  br label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i

_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.an, %._crit_edge.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.i ]
  %i.ao = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !231
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !647, !noalias !6913 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !669, !noalias !6913 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val4.i, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !646, !noalias !6913 ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.au ; 3 uses
  %.not.i.not.i.i.i17.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.not.i.i.i17.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !231, !noalias !6914 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i26.i.i.preheader, label %._crit_edge.i.i.i.i19.i.i

.lr.ph.i.i.i.i26.i.i.preheader:                   ; preds = %bb.g
  %i.ba = icmp eq i64 %i.ax, 1
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit, label %.lr.ph135

.lr.ph.i.i.i.i26.i.i:                             ; preds = %.lr.ph135
  %i.bb = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %i.ax
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit, label %.lr.ph135, !llvm.loop !24

.lr.ph135:                                        ; preds = %.lr.ph.i.i.i.i26.i.i.preheader, %.lr.ph.i.i.i.i26.i.i
  %i.bd = phi i64 [ %i.bb, %.lr.ph.i.i.i.i26.i.i ], [ 1, %.lr.ph.i.i.i.i26.i.i.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !231, !noalias !6914 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i26.i.i, label %._crit_edge.i.loopexit.i.i.i28.i.i, !llvm.loop !24

._crit_edge.i.loopexit.i.i.i28.i.i:               ; preds = %.lr.ph135
  %i.bh = shl i64 %i.bd, 7
  br label %._crit_edge.i.i.i.i19.i.i

._crit_edge.i.i.i.i19.i.i:                        ; preds = %._crit_edge.i.loopexit.i.i.i28.i.i, %bb.g
  %.012.lcssa.i.i.i.i20.i.i = phi i64 [ 0, %bb.g ], [ %i.bh, %._crit_edge.i.loopexit.i.i.i28.i.i ]
  %.0.lcssa.i.i.i.i21.i.i = phi i32 [ %i.ay, %bb.g ], [ %i.bf, %._crit_edge.i.loopexit.i.i.i28.i.i ]
  %i.bi = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i21.i.i, i1 true)
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.ap, i64 %.012.lcssa.i.i.i.i20.i.i
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %i.bj
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit

.split:                                           ; preds = %bb.d
  %i.bm = zext i8 %i.n to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !231
  %i.bp = zext i8 %i.p to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !231
  %i.bs = icmp ult i32 %i.bo, %i.br
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread76

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit: ; preds = %.lr.ph.i.i.i.i26.i.i, %.lr.ph.i.i.i.i26.i.i.preheader, %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, %._crit_edge.i.i.i.i19.i.i
  %.sroa.0.0.i22.i.i = phi ptr [ %i.av, %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i ], [ %i.bl, %._crit_edge.i.i.i.i19.i.i ], [ %i.av, %.lr.ph.i.i.i.i26.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i26.i.i ]
  %i.bt = load i32, ptr %.sroa.0.0.i22.i.i, align 4, !tbaa !231
  %i.bu = icmp ult i32 %i.ao, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread76

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread: ; preds = %bb.c, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit
  store ptr %.val3.i, ptr %.tr93, align 8, !tbaa !825
  store ptr %.val4.i, ptr %.tr8094, align 8, !tbaa !825
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr93, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr8094, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !765
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !765
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !765
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !765
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE14identifyClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERKNSC_IjNSF_IjvEEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESR_E_EclINS_17__normal_iteratorIPSP_St6vectorISP_SaISP_EEEES10_EEbT_T0_.exit.thread76

bb.h:                                             ; preds = %.lr.ph
  %i.bz = icmp sgt i64 %.tr8295, %.tr8396
  br i1 %i.bz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %i.ca = sdiv i64 %.tr8295, 2                    ; 2 uses
  %i.cb = getelementptr inbounds [16 x i8], ptr %.tr93, i64 %i.ca ; 2 uses
  %.val58 = load ptr, ptr %i.cb, align 8
  %i.cc = tail call fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEESC_NS0_5__ops14_Iter_comp_valIZNSA_14identifyClonesEPNSA_11ContextNodeERNS6_8DenseSetIPKSK_NS6_12DenseMapInfoISO_vEEEERKNSM_IjNSP_IjvEEEEEUlRKSC_SY_E_EEET_S11_S11_RKT0_T1_(ptr %.tr8094, ptr %2, ptr %.val58, ptr %5) ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.tr8094 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 4
  br label %bb.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit63: ; preds = %bb.h
  %i.ch = sdiv i64 %.tr8396, 2                    ; 2 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %.tr8094, i64 %i.ch ; 2 uses
  %.val59 = load ptr, ptr %i.ci, align 8
  %i.cj = tail call fastcc ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEESC_NS0_5__ops14_Val_comp_iterIZNSA_14identifyClonesEPNSA_11ContextNodeERNS6_8DenseSetIPKSK_NS6_12DenseMapInfoISO_vEEEERKNSM_IjNSP_IjvEEEEEUlRKSC_SY_E_EEET_S11_S11_RKT0_T1_(ptr %.tr93, ptr %.tr8094, ptr %.val59, ptr %5) ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.tr93 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  br label %bb.i

bb.i:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.066.0 = phi ptr [ %i.cb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.cj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %i.cc, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ci, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 4 uses
  %.049 = phi i64 [ %i.cg, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ch, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 2 uses
  %.0 = phi i64 [ %i.ca, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.cn, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 2 uses
  %i.co = icmp eq ptr %.sroa.066.0, %.tr8094
end_hunk_5
begin_hunk_6_@_ZSt12__move_mergeIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNS8_21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS4_8DenseSetIPKSK_NS4_12DenseMapInfoISO_vEEEERNS4_8DenseMapIjSL_NSP_IjvEENS4_6detail12DenseMapPairIjSL_EEEEEUlRKSA_S11_E_EEET0_T_S15_S15_S15_S14_T1_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01647, i8 0, i64 16, i1 false)
  store ptr %.016.val, ptr %.sroa.0.045, align 8, !tbaa !825
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !765 ; 8 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !765
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERNS5_8DenseMapIjSB_NSF_IjvEENS5_6detail12DenseMapPairIjSB_EEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESU_E_EclIPSS_SY_EEbT_T0_.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.cf, align 8, !tbaa !759
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !760
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !198
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #28, !inline_history !155
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !198
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #28, !inline_history !155
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit

bb.j:                                             ; preds = %bb.h
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.k ], [ %i.cs, %bb.l ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.m, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit, !prof !609

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERNS5_8DenseMapIjSB_NSF_IjvEENS5_6detail12DenseMapPairIjSB_EEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESU_E_EclIPSS_SY_EEbT_T0_.exit.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %.01647, i64 16
  br label %bb.t

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERNS5_8DenseMapIjSB_NSF_IjvEENS5_6detail12DenseMapPairIjSB_EEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESU_E_EclIPSS_SY_EEbT_T0_.exit.thread36: ; preds = %bb.d, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERNS5_8DenseMapIjSB_NSF_IjvEENS5_6detail12DenseMapPairIjSB_EEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESU_E_EclIPSS_SY_EEbT_T0_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !765
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.048, i8 0, i64 16, i1 false)
  store ptr %.0.val, ptr %.sroa.0.045, align 8, !tbaa !825
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !765 ; 8 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !765
  %.not.i.i.i.i19 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i19, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23, label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERNS5_8DenseMapIjSB_NSF_IjvEENS5_6detail12DenseMapPairIjSB_EEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESU_E_EclIPSS_SY_EEbT_T0_.exit.thread36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.cz, align 8, !tbaa !759
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !760
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !198
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28, !inline_history !155
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !198
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28, !inline_history !155
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23

bb.p:                                             ; preds = %bb.n
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i20 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

bb.r:                                             ; preds = %bb.p
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i22 = phi i32 [ %i.dc, %bb.q ], [ %i.dm, %bb.r ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i22, 1
  br i1 %i.dn, label %bb.s, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23, !prof !609

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERNS5_8DenseMapIjSB_NSF_IjvEENS5_6detail12DenseMapPairIjSB_EEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESU_E_EclIPSS_SY_EEbT_T0_.exit.thread36, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21, %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %.048, i64 16
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit
  %.117 = phi ptr [ %i.cu, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit ], [ %.01647, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23 ] ; 3 uses
  %.1 = phi ptr [ %.048, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit ], [ %i.do, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit23 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 16 ; 2 uses
  %i.dq = icmp ne ptr %.1, %1
  %i.dr = icmp ne ptr %.117, %3
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %.lr.ph, label %._crit_edge, !llvm.loop !7324

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.dp, %bb.t ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.t ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.t ] ; 2 uses
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = ptrtoint ptr %.0.lcssa to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4                 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.es, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ], [ %i.dw, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.er, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.eq, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.dz = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.dz, ptr %.0811.i.i.i.i.i, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.eb, align 8, !tbaa !759
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !760
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !198
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #28, !inline_history !156
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !198
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  tail call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #28, !inline_history !156
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.x ], [ %i.eo, %bb.y ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ep, label %bb.z, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i, !prof !609

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %.lr.ph.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.es = add nsw i64 %.012.i.i.i.i.i, -1
  %i.et = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.et, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit, !llvm.loop !104

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.er, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i ]
  %i.eu = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.ev = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.ew ; 2 uses
  %i.ey = ptrtoint ptr %3 to i64
  %i.ez = ptrtoint ptr %.016.lcssa to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 4                 ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit34

.lr.ph.i.i.i.i.i25:                               ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33
  %.012.i.i.i.i.i26 = phi i64 [ %i.fx, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33 ], [ %i.fb, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.fw, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33 ], [ %i.ex, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ] ; 3 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.fv, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33 ], [ %.016.lcssa, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 8
  %i.fe = load <2 x ptr>, ptr %.0910.i.i.i.i.i28, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i28, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.fe, ptr %.0811.i.i.i.i.i27, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i25
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.fg, align 8, !tbaa !759
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !760
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !198
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  tail call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #28, !inline_history !156
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !198
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #28, !inline_history !156
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33

bb.ac:                                            ; preds = %bb.aa
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i30 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i30, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31

bb.ae:                                            ; preds = %bb.ac
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i.i32 = phi i32 [ %i.fj, %bb.ad ], [ %i.ft, %bb.ae ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i32, 1
  br i1 %i.fu, label %bb.af, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33, !prof !609

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31, %bb.ab, %.lr.ph.i.i.i.i.i25
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 16 ; 2 uses
  %i.fx = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.fy = icmp sgt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit34.loopexit, !llvm.loop !104

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit34.loopexit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS3_11InstructionEE11ContextEdgeEEaSEOS9_.exit.i.i.i.i.i33
  %5 = ptrtoint ptr %i.fw to i64
  br label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit34

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit34: ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit34.loopexit, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit
  %.08.lcssa.i.i.i.i.i24 = phi i64 [ %i.eu, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit ], [ %5, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS4_11InstructionEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit34.loopexit ]
  %i.fz = sub i64 %.08.lcssa.i.i.i.i.i24, %i.eu
  %i.ga = getelementptr inbounds i8, ptr %i.ex, i64 %i.fz
  ret ptr %i.ga
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNSA_21mergeNodeCalleeClonesEPNSA_11ContextNodeERNS6_8DenseSetIPKSK_NS6_12DenseMapInfoISO_vEEEERNS6_8DenseMapIjSL_NSP_IjvEENS6_6detail12DenseMapPairIjSL_EEEEEUlRKSC_S11_E_EEEvT_S14_S14_T0_S15_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond79 = or i1 %i.a, %i.b
  br i1 %or.cond79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit
  %.tr7583 = phi i64 [ %i.cw, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %4, %bb.a ] ; 4 uses
  %.tr7482 = phi i64 [ %i.cv, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %3, %bb.a ] ; 4 uses
  %.tr7281 = phi ptr [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %1, %bb.a ] ; 14 uses
  %.tr80 = phi ptr [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.c = add nsw i64 %.tr7583, %.tr7482
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call fastcc noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS5_11InstructionEE21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS5_8DenseSetIPKSA_NS5_12DenseMapInfoISE_vEEEERNS5_8DenseMapIjSB_NSF_IjvEENS5_6detail12DenseMapPairIjSB_EEEEEUlRKSt10shared_ptrINS9_11ContextEdgeEESU_E_EclINS_17__normal_iteratorIPSS_St6vectorISS_SaISS_EEEES13_EEbT_T0_(ptr %.tr7281, ptr %.tr80)
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr80, align 8, !tbaa !825
  %i.g = getelementptr inbounds nuw i8, ptr %.tr80, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.tr7281, i64 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !765
  %i.j = load <2 x ptr>, ptr %.tr7281, align 8, !tbaa !419
  store ptr %i.i, ptr %i.h, align 8, !tbaa !765
  store <2 x ptr> %i.j, ptr %.tr80, align 8, !tbaa !419
  store ptr %i.f, ptr %.tr7281, align 8, !tbaa !825
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp sgt i64 %.tr7482, %.tr7583
  br i1 %i.k, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.d
  %i.l = sdiv i64 %.tr7482, 2                     ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %.tr80, i64 %i.l ; 2 uses
  %.val55 = load ptr, ptr %i.m, align 8
  %i.n = tail call fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEESC_NS0_5__ops14_Iter_comp_valIZNSA_21mergeNodeCalleeClonesEPNSA_11ContextNodeERNS6_8DenseSetIPKSK_NS6_12DenseMapInfoISO_vEEEERNS6_8DenseMapIjSL_NSP_IjvEENS6_6detail12DenseMapPairIjSL_EEEEEUlRKSC_S11_E_EEET_S14_S14_RKT0_T1_(ptr %.tr7281, ptr %2, ptr %.val55) ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.tr7281 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4
  br label %bb.e

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.d
  %i.s = sdiv i64 %.tr7583, 2                     ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %.tr7281, i64 %i.s ; 2 uses
  %.val56 = load ptr, ptr %i.t, align 8
  %i.u = tail call fastcc ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEESC_NS0_5__ops14_Val_comp_iterIZNSA_21mergeNodeCalleeClonesEPNSA_11ContextNodeERNS6_8DenseSetIPKSK_NS6_12DenseMapInfoISO_vEEEERNS6_8DenseMapIjSL_NSP_IjvEENS6_6detail12DenseMapPairIjSL_EEEEEUlRKSC_S11_E_EEET_S14_S14_RKT0_T1_(ptr %.tr80, ptr %.tr7281, ptr %.val56) ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.tr80 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4
  br label %bb.e

bb.e:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit60, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.062.0 = phi ptr [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 4 uses
  %.047 = phi i64 [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.s, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 2 uses
  %.0 = phi i64 [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS6_11InstructionEE11ContextEdgeEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 2 uses
  %i.z = icmp eq ptr %.sroa.062.0, %.tr7281
  br i1 %i.z, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq ptr %.sroa.0.0, %.tr7281
  br i1 %i.aa, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.062.0 to i64        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = ptrtoint ptr %.tr7281 to i64            ; 2 uses
  %i.ag = sub i64 %i.af, %i.ac
  %i.ah = ashr exact i64 %i.ag, 4                 ; 3 uses
  %i.ai = sub nsw i64 %i.ae, %i.ah
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i.i, label %bb.h

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.tr7281, %bb.g ] ; 4 uses
  %.sroa.05.07.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.sroa.062.0, %bb.g ] ; 4 uses
  %i.ak = load ptr, ptr %.sroa.05.07.i.i.i, align 8, !tbaa !825
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !765
  %i.ao = load <2 x ptr>, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !419
  store ptr %i.an, ptr %i.am, align 8, !tbaa !765
  store <2 x ptr> %i.ao, ptr %.sroa.05.07.i.i.i, align 8, !tbaa !419
  store ptr %i.ak, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !825
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.ap, %.tr7281
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit, label %.lr.ph.i.i.i, !llvm.loop !157

bb.h:                                             ; preds = %bb.g
  %i.ar = sub i64 %i.ab, %i.af
  %i.as = getelementptr inbounds i8, ptr %.sroa.062.0, i64 %i.ar ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %bb.h
  %.058.i.i = phi i64 [ %i.ae, %bb.h ], [ %.058.i.i.be, %.backedge ] ; 5 uses
  %.0.i.i = phi i64 [ %i.ah, %bb.h ], [ %.0.i.i.be, %.backedge ] ; 12 uses
  %.sroa.038.0.i.i = phi ptr [ %.sroa.062.0, %bb.h ], [ %.sroa.038.0.i.i.be, %.backedge ] ; 7 uses
  %i.at = sub nsw i64 %.058.i.i, %.0.i.i          ; 8 uses
  %i.au = icmp slt i64 %.0.i.i, %i.at
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.av = icmp sgt i64 %i.at, 0
  br i1 %i.av, label %.lr.ph68.preheader.i.i, label %._crit_edge69.i.i

.lr.ph68.preheader.i.i:                           ; preds = %bb.j
  %i.aw = getelementptr inbounds [16 x i8], ptr %.sroa.038.0.i.i, i64 %.0.i.i ; 2 uses
  %.neg = add i64 %.0.i.i, 1
  %xtraiter105 = and i64 %i.at, 1
  %i.ax = icmp eq i64 %.058.i.i, %.neg
  br i1 %i.ax, label %.lr.ph68.i.i.epil.preheader, label %.lr.ph68.preheader.i.i.new

.lr.ph68.preheader.i.i.new:                       ; preds = %.lr.ph68.preheader.i.i
  %unroll_iter109 = and i64 %i.at, 9223372036854775806
  br label %.lr.ph68.i.i

._crit_edge69.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph68.i.i
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %._crit_edge69.i.i, label %.lr.ph68.i.i.epil.preheader

.lr.ph68.i.i.epil.preheader:                      ; preds = %._crit_edge69.i.i.loopexit.unr-lcssa, %.lr.ph68.preheader.i.i
  %.sroa.037.065.i.i.epil.init = phi ptr [ %i.aw, %.lr.ph68.preheader.i.i ], [ %i.bs, %._crit_edge69.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.038.164.i.i.epil.init = phi ptr [ %.sroa.038.0.i.i, %.lr.ph68.preheader.i.i ], [ %i.br, %._crit_edge69.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod108 = trunc i64 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ay = load ptr, ptr %.sroa.038.164.i.i.epil.init, align 8, !tbaa !825
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i.epil.init, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i.epil.init, i64 8
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !765
  %i.bc = load <2 x ptr>, ptr %.sroa.037.065.i.i.epil.init, align 8, !tbaa !419
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !765
  store <2 x ptr> %i.bc, ptr %.sroa.038.164.i.i.epil.init, align 8, !tbaa !419
  store ptr %i.ay, ptr %.sroa.037.065.i.i.epil.init, align 8, !tbaa !825
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i.epil.init, i64 16
  br label %._crit_edge69.i.i

._crit_edge69.i.i:                                ; preds = %.lr.ph68.i.i.epil.preheader, %._crit_edge69.i.i.loopexit.unr-lcssa, %bb.j
  %.sroa.038.1.lcssa.i.i = phi ptr [ %.sroa.038.0.i.i, %bb.j ], [ %i.br, %._crit_edge69.i.i.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph68.i.i.epil.preheader ]
  %i.be = srem i64 %.058.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.be, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS7_11InstructionEE11ContextEdgeEESt6vectorISD_SaISD_EEEEEET_SJ_SJ_SJ_.exit, label %bb.k

.lr.ph68.i.i:                                     ; preds = %.lr.ph68.i.i, %.lr.ph68.preheader.i.i.new
  %.sroa.037.065.i.i = phi ptr [ %i.aw, %.lr.ph68.preheader.i.i.new ], [ %i.bs, %.lr.ph68.i.i ] ; 6 uses
  %.sroa.038.164.i.i = phi ptr [ %.sroa.038.0.i.i, %.lr.ph68.preheader.i.i.new ], [ %i.br, %.lr.ph68.i.i ] ; 6 uses
  %niter110 = phi i64 [ 0, %.lr.ph68.preheader.i.i.new ], [ %niter110.next.1, %.lr.ph68.i.i ]
  %i.bf = load ptr, ptr %.sroa.038.164.i.i, align 8, !tbaa !825
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 8
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !765
  %i.bj = load <2 x ptr>, ptr %.sroa.037.065.i.i, align 8, !tbaa !419
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !765
  store <2 x ptr> %i.bj, ptr %.sroa.038.164.i.i, align 8, !tbaa !419
  store ptr %i.bf, ptr %.sroa.037.065.i.i, align 8, !tbaa !825
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !825
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 24
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !765
  %i.bq = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !419
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !765
  store <2 x ptr> %i.bq, ptr %i.bk, align 8, !tbaa !419
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !825
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 32 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 32 ; 2 uses
  %niter110.next.1 = add i64 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %._crit_edge69.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i, !llvm.loop !158

bb.k:                                             ; preds = %._crit_edge69.i.i
  %i.bt = sub nsw i64 %.0.i.i, %i.be
  br label %.backedge

bb.l:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds [16 x i8], ptr %.sroa.038.0.i.i, i64 %.058.i.i ; 3 uses
  %i.bv = sub i64 0, %i.at
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.bv ; 3 uses
  %i.bx = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bx, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %xtraiter = and i64 %.0.i.i, 1
  %i.by = icmp eq i64 %.0.i.i, 1
  br i1 %i.by, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

end_hunk_6
begin_hunk_7_@_ZSt12__move_mergeIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEENSB_5__ops15_Iter_comp_iterIZNS7_14identifyClonesEPNS7_11ContextNodeERNS4_8DenseSetIPKSJ_NS4_12DenseMapInfoISN_vEEEERKNSL_IjNSO_IjvEEEEEUlRKS9_SX_E_EEET0_T_S11_S11_S11_S10_T1_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01649, i8 0, i64 16, i1 false)
  store ptr %.016.val, ptr %.sroa.036.047, align 8, !tbaa !1026
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !765 ; 8 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !765
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclIPSO_SU_EEbT_T0_.exit.thread
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.by, align 8, !tbaa !759
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !760
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28, !inline_history !177
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28, !inline_history !177
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit

bb.i:                                             ; preds = %bb.g
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.j ], [ %i.cl, %bb.k ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.l, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit, !prof !609

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclIPSO_SU_EEbT_T0_.exit.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %.01649, i64 16
  br label %bb.s

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclIPSO_SU_EEbT_T0_.exit.thread38: ; preds = %.lr.ph, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclIPSO_SU_EEbT_T0_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !765
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.050, i8 0, i64 16, i1 false)
  store ptr %.0.val, ptr %.sroa.036.047, align 8, !tbaa !1026
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !765 ; 8 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !765
  %.not.i.i.i.i20 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i20, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclIPSO_SU_EEbT_T0_.exit.thread38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cs, align 8, !tbaa !759
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !760
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !198
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !177
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !198
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28, !inline_history !177
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24

bb.o:                                             ; preds = %bb.m
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i21 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

bb.q:                                             ; preds = %bb.o
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i23 = phi i32 [ %i.cv, %bb.p ], [ %i.df, %bb.q ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i23, 1
  br i1 %i.dg, label %bb.r, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24, !prof !609

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclIPSO_SU_EEbT_T0_.exit.thread38, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.050, i64 16
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit
  %.117 = phi ptr [ %i.cn, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit ], [ %.01649, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24 ] ; 3 uses
  %.1 = phi ptr [ %.050, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit ], [ %i.dh, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit24 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 16 ; 2 uses
  %i.dj = icmp ne ptr %.1, %1
  %i.dk = icmp ne ptr %.117, %3
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph, label %._crit_edge, !llvm.loop !8413

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %.sroa.036.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.di, %bb.s ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.s ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.s ] ; 2 uses
  %i.dm = ptrtoint ptr %1 to i64
  %i.dn = ptrtoint ptr %.0.lcssa to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 4                 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.el, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ], [ %i.dp, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ek, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ], [ %.sroa.036.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ej, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ds = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.ds, ptr %.0811.i.i.i.i.i, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.du, align 8, !tbaa !759
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !760
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !198
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28, !inline_history !178
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !198
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28, !inline_history !178
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dx, %bb.w ], [ %i.eh, %bb.x ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.y, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i, !prof !609

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.u, %.lr.ph.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.el = add nsw i64 %.012.i.i.i.i.i, -1
  %i.em = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.em, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit, !llvm.loop !131

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.036.0.lcssa, %._crit_edge ], [ %i.ek, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ]
  %i.en = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.eo = ptrtoint ptr %.sroa.036.0.lcssa to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %.sroa.036.0.lcssa, i64 %i.ep ; 2 uses
  %i.er = ptrtoint ptr %3 to i64
  %i.es = ptrtoint ptr %.016.lcssa to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 4                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i26, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit35

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34
  %.012.i.i.i.i.i27 = phi i64 [ %i.fq, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34 ], [ %i.eu, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.fp, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34 ], [ %i.eq, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ] ; 3 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.fo, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34 ], [ %.016.lcssa, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.ex = load <2 x ptr>, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i29, i8 0, i64 16, i1 false)
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.ex, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ez, align 8, !tbaa !759
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !760
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !198
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  tail call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28, !inline_history !178
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !198
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  tail call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28, !inline_history !178
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34

bb.ab:                                            ; preds = %bb.z
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i31 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i31, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32

bb.ad:                                            ; preds = %bb.ab
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i.i.i.i33 = phi i32 [ %i.fc, %bb.ac ], [ %i.fm, %bb.ad ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i33, 1
  br i1 %i.fn, label %bb.ae, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34, !prof !609

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i32, %bb.aa, %.lr.ph.i.i.i.i.i26
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16 ; 2 uses
  %i.fq = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.fr = icmp sgt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i26, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit35.loopexit, !llvm.loop !131

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit35.loopexit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i34
  %6 = ptrtoint ptr %i.fp to i64
  br label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit35

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit35: ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit35.loopexit, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit
  %.08.lcssa.i.i.i.i.i25 = phi i64 [ %i.en, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ], [ %6, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit35.loopexit ]
  %i.fs = sub i64 %.08.lcssa.i.i.i.i.i25, %i.en
  %i.ft = getelementptr inbounds i8, ptr %i.eq, i64 %i.fs
  ret ptr %i.ft
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_14identifyClonesEPNS9_11ContextNodeERNS6_8DenseSetIPKSJ_NS6_12DenseMapInfoISN_vEEEERKNSL_IjNSO_IjvEEEEEUlRKSB_SX_E_EEEvT_S10_S10_T0_S11_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree readonly captures(none) %5) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond92 = or i1 %i.a, %i.b
  br i1 %or.cond92, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread76, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit
  %.tr8396 = phi i64 [ %i.fl, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %4, %bb.a ] ; 4 uses
  %.tr8295 = phi i64 [ %i.fk, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %3, %bb.a ] ; 4 uses
  %.tr8094 = phi ptr [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %1, %bb.a ] ; 13 uses
  %.tr93 = phi ptr [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %0, %bb.a ] ; 7 uses
  %i.c = add nsw i64 %.tr8396, %.tr8295
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %.val3.i = load ptr, ptr %.tr8094, align 8, !tbaa !967 ; 6 uses
  %.val4.i = load ptr, ptr %.tr93, align 8        ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val3.i, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !670
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread76, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.val4.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !670
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !970   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !970   ; 2 uses
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !647, !noalias !8430 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val3.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !669, !noalias !8430 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val3.i, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !646, !noalias !8430 ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.w ; 3 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.not.i.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nuw nsw i64 %i.w, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !231, !noalias !8431 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, label %.lr.ph134

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph134
  %i.ad = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.z
  br i1 %i.ae, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, label %.lr.ph134, !llvm.loop !24

.lr.ph134:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.af = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !231, !noalias !8431 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !24

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph134
  %i.aj = shl i64 %i.af, 7
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.loopexit.i.i.i.i.i, %bb.f
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.aj, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.ah, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %i.ak = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.r, i64 %.012.lcssa.i.i.i.i.i.i
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.al
  br label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i

_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.an, %._crit_edge.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.i ]
  %i.ao = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !231
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !647, !noalias !8432 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !669, !noalias !8432 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val4.i, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !646, !noalias !8432 ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.au ; 3 uses
  %.not.i.not.i.i.i17.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.not.i.i.i17.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !231, !noalias !8433 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i26.i.i.preheader, label %._crit_edge.i.i.i.i19.i.i

.lr.ph.i.i.i.i26.i.i.preheader:                   ; preds = %bb.g
  %i.ba = icmp eq i64 %i.ax, 1
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit, label %.lr.ph135

.lr.ph.i.i.i.i26.i.i:                             ; preds = %.lr.ph135
  %i.bb = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %i.ax
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit, label %.lr.ph135, !llvm.loop !24

.lr.ph135:                                        ; preds = %.lr.ph.i.i.i.i26.i.i.preheader, %.lr.ph.i.i.i.i26.i.i
  %i.bd = phi i64 [ %i.bb, %.lr.ph.i.i.i.i26.i.i ], [ 1, %.lr.ph.i.i.i.i26.i.i.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !231, !noalias !8433 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i26.i.i, label %._crit_edge.i.loopexit.i.i.i28.i.i, !llvm.loop !24

._crit_edge.i.loopexit.i.i.i28.i.i:               ; preds = %.lr.ph135
  %i.bh = shl i64 %i.bd, 7
  br label %._crit_edge.i.i.i.i19.i.i

._crit_edge.i.i.i.i19.i.i:                        ; preds = %._crit_edge.i.loopexit.i.i.i28.i.i, %bb.g
  %.012.lcssa.i.i.i.i20.i.i = phi i64 [ 0, %bb.g ], [ %i.bh, %._crit_edge.i.loopexit.i.i.i28.i.i ]
  %.0.lcssa.i.i.i.i21.i.i = phi i32 [ %i.ay, %bb.g ], [ %i.bf, %._crit_edge.i.loopexit.i.i.i28.i.i ]
  %i.bi = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i21.i.i, i1 true)
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.ap, i64 %.012.lcssa.i.i.i.i20.i.i
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %i.bj
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit

.split:                                           ; preds = %bb.d
  %i.bm = zext i8 %i.n to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !231
  %i.bp = zext i8 %i.p to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !231
  %i.bs = icmp ult i32 %i.bo, %i.br
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread76

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit: ; preds = %.lr.ph.i.i.i.i26.i.i, %.lr.ph.i.i.i.i26.i.i.preheader, %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i, %._crit_edge.i.i.i.i19.i.i
  %.sroa.0.0.i22.i.i = phi ptr [ %i.av, %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit.i.i ], [ %i.bl, %._crit_edge.i.i.i.i19.i.i ], [ %i.av, %.lr.ph.i.i.i.i26.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i26.i.i ]
  %i.bt = load i32, ptr %.sroa.0.0.i22.i.i, align 4, !tbaa !231
  %i.bu = icmp ult i32 %i.ao, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread76

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread: ; preds = %bb.c, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit
  store ptr %.val3.i, ptr %.tr93, align 8, !tbaa !1026
  store ptr %.val4.i, ptr %.tr8094, align 8, !tbaa !1026
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr93, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr8094, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !765
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !765
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !765
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !765
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE14identifyClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERKNSB_IjNSE_IjvEEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEESQ_E_EclINS_17__normal_iteratorIPSO_St6vectorISO_SaISO_EEEESZ_EEbT_T0_.exit.thread76

bb.h:                                             ; preds = %.lr.ph
  %i.bz = icmp sgt i64 %.tr8295, %.tr8396
  br i1 %i.bz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %i.ca = sdiv i64 %.tr8295, 2                    ; 2 uses
  %i.cb = getelementptr inbounds [16 x i8], ptr %.tr93, i64 %i.ca ; 2 uses
  %.val58 = load ptr, ptr %i.cb, align 8
  %i.cc = tail call fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEESB_NS0_5__ops14_Iter_comp_valIZNS9_14identifyClonesEPNS9_11ContextNodeERNS6_8DenseSetIPKSJ_NS6_12DenseMapInfoISN_vEEEERKNSL_IjNSO_IjvEEEEEUlRKSB_SX_E_EEET_S10_S10_RKT0_T1_(ptr %.tr8094, ptr %2, ptr %.val58, ptr %5) ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.tr8094 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 4
  br label %bb.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit63: ; preds = %bb.h
  %i.ch = sdiv i64 %.tr8396, 2                    ; 2 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %.tr8094, i64 %i.ch ; 2 uses
  %.val59 = load ptr, ptr %i.ci, align 8
  %i.cj = tail call fastcc ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEESB_NS0_5__ops14_Val_comp_iterIZNS9_14identifyClonesEPNS9_11ContextNodeERNS6_8DenseSetIPKSJ_NS6_12DenseMapInfoISN_vEEEERKNSL_IjNSO_IjvEEEEEUlRKSB_SX_E_EEET_S10_S10_RKT0_T1_(ptr %.tr93, ptr %.tr8094, ptr %.val59, ptr %5) ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.tr93 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  br label %bb.i

bb.i:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.066.0 = phi ptr [ %i.cb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.cj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %i.cc, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ci, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 4 uses
  %.049 = phi i64 [ %i.cg, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ch, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 2 uses
  %.0 = phi i64 [ %i.ca, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.cn, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit63 ] ; 2 uses
  %i.co = icmp eq ptr %.sroa.066.0, %.tr8094
end_hunk_7
begin_hunk_8_@_ZSt12__move_mergeIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEENSB_5__ops15_Iter_comp_iterIZNS7_21mergeNodeCalleeClonesEPNS7_11ContextNodeERNS4_8DenseSetIPKSJ_NS4_12DenseMapInfoISN_vEEEERNS4_8DenseMapIjSK_NSO_IjvEENS4_6detail12DenseMapPairIjSK_EEEEEUlRKS9_S10_E_EEET0_T_S14_S14_S14_S13_T1_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01647, i8 0, i64 16, i1 false)
  store ptr %.016.val, ptr %.sroa.0.045, align 8, !tbaa !1026
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !765 ; 8 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !765
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERNS5_8DenseMapIjSA_NSE_IjvEENS5_6detail12DenseMapPairIjSA_EEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEEST_E_EclIPSR_SX_EEbT_T0_.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.cf, align 8, !tbaa !759
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !760
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !198
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #28, !inline_history !177
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !198
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #28, !inline_history !177
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit

bb.j:                                             ; preds = %bb.h
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.k ], [ %i.cs, %bb.l ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.m, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit, !prof !609

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERNS5_8DenseMapIjSA_NSE_IjvEENS5_6detail12DenseMapPairIjSA_EEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEEST_E_EclIPSR_SX_EEbT_T0_.exit.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %.01647, i64 16
  br label %bb.t

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERNS5_8DenseMapIjSA_NSE_IjvEENS5_6detail12DenseMapPairIjSA_EEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEEST_E_EclIPSR_SX_EEbT_T0_.exit.thread36: ; preds = %bb.d, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERNS5_8DenseMapIjSA_NSE_IjvEENS5_6detail12DenseMapPairIjSA_EEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEEST_E_EclIPSR_SX_EEbT_T0_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !765
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.048, i8 0, i64 16, i1 false)
  store ptr %.0.val, ptr %.sroa.0.045, align 8, !tbaa !1026
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !765 ; 8 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !765
  %.not.i.i.i.i19 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i19, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23, label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERNS5_8DenseMapIjSA_NSE_IjvEENS5_6detail12DenseMapPairIjSA_EEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEEST_E_EclIPSR_SX_EEbT_T0_.exit.thread36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.cz, align 8, !tbaa !759
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !760
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !198
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28, !inline_history !177
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !198
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28, !inline_history !177
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23

bb.p:                                             ; preds = %bb.n
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i20 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

bb.r:                                             ; preds = %bb.p
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i22 = phi i32 [ %i.dc, %bb.q ], [ %i.dm, %bb.r ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i22, 1
  br i1 %i.dn, label %bb.s, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23, !prof !609

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERNS5_8DenseMapIjSA_NSE_IjvEENS5_6detail12DenseMapPairIjSA_EEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEEST_E_EclIPSR_SX_EEbT_T0_.exit.thread36, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21, %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %.048, i64 16
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit
  %.117 = phi ptr [ %i.cu, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit ], [ %.01647, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23 ] ; 3 uses
  %.1 = phi ptr [ %.048, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit ], [ %i.do, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit23 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 16 ; 2 uses
  %i.dq = icmp ne ptr %.1, %1
  %i.dr = icmp ne ptr %.117, %3
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %.lr.ph, label %._crit_edge, !llvm.loop !8844

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.dp, %bb.t ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.t ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.t ] ; 2 uses
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = ptrtoint ptr %.0.lcssa to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4                 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.es, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ], [ %i.dw, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.er, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.eq, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.dz = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.dz, ptr %.0811.i.i.i.i.i, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.eb, align 8, !tbaa !759
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !760
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !198
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #28, !inline_history !178
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !198
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  tail call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #28, !inline_history !178
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.x ], [ %i.eo, %bb.y ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ep, label %bb.z, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i, !prof !609

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %.lr.ph.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.es = add nsw i64 %.012.i.i.i.i.i, -1
  %i.et = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.et, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit, !llvm.loop !131

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.er, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i ]
  %i.eu = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.ev = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.ew ; 2 uses
  %i.ey = ptrtoint ptr %3 to i64
  %i.ez = ptrtoint ptr %.016.lcssa to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 4                 ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit34

.lr.ph.i.i.i.i.i25:                               ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33
  %.012.i.i.i.i.i26 = phi i64 [ %i.fx, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33 ], [ %i.fb, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.fw, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33 ], [ %i.ex, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ] ; 3 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.fv, %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33 ], [ %.016.lcssa, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 8
  %i.fe = load <2 x ptr>, ptr %.0910.i.i.i.i.i28, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i28, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !765 ; 8 uses
  store <2 x ptr> %i.fe, ptr %.0811.i.i.i.i.i27, align 8, !tbaa !419
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i25
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.fg, align 8, !tbaa !759
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !760
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !198
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  tail call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #28, !inline_history !178
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !198
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #28, !inline_history !178
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33

bb.ac:                                            ; preds = %bb.aa
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i.i.i.i.i.i.i30 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i30, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !231
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31

bb.ae:                                            ; preds = %bb.ac
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i.i32 = phi i32 [ %i.fj, %bb.ad ], [ %i.ft, %bb.ae ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i32, 1
  br i1 %i.fu, label %bb.af, label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33, !prof !609

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #28
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33

_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i31, %bb.ab, %.lr.ph.i.i.i.i.i25
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 16 ; 2 uses
  %i.fx = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.fy = icmp sgt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit34.loopexit, !llvm.loop !131

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit34.loopexit: ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS0_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS0_9IndexCallEE11ContextEdgeEEaSEOS8_.exit.i.i.i.i.i33
  %5 = ptrtoint ptr %i.fw to i64
  br label %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit34

_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit34: ; preds = %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit34.loopexit, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit
  %.08.lcssa.i.i.i.i.i24 = phi i64 [ %i.eu, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit ], [ %5, %_ZSt4moveIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS1_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS1_9IndexCallEE11ContextEdgeEEN9__gnu_cxx17__normal_iteratorISA_St6vectorIS9_SaIS9_EEEEET0_T_SI_SH_.exit34.loopexit ]
  %i.fz = sub i64 %.08.lcssa.i.i.i.i.i24, %i.eu
  %i.ga = getelementptr inbounds i8, ptr %i.ex, i64 %i.fz
  ret ptr %i.ga
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS6_8DenseSetIPKSJ_NS6_12DenseMapInfoISN_vEEEERNS6_8DenseMapIjSK_NSO_IjvEENS6_6detail12DenseMapPairIjSK_EEEEEUlRKSB_S10_E_EEEvT_S13_S13_T0_S14_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond79 = or i1 %i.a, %i.b
  br i1 %or.cond79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit
  %.tr7583 = phi i64 [ %i.cw, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %4, %bb.a ] ; 4 uses
  %.tr7482 = phi i64 [ %i.cv, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %3, %bb.a ] ; 4 uses
  %.tr7281 = phi ptr [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %1, %bb.a ] ; 14 uses
  %.tr80 = phi ptr [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.c = add nsw i64 %.tr7583, %.tr7482
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call fastcc noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS2_9IndexCallEE21mergeNodeCalleeClonesEPNS8_11ContextNodeERNS5_8DenseSetIPKS9_NS5_12DenseMapInfoISD_vEEEERNS5_8DenseMapIjSA_NSE_IjvEENS5_6detail12DenseMapPairIjSA_EEEEEUlRKSt10shared_ptrINS8_11ContextEdgeEEST_E_EclINS_17__normal_iteratorIPSR_St6vectorISR_SaISR_EEEES12_EEbT_T0_(ptr %.tr7281, ptr %.tr80)
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr80, align 8, !tbaa !1026
  %i.g = getelementptr inbounds nuw i8, ptr %.tr80, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.tr7281, i64 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !765
  %i.j = load <2 x ptr>, ptr %.tr7281, align 8, !tbaa !419
  store ptr %i.i, ptr %i.h, align 8, !tbaa !765
  store <2 x ptr> %i.j, ptr %.tr80, align 8, !tbaa !419
  store ptr %i.f, ptr %.tr7281, align 8, !tbaa !1026
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp sgt i64 %.tr7482, %.tr7583
  br i1 %i.k, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.d
  %i.l = sdiv i64 %.tr7482, 2                     ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %.tr80, i64 %i.l ; 2 uses
  %.val55 = load ptr, ptr %i.m, align 8
  %i.n = tail call fastcc ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEESB_NS0_5__ops14_Iter_comp_valIZNS9_21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS6_8DenseSetIPKSJ_NS6_12DenseMapInfoISN_vEEEERNS6_8DenseMapIjSK_NSO_IjvEENS6_6detail12DenseMapPairIjSK_EEEEEUlRKSB_S10_E_EEET_S13_S13_RKT0_T1_(ptr %.tr7281, ptr %2, ptr %.val55) ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.tr7281 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4
  br label %bb.e

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.d
  %i.s = sdiv i64 %.tr7583, 2                     ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %.tr7281, i64 %i.s ; 2 uses
  %.val56 = load ptr, ptr %i.t, align 8
  %i.u = tail call fastcc ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEESB_NS0_5__ops14_Val_comp_iterIZNS9_21mergeNodeCalleeClonesEPNS9_11ContextNodeERNS6_8DenseSetIPKSJ_NS6_12DenseMapInfoISN_vEEEERNS6_8DenseMapIjSK_NSO_IjvEENS6_6detail12DenseMapPairIjSK_EEEEEUlRKSB_S10_E_EEET_S13_S13_RKT0_T1_(ptr %.tr80, ptr %.tr7281, ptr %.val56) ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.tr80 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4
  br label %bb.e

bb.e:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit60, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.062.0 = phi ptr [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 4 uses
  %.047 = phi i64 [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.s, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 2 uses
  %.0 = phi i64 [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 2 uses
  %i.z = icmp eq ptr %.sroa.062.0, %.tr7281
  br i1 %i.z, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq ptr %.sroa.0.0, %.tr7281
  br i1 %i.aa, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.062.0 to i64        ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = ptrtoint ptr %.tr7281 to i64            ; 2 uses
  %i.ag = sub i64 %i.af, %i.ac
  %i.ah = ashr exact i64 %i.ag, 4                 ; 3 uses
  %i.ai = sub nsw i64 %i.ae, %i.ah
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i.i, label %bb.h

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.tr7281, %bb.g ] ; 4 uses
  %.sroa.05.07.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.sroa.062.0, %bb.g ] ; 4 uses
  %i.ak = load ptr, ptr %.sroa.05.07.i.i.i, align 8, !tbaa !1026
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !765
  %i.ao = load <2 x ptr>, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !419
  store ptr %i.an, ptr %i.am, align 8, !tbaa !765
  store <2 x ptr> %i.ao, ptr %.sroa.05.07.i.i.i, align 8, !tbaa !419
  store ptr %i.ak, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !1026
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.ap, %.tr7281
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit, label %.lr.ph.i.i.i, !llvm.loop !179

bb.h:                                             ; preds = %bb.g
  %i.ar = sub i64 %i.ab, %i.af
  %i.as = getelementptr inbounds i8, ptr %.sroa.062.0, i64 %i.ar ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %bb.h
  %.058.i.i = phi i64 [ %i.ae, %bb.h ], [ %.058.i.i.be, %.backedge ] ; 5 uses
  %.0.i.i = phi i64 [ %i.ah, %bb.h ], [ %.0.i.i.be, %.backedge ] ; 12 uses
  %.sroa.038.0.i.i = phi ptr [ %.sroa.062.0, %bb.h ], [ %.sroa.038.0.i.i.be, %.backedge ] ; 7 uses
  %i.at = sub nsw i64 %.058.i.i, %.0.i.i          ; 8 uses
  %i.au = icmp slt i64 %.0.i.i, %i.at
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.av = icmp sgt i64 %i.at, 0
  br i1 %i.av, label %.lr.ph68.preheader.i.i, label %._crit_edge69.i.i

.lr.ph68.preheader.i.i:                           ; preds = %bb.j
  %i.aw = getelementptr inbounds [16 x i8], ptr %.sroa.038.0.i.i, i64 %.0.i.i ; 2 uses
  %.neg = add i64 %.0.i.i, 1
  %xtraiter105 = and i64 %i.at, 1
  %i.ax = icmp eq i64 %.058.i.i, %.neg
  br i1 %i.ax, label %.lr.ph68.i.i.epil.preheader, label %.lr.ph68.preheader.i.i.new

.lr.ph68.preheader.i.i.new:                       ; preds = %.lr.ph68.preheader.i.i
  %unroll_iter109 = and i64 %i.at, 9223372036854775806
  br label %.lr.ph68.i.i

._crit_edge69.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph68.i.i
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %._crit_edge69.i.i, label %.lr.ph68.i.i.epil.preheader

.lr.ph68.i.i.epil.preheader:                      ; preds = %._crit_edge69.i.i.loopexit.unr-lcssa, %.lr.ph68.preheader.i.i
  %.sroa.037.065.i.i.epil.init = phi ptr [ %i.aw, %.lr.ph68.preheader.i.i ], [ %i.bs, %._crit_edge69.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.038.164.i.i.epil.init = phi ptr [ %.sroa.038.0.i.i, %.lr.ph68.preheader.i.i ], [ %i.br, %._crit_edge69.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod108 = trunc i64 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ay = load ptr, ptr %.sroa.038.164.i.i.epil.init, align 8, !tbaa !1026
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i.epil.init, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i.epil.init, i64 8
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !765
  %i.bc = load <2 x ptr>, ptr %.sroa.037.065.i.i.epil.init, align 8, !tbaa !419
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !765
  store <2 x ptr> %i.bc, ptr %.sroa.038.164.i.i.epil.init, align 8, !tbaa !419
  store ptr %i.ay, ptr %.sroa.037.065.i.i.epil.init, align 8, !tbaa !1026
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i.epil.init, i64 16
  br label %._crit_edge69.i.i

._crit_edge69.i.i:                                ; preds = %.lr.ph68.i.i.epil.preheader, %._crit_edge69.i.i.loopexit.unr-lcssa, %bb.j
  %.sroa.038.1.lcssa.i.i = phi ptr [ %.sroa.038.0.i.i, %bb.j ], [ %i.br, %._crit_edge69.i.i.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph68.i.i.epil.preheader ]
  %i.be = srem i64 %.058.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.be, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS4_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS4_9IndexCallEE11ContextEdgeEESt6vectorISC_SaISC_EEEEEET_SI_SI_SI_.exit, label %bb.k

.lr.ph68.i.i:                                     ; preds = %.lr.ph68.i.i, %.lr.ph68.preheader.i.i.new
  %.sroa.037.065.i.i = phi ptr [ %i.aw, %.lr.ph68.preheader.i.i.new ], [ %i.bs, %.lr.ph68.i.i ] ; 6 uses
  %.sroa.038.164.i.i = phi ptr [ %.sroa.038.0.i.i, %.lr.ph68.preheader.i.i.new ], [ %i.br, %.lr.ph68.i.i ] ; 6 uses
  %niter110 = phi i64 [ 0, %.lr.ph68.preheader.i.i.new ], [ %niter110.next.1, %.lr.ph68.i.i ]
  %i.bf = load ptr, ptr %.sroa.038.164.i.i, align 8, !tbaa !1026
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 8
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !765
  %i.bj = load <2 x ptr>, ptr %.sroa.037.065.i.i, align 8, !tbaa !419
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !765
  store <2 x ptr> %i.bj, ptr %.sroa.038.164.i.i, align 8, !tbaa !419
  store ptr %i.bf, ptr %.sroa.037.065.i.i, align 8, !tbaa !1026
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !1026
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 24
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !765
  %i.bq = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !419
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !765
  store <2 x ptr> %i.bq, ptr %i.bk, align 8, !tbaa !419
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !1026
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 32 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 32 ; 2 uses
  %niter110.next.1 = add i64 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %._crit_edge69.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i, !llvm.loop !180

bb.k:                                             ; preds = %._crit_edge69.i.i
  %i.bt = sub nsw i64 %.0.i.i, %i.be
  br label %.backedge

bb.l:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds [16 x i8], ptr %.sroa.038.0.i.i, i64 %.058.i.i ; 3 uses
  %i.bv = sub i64 0, %i.at
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.bv ; 3 uses
  %i.bx = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bx, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %xtraiter = and i64 %.0.i.i, 1
  %i.by = icmp eq i64 %.0.i.i, 1
  br i1 %i.by, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

end_hunk_8
