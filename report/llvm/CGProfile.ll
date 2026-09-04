Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGProfile?download=true
inline.NumInlined: 1395
inline.NumDeleted: 681
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4llvm13CGProfilePass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
.lr.ph.i.i.i.i.i10.i24.i290.i.prol:               ; preds = %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol
  %.012.i.i.i.i.i11.i25.i291.i.prol = phi i64 [ %i.abw, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol ], [ %i.abo, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i292.i.prol = phi ptr [ %i.abv, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i289.i, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i293.i.prol = phi ptr [ %i.abu, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol ], [ %.sroa.015.0.lcssa.i18.i285.i, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader ] ; 3 uses
  %prol.iter522 = phi i64 [ %prol.iter522.next, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader ]
  %i.abq = load i64, ptr %.0910.i.i.i.i.i13.i27.i293.i.prol, align 8, !tbaa !60
  store i64 %i.abq, ptr %.0811.i.i.i.i.i12.i26.i292.i.prol, align 8, !tbaa !69
  %i.abr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i.prol, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !70
  %i.abt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i.prol, i64 8
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !71
  %i.abu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i.prol, i64 16 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i.prol, i64 16 ; 2 uses
  %i.abw = add nsw i64 %.012.i.i.i.i.i11.i25.i291.i.prol, -1 ; 2 uses
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i290.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i290.i.prol, !llvm.loop !107

.lr.ph.i.i.i.i.i10.i24.i290.i.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i10.i24.i290.i.prol, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader
  %.012.i.i.i.i.i11.i25.i291.i.unr = phi i64 [ %i.abo, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader ], [ %i.abw, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol ]
  %.0811.i.i.i.i.i12.i26.i292.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i289.i, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader ], [ %i.abv, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol ]
  %.0910.i.i.i.i.i13.i27.i293.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i285.i, %.lr.ph.i.i.i.i.i10.i24.i290.i.preheader ], [ %i.abu, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol ]
  %i.abx = icmp ult i64 %i.abo, 4
  br i1 %i.abx, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i, label %.lr.ph.i.i.i.i.i10.i24.i290.i

.lr.ph.i.i.i.i.i10.i24.i290.i:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i290.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i290.i
  %.012.i.i.i.i.i11.i25.i291.i = phi i64 [ %i.acw, %.lr.ph.i.i.i.i.i10.i24.i290.i ], [ %.012.i.i.i.i.i11.i25.i291.i.unr, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i292.i = phi ptr [ %i.acv, %.lr.ph.i.i.i.i.i10.i24.i290.i ], [ %.0811.i.i.i.i.i12.i26.i292.i.unr, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i293.i = phi ptr [ %i.acu, %.lr.ph.i.i.i.i.i10.i24.i290.i ], [ %.0910.i.i.i.i.i13.i27.i293.i.unr, %.lr.ph.i.i.i.i.i10.i24.i290.i.prol.loopexit ] ; 9 uses
  %i.aby = load i64, ptr %.0910.i.i.i.i.i13.i27.i293.i, align 8, !tbaa !60
  store i64 %i.aby, ptr %.0811.i.i.i.i.i12.i26.i292.i, align 8, !tbaa !69
  %i.abz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !70
  %i.acb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 8
  store ptr %i.aca, ptr %i.acb, align 8, !tbaa !71
  %i.acc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 16
  %i.acd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 16
  %i.ace = load i64, ptr %i.acc, align 8, !tbaa !60
  store i64 %i.ace, ptr %i.acd, align 8, !tbaa !69
  %i.acf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 24
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !70
  %i.ach = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 24
  store ptr %i.acg, ptr %i.ach, align 8, !tbaa !71
  %i.aci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 32
  %i.acj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 32
  %i.ack = load i64, ptr %i.aci, align 8, !tbaa !60
  store i64 %i.ack, ptr %i.acj, align 8, !tbaa !69
  %i.acl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 40
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !70
  %i.acn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 40
  store ptr %i.acm, ptr %i.acn, align 8, !tbaa !71
  %i.aco = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 48
  %i.acp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 48
  %i.acq = load i64, ptr %i.aco, align 8, !tbaa !60
  store i64 %i.acq, ptr %i.acp, align 8, !tbaa !69
  %i.acr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 56
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !70
  %i.act = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 56
  store ptr %i.acs, ptr %i.act, align 8, !tbaa !71
  %i.acu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i293.i, i64 64
  %i.acv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i292.i, i64 64
  %i.acw = add nsw i64 %.012.i.i.i.i.i11.i25.i291.i, -4
  %i.acx = icmp sgt i64 %.012.i.i.i.i.i11.i25.i291.i, 4
  br i1 %i.acx, label %.lr.ph.i.i.i.i.i10.i24.i290.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i, !llvm.loop !5

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i: ; preds = %.lr.ph.i.i.i.i.i10.i24.i290.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i290.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i288.i
  %i.acy = shl nsw i64 %.022.i.i.i, 2             ; 4 uses
  %.not65.i183.i = icmp slt i64 %i.hh, %i.acy
  br i1 %.not65.i183.i, label %._crit_edge.i209.i, label %.lr.ph.i184.i

.lr.ph.i184.i:                                    ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i
  %.idx.i185.i = shl nsw i64 %.022.i.i.i, 5       ; 2 uses
  %.idx56.i186.i = shl nsw i64 %.022.i.i.i, 6     ; 2 uses
  %.not57.i187.i = icmp eq i64 %.idx.i185.i, %.idx56.i186.i
  br label %bb.bg

bb.bg:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i, %.lr.ph.i184.i
  %.sroa.022.067.i188.i = phi ptr [ %i.gz, %.lr.ph.i184.i ], [ %i.agq, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i ] ; 2 uses
  %.066.i189.i = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i184.i ], [ %i.ada, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i ] ; 4 uses
  %i.acz = getelementptr inbounds i8, ptr %.066.i189.i, i64 %.idx.i185.i ; 4 uses
  %i.ada = getelementptr inbounds i8, ptr %.066.i189.i, i64 %.idx56.i186.i ; 4 uses
  br i1 %.not57.i187.i, label %._crit_edge.i.i200.i, label %.lr.ph.i.i190.i

.lr.ph.i.i190.i:                                  ; preds = %bb.bg, %bb.bj
  %.029.i.i191.i = phi ptr [ %.1.i.i197.i, %bb.bj ], [ %.066.i189.i, %bb.bg ] ; 4 uses
  %.01628.i.i192.i = phi ptr [ %.117.i.i196.i, %bb.bj ], [ %i.acz, %bb.bg ] ; 4 uses
  %.sroa.0.027.i.i193.i = phi ptr [ %i.adh, %bb.bj ], [ %.sroa.022.067.i188.i, %bb.bg ] ; 3 uses
  %i.adb = load i64, ptr %.01628.i.i192.i, align 8, !tbaa !60 ; 2 uses
  %i.adc = load i64, ptr %.029.i.i191.i, align 8, !tbaa !60 ; 2 uses
  %i.add = icmp ult i64 %i.adb, %i.adc
  br i1 %i.add, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i190.i
  %i.ade = getelementptr inbounds nuw i8, ptr %.01628.i.i192.i, i64 16
  br label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i.i190.i
  %i.adf = getelementptr inbounds nuw i8, ptr %.029.i.i191.i, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink34.i.i194.i = phi i64 [ %i.adb, %bb.bh ], [ %i.adc, %bb.bi ]
  %.01628.pn.i.i195.i = phi ptr [ %.01628.i.i192.i, %bb.bh ], [ %.029.i.i191.i, %bb.bi ]
  %.117.i.i196.i = phi ptr [ %i.ade, %bb.bh ], [ %.01628.i.i192.i, %bb.bi ] ; 3 uses
  %.1.i.i197.i = phi ptr [ %.029.i.i191.i, %bb.bh ], [ %i.adf, %bb.bi ] ; 3 uses
  %.sink.in.i.i198.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i195.i, i64 8
  %.sink.i.i199.i = load ptr, ptr %.sink.in.i.i198.i, align 8, !tbaa !70
  store i64 %.sink34.i.i194.i, ptr %.sroa.0.027.i.i193.i, align 8, !tbaa !69
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i193.i, i64 8
  store ptr %.sink.i.i199.i, ptr %i.adg, align 8, !tbaa !71
  %i.adh = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i193.i, i64 16 ; 2 uses
  %i.adi = icmp ne ptr %.1.i.i197.i, %i.acz
  %i.adj = icmp ne ptr %.117.i.i196.i, %i.ada
  %i.adk = select i1 %i.adi, i1 %i.adj, i1 false
  br i1 %i.adk, label %.lr.ph.i.i190.i, label %._crit_edge.i.i200.i, !llvm.loop !7

._crit_edge.i.i200.i:                             ; preds = %bb.bj, %bb.bg
  %.sroa.0.0.lcssa.i.i201.i = phi ptr [ %.sroa.022.067.i188.i, %bb.bg ], [ %i.adh, %bb.bj ] ; 5 uses
  %.016.lcssa.i.i202.i = phi ptr [ %i.acz, %bb.bg ], [ %.117.i.i196.i, %bb.bj ] ; 3 uses
  %.0.lcssa.i.i203.i = phi ptr [ %.066.i189.i, %bb.bg ], [ %.1.i.i197.i, %bb.bj ] ; 3 uses
  %i.adl = ptrtoint ptr %i.acz to i64
  %i.adm = ptrtoint ptr %.0.lcssa.i.i203.i to i64
  %i.adn = sub i64 %i.adl, %i.adm
  %i.ado = ashr exact i64 %i.adn, 4               ; 5 uses
  %i.adp = icmp sgt i64 %i.ado, 0
  br i1 %i.adp, label %.lr.ph.i.i.i.i.i.i.i245.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i204.i

.lr.ph.i.i.i.i.i.i.i245.i.preheader:              ; preds = %._crit_edge.i.i200.i
  %xtraiter523 = and i64 %i.ado, 3                ; 2 uses
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i245.i.prol

.lr.ph.i.i.i.i.i.i.i245.i.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i245.i.preheader, %.lr.ph.i.i.i.i.i.i.i245.i.prol
  %.012.i.i.i.i.i.i.i246.i.prol = phi i64 [ %i.adw, %.lr.ph.i.i.i.i.i.i.i245.i.prol ], [ %i.ado, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ]
  %.0811.i.i.i.i.i.i.i247.i.prol = phi ptr [ %i.adv, %.lr.ph.i.i.i.i.i.i.i245.i.prol ], [ %.sroa.0.0.lcssa.i.i201.i, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i248.i.prol = phi ptr [ %i.adu, %.lr.ph.i.i.i.i.i.i.i245.i.prol ], [ %.0.lcssa.i.i203.i, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ] ; 3 uses
  %prol.iter525 = phi i64 [ %prol.iter525.next, %.lr.ph.i.i.i.i.i.i.i245.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ]
  %i.adq = load i64, ptr %.0910.i.i.i.i.i.i.i248.i.prol, align 8, !tbaa !60
  store i64 %i.adq, ptr %.0811.i.i.i.i.i.i.i247.i.prol, align 8, !tbaa !69
  %i.adr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i.prol, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !70
  %i.adt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i.prol, i64 8
  store ptr %i.ads, ptr %i.adt, align 8, !tbaa !71
  %i.adu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i.prol, i64 16 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i.prol, i64 16 ; 3 uses
  %i.adw = add nsw i64 %.012.i.i.i.i.i.i.i246.i.prol, -1 ; 2 uses
  %prol.iter525.next = add i64 %prol.iter525, 1   ; 2 uses
  %prol.iter525.cmp.not = icmp eq i64 %prol.iter525.next, %xtraiter523
  br i1 %prol.iter525.cmp.not, label %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i245.i.prol, !llvm.loop !108

.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i245.i.prol, %.lr.ph.i.i.i.i.i.i.i245.i.preheader
  %.012.i.i.i.i.i.i.i246.i.unr = phi i64 [ %i.ado, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ], [ %i.adw, %.lr.ph.i.i.i.i.i.i.i245.i.prol ]
  %.0811.i.i.i.i.i.i.i247.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i201.i, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ], [ %i.adv, %.lr.ph.i.i.i.i.i.i.i245.i.prol ]
  %.0910.i.i.i.i.i.i.i248.i.unr = phi ptr [ %.0.lcssa.i.i203.i, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ], [ %i.adu, %.lr.ph.i.i.i.i.i.i.i245.i.prol ]
  %.lcssa446.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i245.i.preheader ], [ %i.adv, %.lr.ph.i.i.i.i.i.i.i245.i.prol ]
  %i.adx = icmp ult i64 %i.ado, 4
  br i1 %i.adx, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i204.i, label %.lr.ph.i.i.i.i.i.i.i245.i

.lr.ph.i.i.i.i.i.i.i245.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i245.i
  %.012.i.i.i.i.i.i.i246.i = phi i64 [ %i.aew, %.lr.ph.i.i.i.i.i.i.i245.i ], [ %.012.i.i.i.i.i.i.i246.i.unr, %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i247.i = phi ptr [ %i.aev, %.lr.ph.i.i.i.i.i.i.i245.i ], [ %.0811.i.i.i.i.i.i.i247.i.unr, %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i248.i = phi ptr [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i245.i ], [ %.0910.i.i.i.i.i.i.i248.i.unr, %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit ] ; 9 uses
  %i.ady = load i64, ptr %.0910.i.i.i.i.i.i.i248.i, align 8, !tbaa !60
  store i64 %i.ady, ptr %.0811.i.i.i.i.i.i.i247.i, align 8, !tbaa !69
  %i.adz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 8
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !70
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 8
  store ptr %i.aea, ptr %i.aeb, align 8, !tbaa !71
  %i.aec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 16
  %i.aed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 16
  %i.aee = load i64, ptr %i.aec, align 8, !tbaa !60
  store i64 %i.aee, ptr %i.aed, align 8, !tbaa !69
  %i.aef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 24
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !70
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 24
  store ptr %i.aeg, ptr %i.aeh, align 8, !tbaa !71
  %i.aei = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 32
  %i.aej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 32
  %i.aek = load i64, ptr %i.aei, align 8, !tbaa !60
  store i64 %i.aek, ptr %i.aej, align 8, !tbaa !69
  %i.ael = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 40
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !70
  %i.aen = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 40
  store ptr %i.aem, ptr %i.aen, align 8, !tbaa !71
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 48
  %i.aep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 48
  %i.aeq = load i64, ptr %i.aeo, align 8, !tbaa !60
  store i64 %i.aeq, ptr %i.aep, align 8, !tbaa !69
  %i.aer = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 56
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !70
  %i.aet = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 56
  store ptr %i.aes, ptr %i.aet, align 8, !tbaa !71
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i248.i, i64 64
  %i.aev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i247.i, i64 64 ; 2 uses
  %i.aew = add nsw i64 %.012.i.i.i.i.i.i.i246.i, -4
  %i.aex = icmp sgt i64 %.012.i.i.i.i.i.i.i246.i, 4
  br i1 %i.aex, label %.lr.ph.i.i.i.i.i.i.i245.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i204.i, !llvm.loop !5

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i204.i: ; preds = %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i245.i, %._crit_edge.i.i200.i
  %.08.lcssa.i.i.i.i.i.i.i205.i = phi ptr [ %.sroa.0.0.lcssa.i.i201.i, %._crit_edge.i.i200.i ], [ %.lcssa446.unr, %.lr.ph.i.i.i.i.i.i.i245.i.prol.loopexit ], [ %i.aev, %.lr.ph.i.i.i.i.i.i.i245.i ]
  %i.aey = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i205.i to i64 ; 2 uses
  %i.aez = ptrtoint ptr %.sroa.0.0.lcssa.i.i201.i to i64
  %i.afa = sub i64 %i.aey, %i.aez
  %i.afb = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i201.i, i64 %i.afa ; 4 uses
  %i.afc = ptrtoint ptr %i.ada to i64             ; 2 uses
  %i.afd = ptrtoint ptr %.016.lcssa.i.i202.i to i64
  %i.afe = sub i64 %i.afc, %i.afd
  %i.aff = ashr exact i64 %i.afe, 4               ; 5 uses
  %i.afg = icmp sgt i64 %i.aff, 0
  br i1 %i.afg, label %.lr.ph.i.i.i.i.i19.i.i240.i.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i

.lr.ph.i.i.i.i.i19.i.i240.i.preheader:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i204.i
  %xtraiter526 = and i64 %i.aff, 3                ; 2 uses
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  br i1 %lcmp.mod527.not, label %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i240.i.prol

.lr.ph.i.i.i.i.i19.i.i240.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i.i240.i.preheader, %.lr.ph.i.i.i.i.i19.i.i240.i.prol
  %.012.i.i.i.i.i20.i.i241.i.prol = phi i64 [ %i.afn, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ], [ %i.aff, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ]
  %.0811.i.i.i.i.i21.i.i242.i.prol = phi ptr [ %i.afm, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ], [ %i.afb, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i243.i.prol = phi ptr [ %i.afl, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ], [ %.016.lcssa.i.i202.i, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ] ; 3 uses
  %prol.iter528 = phi i64 [ %prol.iter528.next, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ]
  %i.afh = load i64, ptr %.0910.i.i.i.i.i22.i.i243.i.prol, align 8, !tbaa !60
  store i64 %i.afh, ptr %.0811.i.i.i.i.i21.i.i242.i.prol, align 8, !tbaa !69
  %i.afi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i.prol, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !70
  %i.afk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i.prol, i64 8
  store ptr %i.afj, ptr %i.afk, align 8, !tbaa !71
  %i.afl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i.prol, i64 16 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i.prol, i64 16 ; 3 uses
  %i.afn = add nsw i64 %.012.i.i.i.i.i20.i.i241.i.prol, -1 ; 2 uses
  %prol.iter528.next = add i64 %prol.iter528, 1   ; 2 uses
  %prol.iter528.cmp.not = icmp eq i64 %prol.iter528.next, %xtraiter526
  br i1 %prol.iter528.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i240.i.prol, !llvm.loop !109

.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i.i240.i.prol, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader
  %.012.i.i.i.i.i20.i.i241.i.unr = phi i64 [ %i.aff, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ], [ %i.afn, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ]
  %.0811.i.i.i.i.i21.i.i242.i.unr = phi ptr [ %i.afb, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ], [ %i.afm, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ]
  %.0910.i.i.i.i.i22.i.i243.i.unr = phi ptr [ %.016.lcssa.i.i202.i, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ], [ %i.afl, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ]
  %.lcssa447.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i240.i.preheader ], [ %i.afm, %.lr.ph.i.i.i.i.i19.i.i240.i.prol ]
  %i.afo = icmp ult i64 %i.aff, 4
  br i1 %i.afo, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i, label %.lr.ph.i.i.i.i.i19.i.i240.i

.lr.ph.i.i.i.i.i19.i.i240.i:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i240.i
  %.012.i.i.i.i.i20.i.i241.i = phi i64 [ %i.agn, %.lr.ph.i.i.i.i.i19.i.i240.i ], [ %.012.i.i.i.i.i20.i.i241.i.unr, %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i242.i = phi ptr [ %i.agm, %.lr.ph.i.i.i.i.i19.i.i240.i ], [ %.0811.i.i.i.i.i21.i.i242.i.unr, %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i243.i = phi ptr [ %i.agl, %.lr.ph.i.i.i.i.i19.i.i240.i ], [ %.0910.i.i.i.i.i22.i.i243.i.unr, %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit ] ; 9 uses
  %i.afp = load i64, ptr %.0910.i.i.i.i.i22.i.i243.i, align 8, !tbaa !60
  store i64 %i.afp, ptr %.0811.i.i.i.i.i21.i.i242.i, align 8, !tbaa !69
  %i.afq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 8
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !70
  %i.afs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 8
  store ptr %i.afr, ptr %i.afs, align 8, !tbaa !71
  %i.aft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 16
  %i.afu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 16
  %i.afv = load i64, ptr %i.aft, align 8, !tbaa !60
  store i64 %i.afv, ptr %i.afu, align 8, !tbaa !69
  %i.afw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 24
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !70
  %i.afy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 24
  store ptr %i.afx, ptr %i.afy, align 8, !tbaa !71
  %i.afz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 32
  %i.aga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 32
  %i.agb = load i64, ptr %i.afz, align 8, !tbaa !60
  store i64 %i.agb, ptr %i.aga, align 8, !tbaa !69
  %i.agc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 40
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !70
  %i.age = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 40
  store ptr %i.agd, ptr %i.age, align 8, !tbaa !71
  %i.agf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 48
  %i.agg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 48
  %i.agh = load i64, ptr %i.agf, align 8, !tbaa !60
  store i64 %i.agh, ptr %i.agg, align 8, !tbaa !69
  %i.agi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 56
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !70
  %i.agk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 56
  store ptr %i.agj, ptr %i.agk, align 8, !tbaa !71
  %i.agl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i243.i, i64 64
  %i.agm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i242.i, i64 64 ; 2 uses
  %i.agn = add nsw i64 %.012.i.i.i.i.i20.i.i241.i, -4
  %i.ago = icmp sgt i64 %.012.i.i.i.i.i20.i.i241.i, 4
  br i1 %i.ago, label %.lr.ph.i.i.i.i.i19.i.i240.i, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i, !llvm.loop !5

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i240.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i204.i
  %.08.lcssa.i.i.i.i.i18.i.i207.i = phi ptr [ %i.afb, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i204.i ], [ %.lcssa447.unr, %.lr.ph.i.i.i.i.i19.i.i240.i.prol.loopexit ], [ %i.agm, %.lr.ph.i.i.i.i.i19.i.i240.i ]
  %13 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i207.i to i64
  %i.agp = sub i64 %13, %i.aey
  %i.agq = getelementptr inbounds i8, ptr %i.afb, i64 %i.agp ; 2 uses
  %i.agr = sub i64 %i.vy, %i.afc
  %i.ags = ashr exact i64 %i.agr, 4               ; 2 uses
  %.not.i208.i = icmp slt i64 %i.ags, %i.acy
  br i1 %.not.i208.i, label %._crit_edge.i209.i, label %bb.bg, !llvm.loop !8

._crit_edge.i209.i:                               ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i
  %.0.lcssa.i210.i = phi ptr [ %.sroa.10.0.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i ], [ %i.ada, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i ] ; 3 uses
  %.sroa.022.0.lcssa.i211.i = phi ptr [ %i.gz, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i ], [ %i.agq, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i ] ; 2 uses
  %.lcssa63.i212.i = phi i64 [ %i.hh, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit317.i ], [ %i.ags, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i206.i ]
  %.sroa.speculated.i213.i = call i64 @llvm.smin.i64(i64 %i.vz, i64 %.lcssa63.i212.i) ; 2 uses
  %.idx58.i214.i = shl nsw i64 %.sroa.speculated.i213.i, 4
  %i.agt = getelementptr inbounds i8, ptr %.0.lcssa.i210.i, i64 %.idx58.i214.i ; 5 uses
  %i.agu = icmp ne i64 %.sroa.speculated.i213.i, 0
  %i.agv = icmp ne ptr %i.agt, %i.if
  %i.agw = and i1 %i.agu, %i.agv
  br i1 %i.agw, label %.lr.ph.i41.i230.i, label %._crit_edge.i25.i215.i

.lr.ph.i41.i230.i:                                ; preds = %._crit_edge.i209.i, %bb.bm
  %.029.i42.i231.i = phi ptr [ %.1.i48.i237.i, %bb.bm ], [ %.0.lcssa.i210.i, %._crit_edge.i209.i ] ; 4 uses
  %.01628.i43.i232.i = phi ptr [ %.117.i47.i236.i, %bb.bm ], [ %i.agt, %._crit_edge.i209.i ] ; 4 uses
  %.sroa.0.027.i44.i233.i = phi ptr [ %i.ahd, %bb.bm ], [ %.sroa.022.0.lcssa.i211.i, %._crit_edge.i209.i ] ; 3 uses
  %i.agx = load i64, ptr %.01628.i43.i232.i, align 8, !tbaa !60 ; 2 uses
  %i.agy = load i64, ptr %.029.i42.i231.i, align 8, !tbaa !60 ; 2 uses
  %i.agz = icmp ult i64 %i.agx, %i.agy
  br i1 %i.agz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i41.i230.i
  %i.aha = getelementptr inbounds nuw i8, ptr %.01628.i43.i232.i, i64 16
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i41.i230.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %.029.i42.i231.i, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sink34.i45.i234.i = phi i64 [ %i.agx, %bb.bk ], [ %i.agy, %bb.bl ]
  %.01628.pn.i46.i235.i = phi ptr [ %.01628.i43.i232.i, %bb.bk ], [ %.029.i42.i231.i, %bb.bl ]
  %.117.i47.i236.i = phi ptr [ %i.aha, %bb.bk ], [ %.01628.i43.i232.i, %bb.bl ] ; 3 uses
  %.1.i48.i237.i = phi ptr [ %.029.i42.i231.i, %bb.bk ], [ %i.ahb, %bb.bl ] ; 3 uses
  %.sink.in.i49.i238.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i235.i, i64 8
  %.sink.i50.i239.i = load ptr, ptr %.sink.in.i49.i238.i, align 8, !tbaa !70
  store i64 %.sink34.i45.i234.i, ptr %.sroa.0.027.i44.i233.i, align 8, !tbaa !69
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i233.i, i64 8
  store ptr %.sink.i50.i239.i, ptr %i.ahc, align 8, !tbaa !71
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i233.i, i64 16 ; 2 uses
  %i.ahe = icmp ne ptr %.1.i48.i237.i, %i.agt
  %i.ahf = icmp ne ptr %.117.i47.i236.i, %i.if
  %i.ahg = select i1 %i.ahe, i1 %i.ahf, i1 false
  br i1 %i.ahg, label %.lr.ph.i41.i230.i, label %._crit_edge.i25.i215.i, !llvm.loop !7

._crit_edge.i25.i215.i:                           ; preds = %bb.bm, %._crit_edge.i209.i
  %.sroa.0.0.lcssa.i26.i216.i = phi ptr [ %.sroa.022.0.lcssa.i211.i, %._crit_edge.i209.i ], [ %i.ahd, %bb.bm ] ; 5 uses
  %.016.lcssa.i27.i217.i = phi ptr [ %i.agt, %._crit_edge.i209.i ], [ %.117.i47.i236.i, %bb.bm ] ; 3 uses
  %.0.lcssa.i28.i218.i = phi ptr [ %.0.lcssa.i210.i, %._crit_edge.i209.i ], [ %.1.i48.i237.i, %bb.bm ] ; 3 uses
  %i.ahh = ptrtoint ptr %i.agt to i64
  %i.ahi = ptrtoint ptr %.0.lcssa.i28.i218.i to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi
  %i.ahk = ashr exact i64 %i.ahj, 4               ; 5 uses
  %i.ahl = icmp sgt i64 %i.ahk, 0
  br i1 %i.ahl, label %.lr.ph.i.i.i.i.i.i37.i226.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i219.i

.lr.ph.i.i.i.i.i.i37.i226.i.preheader:            ; preds = %._crit_edge.i25.i215.i
  %xtraiter529 = and i64 %i.ahk, 3                ; 2 uses
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i226.i.prol

.lr.ph.i.i.i.i.i.i37.i226.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i37.i226.i.preheader, %.lr.ph.i.i.i.i.i.i37.i226.i.prol
  %.012.i.i.i.i.i.i38.i227.i.prol = phi i64 [ %i.ahs, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ], [ %i.ahk, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ]
  %.0811.i.i.i.i.i.i39.i228.i.prol = phi ptr [ %i.ahr, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ], [ %.sroa.0.0.lcssa.i26.i216.i, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i229.i.prol = phi ptr [ %i.ahq, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ], [ %.0.lcssa.i28.i218.i, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ] ; 3 uses
  %prol.iter531 = phi i64 [ %prol.iter531.next, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ]
  %i.ahm = load i64, ptr %.0910.i.i.i.i.i.i40.i229.i.prol, align 8, !tbaa !60
  store i64 %i.ahm, ptr %.0811.i.i.i.i.i.i39.i228.i.prol, align 8, !tbaa !69
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i.prol, i64 8
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !70
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i.prol, i64 8
  store ptr %i.aho, ptr %i.ahp, align 8, !tbaa !71
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i.prol, i64 16 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i.prol, i64 16 ; 3 uses
  %i.ahs = add nsw i64 %.012.i.i.i.i.i.i38.i227.i.prol, -1 ; 2 uses
  %prol.iter531.next = add i64 %prol.iter531, 1   ; 2 uses
  %prol.iter531.cmp.not = icmp eq i64 %prol.iter531.next, %xtraiter529
  br i1 %prol.iter531.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i226.i.prol, !llvm.loop !110

.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i37.i226.i.prol, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader
  %.012.i.i.i.i.i.i38.i227.i.unr = phi i64 [ %i.ahk, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ], [ %i.ahs, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ]
  %.0811.i.i.i.i.i.i39.i228.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i216.i, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ]
  %.0910.i.i.i.i.i.i40.i229.i.unr = phi ptr [ %.0.lcssa.i28.i218.i, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ], [ %i.ahq, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ]
  %.lcssa452.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i226.i.preheader ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i37.i226.i.prol ]
  %i.aht = icmp ult i64 %i.ahk, 4
  br i1 %i.aht, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i219.i, label %.lr.ph.i.i.i.i.i.i37.i226.i

.lr.ph.i.i.i.i.i.i37.i226.i:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i226.i
  %.012.i.i.i.i.i.i38.i227.i = phi i64 [ %i.ais, %.lr.ph.i.i.i.i.i.i37.i226.i ], [ %.012.i.i.i.i.i.i38.i227.i.unr, %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i228.i = phi ptr [ %i.air, %.lr.ph.i.i.i.i.i.i37.i226.i ], [ %.0811.i.i.i.i.i.i39.i228.i.unr, %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i229.i = phi ptr [ %i.aiq, %.lr.ph.i.i.i.i.i.i37.i226.i ], [ %.0910.i.i.i.i.i.i40.i229.i.unr, %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit ] ; 9 uses
  %i.ahu = load i64, ptr %.0910.i.i.i.i.i.i40.i229.i, align 8, !tbaa !60
  store i64 %i.ahu, ptr %.0811.i.i.i.i.i.i39.i228.i, align 8, !tbaa !69
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !70
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 8
  store ptr %i.ahw, ptr %i.ahx, align 8, !tbaa !71
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 16
  %i.aia = load i64, ptr %i.ahy, align 8, !tbaa !60
  store i64 %i.aia, ptr %i.ahz, align 8, !tbaa !69
  %i.aib = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 24
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !70
  %i.aid = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 24
  store ptr %i.aic, ptr %i.aid, align 8, !tbaa !71
  %i.aie = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 32
  %i.aif = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 32
  %i.aig = load i64, ptr %i.aie, align 8, !tbaa !60
  store i64 %i.aig, ptr %i.aif, align 8, !tbaa !69
  %i.aih = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 40
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !70
  %i.aij = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 40
  store ptr %i.aii, ptr %i.aij, align 8, !tbaa !71
  %i.aik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 48
  %i.ail = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 48
  %i.aim = load i64, ptr %i.aik, align 8, !tbaa !60
  store i64 %i.aim, ptr %i.ail, align 8, !tbaa !69
  %i.ain = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 56
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !70
  %i.aip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 56
  store ptr %i.aio, ptr %i.aip, align 8, !tbaa !71
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i229.i, i64 64
  %i.air = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i228.i, i64 64 ; 2 uses
  %i.ais = add nsw i64 %.012.i.i.i.i.i.i38.i227.i, -4
  %i.ait = icmp sgt i64 %.012.i.i.i.i.i.i38.i227.i, 4
  br i1 %i.ait, label %.lr.ph.i.i.i.i.i.i37.i226.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i219.i, !llvm.loop !5

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i219.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i226.i, %._crit_edge.i25.i215.i
  %.08.lcssa.i.i.i.i.i.i30.i220.i = phi ptr [ %.sroa.0.0.lcssa.i26.i216.i, %._crit_edge.i25.i215.i ], [ %.lcssa452.unr, %.lr.ph.i.i.i.i.i.i37.i226.i.prol.loopexit ], [ %i.air, %.lr.ph.i.i.i.i.i.i37.i226.i ]
  %i.aiu = ptrtoint ptr %.016.lcssa.i27.i217.i to i64
  %i.aiv = sub i64 %i.vy, %i.aiu
  %i.aiw = ashr exact i64 %i.aiv, 4               ; 5 uses
  %i.aix = icmp sgt i64 %i.aiw, 0
  br i1 %i.aix, label %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit249.i

.lr.ph.i.i.i.i.i19.i32.preheader.i221.i:          ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i219.i
  %i.aiy = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i220.i to i64
  %i.aiz = ptrtoint ptr %.sroa.0.0.lcssa.i26.i216.i to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  %i.ajb = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i216.i, i64 %i.aja ; 2 uses
  %xtraiter532 = and i64 %i.aiw, 3                ; 2 uses
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %.lr.ph.i.i.i.i.i19.i32.i222.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i222.i.prol

.lr.ph.i.i.i.i.i19.i32.i222.i.prol:               ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol
  %.012.i.i.i.i.i20.i33.i223.i.prol = phi i64 [ %i.aji, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol ], [ %i.aiw, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i ]
  %.0811.i.i.i.i.i21.i34.i224.i.prol = phi ptr [ %i.ajh, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol ], [ %i.ajb, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i225.i.prol = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol ], [ %.016.lcssa.i27.i217.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i ] ; 3 uses
  %prol.iter534 = phi i64 [ %prol.iter534.next, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i ]
  %i.ajc = load i64, ptr %.0910.i.i.i.i.i22.i35.i225.i.prol, align 8, !tbaa !60
  store i64 %i.ajc, ptr %.0811.i.i.i.i.i21.i34.i224.i.prol, align 8, !tbaa !69
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i225.i.prol, i64 8
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !70
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i224.i.prol, i64 8
  store ptr %i.aje, ptr %i.ajf, align 8, !tbaa !71
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i225.i.prol, i64 16 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i224.i.prol, i64 16 ; 2 uses
  %i.aji = add nsw i64 %.012.i.i.i.i.i20.i33.i223.i.prol, -1 ; 2 uses
  %prol.iter534.next = add i64 %prol.iter534, 1   ; 2 uses
  %prol.iter534.cmp.not = icmp eq i64 %prol.iter534.next, %xtraiter532
  br i1 %prol.iter534.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i222.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i222.i.prol, !llvm.loop !111

.lr.ph.i.i.i.i.i19.i32.i222.i.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i19.i32.i222.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i
  %.012.i.i.i.i.i20.i33.i223.i.unr = phi i64 [ %i.aiw, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i ], [ %i.aji, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol ]
  %.0811.i.i.i.i.i21.i34.i224.i.unr = phi ptr [ %i.ajb, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i ], [ %i.ajh, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol ]
  %.0910.i.i.i.i.i22.i35.i225.i.unr = phi ptr [ %.016.lcssa.i27.i217.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i221.i ], [ %i.ajg, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol ]
  %i.ajj = icmp ult i64 %i.aiw, 4
  br i1 %i.ajj, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit249.i, label %.lr.ph.i.i.i.i.i19.i32.i222.i

.lr.ph.i.i.i.i.i19.i32.i222.i:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.i222.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i222.i
  %.012.i.i.i.i.i20.i33.i223.i = phi i64 [ %i.aki, %.lr.ph.i.i.i.i.i19.i32.i222.i ], [ %.012.i.i.i.i.i20.i33.i223.i.unr, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i224.i = phi ptr [ %i.akh, %.lr.ph.i.i.i.i.i19.i32.i222.i ], [ %.0811.i.i.i.i.i21.i34.i224.i.unr, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i225.i = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i19.i32.i222.i ], [ %.0910.i.i.i.i.i22.i35.i225.i.unr, %.lr.ph.i.i.i.i.i19.i32.i222.i.prol.loopexit ] ; 9 uses
  %i.ajk = load i64, ptr %.0910.i.i.i.i.i22.i35.i225.i, align 8, !tbaa !60
  store i64 %i.ajk, ptr %.0811.i.i.i.i.i21.i34.i224.i, align 8, !tbaa !69
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i225.i, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !70
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i224.i, i64 8
  store ptr %i.ajm, ptr %i.ajn, align 8, !tbaa !71
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i225.i, i64 16
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i224.i, i64 16
  %i.ajq = load i64, ptr %i.ajo, align 8, !tbaa !60
  store i64 %i.ajq, ptr %i.ajp, align 8, !tbaa !69
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i225.i, i64 24
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !70
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i224.i, i64 24
  store ptr %i.ajs, ptr %i.ajt, align 8, !tbaa !71
  %i.aju = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i225.i, i64 32
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i224.i, i64 32
  %i.ajw = load i64, ptr %i.aju, align 8, !tbaa !60
  store i64 %i.ajw, ptr %i.ajv, align 8, !tbaa !69
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i225.i, i64 40
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !70
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i224.i, i64 40
end_hunk_0
begin_hunk_1_@_ZN4llvm13CGProfilePass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
.lr.ph.i.i.i.i.i10.i24.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i10.i24.i.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.i.prol
  %.012.i.i.i.i.i11.i25.i.i.prol = phi i64 [ %i.bee, %.lr.ph.i.i.i.i.i10.i24.i.i.prol ], [ %i.bdw, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.i.prol = phi ptr [ %i.bed, %.lr.ph.i.i.i.i.i10.i24.i.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i.i, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.i.prol = phi ptr [ %i.bec, %.lr.ph.i.i.i.i.i10.i24.i.i.prol ], [ %.sroa.015.0.lcssa.i18.i.i, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader ] ; 3 uses
  %prol.iter567 = phi i64 [ %prol.iter567.next, %.lr.ph.i.i.i.i.i10.i24.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader ]
  %i.bdy = load i64, ptr %.0910.i.i.i.i.i13.i27.i.i.prol, align 8, !tbaa !60
  store i64 %i.bdy, ptr %.0811.i.i.i.i.i12.i26.i.i.prol, align 8, !tbaa !69
  %i.bdz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i.prol, i64 8
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !70
  %i.beb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i.prol, i64 8
  store ptr %i.bea, ptr %i.beb, align 8, !tbaa !71
  %i.bec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i.prol, i64 16 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i.prol, i64 16 ; 2 uses
  %i.bee = add nsw i64 %.012.i.i.i.i.i11.i25.i.i.prol, -1 ; 2 uses
  %prol.iter567.next = add i64 %prol.iter567, 1   ; 2 uses
  %prol.iter567.cmp.not = icmp eq i64 %prol.iter567.next, %xtraiter565
  br i1 %prol.iter567.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.i.prol, !llvm.loop !122

.lr.ph.i.i.i.i.i10.i24.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader
  %.012.i.i.i.i.i11.i25.i.i.unr = phi i64 [ %i.bdw, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader ], [ %i.bee, %.lr.ph.i.i.i.i.i10.i24.i.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i.i, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader ], [ %i.bed, %.lr.ph.i.i.i.i.i10.i24.i.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i.i, %.lr.ph.i.i.i.i.i10.i24.i.i.preheader ], [ %i.bec, %.lr.ph.i.i.i.i.i10.i24.i.i.prol ]
  %i.bef = icmp ult i64 %i.bdw, 4
  br i1 %i.bef, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i, label %.lr.ph.i.i.i.i.i10.i24.i.i

.lr.ph.i.i.i.i.i10.i24.i.i:                       ; preds = %.lr.ph.i.i.i.i.i10.i24.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i.i
  %.012.i.i.i.i.i11.i25.i.i = phi i64 [ %i.bfe, %.lr.ph.i.i.i.i.i10.i24.i.i ], [ %.012.i.i.i.i.i11.i25.i.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i.i = phi ptr [ %i.bfd, %.lr.ph.i.i.i.i.i10.i24.i.i ], [ %.0811.i.i.i.i.i12.i26.i.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i.i = phi ptr [ %i.bfc, %.lr.ph.i.i.i.i.i10.i24.i.i ], [ %.0910.i.i.i.i.i13.i27.i.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.i.prol.loopexit ] ; 9 uses
  %i.beg = load i64, ptr %.0910.i.i.i.i.i13.i27.i.i, align 8, !tbaa !60
  store i64 %i.beg, ptr %.0811.i.i.i.i.i12.i26.i.i, align 8, !tbaa !69
  %i.beh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 8
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !70
  %i.bej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 8
  store ptr %i.bei, ptr %i.bej, align 8, !tbaa !71
  %i.bek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 16
  %i.bel = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 16
  %i.bem = load i64, ptr %i.bek, align 8, !tbaa !60
  store i64 %i.bem, ptr %i.bel, align 8, !tbaa !69
  %i.ben = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 24
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !70
  %i.bep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 24
  store ptr %i.beo, ptr %i.bep, align 8, !tbaa !71
  %i.beq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 32
  %i.ber = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 32
  %i.bes = load i64, ptr %i.beq, align 8, !tbaa !60
  store i64 %i.bes, ptr %i.ber, align 8, !tbaa !69
  %i.bet = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 40
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !70
  %i.bev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 40
  store ptr %i.beu, ptr %i.bev, align 8, !tbaa !71
  %i.bew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 48
  %i.bex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 48
  %i.bey = load i64, ptr %i.bew, align 8, !tbaa !60
  store i64 %i.bey, ptr %i.bex, align 8, !tbaa !69
  %i.bez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 56
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !70
  %i.bfb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 56
  store ptr %i.bfa, ptr %i.bfb, align 8, !tbaa !71
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.i, i64 64
  %i.bfd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.i, i64 64
  %i.bfe = add nsw i64 %.012.i.i.i.i.i11.i25.i.i, -4
  %i.bff = icmp sgt i64 %.012.i.i.i.i.i11.i25.i.i, 4
  br i1 %i.bff, label %.lr.ph.i.i.i.i.i10.i24.i.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i, !llvm.loop !5

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i.i
  %i.bfg = shl nsw i64 %.022.i16.i.i, 2           ; 4 uses
  %.not65.i.i = icmp slt i64 %i.akm, %i.bfg
  br i1 %.not65.i.i, label %._crit_edge.i140.i, label %.lr.ph.i133.i

.lr.ph.i133.i:                                    ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i
  %.idx.i134.i = shl nsw i64 %.022.i16.i.i, 5     ; 2 uses
  %.idx56.i.i = shl nsw i64 %.022.i16.i.i, 6      ; 2 uses
  %.not57.i.i = icmp eq i64 %.idx.i134.i, %.idx56.i.i
  br label %bb.cn

bb.cn:                                            ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i, %.lr.ph.i133.i
  %.sroa.022.067.i.i = phi ptr [ %i.id, %.lr.ph.i133.i ], [ %i.biy, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i ] ; 2 uses
  %.066.i.i = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i133.i ], [ %i.bfi, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i ] ; 4 uses
  %i.bfh = getelementptr inbounds i8, ptr %.066.i.i, i64 %.idx.i134.i ; 4 uses
  %i.bfi = getelementptr inbounds i8, ptr %.066.i.i, i64 %.idx56.i.i ; 4 uses
  br i1 %.not57.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i135.i

.lr.ph.i.i135.i:                                  ; preds = %bb.cn, %bb.cq
  %.029.i.i.i = phi ptr [ %.1.i.i136.i, %bb.cq ], [ %.066.i.i, %bb.cn ] ; 4 uses
  %.01628.i.i.i = phi ptr [ %.117.i.i.i, %bb.cq ], [ %i.bfh, %bb.cn ] ; 4 uses
  %.sroa.0.027.i.i.i = phi ptr [ %i.bfp, %bb.cq ], [ %.sroa.022.067.i.i, %bb.cn ] ; 3 uses
  %i.bfj = load i64, ptr %.01628.i.i.i, align 8, !tbaa !60 ; 2 uses
  %i.bfk = load i64, ptr %.029.i.i.i, align 8, !tbaa !60 ; 2 uses
  %i.bfl = icmp ult i64 %i.bfj, %i.bfk
  br i1 %i.bfl, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph.i.i135.i
  %i.bfm = getelementptr inbounds nuw i8, ptr %.01628.i.i.i, i64 16
  br label %bb.cq

bb.cp:                                            ; preds = %.lr.ph.i.i135.i
  %i.bfn = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.sink34.i.i.i = phi i64 [ %i.bfj, %bb.co ], [ %i.bfk, %bb.cp ]
  %.01628.pn.i.i.i = phi ptr [ %.01628.i.i.i, %bb.co ], [ %.029.i.i.i, %bb.cp ]
  %.117.i.i.i = phi ptr [ %i.bfm, %bb.co ], [ %.01628.i.i.i, %bb.cp ] ; 3 uses
  %.1.i.i136.i = phi ptr [ %.029.i.i.i, %bb.co ], [ %i.bfn, %bb.cp ] ; 3 uses
  %.sink.in.i.i137.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i.i, i64 8
  %.sink.i.i138.i = load ptr, ptr %.sink.in.i.i137.i, align 8, !tbaa !70
  store i64 %.sink34.i.i.i, ptr %.sroa.0.027.i.i.i, align 8, !tbaa !69
  %i.bfo = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i, i64 8
  store ptr %.sink.i.i138.i, ptr %i.bfo, align 8, !tbaa !71
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i, i64 16 ; 2 uses
  %i.bfq = icmp ne ptr %.1.i.i136.i, %i.bfh
  %i.bfr = icmp ne ptr %.117.i.i.i, %i.bfi
  %i.bfs = select i1 %i.bfq, i1 %i.bfr, i1 false
  br i1 %i.bfs, label %.lr.ph.i.i135.i, label %._crit_edge.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %bb.cq, %bb.cn
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.022.067.i.i, %bb.cn ], [ %i.bfp, %bb.cq ] ; 5 uses
  %.016.lcssa.i.i.i = phi ptr [ %i.bfh, %bb.cn ], [ %.117.i.i.i, %bb.cq ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %.066.i.i, %bb.cn ], [ %.1.i.i136.i, %bb.cq ] ; 3 uses
  %i.bft = ptrtoint ptr %i.bfh to i64
  %i.bfu = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.bfv = sub i64 %i.bft, %i.bfu
  %i.bfw = ashr exact i64 %i.bfv, 4               ; 5 uses
  %i.bfx = icmp sgt i64 %i.bfw, 0
  br i1 %i.bfx, label %.lr.ph.i.i.i.i.i.i.i142.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i142.i.preheader:              ; preds = %._crit_edge.i.i.i
  %xtraiter568 = and i64 %i.bfw, 3                ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i142.i.prol

.lr.ph.i.i.i.i.i.i.i142.i.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i142.i.preheader, %.lr.ph.i.i.i.i.i.i.i142.i.prol
  %.012.i.i.i.i.i.i.i143.i.prol = phi i64 [ %i.bge, %.lr.ph.i.i.i.i.i.i.i142.i.prol ], [ %i.bfw, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ]
  %.0811.i.i.i.i.i.i.i144.i.prol = phi ptr [ %i.bgd, %.lr.ph.i.i.i.i.i.i.i142.i.prol ], [ %.sroa.0.0.lcssa.i.i.i, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i145.i.prol = phi ptr [ %i.bgc, %.lr.ph.i.i.i.i.i.i.i142.i.prol ], [ %.0.lcssa.i.i.i, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ] ; 3 uses
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph.i.i.i.i.i.i.i142.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ]
  %i.bfy = load i64, ptr %.0910.i.i.i.i.i.i.i145.i.prol, align 8, !tbaa !60
  store i64 %i.bfy, ptr %.0811.i.i.i.i.i.i.i144.i.prol, align 8, !tbaa !69
  %i.bfz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i.prol, i64 8
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !70
  %i.bgb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i.prol, i64 8
  store ptr %i.bga, ptr %i.bgb, align 8, !tbaa !71
  %i.bgc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i.prol, i64 16 ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i.prol, i64 16 ; 3 uses
  %i.bge = add nsw i64 %.012.i.i.i.i.i.i.i143.i.prol, -1 ; 2 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i142.i.prol, !llvm.loop !123

.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i142.i.prol, %.lr.ph.i.i.i.i.i.i.i142.i.preheader
  %.012.i.i.i.i.i.i.i143.i.unr = phi i64 [ %i.bfw, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ], [ %i.bge, %.lr.ph.i.i.i.i.i.i.i142.i.prol ]
  %.0811.i.i.i.i.i.i.i144.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ], [ %i.bgd, %.lr.ph.i.i.i.i.i.i.i142.i.prol ]
  %.0910.i.i.i.i.i.i.i145.i.unr = phi ptr [ %.0.lcssa.i.i.i, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ], [ %i.bgc, %.lr.ph.i.i.i.i.i.i.i142.i.prol ]
  %.lcssa463.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i142.i.preheader ], [ %i.bgd, %.lr.ph.i.i.i.i.i.i.i142.i.prol ]
  %i.bgf = icmp ult i64 %i.bfw, 4
  br i1 %i.bgf, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i142.i

.lr.ph.i.i.i.i.i.i.i142.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i142.i
  %.012.i.i.i.i.i.i.i143.i = phi i64 [ %i.bhe, %.lr.ph.i.i.i.i.i.i.i142.i ], [ %.012.i.i.i.i.i.i.i143.i.unr, %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i144.i = phi ptr [ %i.bhd, %.lr.ph.i.i.i.i.i.i.i142.i ], [ %.0811.i.i.i.i.i.i.i144.i.unr, %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i145.i = phi ptr [ %i.bhc, %.lr.ph.i.i.i.i.i.i.i142.i ], [ %.0910.i.i.i.i.i.i.i145.i.unr, %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit ] ; 9 uses
  %i.bgg = load i64, ptr %.0910.i.i.i.i.i.i.i145.i, align 8, !tbaa !60
  store i64 %i.bgg, ptr %.0811.i.i.i.i.i.i.i144.i, align 8, !tbaa !69
  %i.bgh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 8
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !70
  %i.bgj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 8
  store ptr %i.bgi, ptr %i.bgj, align 8, !tbaa !71
  %i.bgk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 16
  %i.bgl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 16
  %i.bgm = load i64, ptr %i.bgk, align 8, !tbaa !60
  store i64 %i.bgm, ptr %i.bgl, align 8, !tbaa !69
  %i.bgn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 24
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !70
  %i.bgp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 24
  store ptr %i.bgo, ptr %i.bgp, align 8, !tbaa !71
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 32
  %i.bgr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 32
  %i.bgs = load i64, ptr %i.bgq, align 8, !tbaa !60
  store i64 %i.bgs, ptr %i.bgr, align 8, !tbaa !69
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 40
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !70
  %i.bgv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 40
  store ptr %i.bgu, ptr %i.bgv, align 8, !tbaa !71
  %i.bgw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 48
  %i.bgx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 48
  %i.bgy = load i64, ptr %i.bgw, align 8, !tbaa !60
  store i64 %i.bgy, ptr %i.bgx, align 8, !tbaa !69
  %i.bgz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 56
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !70
  %i.bhb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 56
  store ptr %i.bha, ptr %i.bhb, align 8, !tbaa !71
  %i.bhc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i145.i, i64 64
  %i.bhd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i144.i, i64 64 ; 2 uses
  %i.bhe = add nsw i64 %.012.i.i.i.i.i.i.i143.i, -4
  %i.bhf = icmp sgt i64 %.012.i.i.i.i.i.i.i143.i, 4
  br i1 %i.bhf, label %.lr.ph.i.i.i.i.i.i.i142.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i, !llvm.loop !5

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i142.i, %._crit_edge.i.i.i
  %.08.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.lcssa463.unr, %.lr.ph.i.i.i.i.i.i.i142.i.prol.loopexit ], [ %i.bhd, %.lr.ph.i.i.i.i.i.i.i142.i ]
  %i.bhg = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.bhh = ptrtoint ptr %.sroa.0.0.lcssa.i.i.i to i64
  %i.bhi = sub i64 %i.bhg, %i.bhh
  %i.bhj = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 %i.bhi ; 4 uses
  %i.bhk = ptrtoint ptr %i.bfi to i64             ; 2 uses
  %i.bhl = ptrtoint ptr %.016.lcssa.i.i.i to i64
  %i.bhm = sub i64 %i.bhk, %i.bhl
  %i.bhn = ashr exact i64 %i.bhm, 4               ; 5 uses
  %i.bho = icmp sgt i64 %i.bhn, 0
  br i1 %i.bho, label %.lr.ph.i.i.i.i.i19.i.i141.i.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i

.lr.ph.i.i.i.i.i19.i.i141.i.preheader:            ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i
  %xtraiter571 = and i64 %i.bhn, 3                ; 2 uses
  %lcmp.mod572.not = icmp eq i64 %xtraiter571, 0
  br i1 %lcmp.mod572.not, label %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i141.i.prol

.lr.ph.i.i.i.i.i19.i.i141.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i19.i.i141.i.preheader, %.lr.ph.i.i.i.i.i19.i.i141.i.prol
  %.012.i.i.i.i.i20.i.i.i.prol = phi i64 [ %i.bhv, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ], [ %i.bhn, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.i.prol = phi ptr [ %i.bhu, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ], [ %i.bhj, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.i.prol = phi ptr [ %i.bht, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ], [ %.016.lcssa.i.i.i, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ] ; 3 uses
  %prol.iter573 = phi i64 [ %prol.iter573.next, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ]
  %i.bhp = load i64, ptr %.0910.i.i.i.i.i22.i.i.i.prol, align 8, !tbaa !60
  store i64 %i.bhp, ptr %.0811.i.i.i.i.i21.i.i.i.prol, align 8, !tbaa !69
  %i.bhq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i.prol, i64 8
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !70
  %i.bhs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i.prol, i64 8
  store ptr %i.bhr, ptr %i.bhs, align 8, !tbaa !71
  %i.bht = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i.prol, i64 16 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i.prol, i64 16 ; 3 uses
  %i.bhv = add nsw i64 %.012.i.i.i.i.i20.i.i.i.prol, -1 ; 2 uses
  %prol.iter573.next = add i64 %prol.iter573, 1   ; 2 uses
  %prol.iter573.cmp.not = icmp eq i64 %prol.iter573.next, %xtraiter571
  br i1 %prol.iter573.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i141.i.prol, !llvm.loop !124

.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i19.i.i141.i.prol, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader
  %.012.i.i.i.i.i20.i.i.i.unr = phi i64 [ %i.bhn, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ], [ %i.bhv, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ]
  %.0811.i.i.i.i.i21.i.i.i.unr = phi ptr [ %i.bhj, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ], [ %i.bhu, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ]
  %.0910.i.i.i.i.i22.i.i.i.unr = phi ptr [ %.016.lcssa.i.i.i, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ], [ %i.bht, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ]
  %.lcssa464.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i141.i.preheader ], [ %i.bhu, %.lr.ph.i.i.i.i.i19.i.i141.i.prol ]
  %i.bhw = icmp ult i64 %i.bhn, 4
  br i1 %i.bhw, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i, label %.lr.ph.i.i.i.i.i19.i.i141.i

.lr.ph.i.i.i.i.i19.i.i141.i:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i141.i
  %.012.i.i.i.i.i20.i.i.i = phi i64 [ %i.biv, %.lr.ph.i.i.i.i.i19.i.i141.i ], [ %.012.i.i.i.i.i20.i.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i.i = phi ptr [ %i.biu, %.lr.ph.i.i.i.i.i19.i.i141.i ], [ %.0811.i.i.i.i.i21.i.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i.i = phi ptr [ %i.bit, %.lr.ph.i.i.i.i.i19.i.i141.i ], [ %.0910.i.i.i.i.i22.i.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit ] ; 9 uses
  %i.bhx = load i64, ptr %.0910.i.i.i.i.i22.i.i.i, align 8, !tbaa !60
  store i64 %i.bhx, ptr %.0811.i.i.i.i.i21.i.i.i, align 8, !tbaa !69
  %i.bhy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !70
  %i.bia = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 8
  store ptr %i.bhz, ptr %i.bia, align 8, !tbaa !71
  %i.bib = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 16
  %i.bic = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 16
  %i.bid = load i64, ptr %i.bib, align 8, !tbaa !60
  store i64 %i.bid, ptr %i.bic, align 8, !tbaa !69
  %i.bie = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 24
  %i.bif = load ptr, ptr %i.bie, align 8, !tbaa !70
  %i.big = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 24
  store ptr %i.bif, ptr %i.big, align 8, !tbaa !71
  %i.bih = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 32
  %i.bii = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 32
  %i.bij = load i64, ptr %i.bih, align 8, !tbaa !60
  store i64 %i.bij, ptr %i.bii, align 8, !tbaa !69
  %i.bik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 40
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !70
  %i.bim = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 40
  store ptr %i.bil, ptr %i.bim, align 8, !tbaa !71
  %i.bin = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 48
  %i.bio = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 48
  %i.bip = load i64, ptr %i.bin, align 8, !tbaa !60
  store i64 %i.bip, ptr %i.bio, align 8, !tbaa !69
  %i.biq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 56
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !70
  %i.bis = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 56
  store ptr %i.bir, ptr %i.bis, align 8, !tbaa !71
  %i.bit = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.i, i64 64
  %i.biu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.i, i64 64 ; 2 uses
  %i.biv = add nsw i64 %.012.i.i.i.i.i20.i.i.i, -4
  %i.biw = icmp sgt i64 %.012.i.i.i.i.i20.i.i.i, 4
  br i1 %i.biw, label %.lr.ph.i.i.i.i.i19.i.i141.i, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i, !llvm.loop !5

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i141.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i
  %.08.lcssa.i.i.i.i.i18.i.i.i = phi ptr [ %i.bhj, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i ], [ %.lcssa464.unr, %.lr.ph.i.i.i.i.i19.i.i141.i.prol.loopexit ], [ %i.biu, %.lr.ph.i.i.i.i.i19.i.i141.i ]
  %14 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i.i to i64
  %i.bix = sub i64 %14, %i.bhg
  %i.biy = getelementptr inbounds i8, ptr %i.bhj, i64 %i.bix ; 2 uses
  %i.biz = sub i64 %i.ayg, %i.bhk
  %i.bja = ashr exact i64 %i.biz, 4               ; 2 uses
  %.not.i139.i = icmp slt i64 %i.bja, %i.bfg
  br i1 %.not.i139.i, label %._crit_edge.i140.i, label %bb.cn, !llvm.loop !8

._crit_edge.i140.i:                               ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i
  %.0.lcssa.i.i = phi ptr [ %.sroa.10.0.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i ], [ %i.bfi, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i ] ; 3 uses
  %.sroa.022.0.lcssa.i.i = phi ptr [ %i.id, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i ], [ %i.biy, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i ] ; 2 uses
  %.lcssa63.i.i = phi i64 [ %i.akm, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i ], [ %i.bja, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit.i.i ]
  %.sroa.speculated.i.i = call i64 @llvm.smin.i64(i64 %i.ayh, i64 %.lcssa63.i.i) ; 2 uses
  %.idx58.i.i = shl nsw i64 %.sroa.speculated.i.i, 4
  %i.bjb = getelementptr inbounds i8, ptr %.0.lcssa.i.i, i64 %.idx58.i.i ; 5 uses
  %i.bjc = icmp ne i64 %.sroa.speculated.i.i, 0
  %i.bjd = icmp ne ptr %i.bjb, %i.akn
  %i.bje = and i1 %i.bjc, %i.bjd
  br i1 %i.bje, label %.lr.ph.i41.i.i, label %._crit_edge.i25.i.i

.lr.ph.i41.i.i:                                   ; preds = %._crit_edge.i140.i, %bb.ct
  %.029.i42.i.i = phi ptr [ %.1.i48.i.i, %bb.ct ], [ %.0.lcssa.i.i, %._crit_edge.i140.i ] ; 4 uses
  %.01628.i43.i.i = phi ptr [ %.117.i47.i.i, %bb.ct ], [ %i.bjb, %._crit_edge.i140.i ] ; 4 uses
  %.sroa.0.027.i44.i.i = phi ptr [ %i.bjl, %bb.ct ], [ %.sroa.022.0.lcssa.i.i, %._crit_edge.i140.i ] ; 3 uses
  %i.bjf = load i64, ptr %.01628.i43.i.i, align 8, !tbaa !60 ; 2 uses
  %i.bjg = load i64, ptr %.029.i42.i.i, align 8, !tbaa !60 ; 2 uses
  %i.bjh = icmp ult i64 %i.bjf, %i.bjg
  br i1 %i.bjh, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.lr.ph.i41.i.i
  %i.bji = getelementptr inbounds nuw i8, ptr %.01628.i43.i.i, i64 16
  br label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.i41.i.i
  %i.bjj = getelementptr inbounds nuw i8, ptr %.029.i42.i.i, i64 16
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.sink34.i45.i.i = phi i64 [ %i.bjf, %bb.cr ], [ %i.bjg, %bb.cs ]
  %.01628.pn.i46.i.i = phi ptr [ %.01628.i43.i.i, %bb.cr ], [ %.029.i42.i.i, %bb.cs ]
  %.117.i47.i.i = phi ptr [ %i.bji, %bb.cr ], [ %.01628.i43.i.i, %bb.cs ] ; 3 uses
  %.1.i48.i.i = phi ptr [ %.029.i42.i.i, %bb.cr ], [ %i.bjj, %bb.cs ] ; 3 uses
  %.sink.in.i49.i.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i46.i.i, i64 8
  %.sink.i50.i.i = load ptr, ptr %.sink.in.i49.i.i, align 8, !tbaa !70
  store i64 %.sink34.i45.i.i, ptr %.sroa.0.027.i44.i.i, align 8, !tbaa !69
  %i.bjk = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i.i, i64 8
  store ptr %.sink.i50.i.i, ptr %i.bjk, align 8, !tbaa !71
  %i.bjl = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i.i, i64 16 ; 2 uses
  %i.bjm = icmp ne ptr %.1.i48.i.i, %i.bjb
  %i.bjn = icmp ne ptr %.117.i47.i.i, %i.akn
  %i.bjo = select i1 %i.bjm, i1 %i.bjn, i1 false
  br i1 %i.bjo, label %.lr.ph.i41.i.i, label %._crit_edge.i25.i.i, !llvm.loop !7

._crit_edge.i25.i.i:                              ; preds = %bb.ct, %._crit_edge.i140.i
  %.sroa.0.0.lcssa.i26.i.i = phi ptr [ %.sroa.022.0.lcssa.i.i, %._crit_edge.i140.i ], [ %i.bjl, %bb.ct ] ; 5 uses
  %.016.lcssa.i27.i.i = phi ptr [ %i.bjb, %._crit_edge.i140.i ], [ %.117.i47.i.i, %bb.ct ] ; 3 uses
  %.0.lcssa.i28.i.i = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i140.i ], [ %.1.i48.i.i, %bb.ct ] ; 3 uses
  %i.bjp = ptrtoint ptr %i.bjb to i64
  %i.bjq = ptrtoint ptr %.0.lcssa.i28.i.i to i64
  %i.bjr = sub i64 %i.bjp, %i.bjq
  %i.bjs = ashr exact i64 %i.bjr, 4               ; 5 uses
  %i.bjt = icmp sgt i64 %i.bjs, 0
  br i1 %i.bjt, label %.lr.ph.i.i.i.i.i.i37.i.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i.i

.lr.ph.i.i.i.i.i.i37.i.i.preheader:               ; preds = %._crit_edge.i25.i.i
  %xtraiter574 = and i64 %i.bjs, 3                ; 2 uses
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575.not, label %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.i.prol

.lr.ph.i.i.i.i.i.i37.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i37.i.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.i.prol
  %.012.i.i.i.i.i.i38.i.i.prol = phi i64 [ %i.bka, %.lr.ph.i.i.i.i.i.i37.i.i.prol ], [ %i.bjs, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.i.prol = phi ptr [ %i.bjz, %.lr.ph.i.i.i.i.i.i37.i.i.prol ], [ %.sroa.0.0.lcssa.i26.i.i, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.i.prol = phi ptr [ %i.bjy, %.lr.ph.i.i.i.i.i.i37.i.i.prol ], [ %.0.lcssa.i28.i.i, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ] ; 3 uses
  %prol.iter576 = phi i64 [ %prol.iter576.next, %.lr.ph.i.i.i.i.i.i37.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ]
  %i.bju = load i64, ptr %.0910.i.i.i.i.i.i40.i.i.prol, align 8, !tbaa !60
  store i64 %i.bju, ptr %.0811.i.i.i.i.i.i39.i.i.prol, align 8, !tbaa !69
  %i.bjv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i.prol, i64 8
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !70
  %i.bjx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i.prol, i64 8
  store ptr %i.bjw, ptr %i.bjx, align 8, !tbaa !71
  %i.bjy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i.prol, i64 16 ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i.prol, i64 16 ; 3 uses
  %i.bka = add nsw i64 %.012.i.i.i.i.i.i38.i.i.prol, -1 ; 2 uses
  %prol.iter576.next = add i64 %prol.iter576, 1   ; 2 uses
  %prol.iter576.cmp.not = icmp eq i64 %prol.iter576.next, %xtraiter574
  br i1 %prol.iter576.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.i.prol, !llvm.loop !125

.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i37.i.i.prol, %.lr.ph.i.i.i.i.i.i37.i.i.preheader
  %.012.i.i.i.i.i.i38.i.i.unr = phi i64 [ %i.bjs, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ], [ %i.bka, %.lr.ph.i.i.i.i.i.i37.i.i.prol ]
  %.0811.i.i.i.i.i.i39.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i.i, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ], [ %i.bjz, %.lr.ph.i.i.i.i.i.i37.i.i.prol ]
  %.0910.i.i.i.i.i.i40.i.i.unr = phi ptr [ %.0.lcssa.i28.i.i, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ], [ %i.bjy, %.lr.ph.i.i.i.i.i.i37.i.i.prol ]
  %.lcssa469.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.i.preheader ], [ %i.bjz, %.lr.ph.i.i.i.i.i.i37.i.i.prol ]
  %i.bkb = icmp ult i64 %i.bjs, 4
  br i1 %i.bkb, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i.i, label %.lr.ph.i.i.i.i.i.i37.i.i

.lr.ph.i.i.i.i.i.i37.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i.i
  %.012.i.i.i.i.i.i38.i.i = phi i64 [ %i.bla, %.lr.ph.i.i.i.i.i.i37.i.i ], [ %.012.i.i.i.i.i.i38.i.i.unr, %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i.i = phi ptr [ %i.bkz, %.lr.ph.i.i.i.i.i.i37.i.i ], [ %.0811.i.i.i.i.i.i39.i.i.unr, %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i.i = phi ptr [ %i.bky, %.lr.ph.i.i.i.i.i.i37.i.i ], [ %.0910.i.i.i.i.i.i40.i.i.unr, %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit ] ; 9 uses
  %i.bkc = load i64, ptr %.0910.i.i.i.i.i.i40.i.i, align 8, !tbaa !60
  store i64 %i.bkc, ptr %.0811.i.i.i.i.i.i39.i.i, align 8, !tbaa !69
  %i.bkd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 8
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !70
  %i.bkf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 8
  store ptr %i.bke, ptr %i.bkf, align 8, !tbaa !71
  %i.bkg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 16
  %i.bkh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 16
  %i.bki = load i64, ptr %i.bkg, align 8, !tbaa !60
  store i64 %i.bki, ptr %i.bkh, align 8, !tbaa !69
  %i.bkj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 24
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !70
  %i.bkl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 24
  store ptr %i.bkk, ptr %i.bkl, align 8, !tbaa !71
  %i.bkm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 32
  %i.bkn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 32
  %i.bko = load i64, ptr %i.bkm, align 8, !tbaa !60
  store i64 %i.bko, ptr %i.bkn, align 8, !tbaa !69
  %i.bkp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 40
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !70
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 40
  store ptr %i.bkq, ptr %i.bkr, align 8, !tbaa !71
  %i.bks = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 48
  %i.bkt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 48
  %i.bku = load i64, ptr %i.bks, align 8, !tbaa !60
  store i64 %i.bku, ptr %i.bkt, align 8, !tbaa !69
  %i.bkv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 56
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !70
  %i.bkx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 56
  store ptr %i.bkw, ptr %i.bkx, align 8, !tbaa !71
  %i.bky = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.i, i64 64
  %i.bkz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.i, i64 64 ; 2 uses
  %i.bla = add nsw i64 %.012.i.i.i.i.i.i38.i.i, -4
  %i.blb = icmp sgt i64 %.012.i.i.i.i.i.i38.i.i, 4
  br i1 %i.blb, label %.lr.ph.i.i.i.i.i.i37.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i.i, !llvm.loop !5

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i.i, %._crit_edge.i25.i.i
  %.08.lcssa.i.i.i.i.i.i30.i.i = phi ptr [ %.sroa.0.0.lcssa.i26.i.i, %._crit_edge.i25.i.i ], [ %.lcssa469.unr, %.lr.ph.i.i.i.i.i.i37.i.i.prol.loopexit ], [ %i.bkz, %.lr.ph.i.i.i.i.i.i37.i.i ]
  %i.blc = ptrtoint ptr %.016.lcssa.i27.i.i to i64
  %i.bld = sub i64 %i.ayg, %i.blc
  %i.ble = ashr exact i64 %i.bld, 4               ; 5 uses
  %i.blf = icmp sgt i64 %i.ble, 0
  br i1 %i.blf, label %.lr.ph.i.i.i.i.i19.i32.preheader.i.i, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i

.lr.ph.i.i.i.i.i19.i32.preheader.i.i:             ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i.i
  %i.blg = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i.i to i64
  %i.blh = ptrtoint ptr %.sroa.0.0.lcssa.i26.i.i to i64
  %i.bli = sub i64 %i.blg, %i.blh
  %i.blj = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i.i, i64 %i.bli ; 2 uses
  %xtraiter577 = and i64 %i.ble, 3                ; 2 uses
  %lcmp.mod578.not = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578.not, label %.lr.ph.i.i.i.i.i19.i32.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.i.prol

.lr.ph.i.i.i.i.i19.i32.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i.i, %.lr.ph.i.i.i.i.i19.i32.i.i.prol
  %.012.i.i.i.i.i20.i33.i.i.prol = phi i64 [ %i.blq, %.lr.ph.i.i.i.i.i19.i32.i.i.prol ], [ %i.ble, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i ]
  %.0811.i.i.i.i.i21.i34.i.i.prol = phi ptr [ %i.blp, %.lr.ph.i.i.i.i.i19.i32.i.i.prol ], [ %i.blj, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.i.prol = phi ptr [ %i.blo, %.lr.ph.i.i.i.i.i19.i32.i.i.prol ], [ %.016.lcssa.i27.i.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i ] ; 3 uses
  %prol.iter579 = phi i64 [ %prol.iter579.next, %.lr.ph.i.i.i.i.i19.i32.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i ]
  %i.blk = load i64, ptr %.0910.i.i.i.i.i22.i35.i.i.prol, align 8, !tbaa !60
  store i64 %i.blk, ptr %.0811.i.i.i.i.i21.i34.i.i.prol, align 8, !tbaa !69
  %i.bll = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.i.prol, i64 8
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !70
  %i.bln = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.i.prol, i64 8
  store ptr %i.blm, ptr %i.bln, align 8, !tbaa !71
  %i.blo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.i.prol, i64 16 ; 2 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.i.prol, i64 16 ; 2 uses
  %i.blq = add nsw i64 %.012.i.i.i.i.i20.i33.i.i.prol, -1 ; 2 uses
  %prol.iter579.next = add i64 %prol.iter579, 1   ; 2 uses
  %prol.iter579.cmp.not = icmp eq i64 %prol.iter579.next, %xtraiter577
  br i1 %prol.iter579.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.i.prol, !llvm.loop !126

.lr.ph.i.i.i.i.i19.i32.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i
  %.012.i.i.i.i.i20.i33.i.i.unr = phi i64 [ %i.ble, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i ], [ %i.blq, %.lr.ph.i.i.i.i.i19.i32.i.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.i.unr = phi ptr [ %i.blj, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i ], [ %i.blp, %.lr.ph.i.i.i.i.i19.i32.i.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.i.unr = phi ptr [ %.016.lcssa.i27.i.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i.i ], [ %i.blo, %.lr.ph.i.i.i.i.i19.i32.i.i.prol ]
  %i.blr = icmp ult i64 %i.ble, 4
  br i1 %i.blr, label %_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_.exit.i, label %.lr.ph.i.i.i.i.i19.i32.i.i

.lr.ph.i.i.i.i.i19.i32.i.i:                       ; preds = %.lr.ph.i.i.i.i.i19.i32.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i.i
  %.012.i.i.i.i.i20.i33.i.i = phi i64 [ %i.bmq, %.lr.ph.i.i.i.i.i19.i32.i.i ], [ %.012.i.i.i.i.i20.i33.i.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i.i = phi ptr [ %i.bmp, %.lr.ph.i.i.i.i.i19.i32.i.i ], [ %.0811.i.i.i.i.i21.i34.i.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i.i = phi ptr [ %i.bmo, %.lr.ph.i.i.i.i.i19.i32.i.i ], [ %.0910.i.i.i.i.i22.i35.i.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.i.prol.loopexit ] ; 9 uses
  %i.bls = load i64, ptr %.0910.i.i.i.i.i22.i35.i.i, align 8, !tbaa !60
  store i64 %i.bls, ptr %.0811.i.i.i.i.i21.i34.i.i, align 8, !tbaa !69
  %i.blt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.i, i64 8
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !70
  %i.blv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.i, i64 8
  store ptr %i.blu, ptr %i.blv, align 8, !tbaa !71
  %i.blw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.i, i64 16
  %i.blx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.i, i64 16
  %i.bly = load i64, ptr %i.blw, align 8, !tbaa !60
  store i64 %i.bly, ptr %i.blx, align 8, !tbaa !69
  %i.blz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.i, i64 24
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !70
  %i.bmb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.i, i64 24
  store ptr %i.bma, ptr %i.bmb, align 8, !tbaa !71
  %i.bmc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.i, i64 32
  %i.bmd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.i, i64 32
  %i.bme = load i64, ptr %i.bmc, align 8, !tbaa !60
  store i64 %i.bme, ptr %i.bmd, align 8, !tbaa !69
  %i.bmf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.i, i64 40
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !70
  %i.bmh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.i, i64 40
end_hunk_1
begin_hunk_2_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !71
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !408

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
  %i.fd = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !60
  store i64 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !69
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !70
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !71
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !60
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !69
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !70
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !71
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !60
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !69
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !70
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !71
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !60
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !69
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !70
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !71
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, !llvm.loop !5

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
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !60 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !60 ; 2 uses
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
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !70
  store i64 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

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
  %i.w = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !60
  store i64 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !409

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
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !60
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !60
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !60
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !71
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !60
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !5

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
  %i.bn = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !60
  store i64 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !71
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !410

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
  %i.bv = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !60
  store i64 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !60
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !71
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !60
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !69
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !60
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !69
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !5

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.bh, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cv = sub i64 %4, %i.be
  %i.cw = getelementptr inbounds i8, ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cx = sub i64 %i.b, %i.bi
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %.not = icmp slt i64 %i.cy, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8

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
  %i.dd = load i64, ptr %.01628.i43, align 8, !tbaa !60 ; 2 uses
  %i.de = load i64, ptr %.029.i42, align 8, !tbaa !60 ; 2 uses
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
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !70
  store i64 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !69
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !7

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
  %i.ds = load i64, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !60
  store i64 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !70
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !71
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !411

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
  %i.ea = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !60
  store i64 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !69
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !71
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !60
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !69
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !70
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !71
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !60
  store i64 %i.em, ptr %i.el, align 8, !tbaa !69
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !70
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !71
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !60
  store i64 %i.es, ptr %i.er, align 8, !tbaa !69
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !71
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !5

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
  %i.fi = load i64, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !60
  store i64 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !69
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !70
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !71
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !412

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
  %i.fq = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !60
  store i64 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !70
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !71
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !60
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !69
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !70
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !71
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !60
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !69
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !70
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_2
