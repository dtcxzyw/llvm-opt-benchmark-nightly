Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPSectionOrderer?download=true
inline.NumInlined: 5220
inline.NumDeleted: 2419
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN3lld9BPOrdererIN12_GLOBAL__N_114BPOrdererMachOEE12computeOrderEN4llvm9StringRefENS4_8ArrayRefINS_21BPCompressionSortSpecEEEbbbbNS6_IPNS_5macho12InputSectionEEERKNS4_8DenseMapINS4_19CachedHashStringRefESt3setIjSt4lessIjESaIjEENS4_12DenseMapInfoISE_vEENS4_6detail12DenseMapPairISE_SJ_EEEE:bb.a
.lr.ph.i.i.i.i.i10.i24.i1053.prol:                ; preds = %.lr.ph.i.i.i.i.i10.i24.i1053.preheader, %.lr.ph.i.i.i.i.i10.i24.i1053.prol
  %.012.i.i.i.i.i11.i25.i1054.prol = phi i64 [ %i.acb, %.lr.ph.i.i.i.i.i10.i24.i1053.prol ], [ %i.abt, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader ]
  %.0811.i.i.i.i.i12.i26.i1055.prol = phi ptr [ %i.aca, %.lr.ph.i.i.i.i.i10.i24.i1053.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i1052, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i1056.prol = phi ptr [ %i.abz, %.lr.ph.i.i.i.i.i10.i24.i1053.prol ], [ %.sroa.015.0.lcssa.i18.i1048, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader ] ; 3 uses
  %prol.iter1344 = phi i64 [ %prol.iter1344.next, %.lr.ph.i.i.i.i.i10.i24.i1053.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader ]
  %i.abv = load i64, ptr %.0910.i.i.i.i.i13.i27.i1056.prol, align 8, !tbaa !77
  store i64 %i.abv, ptr %.0811.i.i.i.i.i12.i26.i1055.prol, align 8, !tbaa !184
  %i.abw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056.prol, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !185
  %i.aby = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055.prol, i64 8
  store ptr %i.abx, ptr %i.aby, align 8, !tbaa !186
  %i.abz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056.prol, i64 16 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055.prol, i64 16 ; 2 uses
  %i.acb = add nsw i64 %.012.i.i.i.i.i11.i25.i1054.prol, -1 ; 2 uses
  %prol.iter1344.next = add i64 %prol.iter1344, 1 ; 2 uses
  %prol.iter1344.cmp.not = icmp eq i64 %prol.iter1344.next, %xtraiter1342
  br i1 %prol.iter1344.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i1053.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i1053.prol, !llvm.loop !366

.lr.ph.i.i.i.i.i10.i24.i1053.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i10.i24.i1053.prol, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader
  %.012.i.i.i.i.i11.i25.i1054.unr = phi i64 [ %i.abt, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader ], [ %i.acb, %.lr.ph.i.i.i.i.i10.i24.i1053.prol ]
  %.0811.i.i.i.i.i12.i26.i1055.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i1052, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader ], [ %i.aca, %.lr.ph.i.i.i.i.i10.i24.i1053.prol ]
  %.0910.i.i.i.i.i13.i27.i1056.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i1048, %.lr.ph.i.i.i.i.i10.i24.i1053.preheader ], [ %i.abz, %.lr.ph.i.i.i.i.i10.i24.i1053.prol ]
  %i.acc = icmp ult i64 %i.abt, 4
  br i1 %i.acc, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080, label %.lr.ph.i.i.i.i.i10.i24.i1053

.lr.ph.i.i.i.i.i10.i24.i1053:                     ; preds = %.lr.ph.i.i.i.i.i10.i24.i1053.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i1053
  %.012.i.i.i.i.i11.i25.i1054 = phi i64 [ %i.adb, %.lr.ph.i.i.i.i.i10.i24.i1053 ], [ %.012.i.i.i.i.i11.i25.i1054.unr, %.lr.ph.i.i.i.i.i10.i24.i1053.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i1055 = phi ptr [ %i.ada, %.lr.ph.i.i.i.i.i10.i24.i1053 ], [ %.0811.i.i.i.i.i12.i26.i1055.unr, %.lr.ph.i.i.i.i.i10.i24.i1053.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i1056 = phi ptr [ %i.acz, %.lr.ph.i.i.i.i.i10.i24.i1053 ], [ %.0910.i.i.i.i.i13.i27.i1056.unr, %.lr.ph.i.i.i.i.i10.i24.i1053.prol.loopexit ] ; 9 uses
  %i.acd = load i64, ptr %.0910.i.i.i.i.i13.i27.i1056, align 8, !tbaa !77
  store i64 %i.acd, ptr %.0811.i.i.i.i.i12.i26.i1055, align 8, !tbaa !184
  %i.ace = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !185
  %i.acg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 8
  store ptr %i.acf, ptr %i.acg, align 8, !tbaa !186
  %i.ach = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 16
  %i.aci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 16
  %i.acj = load i64, ptr %i.ach, align 8, !tbaa !77
  store i64 %i.acj, ptr %i.aci, align 8, !tbaa !184
  %i.ack = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 24
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !185
  %i.acm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 24
  store ptr %i.acl, ptr %i.acm, align 8, !tbaa !186
  %i.acn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 32
  %i.aco = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 32
  %i.acp = load i64, ptr %i.acn, align 8, !tbaa !77
  store i64 %i.acp, ptr %i.aco, align 8, !tbaa !184
  %i.acq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 40
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !185
  %i.acs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 40
  store ptr %i.acr, ptr %i.acs, align 8, !tbaa !186
  %i.act = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 48
  %i.acu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 48
  %i.acv = load i64, ptr %i.act, align 8, !tbaa !77
  store i64 %i.acv, ptr %i.acu, align 8, !tbaa !184
  %i.acw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 56
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !185
  %i.acy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 56
  store ptr %i.acx, ptr %i.acy, align 8, !tbaa !186
  %i.acz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i1056, i64 64
  %i.ada = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i1055, i64 64
  %i.adb = add nsw i64 %.012.i.i.i.i.i11.i25.i1054, -4
  %i.adc = icmp sgt i64 %.012.i.i.i.i.i11.i25.i1054, 4
  br i1 %i.adc, label %.lr.ph.i.i.i.i.i10.i24.i1053, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080, !llvm.loop !12

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080: ; preds = %.lr.ph.i.i.i.i.i10.i24.i1053.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i1053, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i1051
  %i.add = shl nsw i64 %.022.i.i, 2               ; 4 uses
  %.not65.i946 = icmp slt i64 %i.hl, %i.add
  br i1 %.not65.i946, label %._crit_edge.i972, label %.lr.ph.i947

.lr.ph.i947:                                      ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080
  %.idx.i948 = shl nsw i64 %.022.i.i, 5           ; 2 uses
  %.idx56.i949 = shl nsw i64 %.022.i.i, 6         ; 2 uses
  %.not57.i950 = icmp eq i64 %.idx.i948, %.idx56.i949
  br label %bb.ay

bb.ay:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969, %.lr.ph.i947
  %.sroa.022.067.i951 = phi ptr [ %i.hc, %.lr.ph.i947 ], [ %i.agv, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969 ] ; 2 uses
  %.066.i952 = phi ptr [ %.sroa.10.0.i, %.lr.ph.i947 ], [ %i.adf, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969 ] ; 4 uses
  %i.ade = getelementptr inbounds i8, ptr %.066.i952, i64 %.idx.i948 ; 4 uses
  %i.adf = getelementptr inbounds i8, ptr %.066.i952, i64 %.idx56.i949 ; 4 uses
  br i1 %.not57.i950, label %._crit_edge.i.i963, label %.lr.ph.i.i953

.lr.ph.i.i953:                                    ; preds = %bb.ay, %bb.bb
  %.029.i.i954 = phi ptr [ %.1.i.i960, %bb.bb ], [ %.066.i952, %bb.ay ] ; 4 uses
  %.01628.i.i955 = phi ptr [ %.117.i.i959, %bb.bb ], [ %i.ade, %bb.ay ] ; 4 uses
  %.sroa.0.027.i.i956 = phi ptr [ %i.adm, %bb.bb ], [ %.sroa.022.067.i951, %bb.ay ] ; 3 uses
  %i.adg = load i64, ptr %.01628.i.i955, align 8, !tbaa !77 ; 2 uses
  %i.adh = load i64, ptr %.029.i.i954, align 8, !tbaa !77 ; 2 uses
  %i.adi = icmp ult i64 %i.adg, %i.adh
  br i1 %i.adi, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i953
  %i.adj = getelementptr inbounds nuw i8, ptr %.01628.i.i955, i64 16
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i953
  %i.adk = getelementptr inbounds nuw i8, ptr %.029.i.i954, i64 16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink34.i.i957 = phi i64 [ %i.adg, %bb.az ], [ %i.adh, %bb.ba ]
  %.01628.pn.i.i958 = phi ptr [ %.01628.i.i955, %bb.az ], [ %.029.i.i954, %bb.ba ]
  %.117.i.i959 = phi ptr [ %i.adj, %bb.az ], [ %.01628.i.i955, %bb.ba ] ; 3 uses
  %.1.i.i960 = phi ptr [ %.029.i.i954, %bb.az ], [ %i.adk, %bb.ba ] ; 3 uses
  %.sink.in.i.i961 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i958, i64 8
  %.sink.i.i962 = load ptr, ptr %.sink.in.i.i961, align 8, !tbaa !185
  store i64 %.sink34.i.i957, ptr %.sroa.0.027.i.i956, align 8, !tbaa !184
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i956, i64 8
  store ptr %.sink.i.i962, ptr %i.adl, align 8, !tbaa !186
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i956, i64 16 ; 2 uses
  %i.adn = icmp ne ptr %.1.i.i960, %i.ade
  %i.ado = icmp ne ptr %.117.i.i959, %i.adf
  %i.adp = select i1 %i.adn, i1 %i.ado, i1 false
  br i1 %i.adp, label %.lr.ph.i.i953, label %._crit_edge.i.i963, !llvm.loop !14

._crit_edge.i.i963:                               ; preds = %bb.bb, %bb.ay
  %.sroa.0.0.lcssa.i.i964 = phi ptr [ %.sroa.022.067.i951, %bb.ay ], [ %i.adm, %bb.bb ] ; 5 uses
  %.016.lcssa.i.i965 = phi ptr [ %i.ade, %bb.ay ], [ %.117.i.i959, %bb.bb ] ; 3 uses
  %.0.lcssa.i.i966 = phi ptr [ %.066.i952, %bb.ay ], [ %.1.i.i960, %bb.bb ] ; 3 uses
  %i.adq = ptrtoint ptr %i.ade to i64
  %i.adr = ptrtoint ptr %.0.lcssa.i.i966 to i64
  %i.ads = sub i64 %i.adq, %i.adr
  %i.adt = ashr exact i64 %i.ads, 4               ; 5 uses
  %i.adu = icmp sgt i64 %i.adt, 0
  br i1 %i.adu, label %.lr.ph.i.i.i.i.i.i.i1008.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i967

.lr.ph.i.i.i.i.i.i.i1008.preheader:               ; preds = %._crit_edge.i.i963
  %xtraiter1345 = and i64 %i.adt, 3               ; 2 uses
  %lcmp.mod1346.not = icmp eq i64 %xtraiter1345, 0
  br i1 %lcmp.mod1346.not, label %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1008.prol

.lr.ph.i.i.i.i.i.i.i1008.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1008.preheader, %.lr.ph.i.i.i.i.i.i.i1008.prol
  %.012.i.i.i.i.i.i.i1009.prol = phi i64 [ %i.aeb, %.lr.ph.i.i.i.i.i.i.i1008.prol ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i1008.preheader ]
  %.0811.i.i.i.i.i.i.i1010.prol = phi ptr [ %i.aea, %.lr.ph.i.i.i.i.i.i.i1008.prol ], [ %.sroa.0.0.lcssa.i.i964, %.lr.ph.i.i.i.i.i.i.i1008.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i1011.prol = phi ptr [ %i.adz, %.lr.ph.i.i.i.i.i.i.i1008.prol ], [ %.0.lcssa.i.i966, %.lr.ph.i.i.i.i.i.i.i1008.preheader ] ; 3 uses
  %prol.iter1347 = phi i64 [ %prol.iter1347.next, %.lr.ph.i.i.i.i.i.i.i1008.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1008.preheader ]
  %i.adv = load i64, ptr %.0910.i.i.i.i.i.i.i1011.prol, align 8, !tbaa !77
  store i64 %i.adv, ptr %.0811.i.i.i.i.i.i.i1010.prol, align 8, !tbaa !184
  %i.adw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011.prol, i64 8
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !185
  %i.ady = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010.prol, i64 8
  store ptr %i.adx, ptr %i.ady, align 8, !tbaa !186
  %i.adz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011.prol, i64 16 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010.prol, i64 16 ; 3 uses
  %i.aeb = add nsw i64 %.012.i.i.i.i.i.i.i1009.prol, -1 ; 2 uses
  %prol.iter1347.next = add i64 %prol.iter1347, 1 ; 2 uses
  %prol.iter1347.cmp.not = icmp eq i64 %prol.iter1347.next, %xtraiter1345
  br i1 %prol.iter1347.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1008.prol, !llvm.loop !367

.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1008.prol, %.lr.ph.i.i.i.i.i.i.i1008.preheader
  %.012.i.i.i.i.i.i.i1009.unr = phi i64 [ %i.adt, %.lr.ph.i.i.i.i.i.i.i1008.preheader ], [ %i.aeb, %.lr.ph.i.i.i.i.i.i.i1008.prol ]
  %.0811.i.i.i.i.i.i.i1010.unr = phi ptr [ %.sroa.0.0.lcssa.i.i964, %.lr.ph.i.i.i.i.i.i.i1008.preheader ], [ %i.aea, %.lr.ph.i.i.i.i.i.i.i1008.prol ]
  %.0910.i.i.i.i.i.i.i1011.unr = phi ptr [ %.0.lcssa.i.i966, %.lr.ph.i.i.i.i.i.i.i1008.preheader ], [ %i.adz, %.lr.ph.i.i.i.i.i.i.i1008.prol ]
  %.lcssa1249.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1008.preheader ], [ %i.aea, %.lr.ph.i.i.i.i.i.i.i1008.prol ]
  %i.aec = icmp ult i64 %i.adt, 4
  br i1 %i.aec, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i967, label %.lr.ph.i.i.i.i.i.i.i1008

.lr.ph.i.i.i.i.i.i.i1008:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1008
  %.012.i.i.i.i.i.i.i1009 = phi i64 [ %i.afb, %.lr.ph.i.i.i.i.i.i.i1008 ], [ %.012.i.i.i.i.i.i.i1009.unr, %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i1010 = phi ptr [ %i.afa, %.lr.ph.i.i.i.i.i.i.i1008 ], [ %.0811.i.i.i.i.i.i.i1010.unr, %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i1011 = phi ptr [ %i.aez, %.lr.ph.i.i.i.i.i.i.i1008 ], [ %.0910.i.i.i.i.i.i.i1011.unr, %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit ] ; 9 uses
  %i.aed = load i64, ptr %.0910.i.i.i.i.i.i.i1011, align 8, !tbaa !77
  store i64 %i.aed, ptr %.0811.i.i.i.i.i.i.i1010, align 8, !tbaa !184
  %i.aee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !185
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 8
  store ptr %i.aef, ptr %i.aeg, align 8, !tbaa !186
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 16
  %i.aei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 16
  %i.aej = load i64, ptr %i.aeh, align 8, !tbaa !77
  store i64 %i.aej, ptr %i.aei, align 8, !tbaa !184
  %i.aek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 24
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !185
  %i.aem = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 24
  store ptr %i.ael, ptr %i.aem, align 8, !tbaa !186
  %i.aen = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 32
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 32
  %i.aep = load i64, ptr %i.aen, align 8, !tbaa !77
  store i64 %i.aep, ptr %i.aeo, align 8, !tbaa !184
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 40
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !185
  %i.aes = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 40
  store ptr %i.aer, ptr %i.aes, align 8, !tbaa !186
  %i.aet = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 48
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 48
  %i.aev = load i64, ptr %i.aet, align 8, !tbaa !77
  store i64 %i.aev, ptr %i.aeu, align 8, !tbaa !184
  %i.aew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 56
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !185
  %i.aey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 56
  store ptr %i.aex, ptr %i.aey, align 8, !tbaa !186
  %i.aez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i1011, i64 64
  %i.afa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i1010, i64 64 ; 2 uses
  %i.afb = add nsw i64 %.012.i.i.i.i.i.i.i1009, -4
  %i.afc = icmp sgt i64 %.012.i.i.i.i.i.i.i1009, 4
  br i1 %i.afc, label %.lr.ph.i.i.i.i.i.i.i1008, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i967, !llvm.loop !12

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i967: ; preds = %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1008, %._crit_edge.i.i963
  %.08.lcssa.i.i.i.i.i.i.i968 = phi ptr [ %.sroa.0.0.lcssa.i.i964, %._crit_edge.i.i963 ], [ %.lcssa1249.unr, %.lr.ph.i.i.i.i.i.i.i1008.prol.loopexit ], [ %i.afa, %.lr.ph.i.i.i.i.i.i.i1008 ]
  %i.afd = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i968 to i64 ; 2 uses
  %i.afe = ptrtoint ptr %.sroa.0.0.lcssa.i.i964 to i64
  %i.aff = sub i64 %i.afd, %i.afe
  %i.afg = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i964, i64 %i.aff ; 4 uses
  %i.afh = ptrtoint ptr %i.adf to i64             ; 2 uses
  %i.afi = ptrtoint ptr %.016.lcssa.i.i965 to i64
  %i.afj = sub i64 %i.afh, %i.afi
  %i.afk = ashr exact i64 %i.afj, 4               ; 5 uses
  %i.afl = icmp sgt i64 %i.afk, 0
  br i1 %i.afl, label %.lr.ph.i.i.i.i.i19.i.i1003.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969

.lr.ph.i.i.i.i.i19.i.i1003.preheader:             ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i967
  %xtraiter1348 = and i64 %i.afk, 3               ; 2 uses
  %lcmp.mod1349.not = icmp eq i64 %xtraiter1348, 0
  br i1 %lcmp.mod1349.not, label %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i1003.prol

.lr.ph.i.i.i.i.i19.i.i1003.prol:                  ; preds = %.lr.ph.i.i.i.i.i19.i.i1003.preheader, %.lr.ph.i.i.i.i.i19.i.i1003.prol
  %.012.i.i.i.i.i20.i.i1004.prol = phi i64 [ %i.afs, %.lr.ph.i.i.i.i.i19.i.i1003.prol ], [ %i.afk, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ]
  %.0811.i.i.i.i.i21.i.i1005.prol = phi ptr [ %i.afr, %.lr.ph.i.i.i.i.i19.i.i1003.prol ], [ %i.afg, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i1006.prol = phi ptr [ %i.afq, %.lr.ph.i.i.i.i.i19.i.i1003.prol ], [ %.016.lcssa.i.i965, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ] ; 3 uses
  %prol.iter1350 = phi i64 [ %prol.iter1350.next, %.lr.ph.i.i.i.i.i19.i.i1003.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ]
  %i.afm = load i64, ptr %.0910.i.i.i.i.i22.i.i1006.prol, align 8, !tbaa !77
  store i64 %i.afm, ptr %.0811.i.i.i.i.i21.i.i1005.prol, align 8, !tbaa !184
  %i.afn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006.prol, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !185
  %i.afp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005.prol, i64 8
  store ptr %i.afo, ptr %i.afp, align 8, !tbaa !186
  %i.afq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006.prol, i64 16 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005.prol, i64 16 ; 3 uses
  %i.afs = add nsw i64 %.012.i.i.i.i.i20.i.i1004.prol, -1 ; 2 uses
  %prol.iter1350.next = add i64 %prol.iter1350, 1 ; 2 uses
  %prol.iter1350.cmp.not = icmp eq i64 %prol.iter1350.next, %xtraiter1348
  br i1 %prol.iter1350.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i1003.prol, !llvm.loop !368

.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i19.i.i1003.prol, %.lr.ph.i.i.i.i.i19.i.i1003.preheader
  %.012.i.i.i.i.i20.i.i1004.unr = phi i64 [ %i.afk, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ], [ %i.afs, %.lr.ph.i.i.i.i.i19.i.i1003.prol ]
  %.0811.i.i.i.i.i21.i.i1005.unr = phi ptr [ %i.afg, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ], [ %i.afr, %.lr.ph.i.i.i.i.i19.i.i1003.prol ]
  %.0910.i.i.i.i.i22.i.i1006.unr = phi ptr [ %.016.lcssa.i.i965, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ], [ %i.afq, %.lr.ph.i.i.i.i.i19.i.i1003.prol ]
  %.lcssa1250.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i1003.preheader ], [ %i.afr, %.lr.ph.i.i.i.i.i19.i.i1003.prol ]
  %i.aft = icmp ult i64 %i.afk, 4
  br i1 %i.aft, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969, label %.lr.ph.i.i.i.i.i19.i.i1003

.lr.ph.i.i.i.i.i19.i.i1003:                       ; preds = %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i1003
  %.012.i.i.i.i.i20.i.i1004 = phi i64 [ %i.ags, %.lr.ph.i.i.i.i.i19.i.i1003 ], [ %.012.i.i.i.i.i20.i.i1004.unr, %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i1005 = phi ptr [ %i.agr, %.lr.ph.i.i.i.i.i19.i.i1003 ], [ %.0811.i.i.i.i.i21.i.i1005.unr, %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i1006 = phi ptr [ %i.agq, %.lr.ph.i.i.i.i.i19.i.i1003 ], [ %.0910.i.i.i.i.i22.i.i1006.unr, %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit ] ; 9 uses
  %i.afu = load i64, ptr %.0910.i.i.i.i.i22.i.i1006, align 8, !tbaa !77
  store i64 %i.afu, ptr %.0811.i.i.i.i.i21.i.i1005, align 8, !tbaa !184
  %i.afv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !185
  %i.afx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 8
  store ptr %i.afw, ptr %i.afx, align 8, !tbaa !186
  %i.afy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 16
  %i.afz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 16
  %i.aga = load i64, ptr %i.afy, align 8, !tbaa !77
  store i64 %i.aga, ptr %i.afz, align 8, !tbaa !184
  %i.agb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 24
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !185
  %i.agd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 24
  store ptr %i.agc, ptr %i.agd, align 8, !tbaa !186
  %i.age = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 32
  %i.agf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 32
  %i.agg = load i64, ptr %i.age, align 8, !tbaa !77
  store i64 %i.agg, ptr %i.agf, align 8, !tbaa !184
  %i.agh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 40
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !185
  %i.agj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 40
  store ptr %i.agi, ptr %i.agj, align 8, !tbaa !186
  %i.agk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 48
  %i.agl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 48
  %i.agm = load i64, ptr %i.agk, align 8, !tbaa !77
  store i64 %i.agm, ptr %i.agl, align 8, !tbaa !184
  %i.agn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 56
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !185
  %i.agp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 56
  store ptr %i.ago, ptr %i.agp, align 8, !tbaa !186
  %i.agq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i1006, i64 64
  %i.agr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i1005, i64 64 ; 2 uses
  %i.ags = add nsw i64 %.012.i.i.i.i.i20.i.i1004, -4
  %i.agt = icmp sgt i64 %.012.i.i.i.i.i20.i.i1004, 4
  br i1 %i.agt, label %.lr.ph.i.i.i.i.i19.i.i1003, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969, !llvm.loop !12

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969: ; preds = %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i1003, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i967
  %.08.lcssa.i.i.i.i.i18.i.i970 = phi ptr [ %i.afg, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i967 ], [ %.lcssa1250.unr, %.lr.ph.i.i.i.i.i19.i.i1003.prol.loopexit ], [ %i.agr, %.lr.ph.i.i.i.i.i19.i.i1003 ]
  %57 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i970 to i64
  %i.agu = sub i64 %57, %i.afd
  %i.agv = getelementptr inbounds i8, ptr %i.afg, i64 %i.agu ; 2 uses
  %i.agw = sub i64 %i.wd, %i.afh
  %i.agx = ashr exact i64 %i.agw, 4               ; 2 uses
  %.not.i971 = icmp slt i64 %i.agx, %i.add
  br i1 %.not.i971, label %._crit_edge.i972, label %bb.ay, !llvm.loop !15

._crit_edge.i972:                                 ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080
  %.0.lcssa.i973 = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080 ], [ %i.adf, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969 ] ; 3 uses
  %.sroa.022.0.lcssa.i974 = phi ptr [ %i.hc, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080 ], [ %i.agv, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969 ] ; 2 uses
  %.lcssa63.i975 = phi i64 [ %i.hl, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit1080 ], [ %i.agx, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i969 ]
  %.sroa.speculated.i976 = call i64 @llvm.smin.i64(i64 %i.we, i64 %.lcssa63.i975) ; 2 uses
  %.idx58.i977 = shl nsw i64 %.sroa.speculated.i976, 4
  %i.agy = getelementptr inbounds i8, ptr %.0.lcssa.i973, i64 %.idx58.i977 ; 5 uses
  %i.agz = icmp ne i64 %.sroa.speculated.i976, 0
  %i.aha = icmp ne ptr %i.agy, %i.ij
  %i.ahb = and i1 %i.agz, %i.aha
  br i1 %i.ahb, label %.lr.ph.i41.i993, label %._crit_edge.i25.i978

.lr.ph.i41.i993:                                  ; preds = %._crit_edge.i972, %bb.be
  %.029.i42.i994 = phi ptr [ %.1.i48.i1000, %bb.be ], [ %.0.lcssa.i973, %._crit_edge.i972 ] ; 4 uses
  %.01628.i43.i995 = phi ptr [ %.117.i47.i999, %bb.be ], [ %i.agy, %._crit_edge.i972 ] ; 4 uses
  %.sroa.0.027.i44.i996 = phi ptr [ %i.ahi, %bb.be ], [ %.sroa.022.0.lcssa.i974, %._crit_edge.i972 ] ; 3 uses
  %i.ahc = load i64, ptr %.01628.i43.i995, align 8, !tbaa !77 ; 2 uses
  %i.ahd = load i64, ptr %.029.i42.i994, align 8, !tbaa !77 ; 2 uses
  %i.ahe = icmp ult i64 %i.ahc, %i.ahd
  br i1 %i.ahe, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i41.i993
  %i.ahf = getelementptr inbounds nuw i8, ptr %.01628.i43.i995, i64 16
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i41.i993
  %i.ahg = getelementptr inbounds nuw i8, ptr %.029.i42.i994, i64 16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink34.i45.i997 = phi i64 [ %i.ahc, %bb.bc ], [ %i.ahd, %bb.bd ]
  %.01628.pn.i46.i998 = phi ptr [ %.01628.i43.i995, %bb.bc ], [ %.029.i42.i994, %bb.bd ]
  %.117.i47.i999 = phi ptr [ %i.ahf, %bb.bc ], [ %.01628.i43.i995, %bb.bd ] ; 3 uses
  %.1.i48.i1000 = phi ptr [ %.029.i42.i994, %bb.bc ], [ %i.ahg, %bb.bd ] ; 3 uses
  %.sink.in.i49.i1001 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i998, i64 8
  %.sink.i50.i1002 = load ptr, ptr %.sink.in.i49.i1001, align 8, !tbaa !185
  store i64 %.sink34.i45.i997, ptr %.sroa.0.027.i44.i996, align 8, !tbaa !184
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i996, i64 8
  store ptr %.sink.i50.i1002, ptr %i.ahh, align 8, !tbaa !186
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i996, i64 16 ; 2 uses
  %i.ahj = icmp ne ptr %.1.i48.i1000, %i.agy
  %i.ahk = icmp ne ptr %.117.i47.i999, %i.ij
  %i.ahl = select i1 %i.ahj, i1 %i.ahk, i1 false
  br i1 %i.ahl, label %.lr.ph.i41.i993, label %._crit_edge.i25.i978, !llvm.loop !14

._crit_edge.i25.i978:                             ; preds = %bb.be, %._crit_edge.i972
  %.sroa.0.0.lcssa.i26.i979 = phi ptr [ %.sroa.022.0.lcssa.i974, %._crit_edge.i972 ], [ %i.ahi, %bb.be ] ; 5 uses
  %.016.lcssa.i27.i980 = phi ptr [ %i.agy, %._crit_edge.i972 ], [ %.117.i47.i999, %bb.be ] ; 3 uses
  %.0.lcssa.i28.i981 = phi ptr [ %.0.lcssa.i973, %._crit_edge.i972 ], [ %.1.i48.i1000, %bb.be ] ; 3 uses
  %i.ahm = ptrtoint ptr %i.agy to i64
  %i.ahn = ptrtoint ptr %.0.lcssa.i28.i981 to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  %i.ahp = ashr exact i64 %i.aho, 4               ; 5 uses
  %i.ahq = icmp sgt i64 %i.ahp, 0
  br i1 %i.ahq, label %.lr.ph.i.i.i.i.i.i37.i989.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i982

.lr.ph.i.i.i.i.i.i37.i989.preheader:              ; preds = %._crit_edge.i25.i978
  %xtraiter1351 = and i64 %i.ahp, 3               ; 2 uses
  %lcmp.mod1352.not = icmp eq i64 %xtraiter1351, 0
  br i1 %lcmp.mod1352.not, label %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i989.prol

.lr.ph.i.i.i.i.i.i37.i989.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i37.i989.preheader, %.lr.ph.i.i.i.i.i.i37.i989.prol
  %.012.i.i.i.i.i.i38.i990.prol = phi i64 [ %i.ahx, %.lr.ph.i.i.i.i.i.i37.i989.prol ], [ %i.ahp, %.lr.ph.i.i.i.i.i.i37.i989.preheader ]
  %.0811.i.i.i.i.i.i39.i991.prol = phi ptr [ %i.ahw, %.lr.ph.i.i.i.i.i.i37.i989.prol ], [ %.sroa.0.0.lcssa.i26.i979, %.lr.ph.i.i.i.i.i.i37.i989.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i992.prol = phi ptr [ %i.ahv, %.lr.ph.i.i.i.i.i.i37.i989.prol ], [ %.0.lcssa.i28.i981, %.lr.ph.i.i.i.i.i.i37.i989.preheader ] ; 3 uses
  %prol.iter1353 = phi i64 [ %prol.iter1353.next, %.lr.ph.i.i.i.i.i.i37.i989.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i989.preheader ]
  %i.ahr = load i64, ptr %.0910.i.i.i.i.i.i40.i992.prol, align 8, !tbaa !77
  store i64 %i.ahr, ptr %.0811.i.i.i.i.i.i39.i991.prol, align 8, !tbaa !184
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992.prol, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !185
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991.prol, i64 8
  store ptr %i.aht, ptr %i.ahu, align 8, !tbaa !186
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992.prol, i64 16 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991.prol, i64 16 ; 3 uses
  %i.ahx = add nsw i64 %.012.i.i.i.i.i.i38.i990.prol, -1 ; 2 uses
  %prol.iter1353.next = add i64 %prol.iter1353, 1 ; 2 uses
  %prol.iter1353.cmp.not = icmp eq i64 %prol.iter1353.next, %xtraiter1351
  br i1 %prol.iter1353.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i989.prol, !llvm.loop !369

.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i37.i989.prol, %.lr.ph.i.i.i.i.i.i37.i989.preheader
  %.012.i.i.i.i.i.i38.i990.unr = phi i64 [ %i.ahp, %.lr.ph.i.i.i.i.i.i37.i989.preheader ], [ %i.ahx, %.lr.ph.i.i.i.i.i.i37.i989.prol ]
  %.0811.i.i.i.i.i.i39.i991.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i979, %.lr.ph.i.i.i.i.i.i37.i989.preheader ], [ %i.ahw, %.lr.ph.i.i.i.i.i.i37.i989.prol ]
  %.0910.i.i.i.i.i.i40.i992.unr = phi ptr [ %.0.lcssa.i28.i981, %.lr.ph.i.i.i.i.i.i37.i989.preheader ], [ %i.ahv, %.lr.ph.i.i.i.i.i.i37.i989.prol ]
  %.lcssa1255.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i989.preheader ], [ %i.ahw, %.lr.ph.i.i.i.i.i.i37.i989.prol ]
  %i.ahy = icmp ult i64 %i.ahp, 4
  br i1 %i.ahy, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i982, label %.lr.ph.i.i.i.i.i.i37.i989

.lr.ph.i.i.i.i.i.i37.i989:                        ; preds = %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i989
  %.012.i.i.i.i.i.i38.i990 = phi i64 [ %i.aix, %.lr.ph.i.i.i.i.i.i37.i989 ], [ %.012.i.i.i.i.i.i38.i990.unr, %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i991 = phi ptr [ %i.aiw, %.lr.ph.i.i.i.i.i.i37.i989 ], [ %.0811.i.i.i.i.i.i39.i991.unr, %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i992 = phi ptr [ %i.aiv, %.lr.ph.i.i.i.i.i.i37.i989 ], [ %.0910.i.i.i.i.i.i40.i992.unr, %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit ] ; 9 uses
  %i.ahz = load i64, ptr %.0910.i.i.i.i.i.i40.i992, align 8, !tbaa !77
  store i64 %i.ahz, ptr %.0811.i.i.i.i.i.i39.i991, align 8, !tbaa !184
  %i.aia = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !185
  %i.aic = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 8
  store ptr %i.aib, ptr %i.aic, align 8, !tbaa !186
  %i.aid = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 16
  %i.aie = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 16
  %i.aif = load i64, ptr %i.aid, align 8, !tbaa !77
  store i64 %i.aif, ptr %i.aie, align 8, !tbaa !184
  %i.aig = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 24
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !185
  %i.aii = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 24
  store ptr %i.aih, ptr %i.aii, align 8, !tbaa !186
  %i.aij = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 32
  %i.aik = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 32
  %i.ail = load i64, ptr %i.aij, align 8, !tbaa !77
  store i64 %i.ail, ptr %i.aik, align 8, !tbaa !184
  %i.aim = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 40
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !185
  %i.aio = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 40
  store ptr %i.ain, ptr %i.aio, align 8, !tbaa !186
  %i.aip = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 48
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 48
  %i.air = load i64, ptr %i.aip, align 8, !tbaa !77
  store i64 %i.air, ptr %i.aiq, align 8, !tbaa !184
  %i.ais = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 56
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !185
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 56
  store ptr %i.ait, ptr %i.aiu, align 8, !tbaa !186
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i992, i64 64
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i991, i64 64 ; 2 uses
  %i.aix = add nsw i64 %.012.i.i.i.i.i.i38.i990, -4
  %i.aiy = icmp sgt i64 %.012.i.i.i.i.i.i38.i990, 4
  br i1 %i.aiy, label %.lr.ph.i.i.i.i.i.i37.i989, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i982, !llvm.loop !12

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i982: ; preds = %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i989, %._crit_edge.i25.i978
  %.08.lcssa.i.i.i.i.i.i30.i983 = phi ptr [ %.sroa.0.0.lcssa.i26.i979, %._crit_edge.i25.i978 ], [ %.lcssa1255.unr, %.lr.ph.i.i.i.i.i.i37.i989.prol.loopexit ], [ %i.aiw, %.lr.ph.i.i.i.i.i.i37.i989 ]
  %i.aiz = ptrtoint ptr %.016.lcssa.i27.i980 to i64
  %i.aja = sub i64 %i.wd, %i.aiz
  %i.ajb = ashr exact i64 %i.aja, 4               ; 5 uses
  %i.ajc = icmp sgt i64 %i.ajb, 0
  br i1 %i.ajc, label %.lr.ph.i.i.i.i.i19.i32.preheader.i984, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit1012

.lr.ph.i.i.i.i.i19.i32.preheader.i984:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i982
  %i.ajd = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i983 to i64
  %i.aje = ptrtoint ptr %.sroa.0.0.lcssa.i26.i979 to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  %i.ajg = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i979, i64 %i.ajf ; 2 uses
  %xtraiter1354 = and i64 %i.ajb, 3               ; 2 uses
  %lcmp.mod1355.not = icmp eq i64 %xtraiter1354, 0
  br i1 %lcmp.mod1355.not, label %.lr.ph.i.i.i.i.i19.i32.i985.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i985.prol

.lr.ph.i.i.i.i.i19.i32.i985.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i984, %.lr.ph.i.i.i.i.i19.i32.i985.prol
  %.012.i.i.i.i.i20.i33.i986.prol = phi i64 [ %i.ajn, %.lr.ph.i.i.i.i.i19.i32.i985.prol ], [ %i.ajb, %.lr.ph.i.i.i.i.i19.i32.preheader.i984 ]
  %.0811.i.i.i.i.i21.i34.i987.prol = phi ptr [ %i.ajm, %.lr.ph.i.i.i.i.i19.i32.i985.prol ], [ %i.ajg, %.lr.ph.i.i.i.i.i19.i32.preheader.i984 ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i988.prol = phi ptr [ %i.ajl, %.lr.ph.i.i.i.i.i19.i32.i985.prol ], [ %.016.lcssa.i27.i980, %.lr.ph.i.i.i.i.i19.i32.preheader.i984 ] ; 3 uses
  %prol.iter1356 = phi i64 [ %prol.iter1356.next, %.lr.ph.i.i.i.i.i19.i32.i985.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i984 ]
  %i.ajh = load i64, ptr %.0910.i.i.i.i.i22.i35.i988.prol, align 8, !tbaa !77
  store i64 %i.ajh, ptr %.0811.i.i.i.i.i21.i34.i987.prol, align 8, !tbaa !184
  %i.aji = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i988.prol, i64 8
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !185
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i987.prol, i64 8
  store ptr %i.ajj, ptr %i.ajk, align 8, !tbaa !186
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i988.prol, i64 16 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i987.prol, i64 16 ; 2 uses
  %i.ajn = add nsw i64 %.012.i.i.i.i.i20.i33.i986.prol, -1 ; 2 uses
  %prol.iter1356.next = add i64 %prol.iter1356, 1 ; 2 uses
  %prol.iter1356.cmp.not = icmp eq i64 %prol.iter1356.next, %xtraiter1354
  br i1 %prol.iter1356.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i985.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i985.prol, !llvm.loop !370

.lr.ph.i.i.i.i.i19.i32.i985.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i32.i985.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i984
  %.012.i.i.i.i.i20.i33.i986.unr = phi i64 [ %i.ajb, %.lr.ph.i.i.i.i.i19.i32.preheader.i984 ], [ %i.ajn, %.lr.ph.i.i.i.i.i19.i32.i985.prol ]
  %.0811.i.i.i.i.i21.i34.i987.unr = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i19.i32.preheader.i984 ], [ %i.ajm, %.lr.ph.i.i.i.i.i19.i32.i985.prol ]
  %.0910.i.i.i.i.i22.i35.i988.unr = phi ptr [ %.016.lcssa.i27.i980, %.lr.ph.i.i.i.i.i19.i32.preheader.i984 ], [ %i.ajl, %.lr.ph.i.i.i.i.i19.i32.i985.prol ]
  %i.ajo = icmp ult i64 %i.ajb, 4
  br i1 %i.ajo, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit1012, label %.lr.ph.i.i.i.i.i19.i32.i985

.lr.ph.i.i.i.i.i19.i32.i985:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.i985.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i985
  %.012.i.i.i.i.i20.i33.i986 = phi i64 [ %i.akn, %.lr.ph.i.i.i.i.i19.i32.i985 ], [ %.012.i.i.i.i.i20.i33.i986.unr, %.lr.ph.i.i.i.i.i19.i32.i985.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i987 = phi ptr [ %i.akm, %.lr.ph.i.i.i.i.i19.i32.i985 ], [ %.0811.i.i.i.i.i21.i34.i987.unr, %.lr.ph.i.i.i.i.i19.i32.i985.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i988 = phi ptr [ %i.akl, %.lr.ph.i.i.i.i.i19.i32.i985 ], [ %.0910.i.i.i.i.i22.i35.i988.unr, %.lr.ph.i.i.i.i.i19.i32.i985.prol.loopexit ] ; 9 uses
  %i.ajp = load i64, ptr %.0910.i.i.i.i.i22.i35.i988, align 8, !tbaa !77
  store i64 %i.ajp, ptr %.0811.i.i.i.i.i21.i34.i987, align 8, !tbaa !184
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i988, i64 8
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !185
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i987, i64 8
  store ptr %i.ajr, ptr %i.ajs, align 8, !tbaa !186
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i988, i64 16
  %i.aju = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i987, i64 16
  %i.ajv = load i64, ptr %i.ajt, align 8, !tbaa !77
  store i64 %i.ajv, ptr %i.aju, align 8, !tbaa !184
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i988, i64 24
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !185
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i987, i64 24
  store ptr %i.ajx, ptr %i.ajy, align 8, !tbaa !186
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i988, i64 32
  %i.aka = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i987, i64 32
  %i.akb = load i64, ptr %i.ajz, align 8, !tbaa !77
  store i64 %i.akb, ptr %i.aka, align 8, !tbaa !184
  %i.akc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i988, i64 40
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !185
  %i.ake = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i987, i64 40
end_hunk_0
begin_hunk_1_@_ZN3lld9BPOrdererIN12_GLOBAL__N_114BPOrdererMachOEE12computeOrderEN4llvm9StringRefENS4_8ArrayRefINS_21BPCompressionSortSpecEEEbbbbNS6_IPNS_5macho12InputSectionEEERKNS4_8DenseMapINS4_19CachedHashStringRefESt3setIjSt4lessIjESaIjEENS4_12DenseMapInfoISE_vEENS4_6detail12DenseMapPairISE_SJ_EEEE:bb.a
.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.bek, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.bec, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.bej, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.bei, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter1401 = phi i64 [ %prol.iter1401.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.bee = load i64, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !77
  store i64 %i.bee, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !184
  %i.bef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !185
  %i.beh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.beg, ptr %i.beh, align 8, !tbaa !186
  %i.bei = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.bek = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter1401.next = add i64 %prol.iter1401, 1 ; 2 uses
  %prol.iter1401.cmp.not = icmp eq i64 %prol.iter1401.next, %xtraiter1399
  br i1 %prol.iter1401.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !381

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.bec, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bek, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bej, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.bei, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.bel = icmp ult i64 %i.bec, 4
  br i1 %i.bel, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.bfk, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.bfj, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.bfi, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.bem = load i64, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !77
  store i64 %i.bem, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !184
  %i.ben = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !185
  %i.bep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.beo, ptr %i.bep, align 8, !tbaa !186
  %i.beq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.ber = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.bes = load i64, ptr %i.beq, align 8, !tbaa !77
  store i64 %i.bes, ptr %i.ber, align 8, !tbaa !184
  %i.bet = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !185
  %i.bev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.beu, ptr %i.bev, align 8, !tbaa !186
  %i.bew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.bex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.bey = load i64, ptr %i.bew, align 8, !tbaa !77
  store i64 %i.bey, ptr %i.bex, align 8, !tbaa !184
  %i.bez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !185
  %i.bfb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.bfa, ptr %i.bfb, align 8, !tbaa !186
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.bfd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.bfe = load i64, ptr %i.bfc, align 8, !tbaa !77
  store i64 %i.bfe, ptr %i.bfd, align 8, !tbaa !184
  %i.bff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !185
  %i.bfh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.bfg, ptr %i.bfh, align 8, !tbaa !186
  %i.bfi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.bfj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.bfk = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.bfl = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.bfl, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit, !llvm.loop !12

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.bfm = shl nsw i64 %.022.i16.i, 2             ; 4 uses
  %.not65.i = icmp slt i64 %i.akr, %i.bfm
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i895

.lr.ph.i895:                                      ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.idx.i896 = shl nsw i64 %.022.i16.i, 5         ; 2 uses
  %.idx56.i = shl nsw i64 %.022.i16.i, 6          ; 2 uses
  %.not57.i = icmp eq i64 %.idx.i896, %.idx56.i
  br label %bb.cg

bb.cg:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %.lr.ph.i895
  %.sroa.022.067.i = phi ptr [ %i.ih, %.lr.ph.i895 ], [ %i.bje, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.066.i = phi ptr [ %.sroa.10.0.i, %.lr.ph.i895 ], [ %i.bfo, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 4 uses
  %i.bfn = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i896 ; 4 uses
  %i.bfo = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br i1 %.not57.i, label %._crit_edge.i.i901, label %.lr.ph.i.i897

.lr.ph.i.i897:                                    ; preds = %bb.cg, %bb.cj
  %.029.i.i = phi ptr [ %.1.i.i898, %bb.cj ], [ %.066.i, %bb.cg ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.cj ], [ %i.bfn, %bb.cg ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.bfv, %bb.cj ], [ %.sroa.022.067.i, %bb.cg ] ; 3 uses
  %i.bfp = load i64, ptr %.01628.i.i, align 8, !tbaa !77 ; 2 uses
  %i.bfq = load i64, ptr %.029.i.i, align 8, !tbaa !77 ; 2 uses
  %i.bfr = icmp ult i64 %i.bfp, %i.bfq
  br i1 %i.bfr, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i.i897
  %i.bfs = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i.i897
  %i.bft = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink34.i.i = phi i64 [ %i.bfp, %bb.ch ], [ %i.bfq, %bb.ci ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.ch ], [ %.029.i.i, %bb.ci ]
  %.117.i.i = phi ptr [ %i.bfs, %bb.ch ], [ %.01628.i.i, %bb.ci ] ; 3 uses
  %.1.i.i898 = phi ptr [ %.029.i.i, %bb.ch ], [ %i.bft, %bb.ci ] ; 3 uses
  %.sink.in.i.i899 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 8
  %.sink.i.i900 = load ptr, ptr %.sink.in.i.i899, align 8, !tbaa !185
  store i64 %.sink34.i.i, ptr %.sroa.0.027.i.i, align 8, !tbaa !184
  %i.bfu = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.sink.i.i900, ptr %i.bfu, align 8, !tbaa !186
  %i.bfv = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.bfw = icmp ne ptr %.1.i.i898, %i.bfn
  %i.bfx = icmp ne ptr %.117.i.i, %i.bfo
  %i.bfy = select i1 %i.bfw, i1 %i.bfx, i1 false
  br i1 %i.bfy, label %.lr.ph.i.i897, label %._crit_edge.i.i901, !llvm.loop !14

._crit_edge.i.i901:                               ; preds = %bb.cj, %bb.cg
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.067.i, %bb.cg ], [ %i.bfv, %bb.cj ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.bfn, %bb.cg ], [ %.117.i.i, %bb.cj ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.066.i, %bb.cg ], [ %.1.i.i898, %bb.cj ] ; 3 uses
  %i.bfz = ptrtoint ptr %i.bfn to i64
  %i.bga = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bgb = sub i64 %i.bfz, %i.bga
  %i.bgc = ashr exact i64 %i.bgb, 4               ; 5 uses
  %i.bgd = icmp sgt i64 %i.bgc, 0
  br i1 %i.bgd, label %.lr.ph.i.i.i.i.i.i.i904.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i904.preheader:                ; preds = %._crit_edge.i.i901
  %xtraiter1402 = and i64 %i.bgc, 3               ; 2 uses
  %lcmp.mod1403.not = icmp eq i64 %xtraiter1402, 0
  br i1 %lcmp.mod1403.not, label %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i904.prol

.lr.ph.i.i.i.i.i.i.i904.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i904.preheader, %.lr.ph.i.i.i.i.i.i.i904.prol
  %.012.i.i.i.i.i.i.i905.prol = phi i64 [ %i.bgk, %.lr.ph.i.i.i.i.i.i.i904.prol ], [ %i.bgc, %.lr.ph.i.i.i.i.i.i.i904.preheader ]
  %.0811.i.i.i.i.i.i.i906.prol = phi ptr [ %i.bgj, %.lr.ph.i.i.i.i.i.i.i904.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i904.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i907.prol = phi ptr [ %i.bgi, %.lr.ph.i.i.i.i.i.i.i904.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i904.preheader ] ; 3 uses
  %prol.iter1404 = phi i64 [ %prol.iter1404.next, %.lr.ph.i.i.i.i.i.i.i904.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i904.preheader ]
  %i.bge = load i64, ptr %.0910.i.i.i.i.i.i.i907.prol, align 8, !tbaa !77
  store i64 %i.bge, ptr %.0811.i.i.i.i.i.i.i906.prol, align 8, !tbaa !184
  %i.bgf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907.prol, i64 8
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !185
  %i.bgh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906.prol, i64 8
  store ptr %i.bgg, ptr %i.bgh, align 8, !tbaa !186
  %i.bgi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907.prol, i64 16 ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906.prol, i64 16 ; 3 uses
  %i.bgk = add nsw i64 %.012.i.i.i.i.i.i.i905.prol, -1 ; 2 uses
  %prol.iter1404.next = add i64 %prol.iter1404, 1 ; 2 uses
  %prol.iter1404.cmp.not = icmp eq i64 %prol.iter1404.next, %xtraiter1402
  br i1 %prol.iter1404.cmp.not, label %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i904.prol, !llvm.loop !382

.lr.ph.i.i.i.i.i.i.i904.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i904.prol, %.lr.ph.i.i.i.i.i.i.i904.preheader
  %.012.i.i.i.i.i.i.i905.unr = phi i64 [ %i.bgc, %.lr.ph.i.i.i.i.i.i.i904.preheader ], [ %i.bgk, %.lr.ph.i.i.i.i.i.i.i904.prol ]
  %.0811.i.i.i.i.i.i.i906.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i904.preheader ], [ %i.bgj, %.lr.ph.i.i.i.i.i.i.i904.prol ]
  %.0910.i.i.i.i.i.i.i907.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i904.preheader ], [ %i.bgi, %.lr.ph.i.i.i.i.i.i.i904.prol ]
  %.lcssa1266.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i904.preheader ], [ %i.bgj, %.lr.ph.i.i.i.i.i.i.i904.prol ]
  %i.bgl = icmp ult i64 %i.bgc, 4
  br i1 %i.bgl, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i904

.lr.ph.i.i.i.i.i.i.i904:                          ; preds = %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i904
  %.012.i.i.i.i.i.i.i905 = phi i64 [ %i.bhk, %.lr.ph.i.i.i.i.i.i.i904 ], [ %.012.i.i.i.i.i.i.i905.unr, %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i906 = phi ptr [ %i.bhj, %.lr.ph.i.i.i.i.i.i.i904 ], [ %.0811.i.i.i.i.i.i.i906.unr, %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i907 = phi ptr [ %i.bhi, %.lr.ph.i.i.i.i.i.i.i904 ], [ %.0910.i.i.i.i.i.i.i907.unr, %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit ] ; 9 uses
  %i.bgm = load i64, ptr %.0910.i.i.i.i.i.i.i907, align 8, !tbaa !77
  store i64 %i.bgm, ptr %.0811.i.i.i.i.i.i.i906, align 8, !tbaa !184
  %i.bgn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 8
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !185
  %i.bgp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 8
  store ptr %i.bgo, ptr %i.bgp, align 8, !tbaa !186
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 16
  %i.bgr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 16
  %i.bgs = load i64, ptr %i.bgq, align 8, !tbaa !77
  store i64 %i.bgs, ptr %i.bgr, align 8, !tbaa !184
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 24
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !185
  %i.bgv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 24
  store ptr %i.bgu, ptr %i.bgv, align 8, !tbaa !186
  %i.bgw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 32
  %i.bgx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 32
  %i.bgy = load i64, ptr %i.bgw, align 8, !tbaa !77
  store i64 %i.bgy, ptr %i.bgx, align 8, !tbaa !184
  %i.bgz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 40
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !185
  %i.bhb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 40
  store ptr %i.bha, ptr %i.bhb, align 8, !tbaa !186
  %i.bhc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 48
  %i.bhd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 48
  %i.bhe = load i64, ptr %i.bhc, align 8, !tbaa !77
  store i64 %i.bhe, ptr %i.bhd, align 8, !tbaa !184
  %i.bhf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 56
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !185
  %i.bhh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 56
  store ptr %i.bhg, ptr %i.bhh, align 8, !tbaa !186
  %i.bhi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i907, i64 64
  %i.bhj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i906, i64 64 ; 2 uses
  %i.bhk = add nsw i64 %.012.i.i.i.i.i.i.i905, -4
  %i.bhl = icmp sgt i64 %.012.i.i.i.i.i.i.i905, 4
  br i1 %i.bhl, label %.lr.ph.i.i.i.i.i.i.i904, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !12

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i904, %._crit_edge.i.i901
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i901 ], [ %.lcssa1266.unr, %.lr.ph.i.i.i.i.i.i.i904.prol.loopexit ], [ %i.bhj, %.lr.ph.i.i.i.i.i.i.i904 ]
  %i.bhm = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.bhn = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.bho = sub i64 %i.bhm, %i.bhn
  %i.bhp = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.bho ; 4 uses
  %i.bhq = ptrtoint ptr %i.bfo to i64             ; 2 uses
  %i.bhr = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.bhs = sub i64 %i.bhq, %i.bhr
  %i.bht = ashr exact i64 %i.bhs, 4               ; 5 uses
  %i.bhu = icmp sgt i64 %i.bht, 0
  br i1 %i.bhu, label %.lr.ph.i.i.i.i.i19.i.i903.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i903.preheader:              ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %xtraiter1405 = and i64 %i.bht, 3               ; 2 uses
  %lcmp.mod1406.not = icmp eq i64 %xtraiter1405, 0
  br i1 %lcmp.mod1406.not, label %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i903.prol

.lr.ph.i.i.i.i.i19.i.i903.prol:                   ; preds = %.lr.ph.i.i.i.i.i19.i.i903.preheader, %.lr.ph.i.i.i.i.i19.i.i903.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.bib, %.lr.ph.i.i.i.i.i19.i.i903.prol ], [ %i.bht, %.lr.ph.i.i.i.i.i19.i.i903.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.bia, %.lr.ph.i.i.i.i.i19.i.i903.prol ], [ %i.bhp, %.lr.ph.i.i.i.i.i19.i.i903.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.bhz, %.lr.ph.i.i.i.i.i19.i.i903.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i903.preheader ] ; 3 uses
  %prol.iter1407 = phi i64 [ %prol.iter1407.next, %.lr.ph.i.i.i.i.i19.i.i903.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i903.preheader ]
  %i.bhv = load i64, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !77
  store i64 %i.bhv, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !184
  %i.bhw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !185
  %i.bhy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.bhx, ptr %i.bhy, align 8, !tbaa !186
  %i.bhz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.bib = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter1407.next = add i64 %prol.iter1407, 1 ; 2 uses
  %prol.iter1407.cmp.not = icmp eq i64 %prol.iter1407.next, %xtraiter1405
  br i1 %prol.iter1407.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i903.prol, !llvm.loop !383

.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i19.i.i903.prol, %.lr.ph.i.i.i.i.i19.i.i903.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.bht, %.lr.ph.i.i.i.i.i19.i.i903.preheader ], [ %i.bib, %.lr.ph.i.i.i.i.i19.i.i903.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.bhp, %.lr.ph.i.i.i.i.i19.i.i903.preheader ], [ %i.bia, %.lr.ph.i.i.i.i.i19.i.i903.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i903.preheader ], [ %i.bhz, %.lr.ph.i.i.i.i.i19.i.i903.prol ]
  %.lcssa1267.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i903.preheader ], [ %i.bia, %.lr.ph.i.i.i.i.i19.i.i903.prol ]
  %i.bic = icmp ult i64 %i.bht, 4
  br i1 %i.bic, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, label %.lr.ph.i.i.i.i.i19.i.i903

.lr.ph.i.i.i.i.i19.i.i903:                        ; preds = %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i903
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.bjb, %.lr.ph.i.i.i.i.i19.i.i903 ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.bja, %.lr.ph.i.i.i.i.i19.i.i903 ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.biz, %.lr.ph.i.i.i.i.i19.i.i903 ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit ] ; 9 uses
  %i.bid = load i64, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !77
  store i64 %i.bid, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !184
  %i.bie = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.bif = load ptr, ptr %i.bie, align 8, !tbaa !185
  %i.big = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.bif, ptr %i.big, align 8, !tbaa !186
  %i.bih = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.bii = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.bij = load i64, ptr %i.bih, align 8, !tbaa !77
  store i64 %i.bij, ptr %i.bii, align 8, !tbaa !184
  %i.bik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !185
  %i.bim = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.bil, ptr %i.bim, align 8, !tbaa !186
  %i.bin = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.bio = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.bip = load i64, ptr %i.bin, align 8, !tbaa !77
  store i64 %i.bip, ptr %i.bio, align 8, !tbaa !184
  %i.biq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !185
  %i.bis = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.bir, ptr %i.bis, align 8, !tbaa !186
  %i.bit = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.biu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.biv = load i64, ptr %i.bit, align 8, !tbaa !77
  store i64 %i.biv, ptr %i.biu, align 8, !tbaa !184
  %i.biw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !185
  %i.biy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.bix, ptr %i.biy, align 8, !tbaa !186
  %i.biz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.bja = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.bjb = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.bjc = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.bjc, label %.lr.ph.i.i.i.i.i19.i.i903, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, !llvm.loop !12

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i903, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.bhp, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %.lcssa1267.unr, %.lr.ph.i.i.i.i.i19.i.i903.prol.loopexit ], [ %i.bja, %.lr.ph.i.i.i.i.i19.i.i903 ]
  %58 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.bjd = sub i64 %58, %i.bhm
  %i.bje = getelementptr inbounds i8, ptr %i.bhp, i64 %i.bjd ; 2 uses
  %i.bjf = sub i64 %i.aym, %i.bhq
  %i.bjg = ashr exact i64 %i.bjf, 4               ; 2 uses
  %.not.i902 = icmp slt i64 %i.bjg, %i.bfm
  br i1 %.not.i902, label %._crit_edge.i, label %bb.cg, !llvm.loop !15

._crit_edge.i:                                    ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i = phi ptr [ %.sroa.10.0.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bfo, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %i.ih, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bje, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.akr, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit ], [ %i.bjg, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i ]
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.ayn, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = shl nsw i64 %.sroa.speculated.i, 4
  %i.bjh = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %.idx58.i ; 5 uses
  %i.bji = icmp ne i64 %.sroa.speculated.i, 0
  %i.bjj = icmp ne ptr %i.bjh, %i.aks
  %i.bjk = and i1 %i.bji, %i.bjj
  br i1 %i.bjk, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i, %bb.cm
  %.029.i42.i = phi ptr [ %.1.i48.i, %bb.cm ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i47.i, %bb.cm ], [ %i.bjh, %._crit_edge.i ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.bjr, %bb.cm ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bjl = load i64, ptr %.01628.i43.i, align 8, !tbaa !77 ; 2 uses
  %i.bjm = load i64, ptr %.029.i42.i, align 8, !tbaa !77 ; 2 uses
  %i.bjn = icmp ult i64 %i.bjl, %i.bjm
  br i1 %i.bjn, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph.i41.i
  %i.bjo = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i41.i
  %i.bjp = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sink34.i45.i = phi i64 [ %i.bjl, %bb.ck ], [ %i.bjm, %bb.cl ]
  %.01628.pn.i46.i = phi ptr [ %.01628.i43.i, %bb.ck ], [ %.029.i42.i, %bb.cl ]
  %.117.i47.i = phi ptr [ %i.bjo, %bb.ck ], [ %.01628.i43.i, %bb.cl ] ; 3 uses
  %.1.i48.i = phi ptr [ %.029.i42.i, %bb.ck ], [ %i.bjp, %bb.cl ] ; 3 uses
  %.sink.in.i49.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i, i64 8
  %.sink.i50.i = load ptr, ptr %.sink.in.i49.i, align 8, !tbaa !185
  store i64 %.sink34.i45.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !184
  %i.bjq = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.sink.i50.i, ptr %i.bjq, align 8, !tbaa !186
  %i.bjr = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.bjs = icmp ne ptr %.1.i48.i, %i.bjh
  %i.bjt = icmp ne ptr %.117.i47.i, %i.aks
  %i.bju = select i1 %i.bjs, i1 %i.bjt, i1 false
  br i1 %i.bju, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !14

._crit_edge.i25.i:                                ; preds = %bb.cm, %._crit_edge.i
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i ], [ %i.bjr, %bb.cm ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.bjh, %._crit_edge.i ], [ %.117.i47.i, %bb.cm ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.1.i48.i, %bb.cm ] ; 3 uses
  %i.bjv = ptrtoint ptr %i.bjh to i64
  %i.bjw = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.bjx = sub i64 %i.bjv, %i.bjw
  %i.bjy = ashr exact i64 %i.bjx, 4               ; 5 uses
  %i.bjz = icmp sgt i64 %i.bjy, 0
  br i1 %i.bjz, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter1408 = and i64 %i.bjy, 3               ; 2 uses
  %lcmp.mod1409.not = icmp eq i64 %xtraiter1408, 0
  br i1 %lcmp.mod1409.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.bkg, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.bjy, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.bkf, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.bke, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter1410 = phi i64 [ %prol.iter1410.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.bka = load i64, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !77
  store i64 %i.bka, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !184
  %i.bkb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !185
  %i.bkd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.bkc, ptr %i.bkd, align 8, !tbaa !186
  %i.bke = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.bkg = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter1410.next = add i64 %prol.iter1410, 1 ; 2 uses
  %prol.iter1410.cmp.not = icmp eq i64 %prol.iter1410.next, %xtraiter1408
  br i1 %prol.iter1410.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !384

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.bjy, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.bkg, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.bkf, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.bke, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa1272.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.bkf, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.bkh = icmp ult i64 %i.bjy, 4
  br i1 %i.bkh, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.blg, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.blf, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.ble, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.bki = load i64, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !77
  store i64 %i.bki, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !184
  %i.bkj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !185
  %i.bkl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.bkk, ptr %i.bkl, align 8, !tbaa !186
  %i.bkm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.bkn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.bko = load i64, ptr %i.bkm, align 8, !tbaa !77
  store i64 %i.bko, ptr %i.bkn, align 8, !tbaa !184
  %i.bkp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !185
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.bkq, ptr %i.bkr, align 8, !tbaa !186
  %i.bks = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.bkt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.bku = load i64, ptr %i.bks, align 8, !tbaa !77
  store i64 %i.bku, ptr %i.bkt, align 8, !tbaa !184
  %i.bkv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !185
  %i.bkx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.bkw, ptr %i.bkx, align 8, !tbaa !186
  %i.bky = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.bkz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.bla = load i64, ptr %i.bky, align 8, !tbaa !77
  store i64 %i.bla, ptr %i.bkz, align 8, !tbaa !184
  %i.blb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.blc = load ptr, ptr %i.blb, align 8, !tbaa !185
  %i.bld = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.blc, ptr %i.bld, align 8, !tbaa !186
  %i.ble = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.blf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.blg = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.blh = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.blh, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !12

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa1272.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.blf, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.bli = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.blj = sub i64 %i.aym, %i.bli
  %i.blk = ashr exact i64 %i.blj, 4               ; 5 uses
  %i.bll = icmp sgt i64 %i.blk, 0
  br i1 %i.bll, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.blm = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.bln = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.blo = sub i64 %i.blm, %i.bln
  %i.blp = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.blo ; 2 uses
  %xtraiter1411 = and i64 %i.blk, 3               ; 2 uses
  %lcmp.mod1412.not = icmp eq i64 %xtraiter1411, 0
  br i1 %lcmp.mod1412.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.blw, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.blk, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.blv, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.blp, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.blu, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter1413 = phi i64 [ %prol.iter1413.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.blq = load i64, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 8, !tbaa !77
  store i64 %i.blq, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !184
  %i.blr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !185
  %i.blt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.bls, ptr %i.blt, align 8, !tbaa !186
  %i.blu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.blw = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter1413.next = add i64 %prol.iter1413, 1 ; 2 uses
  %prol.iter1413.cmp.not = icmp eq i64 %prol.iter1413.next, %xtraiter1411
  br i1 %prol.iter1413.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !385

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.blk, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.blw, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.blp, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.blv, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.blu, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.blx = icmp ult i64 %i.blk, 4
  br i1 %i.blx, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.bmw, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.bmv, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.bmu, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.bly = load i64, ptr %.0910.i.i.i.i.i22.i35.i, align 8, !tbaa !77
  store i64 %i.bly, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !184
  %i.blz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !185
  %i.bmb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.bma, ptr %i.bmb, align 8, !tbaa !186
  %i.bmc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.bmd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.bme = load i64, ptr %i.bmc, align 8, !tbaa !77
  store i64 %i.bme, ptr %i.bmd, align 8, !tbaa !184
  %i.bmf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !185
  %i.bmh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.bmg, ptr %i.bmh, align 8, !tbaa !186
  %i.bmi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.bmj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.bmk = load i64, ptr %i.bmi, align 8, !tbaa !77
  store i64 %i.bmk, ptr %i.bmj, align 8, !tbaa !184
  %i.bml = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.bmm = load ptr, ptr %i.bml, align 8, !tbaa !185
  %i.bmn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
end_hunk_1
begin_hunk_2_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !186
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !904

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
  %i.fd = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !77
  store i64 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !184
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !185
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !186
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !77
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !184
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !185
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !186
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !77
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !184
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !185
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !186
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !77
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !184
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !185
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !186
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, !llvm.loop !12

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
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !77 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !77 ; 2 uses
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
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !185
  store i64 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !184
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

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
  %i.w = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !77
  store i64 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !185
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !186
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !905

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
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !77
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !186
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !77
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !184
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !185
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !77
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !184
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !185
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !77
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !184
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !185
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !186
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !12

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
  %i.bn = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !77
  store i64 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !184
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !185
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !186
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !906

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
  %i.bv = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !77
  store i64 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !184
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !185
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !186
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !77
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !184
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !185
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !186
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !77
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !184
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !186
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !77
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !184
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !185
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !186
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !12

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.bh, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cv = sub i64 %4, %i.be
  %i.cw = getelementptr inbounds i8, ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cx = sub i64 %i.b, %i.bi
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %.not = icmp slt i64 %i.cy, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15

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
  %i.dd = load i64, ptr %.01628.i43, align 8, !tbaa !77 ; 2 uses
  %i.de = load i64, ptr %.029.i42, align 8, !tbaa !77 ; 2 uses
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
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !185
  store i64 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !184
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !186
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !14

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
  %i.ds = load i64, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !77
  store i64 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !184
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !185
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !186
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !907

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
  %i.ea = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !77
  store i64 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !184
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !185
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !186
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !77
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !184
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !185
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !186
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !77
  store i64 %i.em, ptr %i.el, align 8, !tbaa !184
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !185
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !186
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !77
  store i64 %i.es, ptr %i.er, align 8, !tbaa !184
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !185
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !186
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !12

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
  %i.fi = load i64, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !77
  store i64 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !184
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !185
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !186
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !908

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
  %i.fq = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !77
  store i64 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !184
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !185
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !186
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !77
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !184
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !185
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !186
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !77
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !184
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !185
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_2
