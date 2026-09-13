Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFAcceleratorTable?download=true
inline.NumInlined: 3369
inline.NumDeleted: 1654
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E4growEj:bb.a
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = mul nuw nsw i64 %i.be, 40
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS1_13AbbrevMapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS1_13AbbrevMapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !226
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !228  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !226
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !228
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !108  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.as, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !194
  %i.x = mul i32 %i.w, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.x, %bb.b ], [ %i.af, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.y = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !108
  %i.ac = and i32 %.0.i7, 31                      ; 2 uses
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  %i.af = add i32 %.0.i7, 1
  br i1 %i.ae, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1253

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z ; 2 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.y ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 14, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !195
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !195
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211
  store ptr %i.an, ptr %i.al, align 8, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ao = shl nuw i32 1, %i.ac
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !108
  %i.aq = or i32 %i.ap, %i.ao
  store i32 %i.aq, ptr %i.ag, align 4, !tbaa !108
  %i.ar = add i32 %.0.i19, -1
  %i.as = and i32 %i.ar, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.as, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1254

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS2_13AbbrevMapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1255

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !228
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.at = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !242
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !242
  %i.ax = icmp eq i32 %i.at, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS1_13AbbrevMapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.ay = load ptr, ptr %1, align 8, !tbaa !226
  %i.az = zext i32 %i.at to i64                   ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 40
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS1_13AbbrevMapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS1_13AbbrevMapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_15DWARFDebugNames6AbbrevENS_6detail13DenseSetEmptyENS5_13AbbrevMapInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_14DWARFFormValueELb1EE18growAndEmplaceBackIJRKNS_5dwarf4FormEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DWARFFormValue", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load i16, ptr %1, align 2, !tbaa !146
  store i16 %i.a, ptr %2, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.b, align 2, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %.not.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_14DWARFFormValueELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !63
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14DWARFFormValueELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.l = load i32, ptr %i.e, align 8, !tbaa !63
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !63
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14DWARFFormValueELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14DWARFFormValueELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.o = load ptr, ptr %0, align 8, !tbaa !66
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -48
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ErrorInfoBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.cz, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !1256

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dx, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !243  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !243
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !243
  %.val.i.i.us.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !244
  %.val1.i.i.us.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !244
  %i.ac = icmp ult i64 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !243
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !1257

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.val.val.i.i.us.i.i.i = load i64, ptr %i.t, align 8, !tbaa !244
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !243 ; 2 uses
  %.val.i.i.i.us.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !244
  %i.aj = icmp ult i64 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.aj, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !243
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.al, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !1258

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.am, align 8, !tbaa !243
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.an = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !1259

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bm, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !243 ; 2 uses
  %i.aq = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.au
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !243
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !243
  %.val.i.i.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !244
  %.val1.i.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !244
  %i.ay = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ay, i64 %i.au, i64 %i.as ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !243
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !243
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1257

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !243
  store ptr %i.be, ptr %i.r, align 8, !tbaa !243
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %.val.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !244
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !243 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !244
  %i.bi = icmp ult i64 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bi, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !243
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bk, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !1258

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ap, ptr %i.bl, align 8, !tbaa !243
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bm = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !1259

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_RT0_.exit.i.i" ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !243 ; 2 uses
  %i.bp = load ptr, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !243
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = icmp sgt i64 %i.bs, 2
  br i1 %i.bv, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bw = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.bx = add i64 %i.bw, 2                        ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bx
  %i.bz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bz
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !243
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !243
  %.val.i.i.i.i21.i = load i64, ptr %i.cb, align 8, !tbaa !244
  %.val1.i.i.i.i22.i = load i64, ptr %i.cc, align 8, !tbaa !244
  %i.cd = icmp ult i64 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cd, i64 %i.bz, i64 %i.bx ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !243
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !243
  %i.ch = icmp slt i64 %spec.select.i.i.i23.i, %i.bu
  br i1 %i.ch, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !1257

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.ci = and i64 %i.br, 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ck = add nsw i64 %i.bs, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cl
  br i1 %i.cm, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !243
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !243
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.co, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %.val.val.i.i.i.i14.i = load i64, ptr %i.bo, align 8, !tbaa !244
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !243 ; 2 uses
  %.val.i.i.i.i.i17.i = load i64, ptr %i.ct, align 8, !tbaa !244
  %i.cu = icmp ult i64 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.cu, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !243
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %bb.k, !llvm.loop !1258

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bo, ptr %i.cw, align 8, !tbaa !243
  %i.cx = icmp sgt i64 %i.br, 8
  br i1 %i.cx, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !1260

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.cz, %bb.b ], [ %2, %.lr.ph ]
  %i.cy = phi i64 [ %i.dy, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cz = add nsw i64 %.02752, -1                 ; 3 uses
  %i.da = lshr i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !243 ; 3 uses
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !243 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !244 ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.de, align 8, !tbaa !244 ; 3 uses
  %i.df = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !243 ; 3 uses
  %.val1.i27.i.i = load i64, ptr %i.dg, align 8, !tbaa !244 ; 4 uses
  br i1 %i.df, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dh = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.di = load ptr, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.di, ptr %i.db, align 8, !tbaa !243
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dj = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  %i.dk = load ptr, ptr %.fr29, align 8, !tbaa !243 ; 2 uses
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.dg, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.dk, ptr %i.dc, align 8, !tbaa !243
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dd, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.dk, ptr %i.f, align 8, !tbaa !243
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.dl = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = load ptr, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.dd, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.dm, ptr %i.f, align 8, !tbaa !243
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.dn = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.do = load ptr, ptr %.fr29, align 8, !tbaa !243 ; 2 uses
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.do, ptr %i.dc, align 8, !tbaa !243
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !243
  store ptr %i.do, ptr %i.db, align 8, !tbaa !243
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ds, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %i.dp = load ptr, ptr %.fr29, align 8, !tbaa !243
  %.val1.i.i13.i = load i64, ptr %i.dp, align 8, !tbaa !244 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.ds, %bb.w ] ; 8 uses
  %i.dq = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !243 ; 2 uses
  %.val.i.i14.i = load i64, ptr %i.dq, align 8, !tbaa !244
  %i.dr = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.dr, label %bb.w, label %.preheader.i.i, !llvm.loop !1261

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.dt = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !243 ; 2 uses
  %.val1.i9.i.i = load i64, ptr %i.dt, align 8, !tbaa !244
  %i.du = icmp ult i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.du, label %.preheader.i.i, label %bb.x, !llvm.loop !1262

bb.x:                                             ; preds = %.preheader.i.i
  %i.dv = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dv, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEET_SJ_SJ_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.dt, ptr %.sroa.012.1.i.i, align 8, !tbaa !243
  store ptr %i.dq, ptr %.sroa.0.1.i.i, align 8, !tbaa !243
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !1263

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.cz)
  %i.dw = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dx = sub i64 %i.dw, %i.a                     ; 2 uses
  %i.dy = ashr exact i64 %i.dx, 3                 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 16
  br i1 %i.dz, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !1256

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm15DWARFDebugNames6AbbrevESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_9NameIndex17dumpAbbreviationsERNS2_13ScopedPrinterEE3$_0EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 160, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 160
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm15DWARFDebugNames9NameIndexEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructIN4llvm15DWARFDebugNames9NameIndexEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 11 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN4llvm15DWARFDebugNames9NameIndexEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.09.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.j = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !125
  store <2 x ptr> %i.j, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !125
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !248
  store ptr null, ptr %i.i, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !108
  store i32 %i.m, ptr %i.k, align 8, !tbaa !108
  store i32 0, ptr %i.l, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !108
  %i.q = load i32, ptr %i.o, align 4, !tbaa !108
  store i32 %i.q, ptr %i.n, align 4, !tbaa !108
  store i32 %i.p, ptr %i.o, align 4, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store ptr %i.u, ptr %i.t, align 8, !tbaa !176
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i64 0, ptr %i.v, align 8, !tbaa !177
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store i64 8, ptr %i.w, align 8, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !177
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm15DWARFDebugNames9NameIndexEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 64
  %i.aa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.z) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm15DWARFDebugNames9NameIndexEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm15DWARFDebugNames9NameIndexEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1264

_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.loopexit.i: ; preds = %_ZSt10_ConstructIN4llvm15DWARFDebugNames9NameIndexEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !66
  %.pre2.i = load i32, ptr %i.e, align 8, !tbaa !63
  %i.af = zext i32 %.pre2.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE19moveElementsForGrowEPS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE19moveElementsForGrowEPS2_.exit: ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.loopexit.i
  %i.ag = phi i64 [ %i.af, %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.loopexit.i ], [ 0, %bb.a ]
  %i.ah = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.loopexit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.ag
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE13destroy_rangeEPS2_S4_(ptr noundef %i.ah, ptr noundef %i.ai)
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !27
  %i.ak = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE21takeAllocationForGrowEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE19moveElementsForGrowEPS2_.exit
  call void @free(ptr noundef %i.ak) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE21takeAllocationForGrowEPS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE21takeAllocationForGrowEPS2_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15DWARFDebugNames9NameIndexELb0EE19moveElementsForGrowEPS2_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !66
  %i.am = trunc i64 %i.aj to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.am, ptr %i.an, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !176    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #28
  %.pre = load ptr, ptr %1, align 8, !tbaa !176
  br label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !27
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !27
  store ptr %i.c, ptr %1, align 8, !tbaa !176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !177  ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !177  ; 7 uses
  %.not = icmp ult i64 %i.o, %i.m
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i64 %i.m, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !65

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.b, i64 %i.m, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.g
  %i.r = icmp eq i64 %i.m, 1
  br i1 %i.r, label %bb.j, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.b, align 1, !tbaa !36
  store i8 %i.s, ptr %i.p, align 1, !tbaa !36
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.m, ptr %i.n, align 8, !tbaa !177
  store i64 0, ptr %i.l, align 8, !tbaa !177
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !180
  %i.v = icmp ult i64 %i.u, %i.m
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.n, align 8, !tbaa !177
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.w, i64 noundef %i.m, i64 noundef 1) #28
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.m:                                             ; preds = %bb.k
  %.not32 = icmp eq i64 %i.o, 0
  br i1 %.not32, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.y = icmp sgt i64 %i.o, 1
  br i1 %i.y, label %bb.o, label %bb.p, !prof !65

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.b, i64 %i.o, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.p:                                             ; preds = %bb.n
  %i.z = icmp eq i64 %i.o, 1
  br i1 %i.z, label %bb.q, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

end_hunk_0
