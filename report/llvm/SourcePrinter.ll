Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SourcePrinter?download=true
inline.NumInlined: 3361
inline.NumDeleted: 1584
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_":bb.a
.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.rn, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.rf, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.rl, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.rh = load i32, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 4, !tbaa !102
  store i32 %i.rh, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !238
  %i.ri = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !127
  %i.rk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !239
  %i.rl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.rn = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !874

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.rf, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rn, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rm, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rl, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.ro = icmp ult i64 %i.rf, 4
  br i1 %i.ro, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.sn, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.sm, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.sl, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.rp = load i32, ptr %.0910.i.i.i.i.i13.i27.i, align 4, !tbaa !102
  store i32 %i.rp, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !238
  %i.rq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !127
  %i.rs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.rr, ptr %i.rs, align 8, !tbaa !239
  %i.rt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.ru = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.rv = load i32, ptr %i.rt, align 8, !tbaa !102
  store i32 %i.rv, ptr %i.ru, align 8, !tbaa !238
  %i.rw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !127
  %i.ry = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.rx, ptr %i.ry, align 8, !tbaa !239
  %i.rz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.sb = load i32, ptr %i.rz, align 8, !tbaa !102
  store i32 %i.sb, ptr %i.sa, align 8, !tbaa !238
  %i.sc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !127
  %i.se = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.sd, ptr %i.se, align 8, !tbaa !239
  %i.sf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.sg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.sh = load i32, ptr %i.sf, align 8, !tbaa !102
  store i32 %i.sh, ptr %i.sg, align 8, !tbaa !238
  %i.si = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !127
  %i.sk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.sj, ptr %i.sk, align 8, !tbaa !239
  %i.sl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.sm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.sn = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.so = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.so, label %.lr.ph.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit", !llvm.loop !12

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i
  %i.sp = shl nsw i64 %.058, 2                    ; 4 uses
  %.not67.i = icmp slt i64 %i.d, %i.sp
  br i1 %.not67.i, label %._crit_edge.i34, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit"
  %.idx.i27 = shl nsw i64 %.058, 5                ; 2 uses
  %.idx58.i = shl nsw i64 %.058, 6                ; 2 uses
  %.not59.i = icmp eq i64 %.idx.i27, %.idx58.i
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i", %.lr.ph.i26
  %.sroa.022.069.i = phi ptr [ %0, %.lr.ph.i26 ], [ %i.wf, %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 2 uses
  %.068.i = phi ptr [ %2, %.lr.ph.i26 ], [ %i.sr, %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 4 uses
  %i.sq = getelementptr inbounds i8, ptr %.068.i, i64 %.idx.i27 ; 4 uses
  %i.sr = getelementptr inbounds i8, ptr %.068.i, i64 %.idx58.i ; 4 uses
  br i1 %.not59.i, label %._crit_edge.i.i, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.ac, %bb.af
  %.029.i.i = phi ptr [ %.1.i.i, %bb.af ], [ %.068.i, %bb.ac ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.af ], [ %i.sq, %bb.ac ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.sw, %bb.af ], [ %.sroa.022.069.i, %bb.ac ] ; 3 uses
  %.016.val.i.i = load i32, ptr %.01628.i.i, align 8, !tbaa !238 ; 2 uses
  %.0.val.i.i = load i32, ptr %.029.i.i, align 8, !tbaa !238 ; 2 uses
  %i.ss = icmp ult i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.ss, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i28
  %i.st = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i28
  %i.su = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.val.sink.i.i = phi i32 [ %.016.val.i.i, %bb.ad ], [ %.0.val.i.i, %bb.ae ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.ad ], [ %.029.i.i, %bb.ae ]
  %.117.i.i = phi ptr [ %i.st, %bb.ad ], [ %.01628.i.i, %bb.ae ] ; 3 uses
  %.1.i.i = phi ptr [ %.029.i.i, %bb.ad ], [ %i.su, %bb.ae ] ; 3 uses
  %.sink.in.i.i29 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 8
  %.sink.i.i30 = load ptr, ptr %.sink.in.i.i29, align 8, !tbaa !127
  store i32 %.0.val.sink.i.i, ptr %.sroa.0.027.i.i, align 8, !tbaa !238
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.sink.i.i30, ptr %i.sv, align 8, !tbaa !239
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.sx = icmp ne ptr %.1.i.i, %i.sq
  %i.sy = icmp ne ptr %.117.i.i, %i.sr
  %i.sz = select i1 %i.sx, i1 %i.sy, i1 false
  br i1 %i.sz, label %.lr.ph.i.i28, label %._crit_edge.i.i, !llvm.loop !875

._crit_edge.i.i:                                  ; preds = %bb.af, %bb.ac
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.069.i, %bb.ac ], [ %i.sw, %bb.af ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.sq, %bb.ac ], [ %.117.i.i, %bb.af ] ; 3 uses
  %.0.lcssa.i.i31 = phi ptr [ %.068.i, %bb.ac ], [ %.1.i.i, %bb.af ] ; 3 uses
  %i.ta = ptrtoint ptr %i.sq to i64
  %i.tb = ptrtoint ptr %.0.lcssa.i.i31 to i64
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = ashr exact i64 %i.tc, 4                 ; 5 uses
  %i.te = icmp sgt i64 %i.td, 0
  br i1 %i.te, label %.lr.ph.i.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter177 = and i64 %i.td, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i.i37.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i.i38.prol = phi i64 [ %i.tl, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %i.td, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i.i39.prol = phi ptr [ %i.tk, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i40.prol = phi ptr [ %i.tj, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %i.tf = load i32, ptr %.0910.i.i.i.i.i.i.i40.prol, align 4, !tbaa !102
  store i32 %i.tf, ptr %.0811.i.i.i.i.i.i.i39.prol, align 8, !tbaa !238
  %i.tg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !127
  %i.ti = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.th, ptr %i.ti, align 8, !tbaa !239
  %i.tj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.tl = add nsw i64 %.012.i.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol, !llvm.loop !876

.lr.ph.i.i.i.i.i.i.i37.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i.i38.unr = phi i64 [ %i.td, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tl, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tk, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tj, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tk, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %i.tm = icmp ult i64 %i.td, 4
  br i1 %i.tm, label %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i37:                           ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i.i38 = phi i64 [ %i.ul, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i39 = phi ptr [ %i.uk, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i40 = phi ptr [ %i.uj, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.tn = load i32, ptr %.0910.i.i.i.i.i.i.i40, align 4, !tbaa !102
  store i32 %i.tn, ptr %.0811.i.i.i.i.i.i.i39, align 8, !tbaa !238
  %i.to = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !127
  %i.tq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 8
  store ptr %i.tp, ptr %i.tq, align 8, !tbaa !239
  %i.tr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 16
  %i.tt = load i32, ptr %i.tr, align 8, !tbaa !102
  store i32 %i.tt, ptr %i.ts, align 8, !tbaa !238
  %i.tu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !127
  %i.tw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 24
  store ptr %i.tv, ptr %i.tw, align 8, !tbaa !239
  %i.tx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 32
  %i.ty = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 32
  %i.tz = load i32, ptr %i.tx, align 8, !tbaa !102
  store i32 %i.tz, ptr %i.ty, align 8, !tbaa !238
  %i.ua = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 40
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !127
  %i.uc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 40
  store ptr %i.ub, ptr %i.uc, align 8, !tbaa !239
  %i.ud = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 48
  %i.ue = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 48
  %i.uf = load i32, ptr %i.ud, align 8, !tbaa !102
  store i32 %i.uf, ptr %i.ue, align 8, !tbaa !238
  %i.ug = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 56
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !127
  %i.ui = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 56
  store ptr %i.uh, ptr %i.ui, align 8, !tbaa !239
  %i.uj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 64
  %i.uk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ul = add nsw i64 %.012.i.i.i.i.i.i.i38, -4
  %i.um = icmp sgt i64 %.012.i.i.i.i.i.i.i38, 4
  br i1 %i.um, label %.lr.ph.i.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, !llvm.loop !12

_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa138.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ], [ %i.uk, %.lr.ph.i.i.i.i.i.i.i37 ]
  %i.un = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i32 to i64 ; 2 uses
  %i.uo = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.up = sub i64 %i.un, %i.uo
  %i.uq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.up ; 4 uses
  %i.ur = ptrtoint ptr %i.sr to i64               ; 2 uses
  %i.us = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = ashr exact i64 %i.ut, 4                 ; 5 uses
  %i.uv = icmp sgt i64 %i.uu, 0
  br i1 %i.uv, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i"

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %xtraiter180 = and i64 %i.uu, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol

.lr.ph.i.i.i.i.i19.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i19.i.i.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.vc, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.uu, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.vb, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.uq, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.va, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %i.uw = load i32, ptr %.0910.i.i.i.i.i22.i.i.prol, align 4, !tbaa !102
  store i32 %i.uw, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !238
  %i.ux = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !127
  %i.uz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.uy, ptr %i.uz, align 8, !tbaa !239
  %i.va = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.vc = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol, !llvm.loop !877

.lr.ph.i.i.i.i.i19.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol, %.lr.ph.i.i.i.i.i19.i.i.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.uu, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vc, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.uq, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vb, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.va, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.lcssa139.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vb, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %i.vd = icmp ult i64 %i.uu, 4
  br i1 %i.vd, label %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i", label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.wc, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.wb, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.wa, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %i.ve = load i32, ptr %.0910.i.i.i.i.i22.i.i, align 4, !tbaa !102
  store i32 %i.ve, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !238
  %i.vf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !127
  %i.vh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.vg, ptr %i.vh, align 8, !tbaa !239
  %i.vi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.vk = load i32, ptr %i.vi, align 8, !tbaa !102
  store i32 %i.vk, ptr %i.vj, align 8, !tbaa !238
  %i.vl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !127
  %i.vn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.vm, ptr %i.vn, align 8, !tbaa !239
  %i.vo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.vp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.vq = load i32, ptr %i.vo, align 8, !tbaa !102
  store i32 %i.vq, ptr %i.vp, align 8, !tbaa !238
  %i.vr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !127
  %i.vt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.vs, ptr %i.vt, align 8, !tbaa !239
  %i.vu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.vv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.vw = load i32, ptr %i.vu, align 8, !tbaa !102
  store i32 %i.vw, ptr %i.vv, align 8, !tbaa !238
  %i.vx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !127
  %i.vz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !239
  %i.wa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.wb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.wc = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.wd = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.wd, label %.lr.ph.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i", !llvm.loop !12

"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i, %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.uq, %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i ], [ %.lcssa139.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ], [ %i.wb, %.lr.ph.i.i.i.i.i19.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.we = sub i64 %3, %i.un
  %i.wf = getelementptr inbounds i8, ptr %i.uq, i64 %i.we ; 2 uses
  %i.wg = sub i64 %i.lt, %i.ur
  %i.wh = ashr exact i64 %i.wg, 4                 ; 2 uses
  %.not.i33 = icmp slt i64 %i.wh, %i.sp
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.ac, !llvm.loop !878

._crit_edge.i34:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit"
  %.0.lcssa.i35 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit" ], [ %i.sr, %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit" ], [ %i.wf, %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 2 uses
  %.lcssa65.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit" ], [ %i.wh, %"_ZSt12__move_mergeIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEET0_T_SL_SL_SL_SK_T1_.exit.i" ]
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.lu, i64 %.lcssa65.i) ; 2 uses
  %.idx60.i = shl nsw i64 %.sroa.speculated.i36, 4
  %i.wi = getelementptr inbounds i8, ptr %.0.lcssa.i35, i64 %.idx60.i ; 5 uses
  %i.wj = icmp ne i64 %.sroa.speculated.i36, 0
  %i.wk = icmp ne ptr %i.wi, %i.e
  %i.wl = and i1 %i.wj, %i.wk
  br i1 %i.wl, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i34, %bb.ai
  %.029.i42.i = phi ptr [ %.1.i50.i, %bb.ai ], [ %.0.lcssa.i35, %._crit_edge.i34 ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i49.i, %bb.ai ], [ %i.wi, %._crit_edge.i34 ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.wq, %bb.ai ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ] ; 3 uses
  %.016.val.i45.i = load i32, ptr %.01628.i43.i, align 8, !tbaa !238 ; 2 uses
  %.0.val.i46.i = load i32, ptr %.029.i42.i, align 8, !tbaa !238 ; 2 uses
  %i.wm = icmp ult i32 %.016.val.i45.i, %.0.val.i46.i
  br i1 %i.wm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i41.i
  %i.wn = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i41.i
  %i.wo = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.val.sink.i47.i = phi i32 [ %.016.val.i45.i, %bb.ag ], [ %.0.val.i46.i, %bb.ah ]
  %.01628.pn.i48.i = phi ptr [ %.01628.i43.i, %bb.ag ], [ %.029.i42.i, %bb.ah ]
  %.117.i49.i = phi ptr [ %i.wn, %bb.ag ], [ %.01628.i43.i, %bb.ah ] ; 3 uses
  %.1.i50.i = phi ptr [ %.029.i42.i, %bb.ag ], [ %i.wo, %bb.ah ] ; 3 uses
  %.sink.in.i51.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i48.i, i64 8
  %.sink.i52.i = load ptr, ptr %.sink.in.i51.i, align 8, !tbaa !127
  store i32 %.0.val.sink.i47.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !238
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.sink.i52.i, ptr %i.wp, align 8, !tbaa !239
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.wr = icmp ne ptr %.1.i50.i, %i.wi
  %i.ws = icmp ne ptr %.117.i49.i, %i.e
  %i.wt = select i1 %i.wr, i1 %i.ws, i1 false
  br i1 %i.wt, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !875

._crit_edge.i25.i:                                ; preds = %bb.ai, %._crit_edge.i34
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ], [ %i.wq, %bb.ai ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.wi, %._crit_edge.i34 ], [ %.117.i49.i, %bb.ai ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %.1.i50.i, %bb.ai ] ; 3 uses
  %i.wu = ptrtoint ptr %i.wi to i64
  %i.wv = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = ashr exact i64 %i.ww, 4                 ; 5 uses
  %i.wy = icmp sgt i64 %i.wx, 0
  br i1 %i.wy, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter183 = and i64 %i.wx, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.xf, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.wx, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.xd, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.wz = load i32, ptr %.0910.i.i.i.i.i.i40.i.prol, align 4, !tbaa !102
  store i32 %i.wz, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !238
  %i.xa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !127
  %i.xc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.xb, ptr %i.xc, align 8, !tbaa !239
  %i.xd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.xf = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !879

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.wx, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xf, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xe, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xd, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa144.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xe, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.xg = icmp ult i64 %i.wx, 4
  br i1 %i.xg, label %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.yf, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.ye, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.yd, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.xh = load i32, ptr %.0910.i.i.i.i.i.i40.i, align 4, !tbaa !102
  store i32 %i.xh, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !238
  %i.xi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !127
  %i.xk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.xj, ptr %i.xk, align 8, !tbaa !239
  %i.xl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.xm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.xn = load i32, ptr %i.xl, align 8, !tbaa !102
  store i32 %i.xn, ptr %i.xm, align 8, !tbaa !238
  %i.xo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !127
  %i.xq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.xp, ptr %i.xq, align 8, !tbaa !239
  %i.xr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.xs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.xt = load i32, ptr %i.xr, align 8, !tbaa !102
  store i32 %i.xt, ptr %i.xs, align 8, !tbaa !238
  %i.xu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !127
  %i.xw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.xv, ptr %i.xw, align 8, !tbaa !239
  %i.xx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.xy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.xz = load i32, ptr %i.xx, align 8, !tbaa !102
  store i32 %i.xz, ptr %i.xy, align 8, !tbaa !238
  %i.ya = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !127
  %i.yc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.yb, ptr %i.yc, align 8, !tbaa !239
  %i.yd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.ye = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.yf = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.yg = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.yg, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i, !llvm.loop !12

_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa144.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.ye, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.yh = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.yi = sub i64 %i.lt, %i.yh
  %i.yj = ashr exact i64 %i.yi, 4                 ; 5 uses
  %i.yk = icmp sgt i64 %i.yj, 0
  br i1 %i.yk, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %"_ZSt17__merge_sort_loopIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit"

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i
  %i.yl = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.ym = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.yn ; 2 uses
  %xtraiter186 = and i64 %i.yj, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.yv, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.yj, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.yu, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.yo, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.yt, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.yp = load i32, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 4, !tbaa !102
  store i32 %i.yp, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !238
  %i.yq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !127
  %i.ys = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.yr, ptr %i.ys, align 8, !tbaa !239
  %i.yt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.yv = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !880

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.yj, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.yv, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.yo, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.yu, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.yt, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.yw = icmp ult i64 %i.yj, 4
  br i1 %i.yw, label %"_ZSt17__merge_sort_loopIPSt4pairIjPN4llvm7objdump11LiveElementEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS2_18LiveElementPrinter6updateENS1_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.zv, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.zu, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.zt, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.yx = load i32, ptr %.0910.i.i.i.i.i22.i35.i, align 4, !tbaa !102
  store i32 %i.yx, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !238
  %i.yy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !127
  %i.za = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !239
  %i.zb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.zd = load i32, ptr %i.zb, align 8, !tbaa !102
  store i32 %i.zd, ptr %i.zc, align 8, !tbaa !238
  %i.ze = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !127
  %i.zg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.zf, ptr %i.zg, align 8, !tbaa !239
  %i.zh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.zi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.zj = load i32, ptr %i.zh, align 8, !tbaa !102
  store i32 %i.zj, ptr %i.zi, align 8, !tbaa !238
  %i.zk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !127
  %i.zm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
end_hunk_0
