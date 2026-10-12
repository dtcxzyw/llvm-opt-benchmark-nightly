Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Core?download=true
inline.NumInlined: 14102
inline.NumDeleted: 5976
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv:bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !229  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !227
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !197  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !243  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !241
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !242
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !197 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !254 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.ai, -1
  %i.aj = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.aj, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.am = add i32 %.0.i3.i.i.i.i, -1
  %i.an = and i32 %i.am, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.c, !llvm.loop !28

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !29

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.r, align 4, !tbaa !243 ; 2 uses
  %i.ao = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.ao, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !241
  %i.aq = zext i32 %.pr.i.i.i to i64              ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #35
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i, %bb.e
  %i.aw = add i32 %.0.i3, -1
  %i.ax = and i32 %i.aw, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3588

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !3589

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE15_M_range_insertINS0_6detail12DenseSetImplIS2_NS0_8DenseMapIS2_NS6_13DenseSetEmptyENS0_12DenseMapInfoIS2_vEENS6_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SM_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef byval(%"class.llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr, llvm::DenseMap<llvm::orc::SymbolStringPtr, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<llvm::orc::SymbolStringPtr>, llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>>::DenseSetIterator") align 8 %2, ptr noundef byval(%"class.llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr, llvm::DenseMap<llvm::orc::SymbolStringPtr, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<llvm::orc::SymbolStringPtr>, llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>>::DenseSetIterator") align 8 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !3603   ; 8 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !3603   ; 6 uses
  %.not187 = icmp eq ptr %i.a, %i.b
  br i1 %.not187, label %_ZSt4copyIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SN_SM_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0148.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0148.sroa.2.0.copyload = load ptr, ptr %.sroa.0148.sroa.2.0..sroa_idx, align 8 ; 19 uses
  %.sroa.0148.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0148.sroa.3.0.copyload = load ptr, ptr %.sroa.0148.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0148.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0148.sroa.4.0.copyload = load ptr, ptr %.sroa.0148.sroa.4.0..sroa_idx, align 8 ; 12 uses
  %i.c = ptrtoint ptr %.sroa.0148.sroa.2.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.0148.sroa.3.0.copyload to i64 ; 7 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 7 uses
  %i.g = add nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ag, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i ] ; 6 uses
  %storemerge16.i.i.i46.i = phi ptr [ %i.a, %.lr.ph.i ], [ %storemerge16.i.i.i.i, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i46.i, i64 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.l, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.l, 5                         ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !197
  %i.p = trunc i64 %i.l to i32
  %i.q = and i32 %i.p, 31
  %i.r = shl nsw i32 -1, %i.q
  %i.s = and i32 %i.o, %i.r                       ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.u = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.h
  br i1 %i.v, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i, label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.w = add i64 %i.y, 1                          ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.h
  br i1 %i.x, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !197 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !7

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ %i.y, %.lr.ph ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ %i.aa, %.lr.ph ]
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.ad = zext nneg i32 %i.ac to i64
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 8
  %i.ae = getelementptr i8, ptr %.sroa.0148.sroa.3.0.copyload, i64 %.idx.i.i.i.i
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge.i.i.i.i, %bb.b
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.0148.sroa.2.0.copyload, %bb.b ], [ %i.af, %._crit_edge.i.i.i.i ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ag = add nuw i64 %.07.i, 1                   ; 6 uses
  %.not.i = icmp eq ptr %storemerge16.i.i.i.i, %i.b
  br i1 %.not.i, label %_ZSt10__distanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit, label %bb.b, !llvm.loop !3590

_ZSt10__distanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !248
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !435 ; 17 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %.not.not = icmp ugt i64 %i.ao, %.07.i
  br i1 %.not.not, label %bb.d, label %bb.s

bb.d:                                             ; preds = %_ZSt10__distanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit
  %i.ap = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.aq = sub i64 %i.am, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3                 ; 3 uses
  %i.as = icmp ugt i64 %i.ar, %i.ag
  br i1 %i.as, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.at = xor i64 %.07.i, -1
  %.idx = shl nsw i64 %i.at, 3
  %i.au = getelementptr inbounds i8, ptr %i.ak, i64 %.idx ; 6 uses
  %i.av = and i64 %.07.i, 2305843009213693951     ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check313 = icmp samesign ult i64 %i.av, 3
  br i1 %min.iters.check313, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph314

vector.ph314:                                     ; preds = %bb.e
  %n.vec315 = and i64 %i.aw, 4611686018427387900  ; 3 uses
  %i.ax = shl i64 %n.vec315, 3                    ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.au, i64 %i.ax
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.ba = shl i64 %index317, 3                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.ak, i64 %i.ba ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.au, i64 %i.ba ; 3 uses
  %i.bb = getelementptr i8, ptr %next.gep319, i64 16 ; 2 uses
  %wide.load320 = load <2 x ptr>, ptr %next.gep319, align 8, !tbaa !255
  %wide.load321 = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !255
  %i.bc = getelementptr i8, ptr %next.gep318, i64 16
  store <2 x ptr> %wide.load320, ptr %next.gep318, align 8, !tbaa !255
  store <2 x ptr> %wide.load321, ptr %i.bc, align 8, !tbaa !255
  store <2 x ptr> splat (ptr null), ptr %next.gep319, align 8, !tbaa !255
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !255
  %index.next322 = add nuw i64 %index317, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.bd, label %middle.block323, label %vector.body316, !llvm.loop !3591

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.aw, %n.vec315
  br i1 %cmp.n324, label %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e, %middle.block323
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ak, %bb.e ], [ %i.ay, %middle.block323 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.au, %bb.e ], [ %i.az, %middle.block323 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.be = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !255
  store ptr %i.be, ptr %.09.i.i.i.i.i, align 8, !tbaa !255
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !255
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3592

_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block323
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ag
  store ptr %i.bh, ptr %i.aj, align 8, !tbaa !435
  %i.bi = ptrtoint ptr %i.au to i64
  %i.bj = sub i64 %i.bi, %i.ap                    ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 3                 ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i33.preheader, label %.lr.ph.i.i.i.i.i34.preheader

.lr.ph.i.i.i.i.i33.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.bm = and i64 %i.bj, 8
  %lcmp.mod.not = icmp eq i64 %i.bm, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i33.prol

.lr.ph.i.i.i.i.i33.prol:                          ; preds = %.lr.ph.i.i.i.i.i33.preheader
  %i.bn = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !254 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %notsub.i.i.i.i.i.i.i.i.prol = add i64 %i.bq, -1
  %i.br = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.prol, -32
  br i1 %i.br, label %bb.f, label %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.prol

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i33.prol
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.prol

_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.prol: ; preds = %bb.f, %.lr.ph.i.i.i.i.i33.prol
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !255
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !255
  store ptr null, ptr %i.bn, align 8, !tbaa !255
  %i.bv = add nsw i64 %i.bk, -1
  br label %.lr.ph.i.i.i.i.i33.prol.loopexit

.lr.ph.i.i.i.i.i33.prol.loopexit:                 ; preds = %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i33.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i33.preheader ], [ %i.bv, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i33.preheader ], [ %i.bo, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i33.preheader ], [ %i.bn, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.prol ]
  %i.bw = icmp eq i64 %i.bj, 8
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i34.preheader, label %.lr.ph.i.i.i.i.i33

.lr.ph.i.i.i.i.i33:                               ; preds = %.lr.ph.i.i.i.i.i33.prol.loopexit, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1
  %.010.i.i.i.i.i = phi i64 [ %i.cn, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i33.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.cg, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i33.prol.loopexit ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.cf, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i33.prol.loopexit ] ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !254 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.ca, -1
  %i.cb = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.cb, label %bb.g, label %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i

_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i33
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !255
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !255
  store ptr null, ptr %i.bx, align 8, !tbaa !255
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !254 ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %notsub.i.i.i.i.i.i.i.i.1 = add i64 %i.ci, -1
  %i.cj = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.1, -32
  br i1 %i.cj, label %bb.h, label %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1

bb.h:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1

_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1: ; preds = %bb.h, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !255
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !255
  store ptr null, ptr %i.cf, align 8, !tbaa !255
  %i.cn = add nsw i64 %.010.i.i.i.i.i, -2
  %i.co = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.co, label %.lr.ph.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i34.preheader, !llvm.loop !3593

.lr.ph.i.i.i.i.i34.preheader:                     ; preds = %.lr.ph.i.i.i.i.i33.prol.loopexit, %_ZN4llvm3orc15SymbolStringPtraSEOS1_.exit.i.i.i.i.i.1, %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  br label %.lr.ph.i.i.i.i.i34

.lr.ph.i.i.i.i.i34:                               ; preds = %.lr.ph.i.i.i.i.i34.preheader, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cz, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i34.preheader ] ; 3 uses
  %storemerge16.i.i.i57.i.i.i.i.i = phi ptr [ %storemerge16.i.i.i.i.i.i.i.i, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i34.preheader ] ; 2 uses
  %i.cp = load ptr, ptr %.08.i.i.i.i.i, align 8, !tbaa !254 ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %notsub.i.i.i.i.i.i.i.i35 = add i64 %i.cq, -1
  %i.cr = icmp ult i64 %notsub.i.i.i.i.i.i.i.i35, -32
  br i1 %i.cr, label %bb.i, label %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i

_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i34
  %i.cu = load ptr, ptr %storemerge16.i.i.i57.i.i.i.i.i, align 8, !tbaa !254 ; 3 uses
  store ptr %i.cu, ptr %.08.i.i.i.i.i, align 8, !tbaa !254
  %i.cv = ptrtoint ptr %i.cu to i64
  %notsub.i.i2.i.i.i.i.i.i = add i64 %i.cv, -1
  %i.cw = icmp ult i64 %notsub.i.i2.i.i.i.i.i.i, -32
  br i1 %i.cw, label %bb.j, label %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = atomicrmw add ptr %i.cx, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i

_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i57.i.i.i.i.i, i64 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.d
  %i.dd = ashr exact i64 %i.dc, 3                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.dd, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i

bb.k:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i
  %i.de = lshr i64 %i.dd, 5                       ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !197
  %i.dh = trunc i64 %i.dd to i32
  %i.di = and i32 %i.dh, 31
  %i.dj = shl nsw i32 -1, %i.di
  %i.dk = and i32 %i.dg, %i.dj                    ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.k
  %i.dm = add nuw nsw i64 %i.de, 1                ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.h
  br i1 %i.dn, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i, label %.lr.ph306

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph306
  %i.do = add i64 %i.dq, 1                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, %i.h
  br i1 %i.dp, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i, label %.lr.ph306, !llvm.loop !7

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dq = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !197 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !7

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph306, %bb.k
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.de, %bb.k ], [ %i.dq, %.lr.ph306 ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.dk, %bb.k ], [ %i.ds, %.lr.ph306 ]
  %i.du = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.dv = zext nneg i32 %i.du to i64
  %.idx.i.i.i.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i.i.i.i, 8
  %i.dw = getelementptr i8, ptr %.sroa.0148.sroa.3.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i
  %i.dx = getelementptr [8 x i8], ptr %i.dw, i64 %i.dv
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i, %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i
  %storemerge16.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0148.sroa.2.0.copyload, %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i ], [ %i.dx, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %storemerge16.i.i.i.i.i.i.i.i, %i.b
  br i1 %.not.i.i.i.i.i36, label %_ZSt4copyIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SN_SM_.exit, label %.lr.ph.i.i.i.i.i34, !llvm.loop !3594

bb.l:                                             ; preds = %bb.d
  %.not4.i = icmp eq ptr %i.ak, %1                ; 2 uses
  br i1 %.not4.i, label %_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.l, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41
  %.06.i = phi i64 [ %i.dy, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41 ], [ %i.ar, %bb.l ]
  %storemerge16.i.i.i35.i = phi ptr [ %storemerge16.i.i.i.i42, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41 ], [ %i.a, %bb.l ]
  %i.dy = add nsw i64 %.06.i, -1                  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i35.i, i64 8
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.d
  %i.ec = ashr exact i64 %i.eb, 3                 ; 3 uses
  %.not.i.i.i.i40 = icmp ult i64 %i.ec, %i.f
  br i1 %.not.i.i.i.i40, label %bb.m, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41

bb.m:                                             ; preds = %.lr.ph.i38
  %i.ed = lshr i64 %i.ec, 5                       ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !197
  %i.eg = trunc i64 %i.ec to i32
  %i.eh = and i32 %i.eg, 31
  %i.ei = shl nsw i32 -1, %i.eh
  %i.ej = and i32 %i.ef, %i.ei                    ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.i.i.i48.preheader, label %._crit_edge.i.i.i.i44

.lr.ph.i.i.i.i48.preheader:                       ; preds = %bb.m
  %i.el = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.h
  br i1 %i.em, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41, label %.lr.ph303

.lr.ph.i.i.i.i48:                                 ; preds = %.lr.ph303
  %i.en = add i64 %i.ep, 1                        ; 2 uses
  %i.eo = icmp eq i64 %i.en, %i.h
  br i1 %i.eo, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41, label %.lr.ph303, !llvm.loop !7

.lr.ph303:                                        ; preds = %.lr.ph.i.i.i.i48.preheader, %.lr.ph.i.i.i.i48
  %i.ep = phi i64 [ %i.en, %.lr.ph.i.i.i.i48 ], [ %i.el, %.lr.ph.i.i.i.i48.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !197 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %.lr.ph.i.i.i.i48, label %._crit_edge.i.i.i.i44, !llvm.loop !7

._crit_edge.i.i.i.i44:                            ; preds = %.lr.ph303, %bb.m
  %.012.lcssa.i.i.i.i45 = phi i64 [ %i.ed, %bb.m ], [ %i.ep, %.lr.ph303 ]
  %.0.lcssa.i.i.i.i46 = phi i32 [ %i.ej, %bb.m ], [ %i.er, %.lr.ph303 ]
  %i.et = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i46, i1 true)
  %i.eu = zext nneg i32 %i.et to i64
  %.idx.i.i.i.i47 = shl i64 %.012.lcssa.i.i.i.i45, 8
  %i.ev = getelementptr i8, ptr %.sroa.0148.sroa.3.0.copyload, i64 %.idx.i.i.i.i47
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %i.eu
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41: ; preds = %.lr.ph.i.i.i.i48, %.lr.ph.i.i.i.i48.preheader, %._crit_edge.i.i.i.i44, %.lr.ph.i38
  %storemerge16.i.i.i.i42 = phi ptr [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i38 ], [ %i.ew, %._crit_edge.i.i.i.i44 ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i48.preheader ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i48 ] ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit, label %.lr.ph.i38, !llvm.loop !3595

_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41, %bb.l
  %.sroa.0135.0 = phi ptr [ %i.a, %bb.l ], [ %storemerge16.i.i.i.i42, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i41 ] ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %.sroa.0135.0, %i.b
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i51

.lr.ph.i.i.i.i51:                                 ; preds = %_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ga, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i ], [ %i.ak, %_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit ] ; 2 uses
  %storemerge16.i.i.i68.i.i.i.i = phi ptr [ %storemerge16.i.i.i.i.i.i.i, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i ], [ %.sroa.0135.0, %_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit ] ; 2 uses
  %i.ex = load ptr, ptr %storemerge16.i.i.i68.i.i.i.i, align 8, !tbaa !254 ; 3 uses
  store ptr %i.ex, ptr %.09.i.i.i.i, align 8, !tbaa !254
  %i.ey = ptrtoint ptr %i.ex to i64
  %notsub.i.i.i.i.i.i.i.i52 = add i64 %i.ey, -1
  %i.ez = icmp ult i64 %notsub.i.i.i.i.i.i.i.i52, -32
  br i1 %i.ez, label %bb.n, label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i51
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fb = atomicrmw add ptr %i.fa, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i51
  %i.fc = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i68.i.i.i.i, i64 8
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.fd, %i.d
  %i.ff = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ff, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i

bb.o:                                             ; preds = %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRS2_EEvPT_DpOT0_.exit.i.i.i.i
  %i.fg = lshr i64 %i.ff, 5                       ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !197
  %i.fj = trunc i64 %i.ff to i32
  %i.fk = and i32 %i.fj, 31
  %i.fl = shl nsw i32 -1, %i.fk
  %i.fm = and i32 %i.fi, %i.fl                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.o
  %i.fo = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %i.fp = icmp eq i64 %i.fo, %i.h
  br i1 %i.fp, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i, label %.lr.ph304

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph304
  %i.fq = add i64 %i.fs, 1                        ; 2 uses
  %i.fr = icmp eq i64 %i.fq, %i.h
  br i1 %i.fr, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i, label %.lr.ph304, !llvm.loop !7

.lr.ph304:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.fs = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !197 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !7

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph304, %bb.o
  %.012.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.fg, %bb.o ], [ %i.fs, %.lr.ph304 ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.o ], [ %i.fu, %.lr.ph304 ]
  %i.fw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.fx = zext nneg i32 %i.fw to i64
  %.idx.i.i.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i.i.i, 8
  %i.fy = getelementptr i8, ptr %.sroa.0148.sroa.3.0.copyload, i64 %.idx.i.i.i.i.i.i.i
  %i.fz = getelementptr [8 x i8], ptr %i.fy, i64 %i.fx
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRS2_EEvPT_DpOT0_.exit.i.i.i.i
  %storemerge16.i.i.i.i.i.i.i = phi ptr [ %.sroa.0148.sroa.2.0.copyload, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.fz, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i53 = icmp eq ptr %storemerge16.i.i.i.i.i.i.i, %i.b
  br i1 %.not.i.i.i.i53, label %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i51, !llvm.loop !3596

_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit.loopexit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !435
  br label %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit
  %i.gb = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEElEvRT_T0_St18input_iterator_tag.exit ] ; 3 uses
  %i.gc = sub i64 %i.ag, %i.ar
  %i.gd = getelementptr [8 x i8], ptr %i.gb, i64 %i.gc ; 5 uses
  br i1 %.not4.i, label %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit61, label %.lr.ph.i.i.i.i.i56.preheader

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit
  %i.ge = add i64 %i.am, -8
  %i.gf = sub i64 %i.ge, %i.ap                    ; 3 uses
  %i.gg = lshr i64 %i.gf, 3
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gf, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i56.preheader335, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %4 = shl i64 %.07.i, 3
  %5 = add i64 %4, 16
  %i.gi = and i64 %i.gf, -8                       ; 2 uses
  %6 = add i64 %5, %i.gi
  %7 = sub i64 %6, %i.aq
  %scevgep307 = getelementptr i8, ptr %i.gb, i64 %7
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %scevgep308 = getelementptr i8, ptr %i.gj, i64 8
  %bound0 = icmp ult ptr %i.gd, %scevgep308
  %bound1 = icmp ult ptr %1, %scevgep307
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i56.preheader335, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gh, 4611686018427387900     ; 3 uses
  %i.gk = shl i64 %n.vec, 3                       ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gd, i64 %i.gk
  %i.gm = getelementptr i8, ptr %1, i64 %i.gk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gd, i64 %i.gn ; 3 uses
  %next.gep309 = getelementptr i8, ptr %1, i64 %i.gn ; 3 uses
  %i.go = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !254, !alias.scope !3604, !noalias !3605
  store <2 x ptr> splat (ptr null), ptr %i.go, align 8, !tbaa !254, !alias.scope !3604, !noalias !3605
  %i.gp = getelementptr i8, ptr %next.gep309, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep309, align 8, !tbaa !255, !alias.scope !3605
  %wide.load310 = load <2 x ptr>, ptr %i.gp, align 8, !tbaa !255, !alias.scope !3605
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !255, !alias.scope !3604, !noalias !3605
  store <2 x ptr> %wide.load310, ptr %i.go, align 8, !tbaa !255, !alias.scope !3604, !noalias !3605
  store <2 x ptr> splat (ptr null), ptr %next.gep309, align 8, !tbaa !255, !alias.scope !3605
  store <2 x ptr> splat (ptr null), ptr %i.gp, align 8, !tbaa !255, !alias.scope !3605
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !3600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gh, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit61, label %.lr.ph.i.i.i.i.i56.preheader335

.lr.ph.i.i.i.i.i56.preheader335:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i56.preheader, %middle.block
  %.09.i.i.i.i.i57.ph = phi ptr [ %i.gd, %vector.memcheck ], [ %i.gd, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.gl, %middle.block ]
  %.sroa.04.08.i.i.i.i.i58.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.gm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.preheader335, %.lr.ph.i.i.i.i.i56
  %.09.i.i.i.i.i57 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i56 ], [ %.09.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i56.preheader335 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i58 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i56 ], [ %.sroa.04.08.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i56.preheader335 ] ; 3 uses
  store ptr null, ptr %.09.i.i.i.i.i57, align 8, !tbaa !254
  %i.gr = load ptr, ptr %.sroa.04.08.i.i.i.i.i58, align 8, !tbaa !255
  store ptr %i.gr, ptr %.09.i.i.i.i.i57, align 8, !tbaa !255
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i58, align 8, !tbaa !255
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i58, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i57, i64 8
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gs, %i.ak
  br i1 %.not.i.i.i.i.i59, label %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit61, label %.lr.ph.i.i.i.i.i56, !llvm.loop !3601

_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit61: ; preds = %.lr.ph.i.i.i.i.i56, %middle.block, %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEPS4_S4_ET0_T_SH_SG_RSaIT1_E.exit
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ag
  store ptr %i.gu, ptr %i.aj, align 8, !tbaa !435
  %.not6.i.i.i.i.i70 = icmp eq ptr %i.a, %.sroa.0135.0
  br i1 %.not6.i.i.i.i.i70, label %_ZSt4copyIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SN_SM_.exit, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit61, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79
  %.08.i.i.i.i.i72 = phi ptr [ %i.hf, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79 ], [ %1, %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit61 ] ; 3 uses
  %storemerge16.i.i.i57.i.i.i.i.i73 = phi ptr [ %storemerge16.i.i.i.i.i.i.i.i80, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79 ], [ %i.a, %_ZSt22__uninitialized_move_aIPN4llvm3orc15SymbolStringPtrES3_SaIS2_EET0_T_S6_S5_RT1_.exit61 ] ; 2 uses
  %i.gv = load ptr, ptr %.08.i.i.i.i.i72, align 8, !tbaa !254 ; 2 uses
  %i.gw = ptrtoint ptr %i.gv to i64
  %notsub.i.i.i.i.i.i.i.i74 = add i64 %i.gw, -1
  %i.gx = icmp ult i64 %notsub.i.i.i.i.i.i.i.i74, -32
  br i1 %i.gx, label %bb.p, label %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i75

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i71
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gz = atomicrmw sub ptr %i.gy, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i75

_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i75: ; preds = %bb.p, %.lr.ph.i.i.i.i.i71
  %i.ha = load ptr, ptr %storemerge16.i.i.i57.i.i.i.i.i73, align 8, !tbaa !254 ; 3 uses
  store ptr %i.ha, ptr %.08.i.i.i.i.i72, align 8, !tbaa !254
  %i.hb = ptrtoint ptr %i.ha to i64
  %notsub.i.i2.i.i.i.i.i.i76 = add i64 %i.hb, -1
  %i.hc = icmp ult i64 %notsub.i.i2.i.i.i.i.i.i76, -32
  br i1 %i.hc, label %bb.q, label %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i77

bb.q:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i75
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.he = atomicrmw add ptr %i.hd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i77

_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i77: ; preds = %bb.q, %_ZN4llvm3orc15SymbolStringPtr6decRefEv.exit.i.i.i.i.i.i75
  %i.hf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i72, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i57.i.i.i.i.i73, i64 8
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.d
  %i.hj = ashr exact i64 %i.hi, 3                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i78 = icmp ult i64 %i.hj, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i78, label %bb.r, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79

bb.r:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i77
  %i.hk = lshr i64 %i.hj, 5                       ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !197
  %i.hn = trunc i64 %i.hj to i32
  %i.ho = and i32 %i.hn, 31
  %i.hp = shl nsw i32 -1, %i.ho
  %i.hq = and i32 %i.hm, %i.hp                    ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %.lr.ph.i.i.i.i.i.i.i.i87.preheader, label %._crit_edge.i.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i.i87.preheader:               ; preds = %bb.r
  %i.hs = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %i.ht = icmp eq i64 %i.hs, %i.h
  br i1 %i.ht, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79, label %.lr.ph305

.lr.ph.i.i.i.i.i.i.i.i87:                         ; preds = %.lr.ph305
  %i.hu = add i64 %i.hw, 1                        ; 2 uses
  %i.hv = icmp eq i64 %i.hu, %i.h
  br i1 %i.hv, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79, label %.lr.ph305, !llvm.loop !7

.lr.ph305:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i.i87
  %i.hw = phi i64 [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.i87 ], [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i87.preheader ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.sroa.4.0.copyload, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !197 ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %.lr.ph.i.i.i.i.i.i.i.i87, label %._crit_edge.i.i.i.i.i.i.i.i83, !llvm.loop !7

._crit_edge.i.i.i.i.i.i.i.i83:                    ; preds = %.lr.ph305, %bb.r
  %.012.lcssa.i.i.i.i.i.i.i.i84 = phi i64 [ %i.hk, %bb.r ], [ %i.hw, %.lr.ph305 ]
  %.0.lcssa.i.i.i.i.i.i.i.i85 = phi i32 [ %i.hq, %bb.r ], [ %i.hy, %.lr.ph305 ]
  %i.ia = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i85, i1 true)
  %i.ib = zext nneg i32 %i.ia to i64
  %.idx.i.i.i.i.i.i.i.i86 = shl i64 %.012.lcssa.i.i.i.i.i.i.i.i84, 8
  %i.ic = getelementptr i8, ptr %.sroa.0148.sroa.3.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i86
  %i.id = getelementptr [8 x i8], ptr %i.ic, i64 %i.ib
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i79: ; preds = %.lr.ph.i.i.i.i.i.i.i.i87, %.lr.ph.i.i.i.i.i.i.i.i87.preheader, %._crit_edge.i.i.i.i.i.i.i.i83, %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i77
  %storemerge16.i.i.i.i.i.i.i.i80 = phi ptr [ %.sroa.0148.sroa.2.0.copyload, %_ZN4llvm3orc15SymbolStringPtraSERKS1_.exit.i.i.i.i.i77 ], [ %i.id, %._crit_edge.i.i.i.i.i.i.i.i83 ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i87.preheader ], [ %.sroa.0148.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i87 ] ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %storemerge16.i.i.i.i.i.i.i.i80, %.sroa.0135.0
  br i1 %.not.i.i.i.i.i81, label %_ZSt4copyIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SN_SM_.exit, label %.lr.ph.i.i.i.i.i71, !llvm.loop !3594

bb.s:                                             ; preds = %_ZSt10__distanceIN4llvm6detail12DenseSetImplINS0_3orc15SymbolStringPtrENS0_8DenseMapIS4_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS4_vEENS1_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit
  %i.ie = load ptr, ptr %0, align 8, !tbaa !434   ; 7 uses
  %i.if = ptrtoint ptr %i.ie to i64               ; 2 uses
  %i.ig = sub i64 %i.am, %i.if
  %i.ih = ashr exact i64 %i.ig, 3                 ; 4 uses
  %i.ii = sub nsw i64 1152921504606846975, %i.ih
  %.not = icmp ugt i64 %i.ii, %.07.i
  br i1 %.not, label %_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #37
  unreachable

_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.s
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ih, i64 %i.ag)
  %i.ij = add nsw i64 %.sroa.speculated.i, %i.ih  ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ih
  %i.il = tail call i64 @llvm.umin.i64(i64 %i.ij, i64 1152921504606846975)
  %i.im = select i1 %i.ik, i64 1152921504606846975, i64 %i.il ; 3 uses
  %.not.i90 = icmp eq i64 %i.im, 0
  br i1 %.not.i90, label %_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit
  %i.in = shl nuw nsw i64 %i.im, 3
  %i.io = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #39
  br label %_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit, %bb.u
  %i.ip = phi ptr [ %i.io, %bb.u ], [ null, %_ZNKSt6vectorIN4llvm3orc15SymbolStringPtrESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ie, %1
  br i1 %.not9.i.i.i.i.i, label %.lr.ph.i.i.i.i103.preheader, label %.lr.ph.i.i.i.i.i91

.lr.ph.i.i.i.i.i91:                               ; preds = %_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.iw, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ip, %_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.iv, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ie, %_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  %i.iq = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !254 ; 3 uses
  store ptr %i.iq, ptr %.011.i.i.i.i.i, align 8, !tbaa !254
  %i.ir = ptrtoint ptr %i.iq to i64
  %notsub.i.i.i.i.i.i.i.i.i = add i64 %i.ir, -1
  %i.is = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.is, label %bb.v, label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i91
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iu = atomicrmw add ptr %i.it, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i.i91
  %i.iv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.iv, %1
  br i1 %.not.i.i.i.i.i92, label %.lr.ph.i.i.i.i103.preheader, label %.lr.ph.i.i.i.i.i91, !llvm.loop !65

.lr.ph.i.i.i.i103.preheader:                      ; preds = %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit
  %.09.i.i.i.i104.ph = phi ptr [ %i.ip, %_ZNSt12_Vector_baseIN4llvm3orc15SymbolStringPtrESaIS2_EE11_M_allocateEm.exit ], [ %i.iw, %_ZSt10_ConstructIN4llvm3orc15SymbolStringPtrEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  br label %.lr.ph.i.i.i.i103

.lr.ph.i.i.i.i103:                                ; preds = %.lr.ph.i.i.i.i103.preheader, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i109
  %.09.i.i.i.i104 = phi ptr [ %i.ka, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i109 ], [ %.09.i.i.i.i104.ph, %.lr.ph.i.i.i.i103.preheader ] ; 2 uses
  %storemerge16.i.i.i68.i.i.i.i105 = phi ptr [ %storemerge16.i.i.i.i.i.i.i110, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i109 ], [ %i.a, %.lr.ph.i.i.i.i103.preheader ] ; 2 uses
  %i.ix = load ptr, ptr %storemerge16.i.i.i68.i.i.i.i105, align 8, !tbaa !254 ; 3 uses
end_hunk_0
