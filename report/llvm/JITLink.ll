Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/JITLink?download=true
inline.NumInlined: 3592
inline.NumDeleted: 1662
begin_hunk_0_@_ZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink9LinkGraph4dumpERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %3 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %4 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %.sroa.5.i.i26.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %5 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %6 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %7 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %8 = alloca %"class.llvm::DenseMap.69", align 8 ; 11 uses
  %9 = alloca %"class.llvm::iterator_range.71", align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.std::vector.46", align 8   ; 9 uses
  %11 = alloca %"class.llvm::iterator_range", align 8 ; 11 uses
  %12 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %13 = alloca %"class.llvm::formatv_object.13", align 8 ; 11 uses
  %14 = alloca %"class.llvm::formatv_object.109", align 8 ; 11 uses
  %15 = alloca %"class.llvm::formatv_object.109", align 8 ; 11 uses
  %16 = alloca %"class.llvm::formatv_object.114", align 8 ; 11 uses
  %17 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 61 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 11
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.38, i64 noundef 11) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.e, ptr noundef nonnull align 1 dereferenceable(11) @.str.38, i64 11, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  store ptr %i.l, ptr %i.d, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %1, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.n, i64 noundef %i.p) #26 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.39, i64 noundef 12) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) @.str.39, i64 12, i1 false)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

_ZN4llvm11raw_ostreamlsEPKc.exit82:               ; preds = %bb.d, %bb.e
  %.0.i.i81 = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i81, ptr noundef %i.ad, i64 noundef %i.af) #26 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 2
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull @.str.40, i64 noundef 2) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  store i16 2601, ptr %i.ak, align 1
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

_ZN4llvm11raw_ostreamlsEPKc.exit85:               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.71") align 8 %9, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %.sroa.0526.0.copyload = load ptr, ptr %9, align 8 ; 2 uses
  %.sroa.7528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.7528.0.copyload = load ptr, ptr %.sroa.7528.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.8531.0.copyload = load ptr, ptr %.sroa.8531.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.9534.0.copyload = load ptr, ptr %.sroa.9534.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.sroa.10539.0.copyload = load ptr, ptr %.sroa.10539.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.11544.0.copyload = load ptr, ptr %.sroa.11544.0..sroa_idx, align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 112
  %.sroa.0522.0.copyload = load ptr, ptr %i.as, align 8 ; 2 uses
  %.sroa.4524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4524.0.copyload = load ptr, ptr %.sroa.4524.0..sroa_idx, align 8 ; 2 uses
  %i.at = icmp ne ptr %.sroa.0526.0.copyload, %.sroa.0522.0.copyload
  %i.au = icmp ne ptr %.sroa.11544.0.copyload, %.sroa.4524.0.copyload
  %.not3.i660 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %.not3.i660, label %.lr.ph666, label %._crit_edge

.lr.ph666:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit85
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 104
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.20552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %.sroa.20552.0.copyload = load ptr, ptr %.sroa.20552.0..sroa_idx, align 8
  %.sroa.18549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 88
  %.sroa.18549.0.copyload = load ptr, ptr %.sroa.18549.0..sroa_idx, align 8
  %i.av = ptrtoint ptr %.sroa.7528.0.copyload to i64
  %i.aw = ptrtoint ptr %.sroa.8531.0.copyload to i64 ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 24                ; 2 uses
  %i.az = add nsw i64 %i.ay, 31
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bb = load ptr, ptr %8, align 8, !tbaa !297, !noalias !300
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !303, !noalias !300 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !304, !noalias !300 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !305, !noalias !300
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = zext i32 %i.bf to i64                   ; 4 uses
  %.idx957 = shl nuw nsw i64 %i.bj, 5             ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.bf, 0
  %or.cond = select i1 %i.bi, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge670, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bk = add nuw nsw i64 %i.bj, 31
  %i.bl = lshr i64 %i.bk, 5                       ; 2 uses
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !113, !noalias !306 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.bo = icmp eq i64 %i.bl, 1
  br i1 %i.bo, label %._crit_edge670, label %.lr.ph1028.a

.lr.ph.i.i.i:                                     ; preds = %.lr.ph1028.a
  %i.bp = add nuw nsw i64 %i.br, 1                ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bl
  br i1 %i.bq, label %._crit_edge670, label %.lr.ph1028.a, !llvm.loop !309

.lr.ph1028.a:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.br = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !113, !noalias !306 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !309

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph1028.a
  %i.bv = shl i64 %i.br, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit: ; preds = %bb.h, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bv, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.bm, %bb.h ], [ %i.bt, %._crit_edge.i.loopexit.i.i ]
  %i.bw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.bx = shl nuw nsw i32 %i.bw, 5
  %.idx956.a = zext nneg i32 %i.bx to i64
  %i.by = or disjoint i64 %.012.lcssa.i.i.i, %.idx956.a ; 2 uses
  %.not667 = icmp eq i64 %i.by, %.idx957
  br i1 %.not667, label %._crit_edge670, label %.lr.ph669

.lr.ph669:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit
  %i.bz = add nuw nsw i64 %i.bj, 31
  %i.ca = lshr i64 %i.bz, 5                       ; 2 uses
  br label %bb.t

bb.i:                                             ; preds = %.lr.ph666, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.11544.0665 = phi ptr [ %.sroa.11544.0.copyload, %.lr.ph666 ], [ %.sroa.11544.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 2 uses
  %.sroa.18549.0664 = phi ptr [ %.sroa.18549.0.copyload, %.lr.ph666 ], [ %.sroa.18549.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 6 uses
  %.sroa.0526.0663 = phi ptr [ %.sroa.0526.0.copyload, %.lr.ph666 ], [ %.sroa.0526.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 5 uses
  %.sroa.22.0662 = phi ptr [ %.sroa.22.0.copyload, %.lr.ph666 ], [ %.sroa.22.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.20552.0661 = phi ptr [ %.sroa.20552.0.copyload, %.lr.ph666 ], [ %.sroa.20552.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %i.cb = load ptr, ptr %.sroa.11544.0665, align 8, !tbaa !181 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !60
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !138
  %i.ce = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ce, 0 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !310 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !313
  %.not.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.cb, ptr %i.ch, align 8, !tbaa !181
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !310
  br label %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !314 ; 4 uses
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.l, label %_ZNKSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #28
  unreachable

_ZNKSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #29 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store ptr %i.cb, ptr %i.cx, align 8, !tbaa !181
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.m, label %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !313
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #27
  br label %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !314
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !310
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !313
  br label %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.j, %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.11544.0665, i64 8
  %i.df = ptrtoint ptr %.sroa.18549.0664 to i64
  %i.dg = ptrtoint ptr %.sroa.20552.0661 to i64   ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 3                 ; 2 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = sub i64 %i.dj, %i.dg
  %i.dl = ashr exact i64 %i.dk, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.dl, %i.di
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit

bb.o:                                             ; preds = %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE9push_backERKS3_.exit
  %i.dm = add nsw i64 %i.di, 31
  %i.dn = lshr i64 %i.dm, 5                       ; 2 uses
  %i.do = lshr i64 %i.dl, 5                       ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0662, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113, !noalias !315
  %i.dr = trunc i64 %i.dl to i32
  %i.ds = and i32 %i.dr, 31
  %i.dt = shl nsw i32 -1, %i.ds
  %i.du = and i32 %i.dq, %i.dt                    ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.o
  %i.dw = add nuw nsw i64 %i.do, 1                ; 2 uses
  %i.dx = icmp eq i64 %i.dw, %i.dn
  br i1 %i.dx, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph1025.a

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph1025.a
  %i.dy = add i64 %i.ea, 1                        ; 2 uses
  %i.dz = icmp eq i64 %i.dy, %i.dn
  br i1 %i.dz, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph1025.a, !llvm.loop !172

.lr.ph1025.a:                                     ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.ea = phi i64 [ %i.dy, %.lr.ph.i.i.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0662, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !113, !noalias !315 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !172

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph1025.a, %bb.o
  %.012.lcssa.i.i.i.i = phi i64 [ %i.do, %bb.o ], [ %i.ea, %.lr.ph1025.a ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.du, %bb.o ], [ %i.ec, %.lr.ph1025.a ]
  %i.ee = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.ef = zext nneg i32 %i.ee to i64
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 8
  %i.eg = getelementptr i8, ptr %.sroa.20552.0661, i64 %.idx.i.i.i.i
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %i.ef
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE9push_backERKS3_.exit, %._crit_edge.i.i.i.i
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.18549.0664, %_ZNSt6vectorIPN4llvm7jitlink6SymbolESaIS3_EE9push_backERKS3_.exit ], [ %i.eh, %._crit_edge.i.i.i.i ], [ %.sroa.18549.0664, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.18549.0664, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.0526.0663, %.sroa.10539.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0526.0663, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !221, !noalias !315 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !158, !noalias !318
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 76
  %i.en = load i32, ptr %i.em, align 4, !tbaa !167, !noalias !318
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eo
  %i.eq = icmp eq ptr %storemerge16.i.i.i.i, %i.ep
  br i1 %i.eq, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.0526.1650 = phi ptr [ %storemerge16.i.i.i.i376, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.0526.0663, %.lr.ph.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0526.1650, i64 24
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.es, %i.aw
  %i.eu = sdiv exact i64 %i.et, 24                ; 3 uses
  %.not.i.i.i.i375 = icmp ult i64 %i.eu, %i.ay
  br i1 %.not.i.i.i.i375, label %bb.p, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.p:                                             ; preds = %.lr.ph
  %i.ev = lshr i64 %i.eu, 5                       ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9534.0.copyload, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !113, !noalias !315
  %i.ey = trunc i64 %i.eu to i32
  %i.ez = and i32 %i.ey, 31
  %i.fa = shl nsw i32 -1, %i.ez
  %i.fb = and i32 %i.ex, %i.fa                    ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i.i.i.i382.preheader, label %._crit_edge.i.i.i.i378

.lr.ph.i.i.i.i382.preheader:                      ; preds = %bb.p
  %i.fd = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %i.fe = icmp eq i64 %i.fd, %i.ba
  br i1 %i.fe, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph1026

.lr.ph.i.i.i.i382:                                ; preds = %.lr.ph1026
  %i.ff = add i64 %i.fh, 1                        ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %i.ba
  br i1 %i.fg, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph1026, !llvm.loop !327

.lr.ph1026:                                       ; preds = %.lr.ph.i.i.i.i382.preheader, %.lr.ph.i.i.i.i382
  %i.fh = phi i64 [ %i.ff, %.lr.ph.i.i.i.i382 ], [ %i.fd, %.lr.ph.i.i.i.i382.preheader ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9534.0.copyload, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !113, !noalias !315 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i.i.i.i382, label %._crit_edge.i.i.i.i378, !llvm.loop !327

._crit_edge.i.i.i.i378:                           ; preds = %.lr.ph1026, %bb.p
  %.012.lcssa.i.i.i.i379 = phi i64 [ %i.ev, %bb.p ], [ %i.fh, %.lr.ph1026 ]
  %.0.lcssa.i.i.i.i380 = phi i32 [ %i.fb, %bb.p ], [ %i.fj, %.lr.ph1026 ]
  %i.fl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i380, i1 true)
  %i.fm = zext nneg i32 %i.fl to i64
  %.idx.i.i.i.i381 = mul i64 %.012.lcssa.i.i.i.i379, 768
  %i.fn = getelementptr i8, ptr %.sroa.8531.0.copyload, i64 %.idx.i.i.i.i381
  %i.fo = getelementptr [24 x i8], ptr %i.fn, i64 %i.fm
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i382, %.lr.ph.i.i.i.i382.preheader, %._crit_edge.i.i.i.i378, %.lr.ph
  %storemerge16.i.i.i.i376 = phi ptr [ %.sroa.7528.0.copyload, %.lr.ph ], [ %i.fo, %._crit_edge.i.i.i.i378 ], [ %.sroa.7528.0.copyload, %.lr.ph.i.i.i.i382.preheader ], [ %.sroa.7528.0.copyload, %.lr.ph.i.i.i.i382 ] ; 5 uses
  %.not.i.i377 = icmp eq ptr %storemerge16.i.i.i.i376, %.sroa.10539.0.copyload
  br i1 %.not.i.i377, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i376, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !221, !noalias !328 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !158, !noalias !331 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !166, !noalias !331 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 76
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !167, !noalias !331 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !168, !noalias !331
  %i.fz = icmp eq i32 %i.fy, 0
  %i.ga = zext i32 %i.fw to i64                   ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ga ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.fw, 0
  %or.cond.i.i.i.i.i = select i1 %i.fz, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = add nuw nsw i64 %i.ga, 31
  %i.gd = lshr i64 %i.gc, 5                       ; 2 uses
  %i.ge = load i32, ptr %i.fu, align 4, !tbaa !113, !noalias !340 ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.r
  %i.gg = icmp eq i64 %i.gd, 1
  br i1 %i.gg, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph1027.a

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph1027.a
  %i.gh = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %i.gi = icmp eq i64 %i.gh, %i.gd
  br i1 %i.gi, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph1027.a, !llvm.loop !172

.lr.ph1027.a:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gj = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !113, !noalias !340 ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !172

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph1027.a
  %i.gn = shl i64 %i.gj, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i, %bb.r
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.r ], [ %i.gn, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.ge, %bb.r ], [ %i.gl, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.go = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr i8, ptr %i.fs, i64 %.012.lcssa.i.i.i.i.i.i.i.i
  %i.gr = getelementptr [8 x i8], ptr %i.gq, i64 %i.gp
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i, %bb.q
  %.sroa.0.0.i = phi ptr [ %i.gr, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.gb, %bb.q ], [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gs = icmp eq ptr %.sroa.0.0.i, %i.gb
  br i1 %i.gs, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit: ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit
  %.sroa.20552.2 = phi ptr [ %.sroa.20552.0661, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.20552.0661, %.lr.ph.i ], [ %i.fs, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.22.2.a = phi ptr [ %.sroa.22.0662, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.22.0662, %.lr.ph.i ], [ %i.fu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.0526.2 = phi ptr [ %.sroa.0526.0663, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.0526.0663, %.lr.ph.i ], [ %storemerge16.i.i.i.i376, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %storemerge16.i.i.i.i376, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ] ; 2 uses
  %.sroa.18549.2 = phi ptr [ %.sroa.18549.0664, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.18549.0664, %.lr.ph.i ], [ %i.gb, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.11544.2 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %storemerge16.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ] ; 2 uses
  %i.gt = icmp ne ptr %.sroa.0526.2, %.sroa.0522.0.copyload
  %i.gu = icmp ne ptr %.sroa.11544.2, %.sroa.4524.0.copyload
  %.not3.i = select i1 %i.gt, i1 true, i1 %i.gu
  br i1 %.not3.i, label %bb.i, label %._crit_edge

._crit_edge670:                                   ; preds = %.lr.ph.i.i.i, %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink6SymbolESaIS4_EEZNS2_9LinkGraph4dumpERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit", %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !219, !noalias !343
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !220, !noalias !343 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !216, !noalias !343 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !348, !noalias !343
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = zext i32 %i.ha to i64                   ; 4 uses
  %.idx961 = mul nuw nsw i64 %i.he, 24            ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.ha, 0
  %or.cond.i = select i1 %i.hd, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %._crit_edge695, label %bb.s

bb.s:                                             ; preds = %._crit_edge670
  %i.hf = add nuw nsw i64 %i.he, 31
  %i.hg = lshr i64 %i.hf, 5                       ; 2 uses
  %i.hh = load i32, ptr %i.gy, align 4, !tbaa !113, !noalias !349 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph.i.i.i.i89.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i89.preheader:                       ; preds = %bb.s
  %i.hj = icmp eq i64 %i.hg, 1
  br i1 %i.hj, label %._crit_edge695, label %.lr.ph1030

.lr.ph.i.i.i.i89:                                 ; preds = %.lr.ph1030
  %i.hk = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %i.hl = icmp eq i64 %i.hk, %i.hg
  br i1 %i.hl, label %._crit_edge695, label %.lr.ph1030, !llvm.loop !327

.lr.ph1030:                                       ; preds = %.lr.ph.i.i.i.i89.preheader, %.lr.ph.i.i.i.i89
  %i.hm = phi i64 [ %i.hk, %.lr.ph.i.i.i.i89 ], [ 1, %.lr.ph.i.i.i.i89.preheader ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !113, !noalias !349 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph.i.i.i.i89, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !327

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph1030
  %i.hq = mul i64 %i.hm, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.s, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i87 = phi i64 [ 0, %bb.s ], [ %i.hq, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i88 = phi i32 [ %i.hh, %bb.s ], [ %i.ho, %._crit_edge.i.loopexit.i.i.i ]
  %i.hr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i88, i1 true)
  %narrow = mul nuw nsw i32 %i.hr, 24
  %.idx960.a = zext nneg i32 %narrow to i64
  %i.hs = add i64 %.012.lcssa.i.i.i.i87, %.idx960.a ; 2 uses
  %.not591671 = icmp eq i64 %i.hs, %.idx961
  br i1 %.not591671, label %._crit_edge695, label %.lr.ph676

.lr.ph676:                                        ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.ht = add nuw nsw i64 %i.he, 31
  %i.hu = lshr i64 %i.ht, 5                       ; 2 uses
  br label %bb.ah

bb.t:                                             ; preds = %.lr.ph669, %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EELb0EEppEv.exit
  %.pn959 = phi i64 [ %i.by, %.lr.ph669 ], [ %i.jz, %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0514.0668 = getelementptr i8, ptr %i.bb, i64 %.pn959 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0514.0668, i64 8
  %.val = load ptr, ptr %i.hv, align 8, !tbaa !352 ; 6 uses
  %i.hw = getelementptr i8, ptr %.sroa.0514.0668, i64 16
  %.val73 = load ptr, ptr %i.hw, align 8, !tbaa !352 ; 6 uses
  %.not.i.i.i.i91 = icmp eq ptr %.val, %.val73
  br i1 %.not.i.i.i.i91, label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink6SymbolESaIS4_EEZNS2_9LinkGraph4dumpERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hx = ptrtoint ptr %.val73 to i64
  %i.hy = ptrtoint ptr %.val to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 2 uses
  %i.ia = ashr exact i64 %i.hz, 3
  %i.ib = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ia, i1 true)
  %i.ic = shl nuw nsw i64 %i.ib, 1
  %i.id = xor i64 %i.ic, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_SI_T0_T1_"(ptr %.val, ptr %.val73, i64 noundef %i.id)
  %i.ie = icmp sgt i64 %i.hz, 128
  br i1 %i.ie, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.if = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_SI_T0_"(ptr %.val, ptr nonnull %i.if)
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.if, %.val73
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink6SymbolESaIS4_EEZNS2_9LinkGraph4dumpERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.je, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.if, %bb.v ] ; 3 uses
  %i.ig = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !181 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.aa ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ii = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !181 ; 3 uses
  %i.ij = load i64, ptr %i.ih, align 8            ; 3 uses
  %i.ik = and i64 %i.ij, 144115188075855871       ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.im = load i64, ptr %i.il, align 8            ; 3 uses
  %i.in = and i64 %i.im, 144115188075855871       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ik, %i.in
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.x, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.w
  %i.io = icmp samesign ult i64 %i.ik, %i.in
  br i1 %i.io, label %bb.aa, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w
  %i.ip = lshr i64 %i.ij, 57
  %i.iq = trunc nuw nsw i64 %i.ip to i8
  %i.ir = and i8 %i.iq, 1                         ; 2 uses
  %i.is = lshr i64 %i.im, 57
  %i.it = trunc nuw nsw i64 %i.is to i8
  %i.iu = and i8 %i.it, 1                         ; 2 uses
  %.not18.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ir, %i.iu
  br i1 %.not18.i.i.i.i.i.i.i.i.i, label %bb.y, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EclIPNS3_6SymbolENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %bb.x
  %i.iv = lshr i64 %i.ij, 58
  %i.iw = trunc nuw nsw i64 %i.iv to i8
  %i.ix = and i8 %i.iw, 3                         ; 2 uses
  %i.iy = lshr i64 %i.im, 58
  %i.iz = trunc nuw nsw i64 %i.iy to i8
  %i.ja = and i8 %i.iz, 3                         ; 2 uses
  %.not19.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ix, %i.ja
  br i1 %.not19.i.i.i.i.i.i.i.i.i, label %bb.z, label %.split8.i.i.i.i.i.i.i

.split8.i.i.i.i.i.i.i:                            ; preds = %bb.y
  %i.jb = icmp samesign ult i8 %i.ix, %i.ja
  br i1 %i.jb, label %bb.aa, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ig, align 8, !tbaa !92 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", label %.split7.i.i.i.i.i.i.i

.split7.i.i.i.i.i.i.i:                            ; preds = %bb.z
  %.sroa.0.0.copyload.i20.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !92 ; 2 uses
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i20.i.i.i.i.i.i.i.i.i, null
  %i.jc = icmp ult ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i20.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = or i1 %.not2.i.i.i.i.i.i.i.i.i, %i.jc
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.aa, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EclIPNS3_6SymbolENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i": ; preds = %bb.x
  %i.jd = icmp samesign ult i8 %i.ir, %i.iu
  br i1 %i.jd, label %bb.aa, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

bb.aa:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EclIPNS3_6SymbolENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i", %.split7.i.i.i.i.i.i.i, %.split8.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  store ptr %i.ii, ptr %.sroa.03.0.i.i.i.i.i.i.i, align 8, !tbaa !181
  br label %bb.w, !llvm.loop !353

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EclIPNS3_6SymbolENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i", %.split7.i.i.i.i.i.i.i, %bb.z, %.split8.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  store ptr %i.ig, ptr %.sroa.03.0.i.i.i.i.i.i.i, align 8, !tbaa !181
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.je, %.val73
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink6SymbolESaIS4_EEZNS2_9LinkGraph4dumpERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !354

bb.ab:                                            ; preds = %bb.u
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_SI_T0_"(ptr %.val, ptr %.val73)
  br label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink6SymbolESaIS4_EEZNS2_9LinkGraph4dumpERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit"

"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink6SymbolESaIS4_EEZNS2_9LinkGraph4dumpERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink6SymbolESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %bb.t, %bb.v, %bb.ab
  %i.jf = add i64 %.pn959, 32
  %i.jg = ashr exact i64 %i.jf, 5                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.jg, %i.bj
  br i1 %.not.i.i, label %bb.ac, label %._crit_edge670

bb.ac:                                            ; preds = %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink6SymbolESaIS4_EEZNS2_9LinkGraph4dumpERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit"
  %i.jh = lshr i64 %i.jg, 5                       ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !113
  %i.jk = trunc nuw i64 %i.jg to i32
  %i.jl = and i32 %i.jk, 31
  %i.jm = shl nsw i32 -1, %i.jl
  %i.jn = and i32 %i.jj, %i.jm                    ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ac
  %i.jp = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %i.jq = icmp eq i64 %i.jp, %i.ca
  br i1 %i.jq, label %._crit_edge670, label %.lr.ph1029.a

.lr.ph.i.i:                                       ; preds = %.lr.ph1029.a
  %i.jr = add i64 %i.jt, 1                        ; 2 uses
  %i.js = icmp eq i64 %i.jr, %i.ca
  br i1 %i.js, label %._crit_edge670, label %.lr.ph1029.a, !llvm.loop !309

.lr.ph1029.a:                                     ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.jt = phi i64 [ %i.jr, %.lr.ph.i.i ], [ %i.jp, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !113 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EELb0EEppEv.exit, !llvm.loop !309

end_hunk_0
begin_hunk_1_@_ZN4llvm7jitlink9LinkGraph4dumpERNS_11raw_ostreamE:bb.a
  %i.ana = select i1 %.not600, ptr @.str.67, ptr @.str.66
  %i.anb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i345, ptr noundef nonnull %i.ana, i64 noundef %i.amr) #26 ; 2 uses
  %.phi.trans.insert746 = getelementptr inbounds nuw i8, ptr %i.anb, i64 32
  %.pre747 = load ptr, ptr %.phi.trans.insert746, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit351

bb.fa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit346
  br i1 %.not600, label %_ZN4llvm11raw_ostreamlsEPKc.exit351, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.amv, ptr noundef nonnull align 1 dereferenceable(20) @.str.66, i64 20, i1 false)
  %i.anc = load ptr, ptr %i.amu, align 8, !tbaa !48
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 20 ; 2 uses
  store ptr %i.and, ptr %i.amu, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit351

_ZN4llvm11raw_ostreamlsEPKc.exit351:              ; preds = %bb.ez, %bb.fa, %bb.fb
  %i.ane = phi ptr [ %.pre747, %bb.ez ], [ %i.and, %bb.fb ], [ %i.amv, %bb.fa ] ; 2 uses
  %.0.i.i350 = phi ptr [ %i.anb, %bb.ez ], [ %.0.i.i345, %bb.fb ], [ %.0.i.i345, %bb.fa ] ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %.0.i.i350, i64 24
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !44
  %i.anh = icmp eq ptr %i.ang, %i.ane
  br i1 %i.anh, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit351
  %i.ani = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i350, ptr noundef nonnull @.str.47, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit355

bb.fd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit351
  %i.anj = getelementptr inbounds nuw i8, ptr %.0.i.i350, i64 32 ; 2 uses
  store i8 10, ptr %i.ane, align 1
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !48
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 1
  store ptr %i.anl, ptr %i.anj, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit355

_ZN4llvm11raw_ostreamlsEPKc.exit355:              ; preds = %bb.fc, %bb.fd
  %i.anm = add i64 %.pn970, 16
  %i.ann = ashr exact i64 %i.anm, 4               ; 3 uses
  %.not.i.i.i356 = icmp ult i64 %i.ann, %i.akc
  br i1 %.not.i.i.i356, label %bb.fe, label %_ZN4llvm11raw_ostreamlsEPKc.exit367

bb.fe:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit355
  %i.ano = lshr i64 %i.ann, 5                     ; 3 uses
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.ano
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !113
  %i.anr = trunc nuw i64 %i.ann to i32
  %i.ans = and i32 %i.anr, 31
  %i.ant = shl nsw i32 -1, %i.ans
  %i.anu = and i32 %i.anq, %i.ant                 ; 2 uses
  %i.anv = icmp eq i32 %i.anu, 0
  br i1 %i.anv, label %.lr.ph.i.i.i362.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit

.lr.ph.i.i.i362.preheader:                        ; preds = %bb.fe
  %i.anw = add nuw nsw i64 %i.ano, 1              ; 2 uses
  %i.anx = icmp eq i64 %i.anw, %i.ake
  br i1 %i.anx, label %_ZN4llvm11raw_ostreamlsEPKc.exit367, label %.lr.ph1045

.lr.ph.i.i.i362:                                  ; preds = %.lr.ph1045
  %i.any = add i64 %i.aoa, 1                      ; 2 uses
  %i.anz = icmp eq i64 %i.any, %i.ake
  br i1 %i.anz, label %_ZN4llvm11raw_ostreamlsEPKc.exit367, label %.lr.ph1045, !llvm.loop !207

.lr.ph1045:                                       ; preds = %.lr.ph.i.i.i362.preheader, %.lr.ph.i.i.i362
  %i.aoa = phi i64 [ %i.any, %.lr.ph.i.i.i362 ], [ %i.anw, %.lr.ph.i.i.i362.preheader ] ; 3 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.aoa
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !113 ; 2 uses
  %i.aod = icmp eq i32 %i.aoc, 0
  br i1 %i.aod, label %.lr.ph.i.i.i362, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit, !llvm.loop !207

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit: ; preds = %.lr.ph1045, %bb.fe
  %.012.lcssa.i.i.i359 = phi i64 [ %i.ano, %bb.fe ], [ %i.aoa, %.lr.ph1045 ]
  %.0.lcssa.i.i.i360 = phi i32 [ %i.anu, %bb.fe ], [ %i.aoc, %.lr.ph1045 ]
  %i.aoe = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i360, i1 true)
  %.idx.i.i.i361 = shl i64 %.012.lcssa.i.i.i359, 9
  %i.aof = shl nuw nsw i32 %i.aoe, 4
  %.idx969 = zext nneg i32 %i.aof to i64
  %i.aog = or disjoint i64 %.idx.i.i.i361, %.idx969 ; 2 uses
  %.not599 = icmp eq i64 %i.aog, %.idx597
  br i1 %.not599, label %_ZN4llvm11raw_ostreamlsEPKc.exit367, label %bb.eu

_ZN4llvm7jitlink9LinkGraph16external_symbolsEv.exit.thread: ; preds = %.lr.ph.i.i.i.i314, %.lr.ph.i.i.i.i314.preheader, %_ZN4llvm11raw_ostreamlsEPKc.exit299, %_ZN4llvm7jitlink9LinkGraph16external_symbolsEv.exit.thread587, %_ZN4llvm7jitlink9LinkGraph16external_symbolsEv.exit
  %i.aoh = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.aoi = load ptr, ptr %i.d, align 8, !tbaa !48 ; 2 uses
  %i.aoj = ptrtoint ptr %i.aoh to i64
  %i.aok = ptrtoint ptr %i.aoi to i64
  %i.aol = sub i64 %i.aoj, %i.aok
  %i.aom = icmp ult i64 %i.aol, 7
  br i1 %i.aom, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %_ZN4llvm7jitlink9LinkGraph16external_symbolsEv.exit.thread
  %i.aon = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.64, i64 noundef 7) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit367

bb.fg:                                            ; preds = %_ZN4llvm7jitlink9LinkGraph16external_symbolsEv.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aoi, ptr noundef nonnull align 1 dereferenceable(7) @.str.64, i64 7, i1 false)
  %i.aoo = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 7
  store ptr %i.aop, ptr %i.d, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit367

_ZN4llvm11raw_ostreamlsEPKc.exit367:              ; preds = %.lr.ph.i.i.i.i331, %_ZN4llvm11raw_ostreamlsEPKc.exit355, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit, %.lr.ph.i.i.i362.preheader, %.lr.ph.i.i.i362, %_ZN4llvm7jitlink9LinkGraph16external_symbolsEv.exit334, %bb.fg, %bb.ff
  %.not.i.i.i368 = icmp eq ptr %.sroa.0502.0.lcssa863872, null
  br i1 %.not.i.i.i368, label %_ZNSt6vectorIPN4llvm7jitlink7SectionESaIS3_EED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit367
  %i.aoq = ptrtoint ptr %.sroa.0502.0.lcssa863872 to i64
  %i.aor = sub i64 %.sroa.13507.0.lcssa865871, %i.aoq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0502.0.lcssa863872, i64 noundef %i.aor) #27
  br label %_ZNSt6vectorIPN4llvm7jitlink7SectionESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4llvm7jitlink7SectionESaIS3_EED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit367, %bb.fh
  %i.aos = load i32, ptr %i.be, align 4, !tbaa !304 ; 2 uses
  %i.aot = icmp eq i32 %i.aos, 0
  br i1 %i.aot, label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt6vectorIPN4llvm7jitlink7SectionESaIS3_EED2Ev.exit
  %i.aou = load ptr, ptr %8, align 8, !tbaa !297
  %i.aov = load ptr, ptr %i.bc, align 8, !tbaa !303
  %i.aow = zext i32 %i.aos to i64
  %i.aox = add nuw nsw i64 %i.aow, 31
  %i.aoy = lshr i64 %i.aox, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i371, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i371 ] ; 3 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %indvars.iv.i.i
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !113 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.apa, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i371, label %.lr.ph.i.i369

.lr.ph.i.i369:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.apb = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.fi

bb.fi:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i369
  %.0.i3.i.i = phi i32 [ %i.apa, %.lr.ph.i.i369 ], [ %i.apo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.apc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.apd = or disjoint i32 %i.apc, %i.apb
  %i.ape = zext i32 %i.apd to i64
  %i.apf = getelementptr inbounds nuw [32 x i8], ptr %i.aou, i64 %i.ape ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !314 ; 3 uses
  %.not.i.i.i.i.i.i370 = icmp eq ptr %i.aph, null
  br i1 %.not.i.i.i.i.i.i370, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.api = getelementptr inbounds nuw i8, ptr %i.apf, i64 24
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !313
  %i.apk = ptrtoint ptr %i.apj to i64
  %i.apl = ptrtoint ptr %i.aph to i64
  %i.apm = sub i64 %i.apk, %i.apl
  call void @_ZdlPvm(ptr noundef nonnull %i.aph, i64 noundef %i.apm) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.fj, %bb.fi
  %i.apn = add i32 %.0.i3.i.i, -1
  %i.apo = and i32 %i.apn, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.apo, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i371, label %bb.fi, !llvm.loop !504

._crit_edge.i.i371:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i372 = icmp eq i64 %indvars.iv.next.i.i, %i.aoy
  br i1 %.not.i.i.i372, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !505

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i371
  %.pr.i = load i32, ptr %i.be, align 4, !tbaa !304 ; 2 uses
  %i.app = icmp eq i32 %.pr.i, 0
  br i1 %i.app, label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit.i
  %i.apq = load ptr, ptr %8, align 8, !tbaa !297
  %i.apr = zext i32 %.pr.i to i64                 ; 2 uses
  %i.aps = shl nuw nsw i64 %i.apr, 5
  %i.apt = add nuw nsw i64 %i.apr, 31
  %i.apu = lshr i64 %i.apt, 3
  %i.apv = and i64 %i.apu, 1073741820
  %i.apw = add nuw nsw i64 %i.apv, %i.aps
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.apq, i64 noundef %i.apw, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS1_6SymbolESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm7jitlink7SectionESaIS3_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit.i, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219, !noalias !506 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220, !noalias !506 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216, !noalias !506 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !348, !noalias !506
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 14 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !113, !noalias !511 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !327

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !113, !noalias !511 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !327

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !221, !noalias !514 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !158, !noalias !517 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !166, !noalias !517 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 76
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !167, !noalias !517 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !168, !noalias !517
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %.idx295 = shl nuw nsw i64 %i.al, 3             ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx295
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !113, !noalias !526 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader.a, label %.lr.ph307

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader.a, label %.lr.ph307, !llvm.loop !172

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !113, !noalias !526 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !172

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph307
  %3 = shl i64 %i.at, 8
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d, %._crit_edge.i.loopexit.i.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %3, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.d ], [ %i.av, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %4 = shl nuw nsw i32 %i.ax, 3
  %.idx294 = zext nneg i32 %4 to i64
  %5 = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i, %.idx294 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %5
  %6 = icmp eq i64 %5, %.idx295
  br i1 %6, label %.lr.ph.preheader.a, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.a
  %.in = add nuw nsw i64 %i.j, 31
  %7 = lshr i64 %.in, 5                           ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader.a ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !113
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %7
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %7
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !327

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !113 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !327

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !221, !noalias !529 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !158, !noalias !532 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !166, !noalias !532 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !167, !noalias !532 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !168, !noalias !532
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !113, !noalias !541 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !172

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !113, !noalias !541 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !172

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %bb.a, %.lr.ph.i.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ay, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %2, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ad, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.af, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.z, %.lr.ph.i.a ], [ %i.k, %.lr.ph ], [ %i.k, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %.sroa.8183.0..sroa_idx, align 1
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 1, ptr %.sroa.8198.0..sroa_idx, align 1
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm7jitlinklsERNS_11raw_ostreamERKNS0_17SymbolLookupFlagsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !544
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.i, 14
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.68, i64 noundef 14) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.f, ptr noundef nonnull align 1 dereferenceable(14) @.str.68, i64 14, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  store ptr %i.m, ptr %i.e, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.n = icmp ult i64 %i.i, 22
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.69, i64 noundef 22) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.f, ptr noundef nonnull align 1 dereferenceable(22) @.str.69, i64 22, i1 false)
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 22
  store ptr %i.q, ptr %i.e, align 8, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi ptr [ %0, %bb.g ], [ %i.k, %bb.c ], [ %0, %bb.d ], [ %i.o, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm7jitlink30JITLinkAsyncLookupContinuation6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm7jitlink14JITLinkContextD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN4llvm7jitlink14JITLinkContextD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm7jitlink14JITLinkContext28shouldAddDefaultTargetPassesERKNS_6TripleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK4llvm7jitlink14JITLinkContext15getMarkLivePassERKNS_6TripleE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::unique_function") align 8 captures(none) initializes((0, 40)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #9 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm7jitlink14JITLinkContext16modifyPassConfigERNS0_9LinkGraphERNS0_17PassConfigurationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #9 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !546
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink18markAllSymbolsLiveERNS0_9LinkGraphE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.71", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.71") align 8 %2, ptr noundef nonnull align 8 dereferenceable(312) %1)
  %.sroa.015.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.1024.0.copyload = load ptr, ptr %.sroa.1024.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.1128.0.copyload = load ptr, ptr %.sroa.1128.0..sroa_idx, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.013.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.sroa.414.0.copyload = load ptr, ptr %.sroa.414.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ne ptr %.sroa.015.0.copyload, %.sroa.013.0.copyload
  %i.c = icmp ne ptr %.sroa.1128.0.copyload, %.sroa.414.0.copyload
  %.not3.i63 = select i1 %i.b, i1 true, i1 %i.c
  br i1 %.not3.i63, label %.lr.ph69, label %_ZN4llvm5ErrorD2Ev.exit

.lr.ph69:                                         ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8
  %i.d = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.e = ptrtoint ptr %.sroa.8.0.copyload to i64  ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = add nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5                         ; 2 uses
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store ptr null, ptr %0, align 8, !tbaa !546
  ret void

bb.b:                                             ; preds = %.lr.ph69, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.015.068 = phi ptr [ %.sroa.015.0.copyload, %.lr.ph69 ], [ %.sroa.015.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 5 uses
  %.sroa.22.067 = phi ptr [ %.sroa.22.0.copyload, %.lr.ph69 ], [ %.sroa.22.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.20.066 = phi ptr [ %.sroa.20.0.copyload, %.lr.ph69 ], [ %.sroa.20.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.18.065 = phi ptr [ %.sroa.18.0.copyload, %.lr.ph69 ], [ %.sroa.18.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 6 uses
  %.sroa.1128.064 = phi ptr [ %.sroa.1128.0.copyload, %.lr.ph69 ], [ %.sroa.1128.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.1128.064, align 8, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = or i64 %i.l, 1152921504606846976
  store i64 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.1128.064, i64 8
  %i.o = ptrtoint ptr %.sroa.18.065 to i64
  %i.p = ptrtoint ptr %.sroa.20.066 to i64        ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.s, %i.p
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.u, %i.r
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit

bb.c:                                             ; preds = %bb.b
  %i.v = add nsw i64 %i.r, 31
  %i.w = lshr i64 %i.v, 5                         ; 2 uses
  %i.x = lshr i64 %i.u, 5                         ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.067, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !113, !noalias !549
  %i.aa = trunc i64 %i.u to i32
  %i.ab = and i32 %i.aa, 31
  %i.ac = shl nsw i32 -1, %i.ab
  %i.ad = and i32 %i.z, %i.ac                     ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.af = add nuw nsw i64 %i.x, 1                 ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.w
  br i1 %i.ag, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph100

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph100
  %i.ah = add i64 %i.aj, 1                        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.w
  br i1 %i.ai, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph100, !llvm.loop !172

end_hunk_1
