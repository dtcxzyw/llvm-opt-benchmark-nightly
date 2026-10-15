Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleSummaryIndex?download=true
inline.NumInlined: 3450
inline.NumDeleted: 1781
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEE:bb.a
  %i.bhs = call i64 @llvm.umin.i64(i64 %i.bhq, i64 288230376151711743)
  %i.bht = select i1 %i.bhr, i64 288230376151711743, i64 %i.bhs ; 3 uses
  %.not.i.i.i.i.i344 = icmp ne i64 %i.bht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i344)
  %i.bhu = shl nuw nsw i64 %i.bht, 5
  %i.bhv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bhu) #28 ; 4 uses
  %i.bhw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bhm ; 5 uses
  store i64 %i.lg, ptr %i.bhw, align 8, !tbaa !164
  %.sroa.5.0..sroa_idx5.i345 = getelementptr inbounds nuw i8, ptr %i.bhw, i64 8
  store i32 %i.bhb, ptr %.sroa.5.0..sroa_idx5.i345, align 8, !tbaa !170
  %.sroa.69.0..sroa_idx10.i346 = getelementptr inbounds nuw i8, ptr %i.bhw, i64 16
  store i64 %i.bgu, ptr %.sroa.69.0..sroa_idx10.i346, align 8, !tbaa !164
  %.sroa.7.0..sroa_idx12.i347 = getelementptr inbounds nuw i8, ptr %i.bhw, i64 24
  store i64 %i.bgx, ptr %.sroa.7.0..sroa_idx12.i347, align 8, !tbaa !164
  %i.bhx = icmp sgt i64 %i.bhm, 0
  br i1 %i.bhx, label %bb.im, label %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i348

bb.im:                                            ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i342
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bhv, ptr align 8 %.sroa.0576.3805, i64 %i.bhm, i1 false)
  br label %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i348

_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i348: ; preds = %bb.im, %_ZNKSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i342
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhw, i64 32
  %.not.i21.i.i.i.i349 = icmp eq ptr %.sroa.0576.3805, null
  br i1 %.not.i21.i.i.i.i349, label %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i350, label %bb.in

bb.in:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i348
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0576.3805, i64 noundef %i.bhm) #25
  br label %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i350

_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i350: ; preds = %bb.in, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i348
  %i.bhz = getelementptr inbounds nuw [32 x i8], ptr %i.bhv, i64 %i.bht
  br label %"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit351"

bb.io:                                            ; preds = %_ZNKSt3mapImPN4llvm18GlobalValueSummaryESt4lessImESaISt4pairIKmS2_EEE5countERS6_.exit.i333
  call fastcc void @"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_1clEPKcmmmmi"(ptr nonnull %1, ptr noundef nonnull @.str.53, i64 noundef %i.lg, i64 noundef %i.bgu, i64 noundef %i.lg, i64 noundef %i.bgx, i32 noundef range(i32 -4, 8) %i.bhb)
  br label %"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit351"

"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit351": ; preds = %bb.ij, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i350, %bb.io
  %.sroa.0576.7 = phi ptr [ %i.bhv, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i350 ], [ %.sroa.0576.3805, %bb.ij ], [ %.sroa.0576.3805, %bb.io ] ; 2 uses
  %.sroa.11.7 = phi ptr [ %i.bhy, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i350 ], [ %i.bhj, %bb.ij ], [ %.sroa.11.3806, %bb.io ] ; 2 uses
  %.sroa.21.7 = phi ptr [ %i.bhz, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i350 ], [ %.sroa.21.3807, %bb.ij ], [ %.sroa.21.3807, %bb.io ] ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %.0808, i64 16 ; 2 uses
  %.not119 = icmp eq ptr %i.bia, %i.bgt
  br i1 %.not119, label %"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit316", label %.lr.ph809

"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit316": ; preds = %"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit351", %._crit_edge800.thread, %_ZN4llvm16dyn_cast_or_nullINS_15FunctionSummaryENS_18GlobalValueSummaryEEEDaPT0_.exit, %._crit_edge800, %bb.ii, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i315, %bb.id
  %.sroa.0576.4 = phi ptr [ %.sroa.0576.5, %._crit_edge800 ], [ %.sroa.0576.2.lcssa1166, %bb.ii ], [ %i.bgj, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i315 ], [ %.sroa.0576.2.lcssa1166, %bb.id ], [ %.sroa.0576.2.lcssa1166, %._crit_edge800.thread ], [ %.sroa.0576.2.lcssa1166, %_ZN4llvm16dyn_cast_or_nullINS_15FunctionSummaryENS_18GlobalValueSummaryEEEDaPT0_.exit ], [ %.sroa.0576.7, %"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit351" ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %.sroa.11.5, %._crit_edge800 ], [ %.sroa.11.2.lcssa1167, %bb.ii ], [ %i.bgm, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i315 ], [ %i.bfx, %bb.id ], [ %.sroa.11.2.lcssa1167, %._crit_edge800.thread ], [ %.sroa.11.2.lcssa1167, %_ZN4llvm16dyn_cast_or_nullINS_15FunctionSummaryENS_18GlobalValueSummaryEEEDaPT0_.exit ], [ %.sroa.11.7, %"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit351" ] ; 2 uses
  %.sroa.21.4 = phi ptr [ %.sroa.21.5, %._crit_edge800 ], [ %.sroa.21.2.lcssa1168, %bb.ii ], [ %i.bgn, %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i315 ], [ %.sroa.21.2.lcssa1168, %bb.id ], [ %.sroa.21.2.lcssa1168, %._crit_edge800.thread ], [ %.sroa.21.2.lcssa1168, %_ZN4llvm16dyn_cast_or_nullINS_15FunctionSummaryENS_18GlobalValueSummaryEEEDaPT0_.exit ], [ %.sroa.21.7, %"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_2clEmmi.exit351" ] ; 2 uses
  %i.bib = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0514.0817) #26 ; 2 uses
  %.not608 = icmp eq ptr %i.bib, %i.ri
  br i1 %.not608, label %._crit_edge819, label %bb.hw

._crit_edge840:                                   ; preds = %._crit_edge836, %_ZN4llvm11raw_ostreamlsEPKc.exit141
  %i.bic = load ptr, ptr %i.bp, align 8, !tbaa !229
  %i.bid = load ptr, ptr %i.br, align 8, !tbaa !230 ; 2 uses
  %i.bie = icmp eq ptr %i.bic, %i.bid
  br i1 %i.bie, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %._crit_edge840
  %i.bif = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.58, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit354

bb.iq:                                            ; preds = %._crit_edge840
  store i8 125, ptr %i.bid, align 1
  %i.big = load ptr, ptr %i.br, align 8, !tbaa !230
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 1
  store ptr %i.bih, ptr %i.br, align 8, !tbaa !230
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit354

_ZN4llvm11raw_ostreamlsEPKc.exit354:              ; preds = %bb.ip, %bb.iq
  %i.bii = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.bij = load i32, ptr %i.bii, align 4, !tbaa !249 ; 2 uses
  %i.bik = icmp eq i32 %i.bij, 0
  br i1 %i.bik, label %_ZN4llvm8DenseMapINS_9StringRefEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEED2Ev.exit, label %bb.ir

bb.ir:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit354
  %i.bil = load ptr, ptr %33, align 8, !tbaa !247
  %i.bim = zext i32 %i.bij to i64                 ; 2 uses
  %i.bin = mul nuw nsw i64 %i.bim, 24
  %i.bio = add nuw nsw i64 %i.bim, 31
  %i.bip = lshr i64 %i.bio, 3
  %i.biq = and i64 %i.bip, 1073741820
  %i.bir = add nuw nsw i64 %i.biq, %i.bin
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bil, i64 noundef %i.bir, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapINS_9StringRefEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit354, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %.not.i.i.i355 = icmp eq ptr %.sroa.0558.0.lcssa11431152, null
  br i1 %.not.i.i.i355, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit, label %bb.is

bb.is:                                            ; preds = %_ZN4llvm8DenseMapINS_9StringRefEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEED2Ev.exit
  %i.bis = ptrtoint ptr %.sroa.0558.0.lcssa11431152 to i64
  %i.bit = sub i64 %.sroa.14.0.lcssa11451151, %i.bis
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0558.0.lcssa11431152, i64 noundef %i.bit) #25
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit:  ; preds = %_ZN4llvm8DenseMapINS_9StringRefEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEED2Ev.exit, %bb.is
  %i.biu = load ptr, ptr %i.h, align 8, !tbaa !239
  call void @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St3mapImPNS0_18GlobalValueSummaryESt4lessImESaIS2_IKmS6_EEEESt10_Select1stISD_ES7_IS1_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef %i.biu)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.biv = getelementptr inbounds nuw i8, ptr %31, i64 20 ; 2 uses
  %i.biw = load i32, ptr %i.biv, align 4, !tbaa !257 ; 2 uses
  %i.bix = icmp eq i32 %i.biw, 0
  br i1 %i.bix, label %_ZN4llvm8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit
  %i.biy = load ptr, ptr %31, align 8, !tbaa !255
  %i.biz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !256
  %i.bjb = zext i32 %i.biw to i64
  %i.bjc = add nuw nsw i64 %i.bjb, 31
  %i.bjd = lshr i64 %i.bjc, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i358, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i358 ] ; 3 uses
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %indvars.iv.i.i
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !170 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bjf, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i358, label %.lr.ph.i.i356

.lr.ph.i.i356:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bjg = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.it

bb.it:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i356
  %.0.i3.i.i = phi i32 [ %i.bjf, %.lr.ph.i.i356 ], [ %i.bjt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bjh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bji = or disjoint i32 %i.bjh, %i.bjg
  %i.bjj = zext i32 %i.bji to i64
  %i.bjk = getelementptr inbounds nuw [32 x i8], ptr %i.biy, i64 %i.bjj ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 8
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !54 ; 3 uses
  %.not.i.i.i.i.i.i357 = icmp eq ptr %i.bjm, null
  br i1 %.not.i.i.i.i.i.i357, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjk, i64 24
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !55
  %i.bjp = ptrtoint ptr %i.bjo to i64
  %i.bjq = ptrtoint ptr %i.bjm to i64
  %i.bjr = sub i64 %i.bjp, %i.bjq
  call void @_ZdlPvm(ptr noundef nonnull %i.bjm, i64 noundef %i.bjr) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.iu, %bb.it
  %i.bjs = add i32 %.0.i3.i.i, -1
  %i.bjt = and i32 %i.bjs, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bjt, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i358, label %bb.it, !llvm.loop !7

._crit_edge.i.i358:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i359 = icmp eq i64 %indvars.iv.next.i.i, %i.bjd
  br i1 %.not.i.i.i359, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !8

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i358
  %.pr.i = load i32, ptr %i.biv, align 4, !tbaa !257 ; 2 uses
  %i.bju = icmp eq i32 %.pr.i, 0
  br i1 %i.bju, label %_ZN4llvm8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit, label %bb.iv

bb.iv:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i
  %i.bjv = load ptr, ptr %31, align 8, !tbaa !255
  %i.bjw = zext i32 %.pr.i to i64                 ; 2 uses
  %i.bjx = shl nuw nsw i64 %i.bjw, 5
  %i.bjy = add nuw nsw i64 %i.bjw, 31
  %i.bjz = lshr i64 %i.bjy, 3
  %i.bka = and i64 %i.bjz, 1073741820
  %i.bkb = add nuw nsw i64 %i.bka, %i.bjx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bjv, i64 noundef %i.bkb, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit

_ZN4llvm8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %.not.i.i.i360 = icmp eq ptr %.sroa.0576.0.lcssa, null
  br i1 %.not.i.i.i360, label %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EED2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZN4llvm8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit
  %i.bkc = ptrtoint ptr %.sroa.0576.0.lcssa to i64
  %i.bkd = sub i64 %.sroa.21.0.lcssa, %i.bkc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0576.0.lcssa, i64 noundef %i.bkd) #25
  br label %_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_14EdgeESaIS1_EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit, %bb.iw
  ret void

bb.ix:                                            ; preds = %.lr.ph839, %._crit_edge836
  %.sroa.0507.0838 = phi ptr [ %.sroa.0576.0.lcssa, %.lr.ph839 ], [ %i.bsh, %._crit_edge836 ] ; 5 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %.sroa.0507.0838, i64 24 ; 3 uses
  %i.bkf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorImSaImEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.bke)
  %.fca.0.extract.i361 = extractvalue { ptr, i8 } %i.bkf, 0 ; 3 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i361, i64 8 ; 4 uses
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !304 ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i361, i64 16 ; 4 uses
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !304 ; 2 uses
  %i.bkk = icmp eq ptr %i.bkh, %i.bkj
  br i1 %i.bkk, label %bb.iy, label %.lr.ph835

bb.iy:                                            ; preds = %bb.ix
  %i.bkl = load i64, ptr %i.bke, align 8, !tbaa !668 ; 8 uses
  %i.bkm = load ptr, ptr %0, align 8, !tbaa !175, !noalias !669 ; 3 uses
  %i.bkn = load ptr, ptr %i.kn, align 8, !tbaa !176, !noalias !669 ; 2 uses
  %i.bko = load i32, ptr %i.ko, align 4, !tbaa !177, !noalias !669 ; 4 uses
  %i.bkp = icmp eq i32 %i.bko, 0
  br i1 %i.bkp, label %.loopexit.i.i.i.i362, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bkq = add i32 %i.bko, -1                     ; 2 uses
  %i.bkr = mul i64 %i.bkl, -4658895280553007687   ; 2 uses
  %i.bks = lshr i64 %i.bkr, 31
  %i.bkt = xor i64 %i.bks, %i.bkr
  %i.bku = trunc i64 %i.bkt to i32
  %i.bkv = and i32 %i.bkq, %i.bku                 ; 3 uses
  %i.bkw = zext i32 %i.bkv to i64                 ; 2 uses
  %i.bkx = lshr i64 %i.bkw, 5
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bkn, i64 %i.bkx
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !170, !noalias !670
  %i.bla = and i32 %i.bkv, 31
  %i.blb = lshr i32 %i.bkz, %i.bla
  %i.blc = trunc i32 %i.blb to i1
  br i1 %i.blc, label %.lr.ph.i.i.i.i.i369, label %.loopexit.i.i.i.i362, !prof !171

.lr.ph.i.i.i.i.i369:                              ; preds = %bb.iz, %bb.ja
  %i.bld = phi i64 [ %i.blj, %bb.ja ], [ %i.bkw, %bb.iz ]
  %.017.i.i.i.i.i370 = phi i32 [ %i.bli, %bb.ja ], [ %i.bkv, %bb.iz ]
  %i.ble = getelementptr inbounds nuw [16 x i8], ptr %i.bkm, i64 %i.bld ; 2 uses
  %i.blf = load i64, ptr %i.ble, align 8, !tbaa !164, !noalias !670
  %i.blg = icmp eq i64 %i.bkl, %i.blf
  br i1 %i.blg, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.loopexit.i.i371, label %bb.ja, !prof !172

bb.ja:                                            ; preds = %.lr.ph.i.i.i.i.i369
  %i.blh = add nuw i32 %.017.i.i.i.i.i370, 1
  %i.bli = and i32 %i.blh, %i.bkq                 ; 3 uses
  %i.blj = zext i32 %i.bli to i64                 ; 2 uses
  %i.blk = lshr i64 %i.blj, 5
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.bkn, i64 %i.blk
  %i.blm = load i32, ptr %i.bll, align 4, !tbaa !170, !noalias !670
  %i.bln = and i32 %i.bli, 31
  %i.blo = lshr i32 %i.blm, %i.bln
  %i.blp = trunc i32 %i.blo to i1
  br i1 %i.blp, label %.lr.ph.i.i.i.i.i369, label %.loopexit.i.i.i.i362, !prof !173

.loopexit.i.i.i.i362:                             ; preds = %bb.ja, %bb.iz, %bb.iy
  %i.blq = zext i32 %i.bko to i64                 ; 2 uses
  %i.blr = getelementptr inbounds nuw [16 x i8], ptr %i.bkm, i64 %i.blq
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.i.i363

_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.loopexit.i.i371: ; preds = %.lr.ph.i.i.i.i.i369
  %.pre.i.i372 = zext i32 %i.bko to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.i.i363

_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.i.i363: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.loopexit.i.i371, %.loopexit.i.i.i.i362
  %.pre-phi.i.i364 = phi i64 [ %.pre.i.i372, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.loopexit.i.i371 ], [ %i.blq, %.loopexit.i.i.i.i362 ]
  %.lcssa.sink.i.i.i.i365 = phi ptr [ %i.ble, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.loopexit.i.i371 ], [ %i.blr, %.loopexit.i.i.i.i362 ] ; 2 uses
  %i.bls = getelementptr inbounds nuw [16 x i8], ptr %i.bkm, i64 %.pre-phi.i.i364
  %i.blt = icmp eq ptr %.lcssa.sink.i.i.i.i365, %i.bls
  br i1 %i.blt, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.i.i363
  %i.blu = load ptr, ptr %i.ks, align 8, !tbaa !144, !noalias !671
  br label %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373

bb.jc:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4findERKm.exit.i.i363
  %i.blv = load ptr, ptr %i.kp, align 8, !tbaa !144, !noalias !672 ; 2 uses
  %i.blw = load ptr, ptr %i.kq, align 8, !tbaa !178, !noalias !672
  %i.blx = load ptr, ptr %i.kr, align 8, !tbaa !145, !noalias !672
  %i.bly = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i365, i64 8
  %i.blz = load i32, ptr %i.bly, align 8, !tbaa !180, !noalias !673
  %i.bma = zext i32 %i.blz to i64                 ; 2 uses
  %i.bmb = ptrtoint ptr %i.blv to i64
  %i.bmc = ptrtoint ptr %i.blw to i64
  %i.bmd = sub i64 %i.bmb, %i.bmc
  %i.bme = sdiv exact i64 %i.bmd, 56
  %i.bmf = add nsw i64 %i.bme, %i.bma             ; 5 uses
  %i.bmg = icmp sgt i64 %i.bmf, -1
  br i1 %i.bmg, label %bb.jd, label %bb.jg

bb.jd:                                            ; preds = %bb.jc
  %i.bmh = icmp samesign ult i64 %i.bmf, 9
  br i1 %i.bmh, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.bmi = getelementptr inbounds nuw [56 x i8], ptr %i.blv, i64 %i.bma
  br label %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373

bb.jf:                                            ; preds = %bb.jd
  %i.bmj = udiv i64 %i.bmf, 9
  br label %bb.jh

bb.jg:                                            ; preds = %bb.jc
  %i.bmk = xor i64 %i.bmf, -1
  %i.bml = udiv i64 %i.bmk, 9
  %i.bmm = xor i64 %i.bml, -1
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.bmn = phi i64 [ %i.bmj, %bb.jf ], [ %i.bmm, %bb.jg ] ; 2 uses
  %i.bmo = getelementptr inbounds [8 x i8], ptr %i.blx, i64 %i.bmn
  %i.bmp = load ptr, ptr %i.bmo, align 8, !tbaa !153, !noalias !674
  %.idx.i.i.i.i366 = mul i64 %i.bmn, -504
  %i.bmq = getelementptr i8, ptr %i.bmp, i64 %.idx.i.i.i.i366
  %i.bmr = getelementptr [56 x i8], ptr %i.bmq, i64 %i.bmf
  br label %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373

_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373: ; preds = %bb.jb, %bb.je, %bb.jh
  %.sroa.01.0.i367 = phi ptr [ %i.blu, %bb.jb ], [ %i.bmr, %bb.jh ], [ %i.bmi, %bb.je ] ; 2 uses
  %i.bms = load i8, ptr %i.kt, align 8, !tbaa !266, !range !26, !noundef !27
  %i.bmt = load ptr, ptr %i.ks, align 8, !tbaa !144, !noalias !675
  %i.bmu = icmp eq ptr %.sroa.01.0.i367, %i.bmt
  %spec.select.i368 = select i1 %i.bmu, ptr null, ptr %.sroa.01.0.i367 ; 2 uses
  %i.bmv = ptrtoint ptr %spec.select.i368 to i64
  %i.bmw = and i64 %i.bmv, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.bmx = icmp ult i64 %i.bkl, 10
  br i1 %i.bmx, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i374

.lr.ph.i.i.i374:                                  ; preds = %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373, %bb.jn
  %.029.i.i.i = phi i32 [ %i.bnf, %bb.jn ], [ 1, %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373 ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.bne, %bb.jn ], [ %i.bkl, %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373 ] ; 5 uses
  %i.bmy = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.bmy, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %.lr.ph.i.i.i374
  %i.bmz = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.jj:                                            ; preds = %.lr.ph.i.i.i374
  %i.bna = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.bna, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.bnb = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.jl:                                            ; preds = %bb.jj
  %i.bnc = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.bnc, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.bnd = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.jn:                                            ; preds = %bb.jl
  %i.bne = udiv i64 %.02328.i.i.i, 10000
  %i.bnf = add i32 %.029.i.i.i, 4                 ; 2 uses
  %i.bng = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.bng, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i374, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.jn, %bb.jm, %bb.jk, %bb.ji, %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373
  %.022.i.i.i = phi i32 [ %i.bnd, %bb.jm ], [ %i.bmz, %bb.ji ], [ %i.bnb, %bb.jk ], [ 1, %_ZNK4llvm18ModuleSummaryIndex12getValueInfoEm.exit373 ], [ %i.bnf, %bb.jn ]
  %i.bnh = zext i32 %.022.i.i.i to i64
  store ptr %i.ku, ptr %7, align 8, !tbaa !233, !alias.scope !676
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bnh, i8 noundef signext 0) #24
  %i.bni = load ptr, ptr %7, align 8, !tbaa !236, !alias.scope !676 ; 4 uses
  %i.bnj = icmp ugt i64 %i.bkl, 99
  br i1 %i.bnj, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i375

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.bnk = load i64, ptr %i.kv, align 8, !tbaa !235, !alias.scope !676
  %i.bnl = trunc i64 %i.bnk to i32
  %i.bnm = add i32 %i.bnl, -1
  br label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %.lr.ph.i2.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.bnp, %.lr.ph.i2.i.i ], [ %i.bkl, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bnz, %.lr.ph.i2.i.i ], [ %i.bnm, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bnn = urem i64 %.020.i.i.i, 100
  %i.bno = shl nuw nsw i64 %i.bnn, 1
  %i.bnp = udiv i64 %.020.i.i.i, 100              ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bno ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 1
  %i.bns = load i8, ptr %i.bnr, align 1, !tbaa !202, !noalias !676
  %i.bnt = zext i32 %.01819.i.i.i to i64
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bni, i64 %i.bnt
  store i8 %i.bns, ptr %i.bnu, align 1, !tbaa !202
  %i.bnv = load i8, ptr %i.bnq, align 2, !tbaa !202, !noalias !676
  %i.bnw = add i32 %.01819.i.i.i, -1
  %i.bnx = zext i32 %i.bnw to i64
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bni, i64 %i.bnx
  store i8 %i.bnv, ptr %i.bny, align 1, !tbaa !202
  %i.bnz = add i32 %.01819.i.i.i, -2
  %i.boa = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.boa, label %.lr.ph.i2.i.i, label %._crit_edge.i.i.i375, !llvm.loop !5

._crit_edge.i.i.i375:                             ; preds = %.lr.ph.i2.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %.0.lcssa.i.i.i = phi i64 [ %i.bkl, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.bnp, %.lr.ph.i2.i.i ] ; 3 uses
  %i.bob = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.bob, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %._crit_edge.i.i.i375
  %i.boc = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.bod = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.boc ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 1
  %i.bof = load i8, ptr %i.boe, align 1, !tbaa !202, !noalias !676
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bni, i64 1
  store i8 %i.bof, ptr %i.bog, align 1, !tbaa !202
end_hunk_0
begin_hunk_1_@_ZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEE:bb.a

bb.jw:                                            ; preds = %_ZNK4llvm9ValueInfo4nameEv.exit.i419
  %i.bpr = load ptr, ptr %i.bpk, align 8, !tbaa !202, !noalias !677
  %i.bps = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bpr) #24, !noalias !677
  br label %_ZNK4llvm9ValueInfo4nameEv.exit8.i424

bb.jx:                                            ; preds = %_ZNK4llvm9ValueInfo4nameEv.exit.i419.thread
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpj, i64 8
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !202, !noalias !677
  %i.bpv = insertvalue { ptr, i64 } poison, ptr %i.bpu, 0
  %i.bpw = insertvalue { ptr, i64 } %i.bpv, i64 %.sroa.3.0.copyload.i.i418, 1
  br label %_ZNK4llvm9ValueInfo4nameEv.exit8.i424

_ZNK4llvm9ValueInfo4nameEv.exit8.i424:            ; preds = %bb.jx, %bb.jw
  %.fca.1.insert.merged.i7.i425 = phi { ptr, i64 } [ %i.bps, %bb.jw ], [ %i.bpw, %bb.jx ] ; 2 uses
  %i.bpx = extractvalue { ptr, i64 } %.fca.1.insert.merged.i7.i425, 0 ; 3 uses
  %i.bpy = extractvalue { ptr, i64 } %.fca.1.insert.merged.i7.i425, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %.not.i.i426 = icmp eq ptr %i.bpx, null
  store ptr %i.ky, ptr %8, align 8, !tbaa !233, !alias.scope !679
  br i1 %.not.i.i426, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %_ZNK4llvm9ValueInfo4nameEv.exit8.i424
  store i64 0, ptr %i.kz, align 8, !tbaa !235, !alias.scope !679
  store i8 0, ptr %i.ky, align 8, !tbaa !202, !alias.scope !679
  br label %_ZL17getNodeVisualNameB5cxx11RKN4llvm9ValueInfoE.exit429

bb.jz:                                            ; preds = %_ZNK4llvm9ValueInfo4nameEv.exit8.i424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !679
  store i64 %i.bpy, ptr %i.a, align 8, !tbaa !164, !noalias !679
  %i.bpz = icmp ugt i64 %i.bpy, 15
  br i1 %i.bpz, label %bb.ka, label %._crit_edge.i.i.i.i427

bb.ka:                                            ; preds = %bb.jz
  %i.bqa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.bqa, ptr %8, align 8, !tbaa !236, !alias.scope !679
  %i.bqb = load i64, ptr %i.a, align 8, !tbaa !164, !noalias !679
  store i64 %i.bqb, ptr %i.ky, align 8, !tbaa !202, !alias.scope !679
  br label %._crit_edge.i.i.i.i427

._crit_edge.i.i.i.i427:                           ; preds = %bb.ka, %bb.jz
  %i.bqc = phi ptr [ %i.bqa, %bb.ka ], [ %i.ky, %bb.jz ] ; 2 uses
  switch i64 %i.bpy, label %bb.kc [
    i64 1, label %bb.kb
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i428
  ]

bb.kb:                                            ; preds = %._crit_edge.i.i.i.i427
  %i.bqd = load i8, ptr %i.bpx, align 1, !tbaa !202
  store i8 %i.bqd, ptr %i.bqc, align 1, !tbaa !202
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i428

bb.kc:                                            ; preds = %._crit_edge.i.i.i.i427
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bqc, ptr nonnull align 1 %i.bpx, i64 %i.bpy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i428: ; preds = %bb.kc, %bb.kb, %._crit_edge.i.i.i.i427
  %i.bqe = load i64, ptr %i.a, align 8, !tbaa !164, !noalias !679 ; 2 uses
  store i64 %i.bqe, ptr %i.kz, align 8, !tbaa !235, !alias.scope !679
  %i.bqf = load ptr, ptr %8, align 8, !tbaa !236, !alias.scope !679
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 %i.bqe
  store i8 0, ptr %i.bqg, align 1, !tbaa !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !679
  br label %_ZL17getNodeVisualNameB5cxx11RKN4llvm9ValueInfoE.exit429

_ZL17getNodeVisualNameB5cxx11RKN4llvm9ValueInfoE.exit429: ; preds = %bb.jv, %bb.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i428
  %i.bqh = load ptr, ptr %8, align 8, !tbaa !236
  %i.bqi = load i64, ptr %i.kz, align 8, !tbaa !235
  %i.bqj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bqh, i64 noundef %i.bqi) #24 ; 0 uses
  %i.bqk = load ptr, ptr %8, align 8, !tbaa !236  ; 2 uses
  %i.bql = icmp eq ptr %i.bqk, %i.ky
  br i1 %i.bql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i377: ; preds = %_ZL17getNodeVisualNameB5cxx11RKN4llvm9ValueInfoE.exit429
  %i.bqm = load i64, ptr %i.ky, align 8, !tbaa !202
  %i.bqn = add i64 %i.bqm, 1
  call void @_ZdlPvm(ptr noundef %i.bqk, i64 noundef %i.bqn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i378: ; preds = %_ZL17getNodeVisualNameB5cxx11RKN4llvm9ValueInfoE.exit429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i377
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ke

bb.kd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call fastcc void @_ZL17getNodeVisualNameB5cxx11m(ptr dead_on_unwind noalias writable align 8 %9, i64 noundef %i.bkl)
  %i.bqo = load ptr, ptr %9, align 8, !tbaa !236
  %i.bqp = load i64, ptr %i.kw, align 8, !tbaa !235
  %i.bqq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bqo, i64 noundef %i.bqp) #24 ; 0 uses
  %i.bqr = load ptr, ptr %9, align 8, !tbaa !236  ; 2 uses
  %i.bqs = icmp eq ptr %i.bqr, %i.kx
  br i1 %i.bqs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %bb.kd
  %i.bqt = load i64, ptr %i.kx, align 8, !tbaa !202
  %i.bqu = add i64 %i.bqt, 1
  call void @_ZdlPvm(ptr noundef %i.bqr, i64 noundef %i.bqu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %bb.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ke

bb.ke:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i378
  %i.bqv = load ptr, ptr %i.bp, align 8, !tbaa !229
  %i.bqw = load ptr, ptr %i.br, align 8, !tbaa !230 ; 2 uses
  %i.bqx = ptrtoint ptr %i.bqv to i64
  %i.bqy = ptrtoint ptr %i.bqw to i64
  %i.bqz = sub i64 %i.bqx, %i.bqy
  %i.bra = icmp ult i64 %i.bqz, 26
  br i1 %i.bra, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.brb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.92, i64 noundef 26) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i

bb.kg:                                            ; preds = %bb.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.bqw, ptr noundef nonnull align 1 dereferenceable(26) @.str.92, i64 26, i1 false)
  %i.brc = load ptr, ptr %i.br, align 8, !tbaa !230
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 26
  store ptr %i.brd, ptr %i.br, align 8, !tbaa !230
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i

_ZN4llvm11raw_ostreamlsEPKc.exit15.i:             ; preds = %bb.kg, %bb.kf
  %i.bre = load ptr, ptr %7, align 8, !tbaa !236  ; 2 uses
  %i.brf = icmp eq ptr %i.bre, %i.ku
  br i1 %i.brf, label %_ZL18defineExternalNodeRN4llvm11raw_ostreamEPKcRKNS_9ValueInfoEm.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.i
  %i.brg = load i64, ptr %i.ku, align 8, !tbaa !202
  %i.brh = add i64 %i.brg, 1
  call void @_ZdlPvm(ptr noundef %i.bre, i64 noundef %i.brh) #25
  br label %_ZL18defineExternalNodeRN4llvm11raw_ostreamEPKcRKNS_9ValueInfoEm.exit

_ZL18defineExternalNodeRN4llvm11raw_ostreamEPKcRKNS_9ValueInfoEm.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bri = load ptr, ptr %i.bki, align 8, !tbaa !259 ; 4 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i361, i64 24 ; 3 uses
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !55
  %.not.i.i380 = icmp eq ptr %i.bri, %i.brk
  br i1 %.not.i.i380, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %_ZL18defineExternalNodeRN4llvm11raw_ostreamEPKcRKNS_9ValueInfoEm.exit
  store i64 -1, ptr %i.bri, align 8, !tbaa !164
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bri, i64 8 ; 2 uses
  store ptr %i.brl, ptr %i.bki, align 8, !tbaa !259
  %.pre898 = load ptr, ptr %i.bkg, align 8, !tbaa !304
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ki:                                            ; preds = %_ZL18defineExternalNodeRN4llvm11raw_ostreamEPKcRKNS_9ValueInfoEm.exit
  %i.brm = load ptr, ptr %i.bkg, align 8, !tbaa !54 ; 4 uses
  %i.brn = ptrtoint ptr %i.bri to i64
  %i.bro = ptrtoint ptr %i.brm to i64             ; 2 uses
  %i.brp = sub i64 %i.brn, %i.bro                 ; 5 uses
  %i.brq = icmp eq i64 %i.brp, 9223372036854775800
  br i1 %i.brq, label %bb.kj, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.kj:                                            ; preds = %bb.ki
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ki
  %i.brr = ashr exact i64 %i.brp, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.brr, i64 1)
  %i.brs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.brr ; 2 uses
  %i.brt = icmp ult i64 %i.brs, %i.brr
  %i.bru = call i64 @llvm.umin.i64(i64 %i.brs, i64 1152921504606846975)
  %i.brv = select i1 %i.brt, i64 1152921504606846975, i64 %i.bru ; 3 uses
  %.not.i.i.i.i381 = icmp ne i64 %i.brv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i381)
  %i.brw = shl nuw nsw i64 %i.brv, 3
  %i.brx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.brw) #28 ; 5 uses
  %i.bry = getelementptr inbounds i8, ptr %i.brx, i64 %i.brp ; 2 uses
  store i64 -1, ptr %i.bry, align 8, !tbaa !164
  %i.brz = icmp sgt i64 %i.brp, 0
  br i1 %i.brz, label %bb.kk, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.kk:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.brx, ptr align 8 %i.brm, i64 %i.brp, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.kk, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bry, i64 8 ; 2 uses
  %.not.i17.i.i.i382 = icmp eq ptr %i.brm, null
  br i1 %.not.i17.i.i.i382, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.kl

bb.kl:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.bsb = load ptr, ptr %i.brj, align 8, !tbaa !55
  %i.bsc = ptrtoint ptr %i.bsb to i64
  %i.bsd = sub i64 %i.bsc, %i.bro
  call void @_ZdlPvm(ptr noundef nonnull %i.brm, i64 noundef %i.bsd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.kl, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.brx, ptr %i.bkg, align 8, !tbaa !54
  store ptr %i.bsa, ptr %i.bki, align 8, !tbaa !259
  %i.bse = getelementptr inbounds nuw [8 x i8], ptr %i.brx, i64 %i.brv
  store ptr %i.bse, ptr %i.brj, align 8, !tbaa !55
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.kh
  %70 = phi ptr [ %i.bsa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.brl, %bb.kh ] ; 2 uses
  %71 = phi ptr [ %i.brx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre898, %bb.kh ] ; 2 uses
  %.not606833 = icmp eq ptr %71, %70
  br i1 %.not606833, label %._crit_edge836, label %.lr.ph835

.lr.ph835:                                        ; preds = %bb.ix, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %72 = phi ptr [ %71, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.bkh, %bb.ix ]
  %73 = phi ptr [ %70, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.bkj, %bb.ix ]
  %i.bsf = getelementptr inbounds nuw i8, ptr %.sroa.0507.0838, i64 16
  %i.bsg = getelementptr inbounds nuw i8, ptr %.sroa.0507.0838, i64 8
  br label %bb.km

._crit_edge836:                                   ; preds = %bb.ko, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.bsh = getelementptr inbounds nuw i8, ptr %.sroa.0507.0838, i64 32 ; 2 uses
  %.not605 = icmp eq ptr %i.bsh, %.sroa.11.0.lcssa
  br i1 %.not605, label %._crit_edge840, label %bb.ix

bb.km:                                            ; preds = %.lr.ph835, %bb.ko
  %.sroa.0499.0834 = phi ptr [ %72, %.lr.ph835 ], [ %i.bsn, %bb.ko ] ; 2 uses
  %i.bsi = load i64, ptr %.sroa.0499.0834, align 8, !tbaa !164 ; 2 uses
  %i.bsj = load i64, ptr %.sroa.0507.0838, align 8, !tbaa !680 ; 2 uses
  %.not = icmp eq i64 %i.bsi, %i.bsj
  br i1 %.not, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bsk = load i64, ptr %i.bsf, align 8, !tbaa !681
  %i.bsl = load i64, ptr %i.bke, align 8, !tbaa !668
  %i.bsm = load i32, ptr %i.bsg, align 8, !tbaa !682
  call fastcc void @"_ZZNK4llvm18ModuleSummaryIndex11exportToDotERNS_11raw_ostreamERKNS_8DenseSetImNS_12DenseMapInfoImvEEEEENK3$_1clEPKcmmmmi"(ptr nonnull %1, ptr noundef nonnull @.str.57, i64 noundef %i.bsj, i64 noundef %i.bsk, i64 noundef %i.bsi, i64 noundef %i.bsl, i32 noundef %i.bsm)
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bsn = getelementptr inbounds nuw i8, ptr %.sroa.0499.0834, i64 8 ; 2 uses
  %.not606 = icmp eq ptr %i.bsn, %73
  br i1 %.not606, label %._crit_edge836, label %bb.km
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm18ModuleSummaryIndex34collectDefinedGVSummariesPerModuleISt3mapINS_9StringRefES2_ImPNS_18GlobalValueSummaryESt4lessImESaISt4pairIKmS5_EEES6_IS3_ESaIS8_IKS3_SC_EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !697 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144, !noalias !698 ; 2 uses
  %.not3033 = icmp eq ptr %i.b, %i.d
  br i1 %.not3033, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145, !noalias !697
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146, !noalias !697
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.b

._crit_edge39:                                    ; preds = %_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph38, %_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit
  %.sroa.025.036 = phi ptr [ %i.b, %.lr.ph38 ], [ %.sroa.025.1, %_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit ] ; 4 uses
  %.sroa.10.035 = phi ptr [ %i.h, %.lr.ph38 ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit ] ; 2 uses
  %.sroa.13.034 = phi ptr [ %i.f, %.lr.ph38 ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit ] ; 2 uses
  %i.l = load i64, ptr %.sroa.025.036, align 8, !tbaa !152 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %.not31 = icmp eq ptr %i.n, %i.p
  br i1 %.not31, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt3mapImPN4llvm18GlobalValueSummaryESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 56 ; 2 uses
  %i.r = icmp eq ptr %i.q, %.sroa.10.035
  br i1 %i.r, label %bb.c, label %_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.13.034, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !153  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 504
  br label %_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit

_ZNSt15_Deque_iteratorISt4pairImN4llvm22GlobalValueSummaryInfoEERKS3_PS4_EppEv.exit: ; preds = %._crit_edge, %bb.c
  %.sroa.13.1 = phi ptr [ %i.s, %bb.c ], [ %.sroa.13.034, %._crit_edge ]
  %.sroa.10.1 = phi ptr [ %i.u, %bb.c ], [ %.sroa.10.035, %._crit_edge ]
  %.sroa.025.1 = phi ptr [ %i.t, %bb.c ], [ %i.q, %._crit_edge ] ; 2 uses
  %.not30 = icmp eq ptr %.sroa.025.1, %i.d
  br i1 %.not30, label %._crit_edge39, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZNSt3mapImPN4llvm18GlobalValueSummaryESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit
  %.032 = phi ptr [ %i.ci, %_ZNSt3mapImPN4llvm18GlobalValueSummaryESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit ], [ %i.n, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.032, align 8, !tbaa !75  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !163 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !164 ; 5 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !239  ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not13.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i ], [ %i.x, %.lr.ph ] ; 5 uses
  %.0814.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i ], [ %i.j, %.lr.ph ]
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !164 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i.i.i.i.i) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !163
  %i.aa = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.aa           ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ab = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i
  br i1 %i.ab, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ac = icmp slt i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i, %.thread.i.i.i.i.i.i.i
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i, %.thread.i.i.i.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i.i ], [ 16, %.thread.i.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0814.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i.i ], [ %.015.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.015.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i ] ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !303 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !695

_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEE11lower_boundERSC_.exit.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i
  %i.ae = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.ae, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEE11lower_boundERSC_.exit.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !164 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i, i64 %.sroa.2.0.copyload.i) ; 2 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.af, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ag, align 8, !tbaa !163
  %i.ah = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #26
  %.fr.i.i.i.i = freeze i32 %i.ah                 ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i

.thread.i.i.i.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %bb.d
  %i.ai = icmp ult i64 %.sroa.2.0.copyload.i, %.sroa.2.0.copyload.i.i
  br i1 %i.ai, label %.critedge.i, label %_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEEixEOS1_.exit

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.aj = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.aj, label %.critedge.i, label %_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEEixEOS1_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i, %.thread.i.i.i.i, %_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEE11lower_boundERSC_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i12.i = phi ptr [ %i.j, %.lr.ph ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEE11lower_boundERSC_.exit.i ], [ %.19.i.i.i.i, %.thread.i.i.i.i ]
  %i.ak = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 3 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.al, align 8, !tbaa !163
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !164
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !240
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !241
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i64 0, ptr %i.aq, align 8, !tbaa !242
  %i.ar = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St3mapImPNS0_18GlobalValueSummaryESt4lessImESaIS2_IKmS6_EEEESt10_Select1stISD_ES7_IS1_ESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i12.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al) ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 5 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %.not.i.i.i = icmp ne ptr %i.as, null
  %i.au = icmp eq ptr %i.at, %i.j
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.au
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !164 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !164 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.av, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !163
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !163
  %i.ax = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i = freeze i32 %i.ax             ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.ay = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.ay, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.thread.i.i.i.i.i.i
  %i.az = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  %i.ba = select i1 %i.az, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i ], [ %i.ba, %bb.g ], [ 0, %.thread.i.i.i.i.i.i ]
  %i.bb = icmp slt i32 %.1.i.i.i.i.i.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i, %bb.e
  %i.bc = phi i1 [ %i.bb, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bc, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #24
  %i.bd = load i64, ptr %i.k, align 8, !tbaa !242
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.k, align 8, !tbaa !242
  br label %_ZNSt3mapIN4llvm9StringRefES_ImPNS0_18GlobalValueSummaryESt4lessImESaISt4pairIKmS3_EEES4_IS1_ESaIS6_IKS1_SA_EEEixEOS1_.exit

end_hunk_1
