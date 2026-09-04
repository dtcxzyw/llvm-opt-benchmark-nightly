Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ProfileGenerator?download=true
inline.NumInlined: 5715
inline.NumDeleted: 2968
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.td = load double, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !539
  store double %i.td, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !541
  %i.te = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !73
  %i.tg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store i64 %i.tf, ptr %i.tg, align 8, !tbaa !542
  %i.th = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.tj = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter178.next = add i64 %prol.iter178, 1   ; 2 uses
  %prol.iter178.cmp.not = icmp eq i64 %prol.iter178.next, %xtraiter176
  br i1 %prol.iter178.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !1091

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.tb, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.tj, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.ti, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.th, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.tk = icmp ult i64 %i.tb, 4
  br i1 %i.tk, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.uj, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.ui, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.uh, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.tl = load double, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !539
  store double %i.tl, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !541
  %i.tm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !73
  %i.to = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store i64 %i.tn, ptr %i.to, align 8, !tbaa !542
  %i.tp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.tq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.tr = load double, ptr %i.tp, align 8, !tbaa !539
  store double %i.tr, ptr %i.tq, align 8, !tbaa !541
  %i.ts = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !73
  %i.tu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store i64 %i.tt, ptr %i.tu, align 8, !tbaa !542
  %i.tv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.tw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.tx = load double, ptr %i.tv, align 8, !tbaa !539
  store double %i.tx, ptr %i.tw, align 8, !tbaa !541
  %i.ty = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !73
  %i.ua = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store i64 %i.tz, ptr %i.ua, align 8, !tbaa !542
  %i.ub = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.uc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.ud = load double, ptr %i.ub, align 8, !tbaa !539
  store double %i.ud, ptr %i.uc, align 8, !tbaa !541
  %i.ue = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !73
  %i.ug = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store i64 %i.uf, ptr %i.ug, align 8, !tbaa !542
  %i.uh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.ui = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.uj = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.uk = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.uk, label %.lr.ph.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit", !llvm.loop !26

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i
  %i.ul = shl nsw i64 %.060, 2                    ; 4 uses
  %.not68.i = icmp slt i64 %i.d, %i.ul
  br i1 %.not68.i, label %._crit_edge.i36, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit"
  %.idx.i30 = shl nsw i64 %.060, 5                ; 2 uses
  %.idx59.i = shl nsw i64 %.060, 6                ; 2 uses
  %.not60.i = icmp eq i64 %.idx.i30, %.idx59.i
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i", %.lr.ph.i29
  %.sroa.022.070.i = phi ptr [ %0, %.lr.ph.i29 ], [ %i.yf, %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 2 uses
  %.069.i = phi ptr [ %2, %.lr.ph.i29 ], [ %i.un, %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 4 uses
  %i.um = getelementptr inbounds i8, ptr %.069.i, i64 %.idx.i30 ; 4 uses
  %i.un = getelementptr inbounds i8, ptr %.069.i, i64 %.idx59.i ; 4 uses
  br i1 %.not60.i, label %._crit_edge.i.i, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %bb.ac, %bb.af
  %.031.i.i = phi ptr [ %.1.i.i, %bb.af ], [ %.069.i, %bb.ac ] ; 4 uses
  %.01630.i.i = phi ptr [ %.117.i.i, %bb.af ], [ %i.um, %bb.ac ] ; 4 uses
  %.sroa.0.029.i.i = phi ptr [ %i.uw, %bb.af ], [ %.sroa.022.070.i, %bb.ac ] ; 3 uses
  %.016.val.i.i = load double, ptr %.01630.i.i, align 8, !tbaa !541 ; 3 uses
  %i.uo = getelementptr i8, ptr %.01630.i.i, i64 8
  %.016.val18.i.i = load i64, ptr %i.uo, align 8  ; 2 uses
  %.0.val.i.i = load double, ptr %.031.i.i, align 8, !tbaa !541 ; 3 uses
  %i.up = getelementptr i8, ptr %.031.i.i, i64 8
  %.0.val19.i.i = load i64, ptr %i.up, align 8    ; 2 uses
  %i.uq = fcmp une double %.016.val.i.i, %.0.val.i.i
  %i.ur = fcmp ogt double %.016.val.i.i, %.0.val.i.i
  %i.us = icmp ult i64 %.016.val18.i.i, %.0.val19.i.i
  %.0.i.i.i.i32 = select i1 %i.uq, i1 %i.ur, i1 %i.us
  br i1 %.0.i.i.i.i32, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i31
  %i.ut = getelementptr inbounds nuw i8, ptr %.01630.i.i, i64 16
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i31
  %i.uu = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.val.sink.i.i = phi double [ %.016.val.i.i, %bb.ad ], [ %.0.val.i.i, %bb.ae ]
  %.0.val19.sink.i.i = phi i64 [ %.016.val18.i.i, %bb.ad ], [ %.0.val19.i.i, %bb.ae ]
  %.117.i.i = phi ptr [ %i.ut, %bb.ad ], [ %.01630.i.i, %bb.ae ] ; 3 uses
  %.1.i.i = phi ptr [ %.031.i.i, %bb.ad ], [ %i.uu, %bb.ae ] ; 3 uses
  store double %.0.val.sink.i.i, ptr %.sroa.0.029.i.i, align 8, !tbaa !541
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.i, i64 8
  store i64 %.0.val19.sink.i.i, ptr %i.uv, align 8, !tbaa !542
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.i, i64 16 ; 2 uses
  %i.ux = icmp ne ptr %.1.i.i, %i.um
  %i.uy = icmp ne ptr %.117.i.i, %i.un
  %i.uz = select i1 %i.ux, i1 %i.uy, i1 false
  br i1 %i.uz, label %.lr.ph.i.i31, label %._crit_edge.i.i, !llvm.loop !1092

._crit_edge.i.i:                                  ; preds = %bb.af, %bb.ac
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.070.i, %bb.ac ], [ %i.uw, %bb.af ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.um, %bb.ac ], [ %.117.i.i, %bb.af ] ; 3 uses
  %.0.lcssa.i.i33 = phi ptr [ %.069.i, %bb.ac ], [ %.1.i.i, %bb.af ] ; 3 uses
  %i.va = ptrtoint ptr %i.um to i64
  %i.vb = ptrtoint ptr %.0.lcssa.i.i33 to i64
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = ashr exact i64 %i.vc, 4                 ; 5 uses
  %i.ve = icmp sgt i64 %i.vd, 0
  br i1 %i.ve, label %.lr.ph.i.i.i.i.i.i.i39.preheader, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

.lr.ph.i.i.i.i.i.i.i39.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter179 = and i64 %i.vd, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i39.prol

.lr.ph.i.i.i.i.i.i.i39.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i39.preheader, %.lr.ph.i.i.i.i.i.i.i39.prol
  %.012.i.i.i.i.i.i.i40.prol = phi i64 [ %i.vl, %.lr.ph.i.i.i.i.i.i.i39.prol ], [ %i.vd, %.lr.ph.i.i.i.i.i.i.i39.preheader ]
  %.0811.i.i.i.i.i.i.i41.prol = phi ptr [ %i.vk, %.lr.ph.i.i.i.i.i.i.i39.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i39.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i42.prol = phi ptr [ %i.vj, %.lr.ph.i.i.i.i.i.i.i39.prol ], [ %.0.lcssa.i.i33, %.lr.ph.i.i.i.i.i.i.i39.preheader ] ; 3 uses
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.lr.ph.i.i.i.i.i.i.i39.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i39.preheader ]
  %i.vf = load double, ptr %.0910.i.i.i.i.i.i.i42.prol, align 8, !tbaa !539
  store double %i.vf, ptr %.0811.i.i.i.i.i.i.i41.prol, align 8, !tbaa !541
  %i.vg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42.prol, i64 8
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !73
  %i.vi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41.prol, i64 8
  store i64 %i.vh, ptr %i.vi, align 8, !tbaa !542
  %i.vj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42.prol, i64 16 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41.prol, i64 16 ; 3 uses
  %i.vl = add nsw i64 %.012.i.i.i.i.i.i.i40.prol, -1 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i39.prol, !llvm.loop !1093

.lr.ph.i.i.i.i.i.i.i39.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i39.prol, %.lr.ph.i.i.i.i.i.i.i39.preheader
  %.012.i.i.i.i.i.i.i40.unr = phi i64 [ %i.vd, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.vl, %.lr.ph.i.i.i.i.i.i.i39.prol ]
  %.0811.i.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.vk, %.lr.ph.i.i.i.i.i.i.i39.prol ]
  %.0910.i.i.i.i.i.i.i42.unr = phi ptr [ %.0.lcssa.i.i33, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.vj, %.lr.ph.i.i.i.i.i.i.i39.prol ]
  %.lcssa140.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.vk, %.lr.ph.i.i.i.i.i.i.i39.prol ]
  %i.vm = icmp ult i64 %i.vd, 4
  br i1 %i.vm, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i39:                           ; preds = %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i39
  %.012.i.i.i.i.i.i.i40 = phi i64 [ %i.wl, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.012.i.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i41 = phi ptr [ %i.wk, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.0811.i.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i42 = phi ptr [ %i.wj, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.0910.i.i.i.i.i.i.i42.unr, %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit ] ; 9 uses
  %i.vn = load double, ptr %.0910.i.i.i.i.i.i.i42, align 8, !tbaa !539
  store double %i.vn, ptr %.0811.i.i.i.i.i.i.i41, align 8, !tbaa !541
  %i.vo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 8
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !73
  %i.vq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 8
  store i64 %i.vp, ptr %i.vq, align 8, !tbaa !542
  %i.vr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 16
  %i.vs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 16
  %i.vt = load double, ptr %i.vr, align 8, !tbaa !539
  store double %i.vt, ptr %i.vs, align 8, !tbaa !541
  %i.vu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 24
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !73
  %i.vw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 24
  store i64 %i.vv, ptr %i.vw, align 8, !tbaa !542
  %i.vx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 32
  %i.vy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 32
  %i.vz = load double, ptr %i.vx, align 8, !tbaa !539
  store double %i.vz, ptr %i.vy, align 8, !tbaa !541
  %i.wa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 40
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !73
  %i.wc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 40
  store i64 %i.wb, ptr %i.wc, align 8, !tbaa !542
  %i.wd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 48
  %i.we = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 48
  %i.wf = load double, ptr %i.wd, align 8, !tbaa !539
  store double %i.wf, ptr %i.we, align 8, !tbaa !541
  %i.wg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 56
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !73
  %i.wi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 56
  store i64 %i.wh, ptr %i.wi, align 8, !tbaa !542
  %i.wj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 64
  %i.wk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 64 ; 2 uses
  %i.wl = add nsw i64 %.012.i.i.i.i.i.i.i40, -4
  %i.wm = icmp sgt i64 %.012.i.i.i.i.i.i.i40, 4
  br i1 %i.wm, label %.lr.ph.i.i.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i, !llvm.loop !26

_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i39, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i34 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa140.unr, %.lr.ph.i.i.i.i.i.i.i39.prol.loopexit ], [ %i.wk, %.lr.ph.i.i.i.i.i.i.i39 ]
  %i.wn = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i34 to i64 ; 3 uses
  %i.wo = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.wp ; 3 uses
  %i.wr = ptrtoint ptr %i.un to i64               ; 2 uses
  %i.ws = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.wt = sub i64 %i.wr, %i.ws
  %i.wu = ashr exact i64 %i.wt, 4                 ; 5 uses
  %i.wv = icmp sgt i64 %i.wu, 0
  br i1 %i.wv, label %.lr.ph.i.i.i.i.i21.i.i.preheader, label %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i"

.lr.ph.i.i.i.i.i21.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %xtraiter182 = and i64 %i.wu, 3                 ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.i.prol

.lr.ph.i.i.i.i.i21.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i21.i.i.preheader, %.lr.ph.i.i.i.i.i21.i.i.prol
  %.012.i.i.i.i.i22.i.i.prol = phi i64 [ %i.xc, %.lr.ph.i.i.i.i.i21.i.i.prol ], [ %i.wu, %.lr.ph.i.i.i.i.i21.i.i.preheader ]
  %.0811.i.i.i.i.i23.i.i.prol = phi ptr [ %i.xb, %.lr.ph.i.i.i.i.i21.i.i.prol ], [ %i.wq, %.lr.ph.i.i.i.i.i21.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i24.i.i.prol = phi ptr [ %i.xa, %.lr.ph.i.i.i.i.i21.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i21.i.i.preheader ] ; 3 uses
  %prol.iter184 = phi i64 [ %prol.iter184.next, %.lr.ph.i.i.i.i.i21.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i21.i.i.preheader ]
  %i.ww = load double, ptr %.0910.i.i.i.i.i24.i.i.prol, align 8, !tbaa !539
  store double %i.ww, ptr %.0811.i.i.i.i.i23.i.i.prol, align 8, !tbaa !541
  %i.wx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i.prol, i64 8
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !73
  %i.wz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i.prol, i64 8
  store i64 %i.wy, ptr %i.wz, align 8, !tbaa !542
  %i.xa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i.prol, i64 16 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i.prol, i64 16 ; 3 uses
  %i.xc = add nsw i64 %.012.i.i.i.i.i22.i.i.prol, -1 ; 2 uses
  %prol.iter184.next = add i64 %prol.iter184, 1   ; 2 uses
  %prol.iter184.cmp.not = icmp eq i64 %prol.iter184.next, %xtraiter182
  br i1 %prol.iter184.cmp.not, label %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.i.prol, !llvm.loop !1094

.lr.ph.i.i.i.i.i21.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i21.i.i.prol, %.lr.ph.i.i.i.i.i21.i.i.preheader
  %.012.i.i.i.i.i22.i.i.unr = phi i64 [ %i.wu, %.lr.ph.i.i.i.i.i21.i.i.preheader ], [ %i.xc, %.lr.ph.i.i.i.i.i21.i.i.prol ]
  %.0811.i.i.i.i.i23.i.i.unr = phi ptr [ %i.wq, %.lr.ph.i.i.i.i.i21.i.i.preheader ], [ %i.xb, %.lr.ph.i.i.i.i.i21.i.i.prol ]
  %.0910.i.i.i.i.i24.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i21.i.i.preheader ], [ %i.xa, %.lr.ph.i.i.i.i.i21.i.i.prol ]
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i21.i.i.preheader ], [ %i.xb, %.lr.ph.i.i.i.i.i21.i.i.prol ]
  %i.xd = icmp ult i64 %i.wu, 4
  br i1 %i.xd, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i, label %.lr.ph.i.i.i.i.i21.i.i

.lr.ph.i.i.i.i.i21.i.i:                           ; preds = %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i21.i.i
  %.012.i.i.i.i.i22.i.i = phi i64 [ %i.yc, %.lr.ph.i.i.i.i.i21.i.i ], [ %.012.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i23.i.i = phi ptr [ %i.yb, %.lr.ph.i.i.i.i.i21.i.i ], [ %.0811.i.i.i.i.i23.i.i.unr, %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i24.i.i = phi ptr [ %i.ya, %.lr.ph.i.i.i.i.i21.i.i ], [ %.0910.i.i.i.i.i24.i.i.unr, %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit ] ; 9 uses
  %i.xe = load double, ptr %.0910.i.i.i.i.i24.i.i, align 8, !tbaa !539
  store double %i.xe, ptr %.0811.i.i.i.i.i23.i.i, align 8, !tbaa !541
  %i.xf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 8
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !73
  %i.xh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 8
  store i64 %i.xg, ptr %i.xh, align 8, !tbaa !542
  %i.xi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 16
  %i.xj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 16
  %i.xk = load double, ptr %i.xi, align 8, !tbaa !539
  store double %i.xk, ptr %i.xj, align 8, !tbaa !541
  %i.xl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 24
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !73
  %i.xn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 24
  store i64 %i.xm, ptr %i.xn, align 8, !tbaa !542
  %i.xo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 32
  %i.xp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 32
  %i.xq = load double, ptr %i.xo, align 8, !tbaa !539
  store double %i.xq, ptr %i.xp, align 8, !tbaa !541
  %i.xr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 40
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !73
  %i.xt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 40
  store i64 %i.xs, ptr %i.xt, align 8, !tbaa !542
  %i.xu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 48
  %i.xv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 48
  %i.xw = load double, ptr %i.xu, align 8, !tbaa !539
  store double %i.xw, ptr %i.xv, align 8, !tbaa !541
  %i.xx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 56
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !73
  %i.xz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 56
  store i64 %i.xy, ptr %i.xz, align 8, !tbaa !542
  %i.ya = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 64
  %i.yb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 64 ; 2 uses
  %i.yc = add nsw i64 %.012.i.i.i.i.i22.i.i, -4
  %i.yd = icmp sgt i64 %.012.i.i.i.i.i22.i.i, 4
  br i1 %i.yd, label %.lr.ph.i.i.i.i.i21.i.i, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i, !llvm.loop !26

_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i21.i.i, %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit
  %.lcssa141 = phi ptr [ %.lcssa141.unr, %.lr.ph.i.i.i.i.i21.i.i.prol.loopexit ], [ %i.yb, %.lr.ph.i.i.i.i.i21.i.i ]
  %3 = ptrtoint ptr %.lcssa141 to i64
  br label %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i"

"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i": ; preds = %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i, %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %.08.lcssa.i.i.i.i.i20.i.i = phi i64 [ %i.wn, %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i ], [ %3, %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i ]
  %i.ye = sub i64 %.08.lcssa.i.i.i.i.i20.i.i, %i.wn
  %i.yf = getelementptr inbounds i8, ptr %i.wq, i64 %i.ye ; 2 uses
  %i.yg = sub i64 %i.nh, %i.wr
  %i.yh = ashr exact i64 %i.yg, 4                 ; 2 uses
  %.not.i35 = icmp slt i64 %i.yh, %i.ul
  br i1 %.not.i35, label %._crit_edge.i36, label %bb.ac, !llvm.loop !1095

._crit_edge.i36:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit"
  %.0.lcssa.i37 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit" ], [ %i.un, %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit" ], [ %i.yf, %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ] ; 2 uses
  %.lcssa66.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit" ], [ %i.yh, %"_ZSt12__move_mergeIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEET0_T_SK_SK_SK_SJ_T1_.exit.i" ]
  %.sroa.speculated.i38 = tail call i64 @llvm.smin.i64(i64 %i.ni, i64 %.lcssa66.i) ; 2 uses
  %.idx61.i = shl nsw i64 %.sroa.speculated.i38, 4
  %i.yi = getelementptr inbounds i8, ptr %.0.lcssa.i37, i64 %.idx61.i ; 5 uses
  %i.yj = icmp ne i64 %.sroa.speculated.i38, 0
  %i.yk = icmp ne ptr %i.yi, %i.e
  %i.yl = and i1 %i.yj, %i.yk
  br i1 %i.yl, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i36, %bb.ai
  %.031.i42.i = phi ptr [ %.1.i53.i, %bb.ai ], [ %.0.lcssa.i37, %._crit_edge.i36 ] ; 4 uses
  %.01630.i43.i = phi ptr [ %.117.i52.i, %bb.ai ], [ %i.yi, %._crit_edge.i36 ] ; 4 uses
  %.sroa.0.029.i44.i = phi ptr [ %i.yu, %bb.ai ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i36 ] ; 3 uses
  %.016.val.i45.i = load double, ptr %.01630.i43.i, align 8, !tbaa !541 ; 3 uses
  %i.ym = getelementptr i8, ptr %.01630.i43.i, i64 8
  %.016.val18.i46.i = load i64, ptr %i.ym, align 8 ; 2 uses
  %.0.val.i47.i = load double, ptr %.031.i42.i, align 8, !tbaa !541 ; 3 uses
  %i.yn = getelementptr i8, ptr %.031.i42.i, i64 8
  %.0.val19.i48.i = load i64, ptr %i.yn, align 8  ; 2 uses
  %i.yo = fcmp une double %.016.val.i45.i, %.0.val.i47.i
  %i.yp = fcmp ogt double %.016.val.i45.i, %.0.val.i47.i
  %i.yq = icmp ult i64 %.016.val18.i46.i, %.0.val19.i48.i
  %.0.i.i.i49.i = select i1 %i.yo, i1 %i.yp, i1 %i.yq
  br i1 %.0.i.i.i49.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i41.i
  %i.yr = getelementptr inbounds nuw i8, ptr %.01630.i43.i, i64 16
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i41.i
  %i.ys = getelementptr inbounds nuw i8, ptr %.031.i42.i, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.val.sink.i50.i = phi double [ %.016.val.i45.i, %bb.ag ], [ %.0.val.i47.i, %bb.ah ]
  %.0.val19.sink.i51.i = phi i64 [ %.016.val18.i46.i, %bb.ag ], [ %.0.val19.i48.i, %bb.ah ]
  %.117.i52.i = phi ptr [ %i.yr, %bb.ag ], [ %.01630.i43.i, %bb.ah ] ; 3 uses
  %.1.i53.i = phi ptr [ %.031.i42.i, %bb.ag ], [ %i.ys, %bb.ah ] ; 3 uses
  store double %.0.val.sink.i50.i, ptr %.sroa.0.029.i44.i, align 8, !tbaa !541
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i44.i, i64 8
  store i64 %.0.val19.sink.i51.i, ptr %i.yt, align 8, !tbaa !542
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i44.i, i64 16 ; 2 uses
  %i.yv = icmp ne ptr %.1.i53.i, %i.yi
  %i.yw = icmp ne ptr %.117.i52.i, %i.e
  %i.yx = select i1 %i.yv, i1 %i.yw, i1 false
  br i1 %i.yx, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !1092

._crit_edge.i25.i:                                ; preds = %bb.ai, %._crit_edge.i36
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i36 ], [ %i.yu, %bb.ai ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.yi, %._crit_edge.i36 ], [ %.117.i52.i, %bb.ai ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i37, %._crit_edge.i36 ], [ %.1.i53.i, %bb.ai ] ; 3 uses
  %i.yy = ptrtoint ptr %i.yi to i64
  %i.yz = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = ashr exact i64 %i.za, 4                 ; 5 uses
  %i.zc = icmp sgt i64 %i.zb, 0
  br i1 %i.zc, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter185 = and i64 %i.zb, 3                 ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.zj, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.zb, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.zi, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.zh, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.zd = load double, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !539
  store double %i.zd, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !541
  %i.ze = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !73
  %i.zg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store i64 %i.zf, ptr %i.zg, align 8, !tbaa !542
  %i.zh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.zj = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !1096

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.zb, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.zj, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.zi, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.zh, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa146.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.zi, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.zk = icmp ult i64 %i.zb, 4
  br i1 %i.zk, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.aaj, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.aai, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.aah, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.zl = load double, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !539
  store double %i.zl, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !541
  %i.zm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !73
  %i.zo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store i64 %i.zn, ptr %i.zo, align 8, !tbaa !542
  %i.zp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.zq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.zr = load double, ptr %i.zp, align 8, !tbaa !539
  store double %i.zr, ptr %i.zq, align 8, !tbaa !541
  %i.zs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !73
  %i.zu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store i64 %i.zt, ptr %i.zu, align 8, !tbaa !542
  %i.zv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.zw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.zx = load double, ptr %i.zv, align 8, !tbaa !539
  store double %i.zx, ptr %i.zw, align 8, !tbaa !541
  %i.zy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !73
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store i64 %i.zz, ptr %i.aaa, align 8, !tbaa !542
  %i.aab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.aac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.aad = load double, ptr %i.aab, align 8, !tbaa !539
  store double %i.aad, ptr %i.aac, align 8, !tbaa !541
  %i.aae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !73
  %i.aag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store i64 %i.aaf, ptr %i.aag, align 8, !tbaa !542
  %i.aah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.aai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.aaj = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.aak = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.aak, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i, !llvm.loop !26

_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa146.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.aai, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.aal = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.aam = sub i64 %i.nh, %i.aal
  %i.aan = ashr exact i64 %i.aam, 4               ; 5 uses
  %i.aao = icmp sgt i64 %i.aan, 0
  br i1 %i.aao, label %.lr.ph.i.i.i.i.i21.i32.preheader.i, label %"_ZSt17__merge_sort_loopIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit"

.lr.ph.i.i.i.i.i21.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i
  %i.aap = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.aaq = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  %i.aas = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.aar ; 2 uses
  %xtraiter188 = and i64 %i.aan, 3                ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph.i.i.i.i.i21.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i32.i.prol

.lr.ph.i.i.i.i.i21.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i21.i32.preheader.i, %.lr.ph.i.i.i.i.i21.i32.i.prol
  %.012.i.i.i.i.i22.i33.i.prol = phi i64 [ %i.aaz, %.lr.ph.i.i.i.i.i21.i32.i.prol ], [ %i.aan, %.lr.ph.i.i.i.i.i21.i32.preheader.i ]
  %.0811.i.i.i.i.i23.i34.i.prol = phi ptr [ %i.aay, %.lr.ph.i.i.i.i.i21.i32.i.prol ], [ %i.aas, %.lr.ph.i.i.i.i.i21.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i24.i35.i.prol = phi ptr [ %i.aax, %.lr.ph.i.i.i.i.i21.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i21.i32.preheader.i ] ; 3 uses
  %prol.iter190 = phi i64 [ %prol.iter190.next, %.lr.ph.i.i.i.i.i21.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i21.i32.preheader.i ]
  %i.aat = load double, ptr %.0910.i.i.i.i.i24.i35.i.prol, align 8, !tbaa !539
  store double %i.aat, ptr %.0811.i.i.i.i.i23.i34.i.prol, align 8, !tbaa !541
  %i.aau = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i35.i.prol, i64 8
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !73
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i34.i.prol, i64 8
  store i64 %i.aav, ptr %i.aaw, align 8, !tbaa !542
  %i.aax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i35.i.prol, i64 16 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i34.i.prol, i64 16 ; 2 uses
  %i.aaz = add nsw i64 %.012.i.i.i.i.i22.i33.i.prol, -1 ; 2 uses
  %prol.iter190.next = add i64 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i64 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.lr.ph.i.i.i.i.i21.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i32.i.prol, !llvm.loop !1097

.lr.ph.i.i.i.i.i21.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i21.i32.i.prol, %.lr.ph.i.i.i.i.i21.i32.preheader.i
  %.012.i.i.i.i.i22.i33.i.unr = phi i64 [ %i.aan, %.lr.ph.i.i.i.i.i21.i32.preheader.i ], [ %i.aaz, %.lr.ph.i.i.i.i.i21.i32.i.prol ]
  %.0811.i.i.i.i.i23.i34.i.unr = phi ptr [ %i.aas, %.lr.ph.i.i.i.i.i21.i32.preheader.i ], [ %i.aay, %.lr.ph.i.i.i.i.i21.i32.i.prol ]
  %.0910.i.i.i.i.i24.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i21.i32.preheader.i ], [ %i.aax, %.lr.ph.i.i.i.i.i21.i32.i.prol ]
  %i.aba = icmp ult i64 %i.aan, 4
  br i1 %i.aba, label %"_ZSt17__merge_sort_loopIPSt4pairIdmEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i21.i32.i

.lr.ph.i.i.i.i.i21.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i21.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i21.i32.i
  %.012.i.i.i.i.i22.i33.i = phi i64 [ %i.abz, %.lr.ph.i.i.i.i.i21.i32.i ], [ %.012.i.i.i.i.i22.i33.i.unr, %.lr.ph.i.i.i.i.i21.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i23.i34.i = phi ptr [ %i.aby, %.lr.ph.i.i.i.i.i21.i32.i ], [ %.0811.i.i.i.i.i23.i34.i.unr, %.lr.ph.i.i.i.i.i21.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i24.i35.i = phi ptr [ %i.abx, %.lr.ph.i.i.i.i.i21.i32.i ], [ %.0910.i.i.i.i.i24.i35.i.unr, %.lr.ph.i.i.i.i.i21.i32.i.prol.loopexit ] ; 9 uses
  %i.abb = load double, ptr %.0910.i.i.i.i.i24.i35.i, align 8, !tbaa !539
  store double %i.abb, ptr %.0811.i.i.i.i.i23.i34.i, align 8, !tbaa !541
  %i.abc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i35.i, i64 8
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !73
  %i.abe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i34.i, i64 8
  store i64 %i.abd, ptr %i.abe, align 8, !tbaa !542
  %i.abf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i35.i, i64 16
  %i.abg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i34.i, i64 16
  %i.abh = load double, ptr %i.abf, align 8, !tbaa !539
  store double %i.abh, ptr %i.abg, align 8, !tbaa !541
  %i.abi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i35.i, i64 24
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !73
  %i.abk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i34.i, i64 24
  store i64 %i.abj, ptr %i.abk, align 8, !tbaa !542
  %i.abl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i35.i, i64 32
  %i.abm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i34.i, i64 32
end_hunk_0
