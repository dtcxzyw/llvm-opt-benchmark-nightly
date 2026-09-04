Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-profdata?download=true
inline.NumInlined: 16600
inline.NumDeleted: 7559
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZL21traverseAllValueSitesRKN4llvm15InstrProfRecordEjRN12_GLOBAL__N_115ValueSitesStatsERNS_14raw_fd_ostreamEPNS_15InstrProfSymtabE:bb.a
.lr.ph.i.i.i.i.i10.i24.i254.prol:                 ; preds = %.lr.ph.i.i.i.i.i10.i24.i254.preheader, %.lr.ph.i.i.i.i.i10.i24.i254.prol
  %.012.i.i.i.i.i11.i25.i255.prol = phi i64 [ %i.aaq, %.lr.ph.i.i.i.i.i10.i24.i254.prol ], [ %i.aai, %.lr.ph.i.i.i.i.i10.i24.i254.preheader ]
  %.0811.i.i.i.i.i12.i26.i256.prol = phi ptr [ %i.aap, %.lr.ph.i.i.i.i.i10.i24.i254.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i253, %.lr.ph.i.i.i.i.i10.i24.i254.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i257.prol = phi ptr [ %i.aao, %.lr.ph.i.i.i.i.i10.i24.i254.prol ], [ %.sroa.015.0.lcssa.i18.i249, %.lr.ph.i.i.i.i.i10.i24.i254.preheader ] ; 3 uses
  %prol.iter865 = phi i64 [ %prol.iter865.next, %.lr.ph.i.i.i.i.i10.i24.i254.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i254.preheader ]
  %i.aak = load i64, ptr %.0910.i.i.i.i.i13.i27.i257.prol, align 8, !tbaa !149
  store i64 %i.aak, ptr %.0811.i.i.i.i.i12.i26.i256.prol, align 8, !tbaa !534
  %i.aal = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257.prol, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !535
  %i.aan = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256.prol, i64 8
  store ptr %i.aam, ptr %i.aan, align 8, !tbaa !536
  %i.aao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257.prol, i64 16 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256.prol, i64 16 ; 2 uses
  %i.aaq = add nsw i64 %.012.i.i.i.i.i11.i25.i255.prol, -1 ; 2 uses
  %prol.iter865.next = add i64 %prol.iter865, 1   ; 2 uses
  %prol.iter865.cmp.not = icmp eq i64 %prol.iter865.next, %xtraiter863
  br i1 %prol.iter865.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i254.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i254.prol, !llvm.loop !2160

.lr.ph.i.i.i.i.i10.i24.i254.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i10.i24.i254.prol, %.lr.ph.i.i.i.i.i10.i24.i254.preheader
  %.012.i.i.i.i.i11.i25.i255.unr = phi i64 [ %i.aai, %.lr.ph.i.i.i.i.i10.i24.i254.preheader ], [ %i.aaq, %.lr.ph.i.i.i.i.i10.i24.i254.prol ]
  %.0811.i.i.i.i.i12.i26.i256.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i253, %.lr.ph.i.i.i.i.i10.i24.i254.preheader ], [ %i.aap, %.lr.ph.i.i.i.i.i10.i24.i254.prol ]
  %.0910.i.i.i.i.i13.i27.i257.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i249, %.lr.ph.i.i.i.i.i10.i24.i254.preheader ], [ %i.aao, %.lr.ph.i.i.i.i.i10.i24.i254.prol ]
  %i.aar = icmp ult i64 %i.aai, 4
  br i1 %i.aar, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281, label %.lr.ph.i.i.i.i.i10.i24.i254

.lr.ph.i.i.i.i.i10.i24.i254:                      ; preds = %.lr.ph.i.i.i.i.i10.i24.i254.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i254
  %.012.i.i.i.i.i11.i25.i255 = phi i64 [ %i.abq, %.lr.ph.i.i.i.i.i10.i24.i254 ], [ %.012.i.i.i.i.i11.i25.i255.unr, %.lr.ph.i.i.i.i.i10.i24.i254.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i256 = phi ptr [ %i.abp, %.lr.ph.i.i.i.i.i10.i24.i254 ], [ %.0811.i.i.i.i.i12.i26.i256.unr, %.lr.ph.i.i.i.i.i10.i24.i254.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i257 = phi ptr [ %i.abo, %.lr.ph.i.i.i.i.i10.i24.i254 ], [ %.0910.i.i.i.i.i13.i27.i257.unr, %.lr.ph.i.i.i.i.i10.i24.i254.prol.loopexit ] ; 9 uses
  %i.aas = load i64, ptr %.0910.i.i.i.i.i13.i27.i257, align 8, !tbaa !149
  store i64 %i.aas, ptr %.0811.i.i.i.i.i12.i26.i256, align 8, !tbaa !534
  %i.aat = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 8
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !535
  %i.aav = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 8
  store ptr %i.aau, ptr %i.aav, align 8, !tbaa !536
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 16
  %i.aax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 16
  %i.aay = load i64, ptr %i.aaw, align 8, !tbaa !149
  store i64 %i.aay, ptr %i.aax, align 8, !tbaa !534
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 24
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !535
  %i.abb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 24
  store ptr %i.aba, ptr %i.abb, align 8, !tbaa !536
  %i.abc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 32
  %i.abd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 32
  %i.abe = load i64, ptr %i.abc, align 8, !tbaa !149
  store i64 %i.abe, ptr %i.abd, align 8, !tbaa !534
  %i.abf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 40
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !535
  %i.abh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 40
  store ptr %i.abg, ptr %i.abh, align 8, !tbaa !536
  %i.abi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 48
  %i.abj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 48
  %i.abk = load i64, ptr %i.abi, align 8, !tbaa !149
  store i64 %i.abk, ptr %i.abj, align 8, !tbaa !534
  %i.abl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 56
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !535
  %i.abn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 56
  store ptr %i.abm, ptr %i.abn, align 8, !tbaa !536
  %i.abo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i257, i64 64
  %i.abp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i256, i64 64
  %i.abq = add nsw i64 %.012.i.i.i.i.i11.i25.i255, -4
  %i.abr = icmp sgt i64 %.012.i.i.i.i.i11.i25.i255, 4
  br i1 %i.abr, label %.lr.ph.i.i.i.i.i10.i24.i254, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281, !llvm.loop !38

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281: ; preds = %.lr.ph.i.i.i.i.i10.i24.i254.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i254, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i252
  %i.abs = shl nsw i64 %.022.i.i, 2               ; 4 uses
  %.not65.i147 = icmp slt i64 %i.ga, %i.abs
  br i1 %.not65.i147, label %._crit_edge.i173, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281
  %.idx.i149 = shl nsw i64 %.022.i.i, 5           ; 2 uses
  %.idx56.i150 = shl nsw i64 %.022.i.i, 6         ; 2 uses
  %.not57.i151 = icmp eq i64 %.idx.i149, %.idx56.i150
  br label %bb.ay

bb.ay:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170, %.lr.ph.i148
  %.sroa.022.067.i152 = phi ptr [ %i.fs, %.lr.ph.i148 ], [ %i.afk, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170 ] ; 2 uses
  %.066.i153 = phi ptr [ %.sroa.10.0.i, %.lr.ph.i148 ], [ %i.abu, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170 ] ; 4 uses
  %i.abt = getelementptr inbounds i8, ptr %.066.i153, i64 %.idx.i149 ; 4 uses
  %i.abu = getelementptr inbounds i8, ptr %.066.i153, i64 %.idx56.i150 ; 4 uses
  br i1 %.not57.i151, label %._crit_edge.i.i164, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %bb.ay, %bb.bb
  %.029.i.i155 = phi ptr [ %.1.i.i161, %bb.bb ], [ %.066.i153, %bb.ay ] ; 4 uses
  %.01628.i.i156 = phi ptr [ %.117.i.i160, %bb.bb ], [ %i.abt, %bb.ay ] ; 4 uses
  %.sroa.0.027.i.i157 = phi ptr [ %i.acb, %bb.bb ], [ %.sroa.022.067.i152, %bb.ay ] ; 3 uses
  %i.abv = load i64, ptr %.01628.i.i156, align 8, !tbaa !149 ; 2 uses
  %i.abw = load i64, ptr %.029.i.i155, align 8, !tbaa !149 ; 2 uses
  %i.abx = icmp ult i64 %i.abv, %i.abw
  br i1 %i.abx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i154
  %i.aby = getelementptr inbounds nuw i8, ptr %.01628.i.i156, i64 16
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i154
  %i.abz = getelementptr inbounds nuw i8, ptr %.029.i.i155, i64 16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink34.i.i158 = phi i64 [ %i.abv, %bb.az ], [ %i.abw, %bb.ba ]
  %.01628.pn.i.i159 = phi ptr [ %.01628.i.i156, %bb.az ], [ %.029.i.i155, %bb.ba ]
  %.117.i.i160 = phi ptr [ %i.aby, %bb.az ], [ %.01628.i.i156, %bb.ba ] ; 3 uses
  %.1.i.i161 = phi ptr [ %.029.i.i155, %bb.az ], [ %i.abz, %bb.ba ] ; 3 uses
  %.sink.in.i.i162 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i159, i64 8
  %.sink.i.i163 = load ptr, ptr %.sink.in.i.i162, align 8, !tbaa !535
  store i64 %.sink34.i.i158, ptr %.sroa.0.027.i.i157, align 8, !tbaa !534
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i157, i64 8
  store ptr %.sink.i.i163, ptr %i.aca, align 8, !tbaa !536
  %i.acb = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i157, i64 16 ; 2 uses
  %i.acc = icmp ne ptr %.1.i.i161, %i.abt
  %i.acd = icmp ne ptr %.117.i.i160, %i.abu
  %i.ace = select i1 %i.acc, i1 %i.acd, i1 false
  br i1 %i.ace, label %.lr.ph.i.i154, label %._crit_edge.i.i164, !llvm.loop !40

._crit_edge.i.i164:                               ; preds = %bb.bb, %bb.ay
  %.sroa.0.0.lcssa.i.i165 = phi ptr [ %.sroa.022.067.i152, %bb.ay ], [ %i.acb, %bb.bb ] ; 5 uses
  %.016.lcssa.i.i166 = phi ptr [ %i.abt, %bb.ay ], [ %.117.i.i160, %bb.bb ] ; 3 uses
  %.0.lcssa.i.i167 = phi ptr [ %.066.i153, %bb.ay ], [ %.1.i.i161, %bb.bb ] ; 3 uses
  %i.acf = ptrtoint ptr %i.abt to i64
  %i.acg = ptrtoint ptr %.0.lcssa.i.i167 to i64
  %i.ach = sub i64 %i.acf, %i.acg
  %i.aci = ashr exact i64 %i.ach, 4               ; 5 uses
  %i.acj = icmp sgt i64 %i.aci, 0
  br i1 %i.acj, label %.lr.ph.i.i.i.i.i.i.i209.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i168

.lr.ph.i.i.i.i.i.i.i209.preheader:                ; preds = %._crit_edge.i.i164
  %xtraiter866 = and i64 %i.aci, 3                ; 2 uses
  %lcmp.mod867.not = icmp eq i64 %xtraiter866, 0
  br i1 %lcmp.mod867.not, label %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i209.prol

.lr.ph.i.i.i.i.i.i.i209.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i209.preheader, %.lr.ph.i.i.i.i.i.i.i209.prol
  %.012.i.i.i.i.i.i.i210.prol = phi i64 [ %i.acq, %.lr.ph.i.i.i.i.i.i.i209.prol ], [ %i.aci, %.lr.ph.i.i.i.i.i.i.i209.preheader ]
  %.0811.i.i.i.i.i.i.i211.prol = phi ptr [ %i.acp, %.lr.ph.i.i.i.i.i.i.i209.prol ], [ %.sroa.0.0.lcssa.i.i165, %.lr.ph.i.i.i.i.i.i.i209.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i212.prol = phi ptr [ %i.aco, %.lr.ph.i.i.i.i.i.i.i209.prol ], [ %.0.lcssa.i.i167, %.lr.ph.i.i.i.i.i.i.i209.preheader ] ; 3 uses
  %prol.iter868 = phi i64 [ %prol.iter868.next, %.lr.ph.i.i.i.i.i.i.i209.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i209.preheader ]
  %i.ack = load i64, ptr %.0910.i.i.i.i.i.i.i212.prol, align 8, !tbaa !149
  store i64 %i.ack, ptr %.0811.i.i.i.i.i.i.i211.prol, align 8, !tbaa !534
  %i.acl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212.prol, i64 8
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !535
  %i.acn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211.prol, i64 8
  store ptr %i.acm, ptr %i.acn, align 8, !tbaa !536
  %i.aco = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212.prol, i64 16 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211.prol, i64 16 ; 3 uses
  %i.acq = add nsw i64 %.012.i.i.i.i.i.i.i210.prol, -1 ; 2 uses
  %prol.iter868.next = add i64 %prol.iter868, 1   ; 2 uses
  %prol.iter868.cmp.not = icmp eq i64 %prol.iter868.next, %xtraiter866
  br i1 %prol.iter868.cmp.not, label %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i209.prol, !llvm.loop !2161

.lr.ph.i.i.i.i.i.i.i209.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i209.prol, %.lr.ph.i.i.i.i.i.i.i209.preheader
  %.012.i.i.i.i.i.i.i210.unr = phi i64 [ %i.aci, %.lr.ph.i.i.i.i.i.i.i209.preheader ], [ %i.acq, %.lr.ph.i.i.i.i.i.i.i209.prol ]
  %.0811.i.i.i.i.i.i.i211.unr = phi ptr [ %.sroa.0.0.lcssa.i.i165, %.lr.ph.i.i.i.i.i.i.i209.preheader ], [ %i.acp, %.lr.ph.i.i.i.i.i.i.i209.prol ]
  %.0910.i.i.i.i.i.i.i212.unr = phi ptr [ %.0.lcssa.i.i167, %.lr.ph.i.i.i.i.i.i.i209.preheader ], [ %i.aco, %.lr.ph.i.i.i.i.i.i.i209.prol ]
  %.lcssa780.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i209.preheader ], [ %i.acp, %.lr.ph.i.i.i.i.i.i.i209.prol ]
  %i.acr = icmp ult i64 %i.aci, 4
  br i1 %i.acr, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i168, label %.lr.ph.i.i.i.i.i.i.i209

.lr.ph.i.i.i.i.i.i.i209:                          ; preds = %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i209
  %.012.i.i.i.i.i.i.i210 = phi i64 [ %i.adq, %.lr.ph.i.i.i.i.i.i.i209 ], [ %.012.i.i.i.i.i.i.i210.unr, %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i211 = phi ptr [ %i.adp, %.lr.ph.i.i.i.i.i.i.i209 ], [ %.0811.i.i.i.i.i.i.i211.unr, %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i212 = phi ptr [ %i.ado, %.lr.ph.i.i.i.i.i.i.i209 ], [ %.0910.i.i.i.i.i.i.i212.unr, %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit ] ; 9 uses
  %i.acs = load i64, ptr %.0910.i.i.i.i.i.i.i212, align 8, !tbaa !149
  store i64 %i.acs, ptr %.0811.i.i.i.i.i.i.i211, align 8, !tbaa !534
  %i.act = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 8
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !535
  %i.acv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 8
  store ptr %i.acu, ptr %i.acv, align 8, !tbaa !536
  %i.acw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 16
  %i.acx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 16
  %i.acy = load i64, ptr %i.acw, align 8, !tbaa !149
  store i64 %i.acy, ptr %i.acx, align 8, !tbaa !534
  %i.acz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 24
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !535
  %i.adb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 24
  store ptr %i.ada, ptr %i.adb, align 8, !tbaa !536
  %i.adc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 32
  %i.add = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 32
  %i.ade = load i64, ptr %i.adc, align 8, !tbaa !149
  store i64 %i.ade, ptr %i.add, align 8, !tbaa !534
  %i.adf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 40
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !535
  %i.adh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 40
  store ptr %i.adg, ptr %i.adh, align 8, !tbaa !536
  %i.adi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 48
  %i.adj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 48
  %i.adk = load i64, ptr %i.adi, align 8, !tbaa !149
  store i64 %i.adk, ptr %i.adj, align 8, !tbaa !534
  %i.adl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 56
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !535
  %i.adn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 56
  store ptr %i.adm, ptr %i.adn, align 8, !tbaa !536
  %i.ado = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i212, i64 64
  %i.adp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i211, i64 64 ; 2 uses
  %i.adq = add nsw i64 %.012.i.i.i.i.i.i.i210, -4
  %i.adr = icmp sgt i64 %.012.i.i.i.i.i.i.i210, 4
  br i1 %i.adr, label %.lr.ph.i.i.i.i.i.i.i209, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i168, !llvm.loop !38

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i168: ; preds = %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i209, %._crit_edge.i.i164
  %.08.lcssa.i.i.i.i.i.i.i169 = phi ptr [ %.sroa.0.0.lcssa.i.i165, %._crit_edge.i.i164 ], [ %.lcssa780.unr.a, %.lr.ph.i.i.i.i.i.i.i209.prol.loopexit ], [ %i.adp, %.lr.ph.i.i.i.i.i.i.i209 ]
  %i.ads = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i169 to i64 ; 3 uses
  %i.adt = ptrtoint ptr %.sroa.0.0.lcssa.i.i165 to i64
  %i.adu = sub i64 %i.ads, %i.adt
  %i.adv = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i165, i64 %i.adu ; 3 uses
  %i.adw = ptrtoint ptr %i.abu to i64             ; 2 uses
  %i.adx = ptrtoint ptr %.016.lcssa.i.i166 to i64
  %i.ady = sub i64 %i.adw, %i.adx
  %i.adz = ashr exact i64 %i.ady, 4               ; 5 uses
  %i.aea = icmp sgt i64 %i.adz, 0
  br i1 %i.aea, label %.lr.ph.i.i.i.i.i19.i.i204.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170

.lr.ph.i.i.i.i.i19.i.i204.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i168
  %xtraiter869 = and i64 %i.adz, 3                ; 2 uses
  %lcmp.mod870.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod870.not, label %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i204.prol

.lr.ph.i.i.i.i.i19.i.i204.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i204.preheader, %.lr.ph.i.i.i.i.i19.i.i204.prol
  %.012.i.i.i.i.i20.i.i205.prol = phi i64 [ %i.aeh, %.lr.ph.i.i.i.i.i19.i.i204.prol ], [ %i.adz, %.lr.ph.i.i.i.i.i19.i.i204.preheader ]
  %.0811.i.i.i.i.i21.i.i206.prol = phi ptr [ %i.aeg, %.lr.ph.i.i.i.i.i19.i.i204.prol ], [ %i.adv, %.lr.ph.i.i.i.i.i19.i.i204.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i207.prol = phi ptr [ %i.aef, %.lr.ph.i.i.i.i.i19.i.i204.prol ], [ %.016.lcssa.i.i166, %.lr.ph.i.i.i.i.i19.i.i204.preheader ] ; 3 uses
  %prol.iter871 = phi i64 [ %prol.iter871.next, %.lr.ph.i.i.i.i.i19.i.i204.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i204.preheader ]
  %i.aeb = load i64, ptr %.0910.i.i.i.i.i22.i.i207.prol, align 8, !tbaa !149
  store i64 %i.aeb, ptr %.0811.i.i.i.i.i21.i.i206.prol, align 8, !tbaa !534
  %i.aec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207.prol, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !535
  %i.aee = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206.prol, i64 8
  store ptr %i.aed, ptr %i.aee, align 8, !tbaa !536
  %i.aef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207.prol, i64 16 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206.prol, i64 16 ; 3 uses
  %i.aeh = add nsw i64 %.012.i.i.i.i.i20.i.i205.prol, -1 ; 2 uses
  %prol.iter871.next = add i64 %prol.iter871, 1   ; 2 uses
  %prol.iter871.cmp.not = icmp eq i64 %prol.iter871.next, %xtraiter869
  br i1 %prol.iter871.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i204.prol, !llvm.loop !2162

.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i204.prol, %.lr.ph.i.i.i.i.i19.i.i204.preheader
  %.012.i.i.i.i.i20.i.i205.unr = phi i64 [ %i.adz, %.lr.ph.i.i.i.i.i19.i.i204.preheader ], [ %i.aeh, %.lr.ph.i.i.i.i.i19.i.i204.prol ]
  %.0811.i.i.i.i.i21.i.i206.unr = phi ptr [ %i.adv, %.lr.ph.i.i.i.i.i19.i.i204.preheader ], [ %i.aeg, %.lr.ph.i.i.i.i.i19.i.i204.prol ]
  %.0910.i.i.i.i.i22.i.i207.unr = phi ptr [ %.016.lcssa.i.i166, %.lr.ph.i.i.i.i.i19.i.i204.preheader ], [ %i.aef, %.lr.ph.i.i.i.i.i19.i.i204.prol ]
  %.lcssa781.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i204.preheader ], [ %i.aeg, %.lr.ph.i.i.i.i.i19.i.i204.prol ]
  %i.aei = icmp ult i64 %i.adz, 4
  br i1 %i.aei, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i208, label %.lr.ph.i.i.i.i.i19.i.i204

.lr.ph.i.i.i.i.i19.i.i204:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i204
  %.012.i.i.i.i.i20.i.i205 = phi i64 [ %i.afh, %.lr.ph.i.i.i.i.i19.i.i204 ], [ %.012.i.i.i.i.i20.i.i205.unr, %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i206 = phi ptr [ %i.afg, %.lr.ph.i.i.i.i.i19.i.i204 ], [ %.0811.i.i.i.i.i21.i.i206.unr, %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i207 = phi ptr [ %i.aff, %.lr.ph.i.i.i.i.i19.i.i204 ], [ %.0910.i.i.i.i.i22.i.i207.unr, %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit ] ; 9 uses
  %i.aej = load i64, ptr %.0910.i.i.i.i.i22.i.i207, align 8, !tbaa !149
  store i64 %i.aej, ptr %.0811.i.i.i.i.i21.i.i206, align 8, !tbaa !534
  %i.aek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 8
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !535
  %i.aem = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 8
  store ptr %i.ael, ptr %i.aem, align 8, !tbaa !536
  %i.aen = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 16
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 16
  %i.aep = load i64, ptr %i.aen, align 8, !tbaa !149
  store i64 %i.aep, ptr %i.aeo, align 8, !tbaa !534
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 24
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !535
  %i.aes = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 24
  store ptr %i.aer, ptr %i.aes, align 8, !tbaa !536
  %i.aet = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 32
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 32
  %i.aev = load i64, ptr %i.aet, align 8, !tbaa !149
  store i64 %i.aev, ptr %i.aeu, align 8, !tbaa !534
  %i.aew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 40
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !535
  %i.aey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 40
  store ptr %i.aex, ptr %i.aey, align 8, !tbaa !536
  %i.aez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 48
  %i.afa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 48
  %i.afb = load i64, ptr %i.aez, align 8, !tbaa !149
  store i64 %i.afb, ptr %i.afa, align 8, !tbaa !534
  %i.afc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 56
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !535
  %i.afe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 56
  store ptr %i.afd, ptr %i.afe, align 8, !tbaa !536
  %i.aff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i207, i64 64
  %i.afg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i206, i64 64 ; 2 uses
  %i.afh = add nsw i64 %.012.i.i.i.i.i20.i.i205, -4
  %i.afi = icmp sgt i64 %.012.i.i.i.i.i20.i.i205, 4
  br i1 %i.afi, label %.lr.ph.i.i.i.i.i19.i.i204, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i208, !llvm.loop !38

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i208: ; preds = %.lr.ph.i.i.i.i.i19.i.i204, %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit
  %.lcssa781 = phi ptr [ %.lcssa781.unr, %.lr.ph.i.i.i.i.i19.i.i204.prol.loopexit ], [ %i.afg, %.lr.ph.i.i.i.i.i19.i.i204 ]
  %13 = ptrtoint ptr %.lcssa781 to i64
  br label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170: ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i208, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i168
  %.08.lcssa.i.i.i.i.i18.i.i171 = phi i64 [ %i.ads, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i168 ], [ %13, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i208 ]
  %i.afj = sub i64 %.08.lcssa.i.i.i.i.i18.i.i171, %i.ads
  %i.afk = getelementptr inbounds i8, ptr %i.adv, i64 %i.afj ; 2 uses
  %i.afl = sub i64 %i.us, %i.adw
  %i.afm = ashr exact i64 %i.afl, 4               ; 2 uses
  %.not.i172 = icmp slt i64 %i.afm, %i.abs
  br i1 %.not.i172, label %._crit_edge.i173, label %bb.ay, !llvm.loop !41

._crit_edge.i173:                                 ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281
  %.0.lcssa.i174 = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281 ], [ %i.abu, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170 ] ; 3 uses
  %.sroa.022.0.lcssa.i175 = phi ptr [ %i.fs, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281 ], [ %i.afk, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170 ] ; 2 uses
  %.lcssa63.i176 = phi i64 [ %i.ga, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit281 ], [ %i.afm, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i170 ]
  %.sroa.speculated.i177 = call i64 @llvm.smin.i64(i64 %i.ut, i64 %.lcssa63.i176) ; 2 uses
  %.idx58.i178 = shl nsw i64 %.sroa.speculated.i177, 4
  %i.afn = getelementptr inbounds i8, ptr %.0.lcssa.i174, i64 %.idx58.i178 ; 5 uses
  %i.afo = icmp ne i64 %.sroa.speculated.i177, 0
  %i.afp = icmp ne ptr %i.afn, %i.gy
  %i.afq = and i1 %i.afo, %i.afp
  br i1 %i.afq, label %.lr.ph.i41.i194, label %._crit_edge.i25.i179

.lr.ph.i41.i194:                                  ; preds = %._crit_edge.i173, %bb.be
  %.029.i42.i195 = phi ptr [ %.1.i48.i201, %bb.be ], [ %.0.lcssa.i174, %._crit_edge.i173 ] ; 4 uses
  %.01628.i43.i196 = phi ptr [ %.117.i47.i200, %bb.be ], [ %i.afn, %._crit_edge.i173 ] ; 4 uses
  %.sroa.0.027.i44.i197 = phi ptr [ %i.afx, %bb.be ], [ %.sroa.022.0.lcssa.i175, %._crit_edge.i173 ] ; 3 uses
  %i.afr = load i64, ptr %.01628.i43.i196, align 8, !tbaa !149 ; 2 uses
  %i.afs = load i64, ptr %.029.i42.i195, align 8, !tbaa !149 ; 2 uses
  %i.aft = icmp ult i64 %i.afr, %i.afs
  br i1 %i.aft, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i41.i194
  %i.afu = getelementptr inbounds nuw i8, ptr %.01628.i43.i196, i64 16
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i41.i194
  %i.afv = getelementptr inbounds nuw i8, ptr %.029.i42.i195, i64 16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink34.i45.i198 = phi i64 [ %i.afr, %bb.bc ], [ %i.afs, %bb.bd ]
  %.01628.pn.i46.i199 = phi ptr [ %.01628.i43.i196, %bb.bc ], [ %.029.i42.i195, %bb.bd ]
  %.117.i47.i200 = phi ptr [ %i.afu, %bb.bc ], [ %.01628.i43.i196, %bb.bd ] ; 3 uses
  %.1.i48.i201 = phi ptr [ %.029.i42.i195, %bb.bc ], [ %i.afv, %bb.bd ] ; 3 uses
  %.sink.in.i49.i202 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i199, i64 8
  %.sink.i50.i203 = load ptr, ptr %.sink.in.i49.i202, align 8, !tbaa !535
  store i64 %.sink34.i45.i198, ptr %.sroa.0.027.i44.i197, align 8, !tbaa !534
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i197, i64 8
  store ptr %.sink.i50.i203, ptr %i.afw, align 8, !tbaa !536
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i197, i64 16 ; 2 uses
  %i.afy = icmp ne ptr %.1.i48.i201, %i.afn
  %i.afz = icmp ne ptr %.117.i47.i200, %i.gy
  %i.aga = select i1 %i.afy, i1 %i.afz, i1 false
  br i1 %i.aga, label %.lr.ph.i41.i194, label %._crit_edge.i25.i179, !llvm.loop !40

._crit_edge.i25.i179:                             ; preds = %bb.be, %._crit_edge.i173
  %.sroa.0.0.lcssa.i26.i180 = phi ptr [ %.sroa.022.0.lcssa.i175, %._crit_edge.i173 ], [ %i.afx, %bb.be ] ; 5 uses
  %.016.lcssa.i27.i181 = phi ptr [ %i.afn, %._crit_edge.i173 ], [ %.117.i47.i200, %bb.be ] ; 3 uses
  %.0.lcssa.i28.i182 = phi ptr [ %.0.lcssa.i174, %._crit_edge.i173 ], [ %.1.i48.i201, %bb.be ] ; 3 uses
  %i.agb = ptrtoint ptr %i.afn to i64
  %i.agc = ptrtoint ptr %.0.lcssa.i28.i182 to i64
  %i.agd = sub i64 %i.agb, %i.agc
  %i.age = ashr exact i64 %i.agd, 4               ; 5 uses
  %i.agf = icmp sgt i64 %i.age, 0
  br i1 %i.agf, label %.lr.ph.i.i.i.i.i.i37.i190.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i183

.lr.ph.i.i.i.i.i.i37.i190.preheader:              ; preds = %._crit_edge.i25.i179
  %xtraiter872 = and i64 %i.age, 3                ; 2 uses
  %lcmp.mod873.not = icmp eq i64 %xtraiter872, 0
  br i1 %lcmp.mod873.not, label %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i190.prol

.lr.ph.i.i.i.i.i.i37.i190.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i37.i190.preheader, %.lr.ph.i.i.i.i.i.i37.i190.prol
  %.012.i.i.i.i.i.i38.i191.prol = phi i64 [ %i.agm, %.lr.ph.i.i.i.i.i.i37.i190.prol ], [ %i.age, %.lr.ph.i.i.i.i.i.i37.i190.preheader ]
  %.0811.i.i.i.i.i.i39.i192.prol = phi ptr [ %i.agl, %.lr.ph.i.i.i.i.i.i37.i190.prol ], [ %.sroa.0.0.lcssa.i26.i180, %.lr.ph.i.i.i.i.i.i37.i190.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i193.prol = phi ptr [ %i.agk, %.lr.ph.i.i.i.i.i.i37.i190.prol ], [ %.0.lcssa.i28.i182, %.lr.ph.i.i.i.i.i.i37.i190.preheader ] ; 3 uses
  %prol.iter874 = phi i64 [ %prol.iter874.next, %.lr.ph.i.i.i.i.i.i37.i190.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i190.preheader ]
  %i.agg = load i64, ptr %.0910.i.i.i.i.i.i40.i193.prol, align 8, !tbaa !149
  store i64 %i.agg, ptr %.0811.i.i.i.i.i.i39.i192.prol, align 8, !tbaa !534
  %i.agh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193.prol, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !535
  %i.agj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192.prol, i64 8
  store ptr %i.agi, ptr %i.agj, align 8, !tbaa !536
  %i.agk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193.prol, i64 16 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192.prol, i64 16 ; 3 uses
  %i.agm = add nsw i64 %.012.i.i.i.i.i.i38.i191.prol, -1 ; 2 uses
  %prol.iter874.next = add i64 %prol.iter874, 1   ; 2 uses
  %prol.iter874.cmp.not = icmp eq i64 %prol.iter874.next, %xtraiter872
  br i1 %prol.iter874.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i190.prol, !llvm.loop !2163

.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i37.i190.prol, %.lr.ph.i.i.i.i.i.i37.i190.preheader
  %.012.i.i.i.i.i.i38.i191.unr = phi i64 [ %i.age, %.lr.ph.i.i.i.i.i.i37.i190.preheader ], [ %i.agm, %.lr.ph.i.i.i.i.i.i37.i190.prol ]
  %.0811.i.i.i.i.i.i39.i192.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i180, %.lr.ph.i.i.i.i.i.i37.i190.preheader ], [ %i.agl, %.lr.ph.i.i.i.i.i.i37.i190.prol ]
  %.0910.i.i.i.i.i.i40.i193.unr = phi ptr [ %.0.lcssa.i28.i182, %.lr.ph.i.i.i.i.i.i37.i190.preheader ], [ %i.agk, %.lr.ph.i.i.i.i.i.i37.i190.prol ]
  %.lcssa786.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i190.preheader ], [ %i.agl, %.lr.ph.i.i.i.i.i.i37.i190.prol ]
  %i.agn = icmp ult i64 %i.age, 4
  br i1 %i.agn, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i183, label %.lr.ph.i.i.i.i.i.i37.i190

.lr.ph.i.i.i.i.i.i37.i190:                        ; preds = %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i190
  %.012.i.i.i.i.i.i38.i191 = phi i64 [ %i.ahm, %.lr.ph.i.i.i.i.i.i37.i190 ], [ %.012.i.i.i.i.i.i38.i191.unr, %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i192 = phi ptr [ %i.ahl, %.lr.ph.i.i.i.i.i.i37.i190 ], [ %.0811.i.i.i.i.i.i39.i192.unr, %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i193 = phi ptr [ %i.ahk, %.lr.ph.i.i.i.i.i.i37.i190 ], [ %.0910.i.i.i.i.i.i40.i193.unr, %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit ] ; 9 uses
  %i.ago = load i64, ptr %.0910.i.i.i.i.i.i40.i193, align 8, !tbaa !149
  store i64 %i.ago, ptr %.0811.i.i.i.i.i.i39.i192, align 8, !tbaa !534
  %i.agp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !535
  %i.agr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 8
  store ptr %i.agq, ptr %i.agr, align 8, !tbaa !536
  %i.ags = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 16
  %i.agt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 16
  %i.agu = load i64, ptr %i.ags, align 8, !tbaa !149
  store i64 %i.agu, ptr %i.agt, align 8, !tbaa !534
  %i.agv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 24
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !535
  %i.agx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 24
  store ptr %i.agw, ptr %i.agx, align 8, !tbaa !536
  %i.agy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 32
  %i.agz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 32
  %i.aha = load i64, ptr %i.agy, align 8, !tbaa !149
  store i64 %i.aha, ptr %i.agz, align 8, !tbaa !534
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 40
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !535
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 40
  store ptr %i.ahc, ptr %i.ahd, align 8, !tbaa !536
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 48
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 48
  %i.ahg = load i64, ptr %i.ahe, align 8, !tbaa !149
  store i64 %i.ahg, ptr %i.ahf, align 8, !tbaa !534
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 56
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !535
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 56
  store ptr %i.ahi, ptr %i.ahj, align 8, !tbaa !536
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i193, i64 64
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i192, i64 64 ; 2 uses
  %i.ahm = add nsw i64 %.012.i.i.i.i.i.i38.i191, -4
  %i.ahn = icmp sgt i64 %.012.i.i.i.i.i.i38.i191, 4
  br i1 %i.ahn, label %.lr.ph.i.i.i.i.i.i37.i190, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i183, !llvm.loop !38

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i183: ; preds = %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i190, %._crit_edge.i25.i179
  %.08.lcssa.i.i.i.i.i.i30.i184 = phi ptr [ %.sroa.0.0.lcssa.i26.i180, %._crit_edge.i25.i179 ], [ %.lcssa786.unr, %.lr.ph.i.i.i.i.i.i37.i190.prol.loopexit ], [ %i.ahl, %.lr.ph.i.i.i.i.i.i37.i190 ]
  %i.aho = ptrtoint ptr %.016.lcssa.i27.i181 to i64
  %i.ahp = sub i64 %i.us, %i.aho
  %i.ahq = ashr exact i64 %i.ahp, 4               ; 5 uses
  %i.ahr = icmp sgt i64 %i.ahq, 0
  br i1 %i.ahr, label %.lr.ph.i.i.i.i.i19.i32.preheader.i185, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit213

.lr.ph.i.i.i.i.i19.i32.preheader.i185:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i183
  %i.ahs = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i184 to i64
  %i.aht = ptrtoint ptr %.sroa.0.0.lcssa.i26.i180 to i64
  %i.ahu = sub i64 %i.ahs, %i.aht
  %i.ahv = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i180, i64 %i.ahu ; 2 uses
  %xtraiter875 = and i64 %i.ahq, 3                ; 2 uses
  %lcmp.mod876.not = icmp eq i64 %xtraiter875, 0
  br i1 %lcmp.mod876.not, label %.lr.ph.i.i.i.i.i19.i32.i186.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i186.prol

.lr.ph.i.i.i.i.i19.i32.i186.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i185, %.lr.ph.i.i.i.i.i19.i32.i186.prol
  %.012.i.i.i.i.i20.i33.i187.prol = phi i64 [ %i.aic, %.lr.ph.i.i.i.i.i19.i32.i186.prol ], [ %i.ahq, %.lr.ph.i.i.i.i.i19.i32.preheader.i185 ]
  %.0811.i.i.i.i.i21.i34.i188.prol = phi ptr [ %i.aib, %.lr.ph.i.i.i.i.i19.i32.i186.prol ], [ %i.ahv, %.lr.ph.i.i.i.i.i19.i32.preheader.i185 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i189.prol = phi ptr [ %i.aia, %.lr.ph.i.i.i.i.i19.i32.i186.prol ], [ %.016.lcssa.i27.i181, %.lr.ph.i.i.i.i.i19.i32.preheader.i185 ] ; 3 uses
  %prol.iter877 = phi i64 [ %prol.iter877.next, %.lr.ph.i.i.i.i.i19.i32.i186.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i185 ]
  %i.ahw = load i64, ptr %.0910.i.i.i.i.i22.i35.i189.prol, align 8, !tbaa !149
  store i64 %i.ahw, ptr %.0811.i.i.i.i.i21.i34.i188.prol, align 8, !tbaa !534
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i189.prol, i64 8
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !535
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i188.prol, i64 8
  store ptr %i.ahy, ptr %i.ahz, align 8, !tbaa !536
  %i.aia = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i189.prol, i64 16 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i188.prol, i64 16 ; 2 uses
  %i.aic = add nsw i64 %.012.i.i.i.i.i20.i33.i187.prol, -1 ; 2 uses
  %prol.iter877.next = add i64 %prol.iter877, 1   ; 2 uses
  %prol.iter877.cmp.not = icmp eq i64 %prol.iter877.next, %xtraiter875
  br i1 %prol.iter877.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i186.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i186.prol, !llvm.loop !2164

.lr.ph.i.i.i.i.i19.i32.i186.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i186.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i185
  %.012.i.i.i.i.i20.i33.i187.unr = phi i64 [ %i.ahq, %.lr.ph.i.i.i.i.i19.i32.preheader.i185 ], [ %i.aic, %.lr.ph.i.i.i.i.i19.i32.i186.prol ]
  %.0811.i.i.i.i.i21.i34.i188.unr = phi ptr [ %i.ahv, %.lr.ph.i.i.i.i.i19.i32.preheader.i185 ], [ %i.aib, %.lr.ph.i.i.i.i.i19.i32.i186.prol ]
  %.0910.i.i.i.i.i22.i35.i189.unr = phi ptr [ %.016.lcssa.i27.i181, %.lr.ph.i.i.i.i.i19.i32.preheader.i185 ], [ %i.aia, %.lr.ph.i.i.i.i.i19.i32.i186.prol ]
  %i.aid = icmp ult i64 %i.ahq, 4
  br i1 %i.aid, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit213, label %.lr.ph.i.i.i.i.i19.i32.i186

.lr.ph.i.i.i.i.i19.i32.i186:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i186.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i186
  %.012.i.i.i.i.i20.i33.i187 = phi i64 [ %i.ajc, %.lr.ph.i.i.i.i.i19.i32.i186 ], [ %.012.i.i.i.i.i20.i33.i187.unr, %.lr.ph.i.i.i.i.i19.i32.i186.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i188 = phi ptr [ %i.ajb, %.lr.ph.i.i.i.i.i19.i32.i186 ], [ %.0811.i.i.i.i.i21.i34.i188.unr, %.lr.ph.i.i.i.i.i19.i32.i186.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i189 = phi ptr [ %i.aja, %.lr.ph.i.i.i.i.i19.i32.i186 ], [ %.0910.i.i.i.i.i22.i35.i189.unr, %.lr.ph.i.i.i.i.i19.i32.i186.prol.loopexit ] ; 9 uses
  %i.aie = load i64, ptr %.0910.i.i.i.i.i22.i35.i189, align 8, !tbaa !149
  store i64 %i.aie, ptr %.0811.i.i.i.i.i21.i34.i188, align 8, !tbaa !534
  %i.aif = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i189, i64 8
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !535
  %i.aih = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i188, i64 8
  store ptr %i.aig, ptr %i.aih, align 8, !tbaa !536
  %i.aii = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i189, i64 16
  %i.aij = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i188, i64 16
  %i.aik = load i64, ptr %i.aii, align 8, !tbaa !149
  store i64 %i.aik, ptr %i.aij, align 8, !tbaa !534
  %i.ail = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i189, i64 24
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !535
  %i.ain = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i188, i64 24
  store ptr %i.aim, ptr %i.ain, align 8, !tbaa !536
  %i.aio = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i189, i64 32
  %i.aip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i188, i64 32
  %i.aiq = load i64, ptr %i.aio, align 8, !tbaa !149
  store i64 %i.aiq, ptr %i.aip, align 8, !tbaa !534
  %i.air = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i189, i64 40
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !535
  %i.ait = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i188, i64 40
end_hunk_0
begin_hunk_1_@_ZL21traverseAllValueSitesRKN4llvm15InstrProfRecordEjRN12_GLOBAL__N_115ValueSitesStatsERNS_14raw_fd_ostreamEPNS_15InstrProfSymtabE:bb.a
.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.bcz, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.bcr, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.bcy, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.bcx, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter922 = phi i64 [ %prol.iter922.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.bct = load i64, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !149
  store i64 %i.bct, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !534
  %i.bcu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !535
  %i.bcw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.bcv, ptr %i.bcw, align 8, !tbaa !536
  %i.bcx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.bcz = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter922.next = add i64 %prol.iter922, 1   ; 2 uses
  %prol.iter922.cmp.not = icmp eq i64 %prol.iter922.next, %xtraiter920
  br i1 %prol.iter922.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !2175

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.bcr, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bcz, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bcy, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bcx, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.bda = icmp ult i64 %i.bcr, 4
  br i1 %i.bda, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.bdz, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.bdy, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.bdx, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.bdb = load i64, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !149
  store i64 %i.bdb, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !534
  %i.bdc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !535
  %i.bde = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.bdd, ptr %i.bde, align 8, !tbaa !536
  %i.bdf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.bdg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.bdh = load i64, ptr %i.bdf, align 8, !tbaa !149
  store i64 %i.bdh, ptr %i.bdg, align 8, !tbaa !534
  %i.bdi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !535
  %i.bdk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.bdj, ptr %i.bdk, align 8, !tbaa !536
  %i.bdl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.bdm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.bdn = load i64, ptr %i.bdl, align 8, !tbaa !149
  store i64 %i.bdn, ptr %i.bdm, align 8, !tbaa !534
  %i.bdo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !535
  %i.bdq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.bdp, ptr %i.bdq, align 8, !tbaa !536
  %i.bdr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.bds = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.bdt = load i64, ptr %i.bdr, align 8, !tbaa !149
  store i64 %i.bdt, ptr %i.bds, align 8, !tbaa !534
  %i.bdu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !535
  %i.bdw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.bdv, ptr %i.bdw, align 8, !tbaa !536
  %i.bdx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.bdy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.bdz = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.bea = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.bea, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, !llvm.loop !38

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.beb = shl nsw i64 %.022.i16.i, 2             ; 4 uses
  %.not65.i = icmp slt i64 %i.ajg, %i.beb
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.idx.i = shl nsw i64 %.022.i16.i, 5            ; 2 uses
  %.idx56.i = shl nsw i64 %.022.i16.i, 6          ; 2 uses
  %.not57.i = icmp eq i64 %.idx.i, %.idx56.i
  br label %bb.cg

bb.cg:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %.lr.ph.i
  %.sroa.022.067.i = phi ptr [ %i.gw, %.lr.ph.i ], [ %i.bht, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.066.i = phi ptr [ %.sroa.10.0.i, %.lr.ph.i ], [ %i.bed, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 4 uses
  %i.bec = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i ; 4 uses
  %i.bed = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br i1 %.not57.i, label %._crit_edge.i.i, label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %bb.cg, %bb.cj
  %.029.i.i = phi ptr [ %.1.i.i101, %bb.cj ], [ %.066.i, %bb.cg ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.cj ], [ %i.bec, %bb.cg ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.bek, %bb.cj ], [ %.sroa.022.067.i, %bb.cg ] ; 3 uses
  %i.bee = load i64, ptr %.01628.i.i, align 8, !tbaa !149 ; 2 uses
  %i.bef = load i64, ptr %.029.i.i, align 8, !tbaa !149 ; 2 uses
  %i.beg = icmp ult i64 %i.bee, %i.bef
  br i1 %i.beg, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i.i100
  %i.beh = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i.i100
  %i.bei = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink34.i.i = phi i64 [ %i.bee, %bb.ch ], [ %i.bef, %bb.ci ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.ch ], [ %.029.i.i, %bb.ci ]
  %.117.i.i = phi ptr [ %i.beh, %bb.ch ], [ %.01628.i.i, %bb.ci ] ; 3 uses
  %.1.i.i101 = phi ptr [ %.029.i.i, %bb.ch ], [ %i.bei, %bb.ci ] ; 3 uses
  %.sink.in.i.i102 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 8
  %.sink.i.i103 = load ptr, ptr %.sink.in.i.i102, align 8, !tbaa !535
  store i64 %.sink34.i.i, ptr %.sroa.0.027.i.i, align 8, !tbaa !534
  %i.bej = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.sink.i.i103, ptr %i.bej, align 8, !tbaa !536
  %i.bek = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.bel = icmp ne ptr %.1.i.i101, %i.bec
  %i.bem = icmp ne ptr %.117.i.i, %i.bed
  %i.ben = select i1 %i.bel, i1 %i.bem, i1 false
  br i1 %i.ben, label %.lr.ph.i.i100, label %._crit_edge.i.i, !llvm.loop !40

._crit_edge.i.i:                                  ; preds = %bb.cj, %bb.cg
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.067.i, %bb.cg ], [ %i.bek, %bb.cj ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.bec, %bb.cg ], [ %.117.i.i, %bb.cj ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.066.i, %bb.cg ], [ %.1.i.i101, %bb.cj ] ; 3 uses
  %i.beo = ptrtoint ptr %i.bec to i64
  %i.bep = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.beq = sub i64 %i.beo, %i.bep
  %i.ber = ashr exact i64 %i.beq, 4               ; 5 uses
  %i.bes = icmp sgt i64 %i.ber, 0
  br i1 %i.bes, label %.lr.ph.i.i.i.i.i.i.i106.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i106.preheader:                ; preds = %._crit_edge.i.i
  %xtraiter923 = and i64 %i.ber, 3                ; 2 uses
  %lcmp.mod924.not = icmp eq i64 %xtraiter923, 0
  br i1 %lcmp.mod924.not, label %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i106.prol

.lr.ph.i.i.i.i.i.i.i106.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i106.preheader, %.lr.ph.i.i.i.i.i.i.i106.prol
  %.012.i.i.i.i.i.i.i107.prol = phi i64 [ %i.bez, %.lr.ph.i.i.i.i.i.i.i106.prol ], [ %i.ber, %.lr.ph.i.i.i.i.i.i.i106.preheader ]
  %.0811.i.i.i.i.i.i.i108.prol = phi ptr [ %i.bey, %.lr.ph.i.i.i.i.i.i.i106.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i106.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i109.prol = phi ptr [ %i.bex, %.lr.ph.i.i.i.i.i.i.i106.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i106.preheader ] ; 3 uses
  %prol.iter925 = phi i64 [ %prol.iter925.next, %.lr.ph.i.i.i.i.i.i.i106.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i106.preheader ]
  %i.bet = load i64, ptr %.0910.i.i.i.i.i.i.i109.prol, align 8, !tbaa !149
  store i64 %i.bet, ptr %.0811.i.i.i.i.i.i.i108.prol, align 8, !tbaa !534
  %i.beu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109.prol, i64 8
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !535
  %i.bew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108.prol, i64 8
  store ptr %i.bev, ptr %i.bew, align 8, !tbaa !536
  %i.bex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109.prol, i64 16 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108.prol, i64 16 ; 3 uses
  %i.bez = add nsw i64 %.012.i.i.i.i.i.i.i107.prol, -1 ; 2 uses
  %prol.iter925.next = add i64 %prol.iter925, 1   ; 2 uses
  %prol.iter925.cmp.not = icmp eq i64 %prol.iter925.next, %xtraiter923
  br i1 %prol.iter925.cmp.not, label %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i106.prol, !llvm.loop !2176

.lr.ph.i.i.i.i.i.i.i106.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i106.prol, %.lr.ph.i.i.i.i.i.i.i106.preheader
  %.012.i.i.i.i.i.i.i107.unr = phi i64 [ %i.ber, %.lr.ph.i.i.i.i.i.i.i106.preheader ], [ %i.bez, %.lr.ph.i.i.i.i.i.i.i106.prol ]
  %.0811.i.i.i.i.i.i.i108.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i106.preheader ], [ %i.bey, %.lr.ph.i.i.i.i.i.i.i106.prol ]
  %.0910.i.i.i.i.i.i.i109.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i106.preheader ], [ %i.bex, %.lr.ph.i.i.i.i.i.i.i106.prol ]
  %.lcssa797.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i106.preheader ], [ %i.bey, %.lr.ph.i.i.i.i.i.i.i106.prol ]
  %i.bfa = icmp ult i64 %i.ber, 4
  br i1 %i.bfa, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i106

.lr.ph.i.i.i.i.i.i.i106:                          ; preds = %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i106
  %.012.i.i.i.i.i.i.i107 = phi i64 [ %i.bfz, %.lr.ph.i.i.i.i.i.i.i106 ], [ %.012.i.i.i.i.i.i.i107.unr, %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i108 = phi ptr [ %i.bfy, %.lr.ph.i.i.i.i.i.i.i106 ], [ %.0811.i.i.i.i.i.i.i108.unr, %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i109 = phi ptr [ %i.bfx, %.lr.ph.i.i.i.i.i.i.i106 ], [ %.0910.i.i.i.i.i.i.i109.unr, %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit ] ; 9 uses
  %i.bfb = load i64, ptr %.0910.i.i.i.i.i.i.i109, align 8, !tbaa !149
  store i64 %i.bfb, ptr %.0811.i.i.i.i.i.i.i108, align 8, !tbaa !534
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 8
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !535
  %i.bfe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 8
  store ptr %i.bfd, ptr %i.bfe, align 8, !tbaa !536
  %i.bff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 16
  %i.bfg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 16
  %i.bfh = load i64, ptr %i.bff, align 8, !tbaa !149
  store i64 %i.bfh, ptr %i.bfg, align 8, !tbaa !534
  %i.bfi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 24
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !535
  %i.bfk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 24
  store ptr %i.bfj, ptr %i.bfk, align 8, !tbaa !536
  %i.bfl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 32
  %i.bfm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 32
  %i.bfn = load i64, ptr %i.bfl, align 8, !tbaa !149
  store i64 %i.bfn, ptr %i.bfm, align 8, !tbaa !534
  %i.bfo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 40
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !535
  %i.bfq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 40
  store ptr %i.bfp, ptr %i.bfq, align 8, !tbaa !536
  %i.bfr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 48
  %i.bfs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 48
  %i.bft = load i64, ptr %i.bfr, align 8, !tbaa !149
  store i64 %i.bft, ptr %i.bfs, align 8, !tbaa !534
  %i.bfu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 56
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !535
  %i.bfw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 56
  store ptr %i.bfv, ptr %i.bfw, align 8, !tbaa !536
  %i.bfx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i109, i64 64
  %i.bfy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i108, i64 64 ; 2 uses
  %i.bfz = add nsw i64 %.012.i.i.i.i.i.i.i107, -4
  %i.bga = icmp sgt i64 %.012.i.i.i.i.i.i.i107, 4
  br i1 %i.bga, label %.lr.ph.i.i.i.i.i.i.i106, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !38

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i106, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa797.unr.a, %.lr.ph.i.i.i.i.i.i.i106.prol.loopexit ], [ %i.bfy, %.lr.ph.i.i.i.i.i.i.i106 ]
  %i.bgb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.bgc = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.bgd = sub i64 %i.bgb, %i.bgc
  %i.bge = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.bgd ; 3 uses
  %i.bgf = ptrtoint ptr %i.bed to i64             ; 2 uses
  %i.bgg = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.bgh = sub i64 %i.bgf, %i.bgg
  %i.bgi = ashr exact i64 %i.bgh, 4               ; 5 uses
  %i.bgj = icmp sgt i64 %i.bgi, 0
  br i1 %i.bgj, label %.lr.ph.i.i.i.i.i19.i.i105.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i105.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %xtraiter926 = and i64 %i.bgi, 3                ; 2 uses
  %lcmp.mod927.not = icmp eq i64 %xtraiter926, 0
  br i1 %lcmp.mod927.not, label %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i105.prol

.lr.ph.i.i.i.i.i19.i.i105.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i105.preheader, %.lr.ph.i.i.i.i.i19.i.i105.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.bgq, %.lr.ph.i.i.i.i.i19.i.i105.prol ], [ %i.bgi, %.lr.ph.i.i.i.i.i19.i.i105.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.bgp, %.lr.ph.i.i.i.i.i19.i.i105.prol ], [ %i.bge, %.lr.ph.i.i.i.i.i19.i.i105.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.bgo, %.lr.ph.i.i.i.i.i19.i.i105.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i105.preheader ] ; 3 uses
  %prol.iter928 = phi i64 [ %prol.iter928.next, %.lr.ph.i.i.i.i.i19.i.i105.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i105.preheader ]
  %i.bgk = load i64, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !149
  store i64 %i.bgk, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !534
  %i.bgl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !535
  %i.bgn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.bgm, ptr %i.bgn, align 8, !tbaa !536
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.bgq = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter928.next = add i64 %prol.iter928, 1   ; 2 uses
  %prol.iter928.cmp.not = icmp eq i64 %prol.iter928.next, %xtraiter926
  br i1 %prol.iter928.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i105.prol, !llvm.loop !2177

.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i105.prol, %.lr.ph.i.i.i.i.i19.i.i105.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.bgi, %.lr.ph.i.i.i.i.i19.i.i105.preheader ], [ %i.bgq, %.lr.ph.i.i.i.i.i19.i.i105.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.bge, %.lr.ph.i.i.i.i.i19.i.i105.preheader ], [ %i.bgp, %.lr.ph.i.i.i.i.i19.i.i105.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i105.preheader ], [ %i.bgo, %.lr.ph.i.i.i.i.i19.i.i105.prol ]
  %.lcssa798.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i105.preheader ], [ %i.bgp, %.lr.ph.i.i.i.i.i19.i.i105.prol ]
  %i.bgr = icmp ult i64 %i.bgi, 4
  br i1 %i.bgr, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i, label %.lr.ph.i.i.i.i.i19.i.i105

.lr.ph.i.i.i.i.i19.i.i105:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i105
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.bhq, %.lr.ph.i.i.i.i.i19.i.i105 ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.bhp, %.lr.ph.i.i.i.i.i19.i.i105 ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.bho, %.lr.ph.i.i.i.i.i19.i.i105 ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit ] ; 9 uses
  %i.bgs = load i64, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !149
  store i64 %i.bgs, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !534
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !535
  %i.bgv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.bgu, ptr %i.bgv, align 8, !tbaa !536
  %i.bgw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.bgx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.bgy = load i64, ptr %i.bgw, align 8, !tbaa !149
  store i64 %i.bgy, ptr %i.bgx, align 8, !tbaa !534
  %i.bgz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !535
  %i.bhb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.bha, ptr %i.bhb, align 8, !tbaa !536
  %i.bhc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.bhd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.bhe = load i64, ptr %i.bhc, align 8, !tbaa !149
  store i64 %i.bhe, ptr %i.bhd, align 8, !tbaa !534
  %i.bhf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !535
  %i.bhh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.bhg, ptr %i.bhh, align 8, !tbaa !536
  %i.bhi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.bhj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.bhk = load i64, ptr %i.bhi, align 8, !tbaa !149
  store i64 %i.bhk, ptr %i.bhj, align 8, !tbaa !534
  %i.bhl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !535
  %i.bhn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.bhm, ptr %i.bhn, align 8, !tbaa !536
  %i.bho = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.bhp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.bhq = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.bhr = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.bhr, label %.lr.ph.i.i.i.i.i19.i.i105, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i, !llvm.loop !38

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i105, %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit
  %.lcssa798 = phi ptr [ %.lcssa798.unr, %.lr.ph.i.i.i.i.i19.i.i105.prol.loopexit ], [ %i.bhp, %.lr.ph.i.i.i.i.i19.i.i105 ]
  %14 = ptrtoint ptr %.lcssa798 to i64
  br label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i: ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.bgb, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %14, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i.i ]
  %i.bhs = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.bgb
  %i.bht = getelementptr inbounds i8, ptr %i.bge, i64 %i.bhs ; 2 uses
  %i.bhu = sub i64 %i.axb, %i.bgf
  %i.bhv = ashr exact i64 %i.bhu, 4               ; 2 uses
  %.not.i104 = icmp slt i64 %i.bhv, %i.beb
  br i1 %.not.i104, label %._crit_edge.i, label %bb.cg, !llvm.loop !41

._crit_edge.i:                                    ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bed, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %i.gw, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bht, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.ajg, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bhv, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ]
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.axc, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = shl nsw i64 %.sroa.speculated.i, 4
  %i.bhw = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %.idx58.i ; 5 uses
  %i.bhx = icmp ne i64 %.sroa.speculated.i, 0
  %i.bhy = icmp ne ptr %i.bhw, %i.ajh
  %i.bhz = and i1 %i.bhx, %i.bhy
  br i1 %i.bhz, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i, %bb.cm
  %.029.i42.i = phi ptr [ %.1.i48.i, %bb.cm ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i47.i, %bb.cm ], [ %i.bhw, %._crit_edge.i ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.big, %bb.cm ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bia = load i64, ptr %.01628.i43.i, align 8, !tbaa !149 ; 2 uses
  %i.bib = load i64, ptr %.029.i42.i, align 8, !tbaa !149 ; 2 uses
  %i.bic = icmp ult i64 %i.bia, %i.bib
  br i1 %i.bic, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph.i41.i
  %i.bid = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i41.i
  %i.bie = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sink34.i45.i = phi i64 [ %i.bia, %bb.ck ], [ %i.bib, %bb.cl ]
  %.01628.pn.i46.i = phi ptr [ %.01628.i43.i, %bb.ck ], [ %.029.i42.i, %bb.cl ]
  %.117.i47.i = phi ptr [ %i.bid, %bb.ck ], [ %.01628.i43.i, %bb.cl ] ; 3 uses
  %.1.i48.i = phi ptr [ %.029.i42.i, %bb.ck ], [ %i.bie, %bb.cl ] ; 3 uses
  %.sink.in.i49.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i, i64 8
  %.sink.i50.i = load ptr, ptr %.sink.in.i49.i, align 8, !tbaa !535
  store i64 %.sink34.i45.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !534
  %i.bif = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.sink.i50.i, ptr %i.bif, align 8, !tbaa !536
  %i.big = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.bih = icmp ne ptr %.1.i48.i, %i.bhw
  %i.bii = icmp ne ptr %.117.i47.i, %i.ajh
  %i.bij = select i1 %i.bih, i1 %i.bii, i1 false
  br i1 %i.bij, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !40

._crit_edge.i25.i:                                ; preds = %bb.cm, %._crit_edge.i
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i ], [ %i.big, %bb.cm ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.bhw, %._crit_edge.i ], [ %.117.i47.i, %bb.cm ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.1.i48.i, %bb.cm ] ; 3 uses
  %i.bik = ptrtoint ptr %i.bhw to i64
  %i.bil = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.bim = sub i64 %i.bik, %i.bil
  %i.bin = ashr exact i64 %i.bim, 4               ; 5 uses
  %i.bio = icmp sgt i64 %i.bin, 0
  br i1 %i.bio, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter929 = and i64 %i.bin, 3                ; 2 uses
  %lcmp.mod930.not = icmp eq i64 %xtraiter929, 0
  br i1 %lcmp.mod930.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.biv, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.bin, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.biu, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.bit, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter931 = phi i64 [ %prol.iter931.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.bip = load i64, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !149
  store i64 %i.bip, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !534
  %i.biq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !535
  %i.bis = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.bir, ptr %i.bis, align 8, !tbaa !536
  %i.bit = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.biv = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter931.next = add i64 %prol.iter931, 1   ; 2 uses
  %prol.iter931.cmp.not = icmp eq i64 %prol.iter931.next, %xtraiter929
  br i1 %prol.iter931.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !2178

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.bin, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.biv, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.biu, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.bit, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa803.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.biu, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.biw = icmp ult i64 %i.bin, 4
  br i1 %i.biw, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.bjv, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.bju, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.bjt, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.bix = load i64, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !149
  store i64 %i.bix, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !534
  %i.biy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !535
  %i.bja = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.biz, ptr %i.bja, align 8, !tbaa !536
  %i.bjb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.bjc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.bjd = load i64, ptr %i.bjb, align 8, !tbaa !149
  store i64 %i.bjd, ptr %i.bjc, align 8, !tbaa !534
  %i.bje = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !535
  %i.bjg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.bjf, ptr %i.bjg, align 8, !tbaa !536
  %i.bjh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.bji = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.bjj = load i64, ptr %i.bjh, align 8, !tbaa !149
  store i64 %i.bjj, ptr %i.bji, align 8, !tbaa !534
  %i.bjk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !535
  %i.bjm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.bjl, ptr %i.bjm, align 8, !tbaa !536
  %i.bjn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.bjo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.bjp = load i64, ptr %i.bjn, align 8, !tbaa !149
  store i64 %i.bjp, ptr %i.bjo, align 8, !tbaa !534
  %i.bjq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !535
  %i.bjs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.bjr, ptr %i.bjs, align 8, !tbaa !536
  %i.bjt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.bju = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.bjv = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.bjw = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.bjw, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !38

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa803.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.bju, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.bjx = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.bjy = sub i64 %i.axb, %i.bjx
  %i.bjz = ashr exact i64 %i.bjy, 4               ; 5 uses
  %i.bka = icmp sgt i64 %i.bjz, 0
  br i1 %i.bka, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.bkb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.bkc = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.bkd = sub i64 %i.bkb, %i.bkc
  %i.bke = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.bkd ; 2 uses
  %xtraiter932 = and i64 %i.bjz, 3                ; 2 uses
  %lcmp.mod933.not = icmp eq i64 %xtraiter932, 0
  br i1 %lcmp.mod933.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.bkl, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bjz, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.bkk, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.bke, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.bkj, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter934 = phi i64 [ %prol.iter934.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.bkf = load i64, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 8, !tbaa !149
  store i64 %i.bkf, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !534
  %i.bkg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !535
  %i.bki = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.bkh, ptr %i.bki, align 8, !tbaa !536
  %i.bkj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.bkl = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter934.next = add i64 %prol.iter934, 1   ; 2 uses
  %prol.iter934.cmp.not = icmp eq i64 %prol.iter934.next, %xtraiter932
  br i1 %prol.iter934.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !2179

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.bjz, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bkl, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.bke, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bkk, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.bkj, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.bkm = icmp ult i64 %i.bjz, 4
  br i1 %i.bkm, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.bll, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.blk, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.blj, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.bkn = load i64, ptr %.0910.i.i.i.i.i22.i35.i, align 8, !tbaa !149
  store i64 %i.bkn, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !534
  %i.bko = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.bkp = load ptr, ptr %i.bko, align 8, !tbaa !535
  %i.bkq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.bkp, ptr %i.bkq, align 8, !tbaa !536
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.bks = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.bkt = load i64, ptr %i.bkr, align 8, !tbaa !149
  store i64 %i.bkt, ptr %i.bks, align 8, !tbaa !534
  %i.bku = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !535
  %i.bkw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.bkv, ptr %i.bkw, align 8, !tbaa !536
  %i.bkx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.bky = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.bkz = load i64, ptr %i.bkx, align 8, !tbaa !149
  store i64 %i.bkz, ptr %i.bky, align 8, !tbaa !534
  %i.bla = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !535
  %i.blc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
end_hunk_1
begin_hunk_2_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_":bb.a
  %.0811.i.i.i.i.i13.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i11.i.i ], [ %.08.lcssa.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i11.i.i ], [ %.sroa.016.1.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i13.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i14.i.i, i64 16, i1 false), !tbaa.struct !515
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !149
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i.i, i64 16
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !517
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i.i, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i.i, i64 24 ; 2 uses
  %i.cp = add nsw i64 %.012.i.i.i.i.i12.i.i, -1
  %i.cq = icmp samesign ugt i64 %.012.i.i.i.i.i12.i.i, 1
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i11.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i", !llvm.loop !54

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i11.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  %.08.lcssa.i.i.i.i.i9.i.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i ], [ %i.co, %.lr.ph.i.i.i.i.i11.i.i ] ; 2 uses
  %i.cr = sub i64 %i.a, %i.cf
  %i.cs = sdiv exact i64 %i.cr, 24                ; 2 uses
  %.not.i = icmp slt i64 %i.cs, %i.bh
  br i1 %.not.i, label %._crit_edge.i24, label %bb.k, !llvm.loop !2237

._crit_edge.i24:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i", %bb.j
  %.sroa.053.0.lcssa.i = phi ptr [ %0, %bb.j ], [ %i.bj, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.j ], [ %.08.lcssa.i.i.i.i.i9.i.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 2 uses
  %.lcssa68.i = phi i64 [ %i.d, %bb.j ], [ %i.cs, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.059, i64 %.lcssa68.i) ; 2 uses
  %.idx63.i = mul nsw i64 %.sroa.speculated.i, 24
  %i.ct = getelementptr inbounds i8, ptr %.sroa.053.0.lcssa.i, i64 %.idx63.i ; 5 uses
  %i.cu = icmp ne i64 %.sroa.speculated.i, 0
  %i.cv = icmp ne ptr %i.ct, %1
  %or.cond24.i16.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond24.i16.i, label %.lr.ph.i34.i, label %.critedge.i17.i

.lr.ph.i34.i:                                     ; preds = %._crit_edge.i24, %bb.q
  %.027.i35.i = phi ptr [ %i.dc, %bb.q ], [ %.0.lcssa.i, %._crit_edge.i24 ] ; 4 uses
  %.sroa.020.026.i36.i = phi ptr [ %.sroa.020.1.i42.i, %bb.q ], [ %.sroa.053.0.lcssa.i, %._crit_edge.i24 ] ; 4 uses
  %.sroa.016.025.i37.i = phi ptr [ %.sroa.016.1.i41.i, %bb.q ], [ %i.ct, %._crit_edge.i24 ] ; 4 uses
  %i.cw = getelementptr i8, ptr %.sroa.016.025.i37.i, i64 16 ; 2 uses
  %.val.i.i38.i = load i64, ptr %i.cw, align 8, !tbaa !517
  %i.cx = getelementptr i8, ptr %.sroa.020.026.i36.i, i64 16 ; 2 uses
  %.val1.i.i39.i = load i64, ptr %i.cx, align 8, !tbaa !517
  %i.cy = icmp ugt i64 %.val.i.i38.i, %.val1.i.i39.i
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i34.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.027.i35.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.025.i37.i, i64 16, i1 false), !tbaa.struct !515
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 24
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i34.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.027.i35.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.026.i36.i, i64 16, i1 false), !tbaa.struct !515
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.in.i40.i = phi ptr [ %i.cw, %bb.o ], [ %i.cx, %bb.p ]
  %.sroa.016.1.i41.i = phi ptr [ %i.cz, %bb.o ], [ %.sroa.016.025.i37.i, %bb.p ] ; 3 uses
  %.sroa.020.1.i42.i = phi ptr [ %.sroa.020.026.i36.i, %bb.o ], [ %i.da, %bb.p ] ; 3 uses
  %.sink.i43.i = load i64, ptr %.sink.in.i40.i, align 8, !tbaa !149
  %i.db = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 16
  store i64 %.sink.i43.i, ptr %i.db, align 8, !tbaa !517
  %i.dc = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 24 ; 2 uses
  %i.dd = icmp ne ptr %.sroa.020.1.i42.i, %i.ct
  %i.de = icmp ne ptr %.sroa.016.1.i41.i, %1
  %or.cond.i44.i = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond.i44.i, label %.lr.ph.i34.i, label %.critedge.i17.i, !llvm.loop !2236

.critedge.i17.i:                                  ; preds = %bb.q, %._crit_edge.i24
  %.sroa.016.0.lcssa.i18.i = phi ptr [ %i.ct, %._crit_edge.i24 ], [ %.sroa.016.1.i41.i, %bb.q ] ; 2 uses
  %.sroa.020.0.lcssa.i19.i = phi ptr [ %.sroa.053.0.lcssa.i, %._crit_edge.i24 ], [ %.sroa.020.1.i42.i, %bb.q ] ; 2 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i24 ], [ %i.dc, %bb.q ] ; 2 uses
  %i.df = ptrtoint ptr %i.ct to i64
  %i.dg = ptrtoint ptr %.sroa.020.0.lcssa.i19.i to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader.i.i.i.i.i.i29.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i

.lr.ph.preheader.i.i.i.i.i.i29.i:                 ; preds = %.critedge.i17.i
  %i.dj = udiv exact i64 %i.dh, 24
  br label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i31.i = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i30.i ], [ %.0.lcssa.i20.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %.0910.i.i.i.i.i.i33.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i30.i ], [ %.sroa.020.0.lcssa.i19.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i32.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i33.i, i64 16, i1 false), !tbaa.struct !515
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !149
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 16
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !517
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 24 ; 2 uses
  %i.dp = add nsw i64 %.012.i.i.i.i.i.i31.i, -1
  %i.dq = icmp samesign ugt i64 %.012.i.i.i.i.i.i31.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i30.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i, !llvm.loop !54

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.do, %.lr.ph.i.i.i.i.i.i30.i ]
  %i.dr = ptrtoint ptr %.sroa.016.0.lcssa.i18.i to i64
  %i.ds = sub i64 %i.a, %i.dr                     ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.preheader.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i10.i24.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i
  %i.du = udiv exact i64 %i.ds, 24
  br label %.lr.ph.i.i.i.i.i11.i25.i

.lr.ph.i.i.i.i.i11.i25.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i12.i26.i = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i11.i25.i ], [ %i.du, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i27.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i28.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.sroa.016.0.lcssa.i18.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i13.i27.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i14.i28.i, i64 16, i1 false), !tbaa.struct !515
  %i.dv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !149
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 16
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !517
  %i.dy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 24
  %i.ea = add nsw i64 %.012.i.i.i.i.i12.i26.i, -1
  %i.eb = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26.i, 1
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i11.i25.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit", !llvm.loop !54

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i
  %i.ec = shl nsw i64 %.059, 2                    ; 4 uses
  %.not67.i = icmp slt i64 %i.bg, %i.ec
  br i1 %.not67.i, label %._crit_edge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit"
  %.idx.i28 = mul nsw i64 %.059, 48
  %.idx58.i = mul nsw i64 %.059, 96
  br label %bb.r

bb.r:                                             ; preds = %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i", %.lr.ph.i27
  %.sroa.022.069.i = phi ptr [ %0, %.lr.ph.i27 ], [ %i.fs, %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ]
  %.068.i = phi ptr [ %2, %.lr.ph.i27 ], [ %i.ee, %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.068.i, i64 %.idx.i28 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.068.i, i64 %.idx58.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.r, %bb.u
  %.030.i.i = phi ptr [ %.1.i.i, %bb.u ], [ %.068.i, %bb.r ] ; 4 uses
  %.01629.i.i = phi ptr [ %.117.i.i, %bb.u ], [ %i.ed, %bb.r ] ; 4 uses
  %.sroa.0.028.i.i = phi ptr [ %i.el, %bb.u ], [ %.sroa.022.069.i, %bb.r ] ; 4 uses
  %i.ef = getelementptr i8, ptr %.01629.i.i, i64 16 ; 2 uses
  %.016.val.i.i = load i64, ptr %i.ef, align 8, !tbaa !517
  %i.eg = getelementptr i8, ptr %.030.i.i, i64 16 ; 2 uses
  %.0.val.i.i = load i64, ptr %i.eg, align 8, !tbaa !517
  %i.eh = icmp ugt i64 %.016.val.i.i, %.0.val.i.i
  br i1 %i.eh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.028.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.01629.i.i, i64 16, i1 false), !tbaa.struct !515
  %i.ei = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 24
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.028.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.030.i.i, i64 16, i1 false), !tbaa.struct !515
  %i.ej = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink.in.i.i30 = phi ptr [ %i.ef, %bb.s ], [ %i.eg, %bb.t ]
  %.117.i.i = phi ptr [ %i.ei, %bb.s ], [ %.01629.i.i, %bb.t ] ; 4 uses
  %.1.i.i = phi ptr [ %.030.i.i, %bb.s ], [ %i.ej, %bb.t ] ; 4 uses
  %.sink.i.i31 = load i64, ptr %.sink.in.i.i30, align 8, !tbaa !149
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 16
  store i64 %.sink.i.i31, ptr %i.ek, align 8, !tbaa !517
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 24 ; 5 uses
  %i.em = icmp ne ptr %.1.i.i, %i.ed
  %i.en = icmp ne ptr %.117.i.i, %i.ee
  %i.eo = select i1 %i.em, i1 %i.en, i1 false
  br i1 %i.eo, label %.lr.ph.i.i29, label %._crit_edge.i.i, !llvm.loop !2238

._crit_edge.i.i:                                  ; preds = %bb.u
  %i.ep = ptrtoint ptr %i.ed to i64
  %i.eq = ptrtoint ptr %.1.i.i to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 2 uses
  %i.es = icmp sgt i64 %i.er, 0
  br i1 %i.es, label %.lr.ph.preheader.i.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i37:                 ; preds = %._crit_edge.i.i
  %i.et = udiv exact i64 %i.er, 24
  br label %.lr.ph.i.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i.i38:                           ; preds = %.lr.ph.i.i.i.i.i.i.i38, %.lr.ph.preheader.i.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i.i39 = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i38 ], [ %i.et, %.lr.ph.preheader.i.i.i.i.i.i.i37 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i40 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i38 ], [ %i.el, %.lr.ph.preheader.i.i.i.i.i.i.i37 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i41 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i38 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i37 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i.i40, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i.i41, i64 16, i1 false), !tbaa.struct !515
  %i.eu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i41, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !149
  %i.ew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i40, i64 16
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !517
  %i.ex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i41, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i40, i64 24 ; 2 uses
  %i.ez = add nsw i64 %.012.i.i.i.i.i.i.i39, -1
  %i.fa = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i39, 1
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i, !llvm.loop !54

_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i38, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %i.el, %._crit_edge.i.i ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i38 ]
  %i.fb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.fc = ptrtoint ptr %i.el to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.el, i64 %i.fd ; 2 uses
  %i.ff = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.fg = ptrtoint ptr %.117.i.i to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.preheader.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i19.i.i:                 ; preds = %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  %i.fj = udiv exact i64 %i.fh, 24
  br label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.fj, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.fe, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i20.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i22.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i23.i.i, i64 16, i1 false), !tbaa.struct !515
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !149
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 16
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !517
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 24 ; 2 uses
  %i.fp = add nsw i64 %.012.i.i.i.i.i21.i.i, -1
  %i.fq = icmp samesign ugt i64 %.012.i.i.i.i.i21.i.i, 1
  br i1 %i.fq, label %.lr.ph.i.i.i.i.i20.i.i, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i.i, !llvm.loop !54

_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i20.i.i
  %3 = ptrtoint ptr %i.fo to i64
  br label %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i"

"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i": ; preds = %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i.i, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.fb, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i ], [ %3, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i.i ]
  %i.fr = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.fb
  %i.fs = getelementptr inbounds i8, ptr %i.fe, i64 %i.fr ; 2 uses
  %i.ft = sub i64 %i.bf, %i.ff
  %i.fu = sdiv exact i64 %i.ft, 24                ; 2 uses
  %.not.i33 = icmp slt i64 %i.fu, %i.ec
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.r, !llvm.loop !2239

._crit_edge.i34:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit"
  %.0.lcssa.i35 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit" ], [ %i.ee, %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit" ], [ %i.fs, %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 2 uses
  %.lcssa65.i = phi i64 [ %i.bg, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit" ], [ %i.fu, %"_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ]
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.bh, i64 %.lcssa65.i) ; 2 uses
  %.idx60.i = mul nsw i64 %.sroa.speculated.i36, 24
  %i.fv = getelementptr inbounds i8, ptr %.0.lcssa.i35, i64 %.idx60.i ; 5 uses
  %i.fw = icmp ne i64 %.sroa.speculated.i36, 0
  %i.fx = icmp ne ptr %i.fv, %i.e
  %i.fy = and i1 %i.fw, %i.fx
  br i1 %i.fy, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i34, %bb.x
  %.030.i44.i = phi ptr [ %.1.i51.i, %bb.x ], [ %.0.lcssa.i35, %._crit_edge.i34 ] ; 4 uses
  %.01629.i45.i = phi ptr [ %.117.i50.i, %bb.x ], [ %i.fv, %._crit_edge.i34 ] ; 4 uses
  %.sroa.0.028.i46.i = phi ptr [ %i.gf, %bb.x ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ] ; 4 uses
  %i.fz = getelementptr i8, ptr %.01629.i45.i, i64 16 ; 2 uses
  %.016.val.i47.i = load i64, ptr %i.fz, align 8, !tbaa !517
  %i.ga = getelementptr i8, ptr %.030.i44.i, i64 16 ; 2 uses
  %.0.val.i48.i = load i64, ptr %i.ga, align 8, !tbaa !517
  %i.gb = icmp ugt i64 %.016.val.i47.i, %.0.val.i48.i
  br i1 %i.gb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i43.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.028.i46.i, ptr noundef nonnull align 8 dereferenceable(24) %.01629.i45.i, i64 16, i1 false), !tbaa.struct !515
  %i.gc = getelementptr inbounds nuw i8, ptr %.01629.i45.i, i64 24
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i43.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.028.i46.i, ptr noundef nonnull align 8 dereferenceable(24) %.030.i44.i, i64 16, i1 false), !tbaa.struct !515
  %i.gd = getelementptr inbounds nuw i8, ptr %.030.i44.i, i64 24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.in.i49.i = phi ptr [ %i.fz, %bb.v ], [ %i.ga, %bb.w ]
  %.117.i50.i = phi ptr [ %i.gc, %bb.v ], [ %.01629.i45.i, %bb.w ] ; 3 uses
  %.1.i51.i = phi ptr [ %.030.i44.i, %bb.v ], [ %i.gd, %bb.w ] ; 3 uses
  %.sink.i52.i = load i64, ptr %.sink.in.i49.i, align 8, !tbaa !149
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 16
  store i64 %.sink.i52.i, ptr %i.ge, align 8, !tbaa !517
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 24 ; 2 uses
  %i.gg = icmp ne ptr %.1.i51.i, %i.fv
  %i.gh = icmp ne ptr %.117.i50.i, %i.e
  %i.gi = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %i.gi, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !2238

._crit_edge.i25.i:                                ; preds = %bb.x, %._crit_edge.i34
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ], [ %i.gf, %bb.x ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.fv, %._crit_edge.i34 ], [ %.117.i50.i, %bb.x ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %.1.i51.i, %bb.x ] ; 2 uses
  %i.gj = ptrtoint ptr %i.fv to i64
  %i.gk = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 2 uses
  %i.gm = icmp sgt i64 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.gn = udiv exact i64 %i.gl, 24
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.gt, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.gn, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i41.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i42.i, i64 16, i1 false), !tbaa.struct !515
  %i.go = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !149
  %i.gq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 16
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !517
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 24 ; 2 uses
  %i.gt = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.gu = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i, !llvm.loop !54

_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.gs, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.gv = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.gw = sub i64 %i.bf, %i.gv                    ; 2 uses
  %i.gx = icmp sgt i64 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.preheader.i.i.i.i.i19.i32.i, label %"_ZSt17__merge_sort_loopIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i32.i:               ; preds = %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i
  %i.gy = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.gz = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.ha
  %i.hc = udiv exact i64 %i.gw, 24
  br label %.lr.ph.i.i.i.i.i20.i33.i

.lr.ph.i.i.i.i.i20.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i21.i34.i = phi i64 [ %i.hi, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.hc, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i35.i = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.hb, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i36.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i20.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i22.i35.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i23.i36.i, i64 16, i1 false), !tbaa.struct !515
  %i.hd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !149
  %i.hf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 16
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !517
  %i.hg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 24
  %i.hi = add nsw i64 %.012.i.i.i.i.i21.i34.i, -1
  %i.hj = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34.i, 1
  br i1 %i.hj, label %.lr.ph.i.i.i.i.i20.i33.i, label %"_ZSt17__merge_sort_loopIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit", !llvm.loop !54

"_ZSt17__merge_sort_loopIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i
  %i.hk = icmp slt i64 %i.ec, %i.d
  br i1 %i.hk, label %bb.j, label %._crit_edge, !llvm.loop !2240

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS3_14raw_fd_ostreamEE3$_1EEEvT_SJ_SJ_T0_SK_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_SK_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !515
  %i.f = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !517
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !54

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.s, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %.026.i, i64 16    ; 2 uses
  %.0.val.i = load i64, ptr %i.m, align 8, !tbaa !517
  %i.n = getelementptr i8, ptr %.sroa.016.024.i, i64 16 ; 2 uses
  %.val.i.i = load i64, ptr %i.n, align 8, !tbaa !517
  %i.o = icmp ugt i64 %.val.i.i, %.0.val.i
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.024.i, i64 16, i1 false), !tbaa.struct !515
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(24) %.026.i, i64 16, i1 false), !tbaa.struct !515
  %i.q = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in.i = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.016.1.i = phi ptr [ %i.p, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 16
  store i64 %.sink.i, ptr %i.r, align 8, !tbaa !517
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 24
  %.not.i = icmp eq ptr %.1.i, %i.j
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_SK_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !2241

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.t = ptrtoint ptr %i.j to i64
  %i.u = ptrtoint ptr %.026.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZL16showInstrProfileN12_GLOBAL__N_110ShowFormatERNS1_14raw_fd_ostreamEE3$_1EEEvT_SJ_T0_SK_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.x = udiv exact i64 %i.v, 24
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !536
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !2265

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
  %i.fd = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !149
  store i64 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !534
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !535
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !536
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !149
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !534
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !535
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !536
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !149
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !534
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !535
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !536
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !149
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !534
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !535
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !536
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, !llvm.loop !38

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #4 comdat {
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
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !149 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !149 ; 2 uses
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
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !535
  store i64 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !534
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !536
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !40

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
  %i.w = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !149
  store i64 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !534
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !535
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !536
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2266

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
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !149
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !534
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !535
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !536
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !149
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !534
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !535
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !536
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !149
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !534
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !535
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !536
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !149
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !534
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !535
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !536
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !38

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
  %i.bn = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !149
  store i64 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !534
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !535
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !536
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !2267

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
  %i.bv = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !149
  store i64 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !534
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !535
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !536
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !149
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !534
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !535
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !536
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !149
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !534
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !535
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !536
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !149
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !534
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !535
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !536
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, !llvm.loop !38

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
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !41

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
  %i.dd = load i64, ptr %.01628.i43, align 8, !tbaa !149 ; 2 uses
  %i.de = load i64, ptr %.029.i42, align 8, !tbaa !149 ; 2 uses
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
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !535
  store i64 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !534
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !536
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !40

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
  %i.ds = load i64, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !149
  store i64 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !534
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !535
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !536
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !2268

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
  %i.ea = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !149
  store i64 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !534
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !535
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !536
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !149
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !534
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !535
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !536
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !149
  store i64 %i.em, ptr %i.el, align 8, !tbaa !534
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !535
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !536
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !149
  store i64 %i.es, ptr %i.er, align 8, !tbaa !534
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !535
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !536
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !38

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
  %i.fi = load i64, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !149
  store i64 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !534
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !535
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !536
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !2269

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
  %i.fq = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !149
  store i64 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !534
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !535
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !536
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !149
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !534
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !535
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !536
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !149
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !534
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !535
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_3
