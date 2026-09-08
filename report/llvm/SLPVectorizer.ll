Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69836
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 319
loop-unroll.NumUnrolled: 355
begin_hunk_0_@_ZL14getWidenedTypePN4llvm4TypeEj:bb.a
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.val6.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !653, !noalias !2509
  %i.w = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %.val6.val.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef 1) #31
  store ptr %i.w, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !653
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.z = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE18uninitialized_copyINS_15mapped_iteratorIPKS2_ZL14getWidenedTypeS2_jE3$_0S2_EEPS2_EEvT_SB_T0_.exit.loopexit.i.i.i.i", !llvm.loop !2508

"_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE18uninitialized_copyINS_15mapped_iteratorIPKS2_ZL14getWidenedTypeS2_jE3$_0S2_EEPS2_EEvT_SB_T0_.exit.loopexit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre23.i.i.i.i = load i32, ptr %i.r, align 8, !tbaa !371, !alias.scope !2510
  %.pre26 = load ptr, ptr %2, align 8, !tbaa !359
  br label %"_ZN4llvm13map_to_vectorINS_8ArrayRefIPNS_4TypeEEEZL14getWidenedTypeS3_jE3$_0EEDaOT_OT0_.exit"

"_ZN4llvm13map_to_vectorINS_8ArrayRefIPNS_4TypeEEEZL14getWidenedTypeS3_jE3$_0EEDaOT_OT0_.exit": ; preds = %_ZN4llvm15SmallVectorImplIPNS_4TypeEE7reserveEm.exit.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE18uninitialized_copyINS_15mapped_iteratorIPKS2_ZL14getWidenedTypeS2_jE3$_0S2_EEPS2_EEvT_SB_T0_.exit.loopexit.i.i.i.i"
  %i.ab = phi ptr [ %.pre26, %"_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE18uninitialized_copyINS_15mapped_iteratorIPKS2_ZL14getWidenedTypeS2_jE3$_0S2_EEPS2_EEvT_SB_T0_.exit.loopexit.i.i.i.i" ], [ %i.q, %_ZN4llvm15SmallVectorImplIPNS_4TypeEE7reserveEm.exit.i.i.i.i ]
  %i.ac = phi i32 [ %.pre23.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE18uninitialized_copyINS_15mapped_iteratorIPKS2_ZL14getWidenedTypeS2_jE3$_0S2_EEPS2_EEvT_SB_T0_.exit.loopexit.i.i.i.i" ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_4TypeEE7reserveEm.exit.i.i.i.i ]
  %i.ad = add i32 %i.ac, %i.o                     ; 2 uses
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !371, !alias.scope !2510
  %i.ae = zext i32 %i.ad to i64
  %i.af = call noundef ptr @_ZN4llvm10StructType3getERNS_11LLVMContextENS_8ArrayRefIPNS_4TypeEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr %i.ab, i64 %i.ae, i1 noundef zeroext false) #31
  %i.ag = load ptr, ptr %2, align 8, !tbaa !359   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4llvm13map_to_vectorINS_8ArrayRefIPNS_4TypeEEEZL14getWidenedTypeS3_jE3$_0EEDaOT_OT0_.exit"
  call void @free(ptr noundef %i.ag) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN4llvm13map_to_vectorINS_8ArrayRefIPNS_4TypeEEEZL14getWidenedTypeS3_jE3$_0EEDaOT_OT0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit

bb.g:                                             ; preds = %bb.c
  %i.ai = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef nonnull %0, i32 noundef 1) #31
  br label %_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit

bb.h:                                             ; preds = %.split, %_ZN4llvm14isVectorizedTyEPNS_4TypeE.exit, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = and i32 %i.ak, 255
  %i.am = icmp ne i32 %i.al, 16
  %.not.not9.i = icmp eq ptr %0, null
  %.not.not.i15 = or i1 %.not.not9.i, %i.am
  br i1 %.not.not.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef ptr @_ZN4llvm20toScalarizedStructTyEPNS_10StructTypeE(ptr noundef nonnull %0) #31
  br label %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = and i32 %i.ak, 254
  %spec.select.i.i7.i = icmp eq i32 %i.ao, 18
  br i1 %spec.select.i.i7.i, label %bb.k, label %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !652
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !653
  br label %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit

_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit:         ; preds = %bb.i, %bb.j, %bb.k
  %.1.i16 = phi ptr [ %i.an, %bb.i ], [ %i.ar, %bb.k ], [ %0, %bb.j ] ; 7 uses
  %i.as = tail call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef nonnull %0) #31
  %i.at = mul i32 %i.as, %1                       ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.at to i64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i16, i64 8
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i32 %i.av, 255
  %i.ax = icmp ne i32 %i.aw, 16
  %.not.not11.i = icmp eq ptr %.1.i16, null
  %.not.not.i17 = or i1 %.not.not11.i, %i.ax
  br i1 %.not.not.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit
  %i.ay = tail call noundef ptr @_ZN4llvm20toVectorizedStructTyEPNS_10StructTypeENS_12ElementCountE(ptr noundef nonnull %.1.i16, i64 %.sroa.0.0.insert.ext.i) #31
  br label %_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit

bb.m:                                             ; preds = %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit
  %trunc.i.i = trunc i32 %i.av to i8
  switch i8 %trunc.i.i, label %bb.n [
    i8 7, label %_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit
    i8 9, label %_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit
  ]

bb.n:                                             ; preds = %bb.m
  %.not5.not.i.i = icmp eq i32 %i.at, 1
  br i1 %.not5.not.i.i, label %_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = tail call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef nonnull %.1.i16, i64 %.sroa.0.0.insert.ext.i) #31
  br label %_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit

_ZN4llvm14toVectorizedTyEPNS_4TypeENS_12ElementCountE.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.m, %bb.l, %bb.f, %bb.g
  %.1 = phi ptr [ %i.af, %bb.f ], [ %i.ai, %bb.g ], [ %i.ay, %bb.l ], [ %i.az, %bb.o ], [ %.1.i16, %bb.n ], [ %.1.i16, %bb.m ], [ %.1.i16, %bb.m ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 1, -1) i32 @_ZL16getNumberOfPartsRKN4llvm19TargetTransformInfoEPNS_4TypeES4_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 16
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK4llvm19TargetTransformInfo16getNumberOfPartsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #31 ; 7 uses
  %i.f = icmp ne i32 %i.e, 0
  %.not = icmp ult i32 %i.e, %3
  %or.cond = and i1 %i.f, %.not
  br i1 %or.cond, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef nonnull %1) #31 ; 9 uses
  %i.h = tail call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef %2) #31
  %i.i = load i32, ptr %i.a, align 8              ; 2 uses
  %i.j = and i32 %i.i, 255
  %.not35 = icmp eq i32 %i.j, 16
  br i1 %.not35, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN4llvm20toScalarizedStructTyEPNS_10StructTypeE(ptr noundef nonnull %1) #31
  br label %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %i.i, 254
  %spec.select.i.i7.i = icmp eq i32 %i.l, 18
  br i1 %spec.select.i.i7.i, label %bb.f, label %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !652
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !653
  br label %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit

_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit:         ; preds = %bb.d, %bb.e, %bb.f
  %.1.i = phi ptr [ %i.k, %bb.d ], [ %i.o, %bb.f ], [ %1, %bb.e ] ; 4 uses
  %i.p = tail call fastcc noundef zeroext i1 @_ZL18isValidElementTypePN4llvm4TypeE(ptr noundef %.1.i)
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 255
  %i.t = icmp eq i32 %i.s, 16
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %_ZN4llvm14toScalarizedTyEPNS_4TypeE.exit
  %i.u = icmp ult i32 %i.g, 2
  br i1 %i.u, label %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i32 %i.g, -1
  %i.w = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.v, i1 false)
  %i.x = sub nuw nsw i32 32, %i.w
  %i.y = shl nuw i32 1, %i.x
  br label %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit

bb.j:                                             ; preds = %bb.g
  %i.z = tail call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef nonnull %.1.i, i32 noundef %i.g)
  %i.aa = tail call noundef i32 @_ZNK4llvm19TargetTransformInfo16getNumberOfPartsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.z) #31 ; 4 uses
  %i.ab = icmp ne i32 %i.aa, 0
  %.not.i = icmp ult i32 %i.aa, %i.g
  %or.cond.i = and i1 %i.ab, %.not.i
  br i1 %or.cond.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp ult i32 %i.g, 2
  br i1 %i.ac, label %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add i32 %i.g, -1
  %i.ae = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 false)
  %i.af = sub nuw nsw i32 32, %i.ae
  %i.ag = shl nuw i32 1, %i.af
  br label %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit

bb.m:                                             ; preds = %bb.j
  %i.ah = add i32 %i.g, -1
  %i.ai = udiv i32 %i.ah, %i.aa
  %i.aj = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 false)
  %i.ak = sub nuw nsw i32 32, %i.aj
  %i.al = shl i32 %i.aa, %i.ak
  br label %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit

_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %.1.i31 = phi i32 [ 1, %bb.k ], [ 1, %bb.h ], [ %i.y, %bb.i ], [ %i.ag, %bb.l ], [ %i.al, %bb.m ] ; 2 uses
  %.not27 = icmp ult i32 %i.e, %i.g
  br i1 %.not27, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit
  %i.am = urem i32 %.1.i31, %i.e
  %i.an = udiv exact i32 %.1.i31, %i.e            ; 3 uses
  %.not28 = icmp eq i32 %i.am, 0
  br i1 %.not28, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ao = urem i32 %i.an, %i.h
  %.not29 = icmp eq i32 %i.ao, 0
  br i1 %.not29, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call fastcc noundef zeroext i1 @_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.1.i, i32 noundef %i.an)
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = add i32 %i.g, -1
  %i.ar = udiv i32 %i.aq, %i.an
  %i.as = add nuw i32 %i.ar, 1
  %.not30 = icmp eq i32 %i.as, %i.e
  %. = select i1 %.not30, i32 %i.e, i32 1
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit, %bb.n, %bb.o, %bb.p, %bb.q, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %., %bb.q ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %_ZL29getFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm13slpvectorizer7BoUpSLP26tryToGatherExtractElementsERNS_15SmallVectorImplIPNS_5ValueEEERNS2_IiEEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.249") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5088) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.242", align 8 ; 9 uses
  %i.a = zext i32 %4 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !371
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.d, align 4, !tbaa !372
  %i.e = icmp eq i32 %4, 0                        ; 2 uses
  br i1 %i.e, label %_ZN4llvm11SmallVectorISt8optionalINS_19TargetTransformInfo11ShuffleKindEELj6EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %4, 6
  br i1 %i.f, label %_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.b, i64 noundef %i.a, i64 noundef 8) #31
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %4, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.g = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.b, %bb.b ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  store i8 0, ptr %i.j, align 4, !tbaa !658
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2511

.sink.split.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplISt8optionalINS_19TargetTransformInfo11ShuffleKindEEE7reserveEm.exit.i.i.i
  store i32 %4, ptr %i.c, align 8, !tbaa !371
  br label %_ZN4llvm11SmallVectorISt8optionalINS_19TargetTransformInfo11ShuffleKindEELj6EEC2Em.exit

_ZN4llvm11SmallVectorISt8optionalINS_19TargetTransformInfo11ShuffleKindEELj6EEC2Em.exit: ; preds = %bb.a, %.sink.split.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !371  ; 4 uses
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !372
  %i.q = icmp ugt i32 %i.m, %i.p
  br i1 %i.q, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE13growAndAssignEmi.exit.i, label %bb.c

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE13growAndAssignEmi.exit.i: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_19TargetTransformInfo11ShuffleKindEELj6EEC2Em.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !371
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 4) #31
  %i.t = load ptr, ptr %3, align 8, !tbaa !359
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !380
  store i32 %i.m, ptr %i.r, align 8, !tbaa !371
  br label %_ZN4llvm15SmallVectorImplIiE6assignEmi.exit

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_19TargetTransformInfo11ShuffleKindEELj6EEC2Em.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !359    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !371
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.x) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.y, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.c
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 -1, i64 %.idx.i.i.i, i1 false), !tbaa !380
  %.pre.i29 = load i32, ptr %i.v, align 8, !tbaa !371
  %.pre13.i = zext i32 %.pre.i29 to i64
  br label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre13.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ %i.x, %bb.c ] ; 3 uses
  %i.z = icmp samesign ult i64 %.pre-phi.i, %i.n
  br i1 %i.z, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.i.loopexit, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.i

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.i.loopexit: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.pre-phi.i
  %i.ab = sub nuw nsw i64 %i.n, %.pre-phi.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 -1, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !380
  br label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.i

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.i: ; preds = %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.i.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i
  store i32 %i.m, ptr %i.v, align 8, !tbaa !371
  br label %_ZN4llvm15SmallVectorImplIiE6assignEmi.exit

_ZN4llvm15SmallVectorImplIiE6assignEmi.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE13growAndAssignEmi.exit.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.i
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !371
  %i.ad = tail call noundef i32 @_ZN4llvm13slpvectorizer15getPartNumElemsEjj(i32 noundef %i.ac, i32 noundef %4) #31 ; 3 uses
  br i1 %i.e, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIiE6assignEmi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, %.lr.ph
  %.sroa.037.051 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ] ; 3 uses
  %i.ah = trunc i64 %.sroa.037.051 to i32         ; 2 uses
  %i.ai = mul i32 %i.ad, %i.ah                    ; 2 uses
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !371
  %i.ak = call noundef i32 @_ZN4llvm13slpvectorizer11getNumElemsEjjj(i32 noundef %i.aj, i32 noundef %i.ad, i32 noundef %i.ah) #31 ; 3 uses
  %i.al = add i32 %i.ak, %i.ai
  %i.am = load i32, ptr %i.l, align 8, !tbaa !371
  %i.an = icmp ult i32 %i.am, %i.al
  br i1 %i.an, label %.critedge, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.d
  %i.ao = load ptr, ptr %2, align 8, !tbaa !359
  %i.ap = zext i32 %i.ai to i64                   ; 2 uses
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.ae, ptr %5, align 8, !tbaa !359
  store i32 0, ptr %i.af, align 8, !tbaa !371
  store i32 12, ptr %i.ag, align 4, !tbaa !372
  %i.as = call i64 @_ZNK4llvm13slpvectorizer7BoUpSLP40tryToGatherSingleRegisterExtractElementsENS_15MutableArrayRefIPNS_5ValueEEERNS_15SmallVectorImplIiEE(ptr noundef nonnull align 8 dereferenceable(5088) %1, ptr %i.ar, i64 %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.at = load ptr, ptr %0, align 8, !tbaa !359
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.037.051
  store i64 %i.as, ptr %i.au, align 4
  %i.av = load ptr, ptr %3, align 8, !tbaa !359
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ap ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !359   ; 4 uses
  %i.ay = load i32, ptr %i.af, align 8, !tbaa !371 ; 3 uses
  %i.az = icmp ugt i32 %i.ay, 1
  br i1 %i.az, label %bb.e, label %bb.f, !prof !548

bb.e:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %i.ba = zext i32 %i.ay to i64
  %.idx.i = shl nuw nsw i64 %i.ba, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aw, ptr align 4 %i.ax, i64 %.idx.i, i1 false)
  %.pre = load ptr, ptr %5, align 8, !tbaa !359
  br label %_ZN4llvm4copyIRNS_11SmallVectorIiLj12EEEPiEET0_OT_S5_.exit

bb.f:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %i.bb = icmp eq i32 %i.ay, 1
  br i1 %i.bb, label %bb.g, label %_ZN4llvm4copyIRNS_11SmallVectorIiLj12EEEPiEET0_OT_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %i.ax, align 4, !tbaa !380
  store i32 %i.bc, ptr %i.aw, align 4, !tbaa !380
  br label %_ZN4llvm4copyIRNS_11SmallVectorIiLj12EEEPiEET0_OT_S5_.exit

_ZN4llvm4copyIRNS_11SmallVectorIiLj12EEEPiEET0_OT_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bd = phi ptr [ %.pre, %bb.e ], [ %i.ax, %bb.f ], [ %i.ax, %bb.g ] ; 2 uses
  %.not = icmp ne i32 %i.ak, %i.ad
  %i.be = icmp eq ptr %i.bd, %i.ae
  br i1 %i.be, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm4copyIRNS_11SmallVectorIiLj12EEEPiEET0_OT_S5_.exit
  call void @free(ptr noundef %i.bd) #31
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %_ZN4llvm4copyIRNS_11SmallVectorIiLj12EEEPiEET0_OT_S5_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bf = add nuw nsw i64 %.sroa.037.051, 1       ; 2 uses
  %.not45 = icmp eq i64 %i.bf, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %.not45
  br i1 %or.cond, label %.critedge, label %bb.d

end_hunk_0
begin_hunk_1_@_ZNK4llvm14SmallBitVector3allEv:bb.a
  %i.k = lshr i32 %i.j, 6                         ; 3 uses
  %.not19.i = icmp eq i32 %i.k, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !359
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !13

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !581
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %bb.d, label %_ZNK4llvm9BitVector3allEv.exit

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.o = and i32 %i.j, 63                         ; 2 uses
  %.not12.not.i = icmp eq i32 %i.o, 0
  br i1 %.not12.not.i, label %_ZNK4llvm9BitVector3allEv.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.p = zext nneg i32 %i.k to i64
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !359
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !581
  %i.t = zext nneg i32 %i.o to i64
  %notmask.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %i.s, %notmask.i
  %i.v = icmp eq i64 %i.u, -1
  br label %_ZNK4llvm9BitVector3allEv.exit

_ZNK4llvm9BitVector3allEv.exit:                   ; preds = %bb.e, %bb.f, %._crit_edge.i, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ true, %._crit_edge.i ], [ %i.v, %bb.f ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SmallBitVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !624    ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !359  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #31
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN4llvm9BitVectorD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignElm(ptr noundef nonnull align 8 dereferenceable(5088) %0, ptr %1, i64 %2, ptr noundef %3, i8 %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %6, -1                           ; 2 uses
  %i.b = urem i64 %5, %i.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = lshr i64 %2, 2                           ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.f
  %.051.i.i.i.i.i.i = phi i64 [ %i.n, %bb.f ], [ %i.e, %bb.b ] ; 2 uses
  %.02950.i.i.i.i.i.i = phi ptr [ %i.m, %bb.f ], [ %1, %bb.b ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load ptr, ptr %.02950.i.i.i.i.i.i, align 8, !tbaa !579
  %i.f = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS2_8ArrayRefIPNS2_5ValueEEEPNS2_4TypeENS2_5AlignElmE3$_0EclIPKS7_EEbT_"(ptr nonnull %0, ptr %.029.val39.i.i.i.i.i.i)
  br i1 %i.f, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 8
  %.val37.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !579
  %i.h = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS2_8ArrayRefIPNS2_5ValueEEEPNS2_4TypeENS2_5AlignElmE3$_0EclIPKS7_EEbT_"(ptr nonnull %0, ptr %.val37.i.i.i.i.i.i)
  br i1 %i.h, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 16
  %.val35.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !579
  %i.j = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS2_8ArrayRefIPNS2_5ValueEEEPNS2_4TypeENS2_5AlignElmE3$_0EclIPKS7_EEbT_"(ptr nonnull %0, ptr %.val35.i.i.i.i.i.i)
  br i1 %i.j, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit48", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 24
  %.val33.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !579
  %i.l = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS2_8ArrayRefIPNS2_5ValueEEEPNS2_4TypeENS2_5AlignElmE3$_0EclIPKS7_EEbT_"(ptr nonnull %0, ptr %.val33.i.i.i.i.i.i)
  br i1 %i.l, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit50", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.n = add nsw i64 %.051.i.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.051.i.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !2542

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.m to i64
  %.pre56.i.i.i.i.i.i = sub i64 %i.d, %.pre.i.i.i.i.i.i
  %i.p = ashr exact i64 %.pre56.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi57.i.i.i.i.i.i = phi i64 [ %i.p, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %2, %bb.b ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.m, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %1, %bb.b ] ; 5 uses
  switch i64 %.pre-phi57.i.i.i.i.i.i, label %bb.l [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !579
  %i.q = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS2_8ArrayRefIPNS2_5ValueEEEPNS2_4TypeENS2_5AlignElmE3$_0EclIPKS7_EEbT_"(ptr nonnull %0, ptr %.029.val.i.i.i.i.i.i)
  br i1 %i.q, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.r, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !579
  %i.s = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS2_8ArrayRefIPNS2_5ValueEEEPNS2_4TypeENS2_5AlignElmE3$_0EclIPKS7_EEbT_"(ptr nonnull %0, ptr %.1.val.i.i.i.i.i.i)
  br i1 %i.s, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.t, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !579
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS2_8ArrayRefIPNS2_5ValueEEEPNS2_4TypeENS2_5AlignElmE3$_0EclIPKS7_EEbT_"(ptr nonnull %0, ptr %.2.val.i.i.i.i.i.i)
  br i1 %i.u, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit48": ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit50": ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit48", %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit50", %bb.g, %bb.i, %bb.k, %bb.l
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.i ], [ %i.c, %bb.l ], [ %.2.i.i.i.i.i.i, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.x, %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit50" ], [ %i.v, %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.w, %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit48" ], [ %.02950.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not33 = icmp eq ptr %i.c, %.028.i.i.i.i.i.i
  %i.y = tail call noundef i64 @llvm.abs.i64(i64 %5, i1 true) ; 4 uses
  %i.z = trunc i64 %6 to i32
  %i.aa = tail call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %3, i32 noundef %i.z)
  br i1 %.not33, label %bb.m, label %bb.r

bb.m:                                             ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit"
  %i.ab = icmp ugt i64 %i.y, %6
  br i1 %i.ab, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL25MinProfitableStridedLoads, i64 120), align 8, !tbaa !669
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ugt i64 %6, %i.ad
  br i1 %i.ae, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19MaxProfitableStride, i64 120), align 8, !tbaa !669
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw i64 %6, %i.ag
  %.not28 = icmp ugt i64 %i.y, %i.ah
  br i1 %.not28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = urem i64 %i.y, %6
  %i.aj = udiv exact i64 %i.y, %6
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_ZN4llvm14has_single_bitImvEEbT_.exit, label %bb.q

_ZN4llvm14has_single_bitImvEEbT_.exit:            ; preds = %bb.p
  %i.al = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.aj)
  %i.am = icmp samesign ult i64 %i.al, 2
  %i.an = sub nsw i64 1, %6
  %i.ao = icmp eq i64 %5, %i.an
  %or.cond = or i1 %i.ao, %i.am
  br i1 %or.cond, label %bb.r, label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.old = sub i64 1, %6
  %.old30 = icmp eq i64 %5, %.old
  br i1 %.old30, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %_ZN4llvm14has_single_bitImvEEbT_.exit, %bb.n, %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNKS_13slpvectorizer7BoUpSLP13isStridedLoadES4_PNS_4TypeENS_5AlignElmE3$_0EEbOT_T0_.exit"
  %i.ap = srem i64 %5, %i.a
  %.not29 = icmp eq i64 %i.ap, 0
  br i1 %.not29, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4832
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !584
  %i.as = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo23isLegalStridedLoadStoreEPNS_4TypeENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.aa, i8 %4) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %_ZN4llvm14has_single_bitImvEEbT_.exit, %bb.q, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.r ], [ %i.as, %bb.s ], [ false, %_ZN4llvm14has_single_bitImvEEbT_.exit ], [ false, %bb.q ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo23isLegalStridedLoadStoreEPNS_4TypeENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignERKNS_15SmallVectorImplIjEElS4_RNS1_14StridedPtrInfoE(ptr noundef nonnull align 8 dereferenceable(5088) %0, ptr %1, i64 %2, ptr noundef %3, i8 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SmallVector.278", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !359
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !371
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !372
  %i.d = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.d, label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit.._crit_edge_crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 6
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 8) #31
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !371
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %2, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.f = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.a, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.pre-phi.i.i3.i
  %i.h = sub i64 %2, %.pre-phi.i.i3.i
  %i.i = shl i64 %i.h, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.i, i1 false), !tbaa !581
  br label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit

_ZN4llvm11SmallVectorIlLj6EEC2Em.exit:            ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.j = trunc i64 %2 to i32                      ; 3 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !371
  %i.k = and i64 %2, 4294967295                   ; 3 uses
  %.not126129 = icmp eq i64 %i.k, 0
  br i1 %.not126129, label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit.._crit_edge_crit_edge, label %.lr.ph

_ZN4llvm11SmallVectorIlLj6EEC2Em.exit.._crit_edge_crit_edge: ; preds = %bb.a, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit
  %.pre-phi146 = phi i32 [ %i.j, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit ], [ 0, %bb.a ]
  %.pre = load ptr, ptr %9, align 8, !tbaa !359
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4880
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4824
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit.._crit_edge_crit_edge
  %i.o = phi i64 [ 0, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit.._crit_edge_crit_edge ], [ %i.k, %bb.e ] ; 5 uses
  %.pre-phi145 = phi i32 [ %.pre-phi146, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit.._crit_edge_crit_edge ], [ %i.j, %bb.e ] ; 2 uses
  %i.p = phi ptr [ %.pre, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit.._crit_edge_crit_edge ], [ %i.al, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !581
  %i.s = load i64, ptr %i.p, align 8, !tbaa !581
  %i.t = sub nsw i64 %i.r, %i.s                   ; 3 uses
  %i.u = call fastcc i64 @"_ZN4llvm7find_ifIRNS_10iota_rangeIjEEZNKS_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignERKNS_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0EEDaOT_T0_"(i64 1, i64 %i.o, ptr nonnull %9, i64 %i.t) ; 2 uses
  %.not127 = icmp eq i64 %i.u, %i.o
  %i.v = trunc i64 %i.u to i32
  %spec.select = select i1 %.not127, i32 %.pre-phi145, i32 %i.v ; 7 uses
  %i.w = zext i32 %spec.select to i64             ; 6 uses
  %.not = icmp eq i64 %2, %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4880 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !670
  %i.z = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.y, ptr noundef %3)
  %.fca.0.extract = extractvalue { i64, i8 } %i.z, 0 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0105.0130 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.e ] ; 4 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !371
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %5, align 8, !tbaa !359
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.0105.0130
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !380
  %i.ae = zext i32 %i.ad to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pn = phi i64 [ %i.ae, %bb.d ], [ %.sroa.0105.0130, %bb.c ]
  %.in = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pn
  %i.af = load ptr, ptr %.in, align 8, !tbaa !579
  %i.ag = load ptr, ptr %1, align 8, !tbaa !579
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !670
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !671
  %i.aj = call { i64, i8 } @_ZN4llvm15getPointersDiffEPNS_4TypeEPNS_5ValueES1_S3_RKNS_10DataLayoutERNS_15ScalarEvolutionEbb(ptr noundef %3, ptr noundef %i.ag, ptr noundef %3, ptr noundef %i.af, ptr noundef nonnull align 8 dereferenceable(912) %i.ah, ptr noundef nonnull align 8 dereferenceable(1152) %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #31
  %i.ak = extractvalue { i64, i8 } %i.aj, 0
  %i.al = load ptr, ptr %9, align 8, !tbaa !359   ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.sroa.0105.0130
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !581
  %i.an = add nuw nsw i64 %.sroa.0105.0130, 1     ; 2 uses
  %.not126 = icmp eq i64 %i.an, %i.k
  br i1 %.not126, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %._crit_edge
  %i.ao = urem i64 %2, %i.w
  %i.ap = udiv exact i64 %2, %i.w                 ; 2 uses
  %.not81 = icmp eq i64 %i.ao, 0
  %.not82 = icmp eq i64 %i.t, 1
  %or.cond = select i1 %.not81, i1 %.not82, i1 false
  br i1 %or.cond, label %.thread, label %.critedge

bb.g:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 254
  %spec.select.i = icmp eq i32 %i.as, 18
  br i1 %spec.select.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4824
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !671
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !736, !nonnull !369, !align !655
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.av) #31
  %i.ax = trunc i64 %.fca.0.extract to i32
  %i.ay = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.ax) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.076 = phi ptr [ %3, %bb.g ], [ %i.ay, %bb.h ] ; 2 uses
  %i.az = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignElm(ptr noundef nonnull align 8 dereferenceable(5088) %0, ptr %1, i64 %2, ptr noundef %.076, i8 %4, i64 noundef %6, i64 noundef %i.o)
  br i1 %i.az, label %.critedge86, label %.critedge

.thread:                                          ; preds = %bb.f
  %i.ba = trunc i64 %i.ap to i32                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4824
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !671
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !736, !nonnull !369, !align !655
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.bd) #31
  %i.bf = trunc i64 %.fca.0.extract to i32
  %i.bg = mul i32 %spec.select, %i.bf
  %i.bh = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i32 noundef %i.bg) #31 ; 3 uses
  %i.bi = and i64 %i.ap, 4294967295
  %i.bj = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP13isStridedLoadENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignElm(ptr noundef nonnull align 8 dereferenceable(5088) %0, ptr %1, i64 %2, ptr noundef %i.bh, i8 %4, i64 noundef %6, i64 noundef %i.bi)
  br i1 %i.bj, label %.thread119, label %.critedge

.thread119:                                       ; preds = %.thread
  %i.bk = load ptr, ptr %9, align 8, !tbaa !359   ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.w
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !581
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !581
  %i.bo = sub nsw i64 %i.bm, %i.bn                ; 3 uses
  %i.bp = icmp ugt i64 %2, %i.w
  br i1 %i.bp, label %.lr.ph132, label %.preheader

bb.j:                                             ; preds = %.lr.ph132
  %i.bq = add i32 %.072131, %spec.select          ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = icmp ugt i64 %2, %i.br
  br i1 %i.bs, label %.lr.ph132, label %.lr.ph135.preheader, !llvm.loop !2543

.preheader:                                       ; preds = %.thread119
  br i1 %i.d, label %.critedge86, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.j, %.preheader
  br label %.lr.ph135

.lr.ph132:                                        ; preds = %.thread119, %bb.j
  %i.bt = phi i64 [ %i.br, %bb.j ], [ %i.w, %.thread119 ]
  %.072131 = phi i32 [ %i.bq, %bb.j ], [ %spec.select, %.thread119 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !581
  %i.bw = sub i32 %.072131, %spec.select
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !581
  %i.ca = sub nsw i64 %i.bv, %i.bz
  %.not84 = icmp eq i64 %i.ca, %i.bo
  br i1 %.not84, label %bb.j, label %.critedge

bb.k:                                             ; preds = %.lr.ph135
  %i.cb = add i32 %.071134, %spec.select          ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.not83.not = icmp ugt i64 %2, %i.cc
  br i1 %.not83.not, label %.lr.ph135, label %.critedge86, !llvm.loop !2544

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.k
  %.071134 = phi i32 [ %i.cb, %bb.k ], [ 0, %.lr.ph135.preheader ] ; 3 uses
  %i.cd = add i32 %.071134, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = call fastcc i64 @"_ZN4llvm7find_ifIRNS_10iota_rangeIjEEZNKS_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignERKNS_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0EEDaOT_T0_"(i64 %i.ce, i64 %i.o, ptr nonnull %9, i64 1) ; 2 uses
  %.not.i91 = icmp eq i64 %i.cf, %i.o
  %spec.select.v.i = select i1 %.not.i91, i64 %2, i64 %i.cf
  %spec.select.i92 = trunc i64 %spec.select.v.i to i32
  %i.cg = sub i32 %spec.select.i92, %.071134
  %i.ch = icmp eq i32 %i.cg, %spec.select
  br i1 %i.ch, label %bb.k, label %.critedge

.critedge86:                                      ; preds = %bb.k, %.preheader, %bb.i
  %.077117125 = phi i32 [ %.pre-phi145, %bb.i ], [ %i.ba, %.preheader ], [ %i.ba, %bb.k ]
  %.076118123 = phi ptr [ %.076, %bb.i ], [ %i.bh, %.preheader ], [ %i.bh, %bb.k ]
  %.073 = phi i64 [ %i.t, %bb.i ], [ %i.bo, %.preheader ], [ %i.bo, %bb.k ]
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !670
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !580
  %i.cl = call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ci, ptr noundef %i.ck) #31
  %i.cm = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.cl, i64 noundef %.073, i1 noundef zeroext true, i1 noundef zeroext false) #31
  store ptr %i.cm, ptr %8, align 8, !tbaa !740
  %i.cn = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %.076118123, i32 noundef %.077117125)
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !741
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph132, %.lr.ph135, %.thread, %.critedge86, %bb.i, %bb.f
  %.3 = phi i1 [ false, %.lr.ph135 ], [ false, %bb.f ], [ false, %bb.i ], [ true, %.critedge86 ], [ false, %.thread ], [ false, %.lr.ph132 ]
  %i.cp = load ptr, ptr %9, align 8, !tbaa !359   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.a
  br i1 %i.cq, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.cp) #31
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %.critedge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  ret i1 %.3
}

declare { i64, i8 } @_ZN4llvm15getPointersDiffEPNS_4TypeEPNS_5ValueES1_S3_RKNS_10DataLayoutERNS_15ScalarEvolutionEbb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(912), ptr noundef nonnull align 8 dereferenceable(1152), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @"_ZN4llvm7find_ifIRNS_10iota_rangeIjEEZNKS_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignERKNS_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0EEDaOT_T0_"(i64 %.0.val, i64 %.8.val, ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = sub i64 %.8.val, %.0.val                 ; 2 uses
  %i.b = ashr i64 %i.a, 2                         ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val27.val.i.i.i = load ptr, ptr %0, align 8, !tbaa !359 ; 5 uses
  %i.d = and i64 %i.a, -4
  %i.e = add i64 %i.d, %.0.val
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.080.i.i.i = phi i64 [ %i.b, %.lr.ph.i.i.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.049.079.i.i.i = phi i64 [ %.0.val, %.lr.ph.i.i.i ], [ %i.ac, %bb.f ] ; 7 uses
  %i.f = and i64 %.sroa.049.079.i.i.i, 4294967295
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val27.val.i.i.i, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !581  ; 2 uses
  %i.i = add i64 %.sroa.049.079.i.i.i, 4294967295
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val27.val.i.i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !581
  %i.m = sub nsw i64 %i.h, %i.l
  %.not74.i.i.i = icmp eq i64 %i.m, %1
  br i1 %.not74.i.i.i, label %bb.c, label %"_ZSt7find_ifIN4llvm6detail15SafeIntIteratorIjLb0EEEZNKS0_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS0_8ArrayRefIPNS0_5ValueEEEPNS0_4TypeENS0_5AlignERKNS0_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0ET_SK_SK_T0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %.sroa.049.079.i.i.i, 1          ; 2 uses
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val27.val.i.i.i, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !581  ; 2 uses
  %i.r = sub nsw i64 %i.q, %i.h
  %.not75.i.i.i = icmp eq i64 %i.r, %1
  br i1 %.not75.i.i.i, label %bb.d, label %"_ZSt7find_ifIN4llvm6detail15SafeIntIteratorIjLb0EEEZNKS0_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS0_8ArrayRefIPNS0_5ValueEEEPNS0_4TypeENS0_5AlignERKNS0_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0ET_SK_SK_T0_.exit"

bb.d:                                             ; preds = %bb.c
  %i.s = add i64 %.sroa.049.079.i.i.i, 2          ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val27.val.i.i.i, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !581  ; 2 uses
  %i.w = sub nsw i64 %i.v, %i.q
  %.not76.i.i.i = icmp eq i64 %i.w, %1
  br i1 %.not76.i.i.i, label %bb.e, label %"_ZSt7find_ifIN4llvm6detail15SafeIntIteratorIjLb0EEEZNKS0_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS0_8ArrayRefIPNS0_5ValueEEEPNS0_4TypeENS0_5AlignERKNS0_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0ET_SK_SK_T0_.exit"

bb.e:                                             ; preds = %bb.d
  %i.x = add i64 %.sroa.049.079.i.i.i, 3          ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val27.val.i.i.i, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !581
  %i.ab = sub nsw i64 %i.aa, %i.v
  %.not77.i.i.i = icmp eq i64 %i.ab, %1
  br i1 %.not77.i.i.i, label %bb.f, label %"_ZSt7find_ifIN4llvm6detail15SafeIntIteratorIjLb0EEEZNKS0_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS0_8ArrayRefIPNS0_5ValueEEEPNS0_4TypeENS0_5AlignERKNS0_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0ET_SK_SK_T0_.exit"

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %.sroa.049.079.i.i.i, 4
  %i.ad = add nsw i64 %.080.i.i.i, -1
  %i.ae = icmp sgt i64 %.080.i.i.i, 1
  br i1 %i.ae, label %bb.b, label %._crit_edge.i.i.i, !llvm.loop !2545

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.a
  %.sroa.049.0.lcssa.i.i.i = phi i64 [ %.0.val, %bb.a ], [ %i.e, %bb.f ] ; 7 uses
  %i.af = sub i64 %.8.val, %.sroa.049.0.lcssa.i.i.i
  switch i64 %i.af, label %"_ZSt7find_ifIN4llvm6detail15SafeIntIteratorIjLb0EEEZNKS0_13slpvectorizer7BoUpSLP30analyzeConstantStrideCandidateENS0_8ArrayRefIPNS0_5ValueEEEPNS0_4TypeENS0_5AlignERKNS0_15SmallVectorImplIjEElS8_RNS5_14StridedPtrInfoEE3$_0ET_SK_SK_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge82.i.i.i
  ]

._crit_edge._crit_edge82.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.val.val.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !359
  br label %bb.k

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.val17.val.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !359
  br label %bb.i
end_hunk_1
begin_hunk_2_@_ZNK4llvm13slpvectorizer7BoUpSLP24analyzeRtStrideCandidateENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignERNS_15SmallVectorImplIjEERNS1_14StridedPtrInfoEb:bb.a
bb.a:
  %8 = alloca %"class.llvm::SmallDenseMap.377", align 8 ; 16 uses
  %9 = alloca %"class.llvm::SmallDenseSet", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.llvm::SmallVector.278", align 8 ; 14 uses
  %11 = alloca %"class.llvm::SmallVector.405", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.llvm::SmallVector.405", align 8 ; 9 uses
  %13 = alloca %"class.llvm::SmallVector.405", align 8 ; 12 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 552 ; 2 uses
  store i32 1, ptr %8, align 8
  store i32 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 1, ptr %9, align 8
  store i32 0, ptr %i.g, align 8
  %.idx = shl nuw nsw i64 %2, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not242265 = icmp eq i64 %2, 0
  br i1 %.not242265, label %.critedge131.thread, label %.lr.ph268

.critedge131.thread:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 0, ptr %i.c, align 4, !tbaa !380
  br label %.thread

.lr.ph268:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4824 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph268, %bb.n
  %.sroa.8226.0267 = phi i32 [ 0, %.lr.ph268 ], [ %i.bq, %bb.n ] ; 3 uses
  %.sroa.0223.0266 = phi ptr [ %1, %.lr.ph268 ], [ %i.br, %bb.n ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !671
  %i.k = load ptr, ptr %.sroa.0223.0266, align 8, !tbaa !579
  %i.l = call noundef ptr @_ZN4llvm15ScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152) %i.j, ptr noundef %i.k) #31 ; 6 uses
  %.not.not = icmp eq ptr %i.l, null
  br i1 %.not.not, label %.critedge129, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i16, ptr %i.m, align 8, !tbaa !757
  %.not250 = icmp eq i16 %i.n, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr %i.l, ptr %i.b, align 8, !tbaa !758
  br i1 %.not250, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !2576
  %sext251 = shl i64 %i.p, 32                     ; 2 uses
  %i.q = ashr exact i64 %sext251, 32
  %.not252263 = icmp eq i64 %sext251, 0
  br i1 %.not252263, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !761
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0214.0264 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %.critedge ] ; 2 uses
  %i.t = and i64 %.sroa.0214.0264, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %.sroa.0.0.copyload.i146 = load i64, ptr %i.u, align 8
  %i.v = and i64 %.sroa.0.0.copyload.i146, -8     ; 3 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i16, ptr %i.x, align 8, !tbaa !757
  %i.z = icmp ne i16 %i.y, 0
  %.not120253 = icmp eq i64 %i.v, 0
  %.not120 = or i1 %i.z, %.not120253
  br i1 %.not120, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !764 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !765 ; 3 uses
  %i.af = icmp ult i32 %i.ae, 65
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !571
  %i.ah = icmp eq i32 %i.ae, 0
  %i.ai = sub nuw nsw i32 64, %i.ae
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = shl i64 %i.ag, %i.aj
  %i.al = ashr exact i64 %i.ak, %i.aj
  br i1 %i.ah, label %_ZNK4llvm5APInt12getSExtValueEv.exit.thread, label %_ZNK4llvm5APInt12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !571
  %i.an = load i64, ptr %i.am, align 8, !tbaa !581
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

_ZNK4llvm5APInt12getSExtValueEv.exit.thread:      ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !581
  br label %.loopexit255

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.al, %bb.g ], [ %i.an, %bb.h ] ; 2 uses
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !581
  %.not121 = icmp slt i64 %.0.i, 9223372036854775806
  br i1 %.not121, label %.loopexit255, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit
  store i64 0, ptr %i.a, align 8, !tbaa !581
  br label %.critedge

.loopexit255:                                     ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !671
  %i.ap = ptrtoint ptr %i.l to i64
  %i.aq = call noundef ptr @_ZN4llvm15ScalarEvolution12getMinusSCEVENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.ao, i64 %i.ap, i64 %i.v, i32 noundef 0, i32 noundef 0) #31
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !758
  br label %.loopexit

.critedge:                                        ; preds = %bb.e, %bb.i
  %i.ar = add i64 %.sroa.0214.0264, 1             ; 2 uses
  %.not252 = icmp eq i64 %i.ar, %i.q
  br i1 %.not252, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %.critedge, %bb.d, %.loopexit255, %bb.c
  %i.as = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS3_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS8_EEEElS8_SA_SD_E24lookupOrInsertIntoBucketIRKlJEEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.as, 0 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.au = load ptr, ptr %.sroa.0223.0266, align 8, !tbaa !579 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !371 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !372
  %.not.i = icmp ult i32 %i.aw, %i.ay
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !548

bb.j:                                             ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef %i.au)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

bb.k:                                             ; preds = %.loopexit
  %i.az = zext i32 %i.aw to i64
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !359
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  store ptr %i.au, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !371
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.av, align 8, !tbaa !371
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit: ; preds = %bb.j, %bb.k
  %i.be = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS3_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS8_EEEElS8_SA_SD_E24lookupOrInsertIntoBucketIRKlJEEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i147 = extractvalue { ptr, i8 } %i.be, 0 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i147, i64 72 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i147, i64 80 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !371 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i147, i64 84
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !372
  %.not.i148 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i148, label %bb.m, label %bb.l, !prof !548

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i32 noundef %.sroa.8226.0267)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %i.bk = zext i32 %i.bh to i64
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !359
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bk
  store i32 %.sroa.8226.0267, ptr %i.bm, align 1
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !371
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bg, align 8, !tbaa !371
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !2577 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bq = add i32 %.sroa.8226.0267, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0223.0266, i64 8 ; 2 uses
  %.not242 = icmp eq ptr %i.br, %i.h
  br i1 %.not242, label %.critedge131, label %bb.b

.critedge131:                                     ; preds = %bb.n
  %.pre = load i32, ptr %8, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bs = lshr i32 %.pre, 1                       ; 5 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !380
  %i.bt = trunc i64 %2 to i32                     ; 4 uses
  %i.bu = icmp ugt i32 %.pre, 3
  br i1 %i.bu, label %bb.o, label %.thread

bb.o:                                             ; preds = %.critedge131
  %i.bv = urem i32 %i.bt, %i.bs
  %i.bw = udiv exact i32 %i.bt, %i.bs             ; 2 uses
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %bb.p, label %bb.aq

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %9, align 8
  %i.by = lshr i32 %i.bx, 1
  %.not122 = icmp eq i32 %i.by, %i.bw
  br i1 %.not122, label %bb.q, label %bb.aq

.thread:                                          ; preds = %.critedge131.thread, %.critedge131
  %i.bz = phi i32 [ 0, %.critedge131.thread ], [ %i.bt, %.critedge131 ] ; 5 uses
  %i.ca = phi i32 [ 0, %.critedge131.thread ], [ %i.bs, %.critedge131 ] ; 2 uses
  %i.cb = phi i32 [ 1, %.critedge131.thread ], [ %.pre, %.critedge131 ] ; 2 uses
  %i.cc = load i32, ptr %9, align 8
  %i.cd = lshr i32 %i.cc, 1
  %.not122235 = icmp eq i32 %i.cd, %i.bz
  br i1 %.not122235, label %.thread237, label %bb.aq

.thread237:                                       ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = and i32 %i.cf, 254
  %spec.select.i = icmp eq i32 %i.cg, 18
  br i1 %spec.select.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.thread237
  %i.ch = phi i1 [ false, %.thread237 ], [ true, %bb.p ]
  %i.ci = phi i32 [ %i.bz, %.thread237 ], [ %i.bt, %bb.p ]
  %i.cj = phi i32 [ %i.ca, %.thread237 ], [ %i.bs, %bb.p ] ; 2 uses
  %i.ck = phi i32 [ %i.cb, %.thread237 ], [ %.pre, %bb.p ]
  %.0111236240 = phi i32 [ %i.bz, %.thread237 ], [ %i.bw, %bb.p ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4824
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !671
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !736, !nonnull !369, !align !655
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cn) #31
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4880
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !670
  %i.cr = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cq, ptr noundef %3)
  %.fca.0.extract45 = extractvalue { i64, i8 } %i.cr, 0
  %i.cs = trunc i64 %.fca.0.extract45 to i32
  %i.ct = mul i32 %i.cj, %i.cs
  %i.cu = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i32 noundef %i.ct) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread237
  %i.cv = phi i1 [ %i.ch, %bb.q ], [ false, %.thread237 ]
  %i.cw = phi i32 [ %i.ci, %bb.q ], [ %i.bz, %.thread237 ]
  %i.cx = phi i32 [ %i.cj, %bb.q ], [ %i.ca, %.thread237 ] ; 7 uses
  %i.cy = phi i32 [ %i.ck, %bb.q ], [ %i.cb, %.thread237 ]
  %.0111236239 = phi i32 [ %.0111236240, %bb.q ], [ %i.bz, %.thread237 ] ; 2 uses
  %.0112 = phi ptr [ %i.cu, %bb.q ], [ %3, %.thread237 ]
  %i.cz = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %.0112, i32 noundef %.0111236239) ; 3 uses
  %.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL25MinProfitableStridedLoads, i64 120), align 8
  %.val243 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL26MinProfitableStridedStores, i64 120), align 8
  %i.da = select i1 %7, i32 %.val, i32 %.val243
  %i.db = call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef %3) #31
  %i.dc = mul i32 %i.db, %i.cw
  %i.dd = icmp ult i32 %i.dc, %i.da
  br i1 %i.dd, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !584
  %i.dg = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo11isTypeLegalEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.cz) #31
  br i1 %i.dg, label %bb.t, label %bb.aq

bb.t:                                             ; preds = %bb.s
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !584
  %i.di = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo23isLegalStridedLoadStoreEPNS_4TypeENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.cz, i8 %4) #31
  br i1 %i.di, label %bb.u, label %bb.aq

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.dj = zext nneg i32 %i.cx to i64              ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.dk, ptr %10, align 8, !tbaa !359
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !371
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.dm, align 4, !tbaa !372
  %i.dn = icmp eq i32 %i.cx, 0
  br i1 %i.dn, label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = icmp ugt i32 %i.cy, 13
  br i1 %i.do, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.v
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.dk, i64 noundef %i.dj, i64 noundef 8) #31
  %.pre.i.i.i = load i32, ptr %i.dl, align 8, !tbaa !371 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.cx, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.v
  %i.dp = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.dk, %bb.v ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.v ] ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.dp, i64 %.pre-phi.i.i3.i
  %i.dr = sub nsw i64 %i.dj, %.pre-phi.i.i3.i
  %i.ds = shl nsw i64 %i.dr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dq, i8 0, i64 %i.ds, i1 false), !tbaa !581
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  store i32 %i.cx, ptr %i.dl, align 8, !tbaa !371
  br label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit

_ZN4llvm11SmallVectorIlLj6EEC2Em.exit:            ; preds = %bb.u, %.sink.split.i.i.i
  %i.dt = load i32, ptr %8, align 8, !noalias !2578 ; 2 uses
  %i.du = and i32 %i.dt, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.du, 0    ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !2578
  %i.dx = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.dw, ptr %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !2578
  %i.ea = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.dz, ptr %i.f ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !noalias !2578
  %i.ed = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.ec, i32 4 ; 2 uses
  %i.ee = icmp ult i32 %i.dt, 2
  %i.ef = zext i32 %i.ed to i64                   ; 4 uses
  %.idx329 = mul nuw nsw i64 %i.ef, 136           ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.ed, 0
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %.not.i.not.i.i.i.i.i.i
  br i1 %or.cond.i.i, label %.critedge135, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit
  %i.eg = add nuw nsw i64 %i.ef, 31
  %i.eh = lshr i64 %i.eg, 5                       ; 2 uses
  %i.ei = load i32, ptr %i.ea, align 4, !tbaa !380, !noalias !2579 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.w
  %i.ek = icmp eq i64 %i.eh, 1
  br i1 %i.ek, label %.critedge135, label %.lr.ph341

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph341
  %i.el = add nuw nsw i64 %i.en, 1                ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.eh
  br i1 %i.em, label %.critedge135, label %.lr.ph341, !llvm.loop !2565

.lr.ph341:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.en = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !380, !noalias !2579 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i, !llvm.loop !2565

._crit_edge.i.loopexit.i.i.i.i.i.i:               ; preds = %.lr.ph341
  %i.er = mul i64 %i.en, 4352
  br label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit

_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit: ; preds = %bb.w, %._crit_edge.i.loopexit.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.w ], [ %i.er, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.ei, %bb.w ], [ %i.ep, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %i.es = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.es, 136
  %.idx328 = zext nneg i32 %narrow to i64
  %i.et = add i64 %.012.lcssa.i.i.i.i.i.i.i, %.idx328 ; 2 uses
  %.not244269 = icmp eq i64 %i.et, %.idx329
  br i1 %.not244269, label %.critedge135, label %.lr.ph272

.lr.ph272:                                        ; preds = %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit
  %i.eu = load ptr, ptr %10, align 8
  %i.ev = add nuw nsw i64 %i.ef, 31
  %i.ew = lshr i64 %i.ev, 5                       ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph272, %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit
  %.pn = phi i64 [ %i.et, %.lr.ph272 ], [ %i.fv, %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit ] ; 2 uses
  %.sroa.14.0270 = phi i64 [ 0, %.lr.ph272 ], [ %i.fb, %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit ] ; 2 uses
  %.sroa.0195.0271 = getelementptr i8, ptr %i.dx, i64 %.pn ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0195.0271, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !371
  %.not123 = icmp eq i32 %i.ey, %.0111236239
  br i1 %.not123, label %bb.y, label %.critedge133

bb.y:                                             ; preds = %bb.x
  %i.ez = load i64, ptr %.sroa.0195.0271, align 8, !tbaa !2582
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.14.0270
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !581
  %i.fb = add i64 %.sroa.14.0270, 1
  %i.fc = add i64 %.pn, 136
  %i.fd = sdiv exact i64 %i.fc, 136               ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.fd, %i.ef
  br i1 %.not.i.i.i.i, label %bb.z, label %.critedge135

bb.z:                                             ; preds = %bb.y
  %i.fe = lshr i64 %i.fd, 5                       ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !380
  %i.fh = trunc nuw i64 %i.fd to i32
  %i.fi = and i32 %i.fh, 31
  %i.fj = shl nsw i32 -1, %i.fi
end_hunk_2
begin_hunk_3_@_ZNK4llvm13slpvectorizer7BoUpSLP14matchesShlZExtERKNS1_9TreeEntryERNS_11SmallVectorIjLj4EEERbS8_:bb.a
  %i.cr = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cq, ptr noundef nonnull %i.cj) ; 2 uses
  %.fca.0.extract208 = extractvalue { i64, i8 } %i.cr, 0 ; 2 uses
  %.fca.1.extract209 = extractvalue { i64, i8 } %i.cr, 1
  %i.cs = trunc nuw i8 %.fca.1.extract209 to i1
  br i1 %i.cs, label %bb.o, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.107) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.n
  %i.ct = trunc i64 %.fca.0.extract208 to i32     ; 4 uses
  %i.cu = tail call noundef ptr @_ZNK4llvm13slpvectorizer7BoUpSLP15getOperandEntryEPKNS1_9TreeEntryEj(ptr noundef nonnull align 8 dereferenceable(5088) %0, ptr noundef nonnull %1, i32 noundef 0) ; 11 uses
  %i.cv = tail call noundef ptr @_ZNK4llvm13slpvectorizer7BoUpSLP15getOperandEntryEPKNS1_9TreeEntryEj(ptr noundef nonnull align 8 dereferenceable(5088) %0, ptr noundef nonnull %1, i32 noundef 1) ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !660
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.p, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.p:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 496 ; 2 uses
  %.val.i292 = load ptr, ptr %i.cz, align 8, !tbaa !663
  %.val.val.i = load i8, ptr %.val.i292, align 8, !tbaa !391
  %i.da = icmp eq i8 %.val.val.i, 70
  br i1 %i.da, label %bb.q, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 152
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !371
  %.not.i293 = icmp eq i32 %i.dc, 0
  br i1 %.not.i293, label %bb.r, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 120 ; 5 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !371
  %.not.i294 = icmp eq i32 %i.de, 0
  br i1 %.not.i294, label %bb.s, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.s:                                             ; preds = %bb.r
  %i.df = tail call noundef zeroext i1 @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull %i.cu)
  br i1 %i.df, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val281 = load ptr, ptr %i.cu, align 8, !tbaa !359
  %i.dg = getelementptr i8, ptr %i.cu, i64 8      ; 6 uses
  %.val282 = load i32, ptr %i.dg, align 8, !tbaa !371
  %i.dh = tail call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZNKS_13slpvectorizer7BoUpSLP14matchesShlZExtERKNS8_9TreeEntryERNS1_IjLj4EEERbSE_E3$_1EEbOT_T0_"(ptr %.val281, i32 %.val282)
  br i1 %i.dh, label %bb.u, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.u:                                             ; preds = %bb.t
  %.val.i295 = load ptr, ptr %i.cz, align 8, !tbaa !663
  %i.di = getelementptr inbounds i8, ptr %.val.i295, i64 -32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !546
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !580 ; 5 uses
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !670
  %i.dn = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.dm, ptr noundef %i.dl) ; 2 uses
  %.fca.1.extract178 = extractvalue { i64, i8 } %i.dn, 1
  %i.do = trunc nuw i8 %.fca.1.extract178 to i1
  br i1 %i.do, label %bb.v, label %_ZNK4llvm8TypeSizecvmEv.exit296

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.107) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit296:                  ; preds = %bb.u
  %.fca.0.extract177 = extractvalue { i64, i8 } %i.dn, 0 ; 2 uses
  %i.dp = trunc i64 %.fca.0.extract177 to i32     ; 5 uses
  %i.dq = and i64 %.fca.0.extract177, 4294967295  ; 3 uses
  %i.dr = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.dq)
  %or.cond505 = icmp eq i64 %i.dr, 1
  %.not270 = icmp ult i32 %i.dp, %i.ct
  %or.cond506 = select i1 %or.cond505, i1 %.not270, i1 false
  br i1 %or.cond506, label %bb.w, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.w:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit296
  %i.ds = urem i32 %i.ct, %i.dp
  %.not271 = icmp eq i32 %i.ds, 0
  br i1 %.not271, label %bb.x, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.x:                                             ; preds = %bb.w
  %i.dt = load i32, ptr %i.dd, align 8, !tbaa !371 ; 2 uses
  %.not.i.i297 = icmp eq i32 %i.dt, 0
  %i.du = load i32, ptr %i.dg, align 8
  %.0.in.v.i = select i1 %.not.i.i297, i32 %i.du, i32 %i.dt
  %i.dv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0.in.v.i)
  %or.cond508 = icmp eq i32 %i.dv, 1
  br i1 %or.cond508, label %bb.y, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 104
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !660
  %i.dy = icmp eq i32 %i.dx, 5
  br i1 %i.dy, label %bb.z, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cv, i64 152
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !371
  %.not.i300 = icmp eq i32 %i.ea, 0
  br i1 %.not.i300, label %bb.aa, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cv, i64 120 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !371
  %.not.i301 = icmp eq i32 %i.ec, 0
  br i1 %.not.i301, label %bb.ab, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ed = tail call noundef zeroext i1 @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull %i.cv)
  br i1 %i.ed, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryESt4pairImbENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8containsES6_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.ee, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !380
  %.val283 = load ptr, ptr %i.cv, align 8, !tbaa !359
  %i.ef = getelementptr i8, ptr %i.cv, i64 8      ; 3 uses
  %.val284 = load i32, ptr %i.ef, align 8, !tbaa !371
  %i.eg = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZNKS_13slpvectorizer7BoUpSLP14matchesShlZExtERKNS8_9TreeEntryERNS1_IjLj4EEERbSE_E3$_2EEbOT_T0_"(ptr %.val283, i32 %.val284, ptr %i.a, i32 %i.dp)
  %i.eh = load i32, ptr %i.a, align 4
  %.not272 = icmp ule i32 %i.eh, %i.ct
  %or.cond.not = select i1 %i.eg, i1 %.not272, i1 false
  br i1 %or.cond.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ee, align 8, !tbaa !371
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ei = load i32, ptr %i.eb, align 8, !tbaa !371 ; 2 uses
  %.not.i.i302 = icmp eq i32 %i.ei, 0
  %i.ej = load i32, ptr %i.ef, align 8
  %.0.in.v.i303 = select i1 %.not.i.i302, i32 %i.ej, i32 %i.ei ; 4 uses
  store i32 %.0.in.v.i303, ptr %i.b, align 4, !tbaa !380
  %i.ek = zext i32 %.0.in.v.i303 to i64
  tail call void @_ZN4llvm15SmallVectorImplIjE6assignEmj(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ek, i32 noundef %.0.in.v.i303)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN4llvm14SmallBitVectorC2Ejb(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %.0.in.v.i303, i1 noundef zeroext false)
  %i.el = load i32, ptr %i.b, align 4, !tbaa !380
  %i.em = mul i32 %i.el, %i.dp
  %i.en = icmp ugt i32 %i.em, %i.ct
  br i1 %i.en, label %.thread478, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = load ptr, ptr %i.cv, align 8, !tbaa !359, !noalias !4823 ; 2 uses
  %i.ep = load i32, ptr %i.ef, align 8, !tbaa !371, !noalias !4824 ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %.idx = shl nuw nsw i64 %i.eq, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx
  %.not516541 = icmp eq i32 %i.ep, 0
  br i1 %.not516541, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.es = and i64 %.fca.0.extract208, 4294967295
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.ao
  %.sroa.7456.0543 = phi i64 [ 0, %.lr.ph ], [ %i.gr, %bb.ao ] ; 3 uses
  %.sroa.0453.0542 = phi ptr [ %i.eo, %.lr.ph ], [ %i.gs, %bb.ao ] ; 2 uses
  %i.et = load ptr, ptr %.sroa.0453.0542, align 8, !tbaa !579 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !391 ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.eu, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = icmp ugt i8 %i.eu, 22
  br i1 %i.ev, label %.thread478, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ew = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4llvm8Constant16getUniqueIntegerEv(ptr noundef nonnull align 8 dereferenceable(24) %i.et) #31 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !765 ; 2 uses
  %i.ez = add i32 %i.ey, -1                       ; 2 uses
  %i.fa = and i32 %i.ez, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = icmp ult i32 %i.ey, 65
  %i.fe = load ptr, ptr %i.ew, align 8
  %i.ff = lshr i32 %i.ez, 6
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fg
  %.in.i.i.i = select i1 %i.fd, ptr %i.ew, ptr %i.fh
  %i.fi = load i64, ptr %.in.i.i.i, align 8, !tbaa !571
  %i.fj = and i64 %i.fc, %i.fi
  %.not520 = icmp eq i64 %i.fj, 0
  br i1 %.not520, label %bb.aj, label %.thread478

bb.aj:                                            ; preds = %bb.ai
  %i.fk = call noundef zeroext i1 @_ZNK4llvm5APInt3ugeEm(ptr noundef nonnull align 8 dereferenceable(12) %i.ew, i64 noundef %i.es)
  br i1 %i.fk, label %.thread478, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = load i32, ptr %i.ex, align 8, !tbaa !765
  %i.fm = icmp ult i32 %i.fl, 65
  %i.fn = load ptr, ptr %i.ew, align 8
  %spec.select.i304 = select i1 %i.fm, ptr %i.ew, ptr %i.fn
  %.0.i = load i64, ptr %spec.select.i304, align 8, !tbaa !571 ; 2 uses
  %i.fo = urem i64 %.0.i, %i.dq
  %i.fp = udiv exact i64 %.0.i, %i.dq             ; 4 uses
  %.not274 = icmp eq i64 %i.fo, 0
  br i1 %.not274, label %bb.al, label %.thread478

bb.al:                                            ; preds = %bb.ak
  %i.fq = trunc i64 %i.fp to i32                  ; 3 uses
  %i.fr = load ptr, ptr %2, align 8, !tbaa !359
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.sroa.7456.0543
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !380
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !380 ; 2 uses
  %.not275 = icmp eq i32 %i.ft, %i.fu
  %.not276 = icmp ugt i32 %i.fu, %i.fq
  %or.cond279 = and i1 %.not275, %.not276
  br i1 %or.cond279, label %bb.am, label %.thread478

bb.am:                                            ; preds = %bb.al
  %i.fv = load i64, ptr %5, align 8, !tbaa !624   ; 4 uses
  %i.fw = trunc i64 %i.fv to i1
  br i1 %i.fw, label %.split, label %_ZNK4llvm14SmallBitVector4testEj.exit

.split:                                           ; preds = %bb.am
  %i.fx = lshr i64 %i.fv, 1
  %i.fy = lshr i64 %i.fv, 58
  %i.fz = shl nsw i64 -1, %i.fy
  %i.ga = xor i64 %i.fz, -1
  %i.gb = and i64 %i.fx, %i.ga
  %i.gc = and i64 %i.fp, 4294967295
  %i.gd = lshr i64 %i.gb, %i.gc
  %i.ge = trunc i64 %i.gd to i1
  br i1 %i.ge, label %.thread478, label %bb.an

_ZNK4llvm14SmallBitVector4testEj.exit:            ; preds = %bb.am
  %i.gf = inttoptr i64 %i.fv to ptr
  %i.gg = lshr i64 %i.fp, 6
  %i.gh = and i64 %i.gg, 67108863
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !359
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = and i64 %i.fp, 63
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !581
  %i.gm = shl nuw i64 1, %i.gk
  %i.gn = and i64 %i.gl, %i.gm
  %.not521 = icmp eq i64 %i.gn, 0
  br i1 %.not521, label %bb.an, label %.thread478

bb.an:                                            ; preds = %.split, %_ZNK4llvm14SmallBitVector4testEj.exit
  %i.go = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm14SmallBitVector3setEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.fq) ; 0 uses
  %i.gp = load ptr, ptr %2, align 8, !tbaa !359
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.sroa.7456.0543
  store i32 %i.fq, ptr %i.gq, align 4, !tbaa !380
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %bb.an
  %i.gr = add nuw nsw i64 %.sroa.7456.0543, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0453.0542, i64 8 ; 2 uses
  %.not516 = icmp eq ptr %i.gs, %i.er
  br i1 %.not516, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %bb.ao, %bb.af
  %i.gt = call noundef zeroext i1 @_ZN4llvm12is_containedIRNS_11SmallVectorIjLj4EEEjEEbOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.gt, label %.thread478, label %bb.ap

.thread478:                                       ; preds = %bb.ah, %bb.ai, %bb.ak, %bb.aj, %bb.al, %_ZNK4llvm14SmallBitVector4testEj.exit, %.split, %bb.ae, %._crit_edge
  call void @_ZN4llvm14SmallBitVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.bs

bb.ap:                                            ; preds = %._crit_edge
  call void @_ZN4llvm14SmallBitVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ad
  %i.gu = load ptr, ptr %i.cj, align 8, !tbaa !654, !nonnull !369, !align !655
  %i.gv = load i32, ptr %i.dd, align 8, !tbaa !371 ; 2 uses
  %.not.i.i307 = icmp eq i32 %i.gv, 0
  %i.gw = load i32, ptr %i.dg, align 8
  %.0.in.v.i308 = select i1 %.not.i.i307, i32 %i.gw, i32 %i.gv
  %i.gx = mul i32 %.0.in.v.i308, %i.dp
  %i.gy = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i32 noundef %i.gx) #31 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.gz, ptr %6, align 8, !tbaa !370
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 4, ptr %i.ha, align 8, !tbaa !917
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.hb, align 4, !tbaa !879
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i8 1, ptr %i.hc, align 8, !tbaa !367
  %i.hd = load i32, ptr %i.i, align 8, !tbaa !371 ; 2 uses
  %.not.i.i309 = icmp eq i32 %i.hd, 0
  %i.he = load i32, ptr %i.as, align 8
  %.0.in.v.i310 = select i1 %.not.i.i309, i32 %i.he, i32 %i.hd
  %i.hf = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef nonnull %i.cj, i32 noundef %.0.in.v.i310) ; 3 uses
  %i.hg = load i32, ptr %i.dd, align 8, !tbaa !371 ; 2 uses
  %.not.i.i311 = icmp eq i32 %i.hg, 0
  %i.hh = load i32, ptr %i.dg, align 8
  %.0.in.v.i312 = select i1 %.not.i.i311, i32 %i.hh, i32 %i.hg
  %i.hi = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %i.dl, i32 noundef %.0.in.v.i312) ; 5 uses
  %i.hj = call noundef ptr @_ZNK4llvm13slpvectorizer7BoUpSLP15getOperandEntryEPKNS1_9TreeEntryEj(ptr noundef nonnull align 8 dereferenceable(5088) %0, ptr noundef nonnull %i.cu, i32 noundef 0)
  %i.hk = call noundef zeroext i8 @_ZNK4llvm13slpvectorizer7BoUpSLP18getCastContextHintERKNS1_9TreeEntryE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(608) %i.hj) ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 13 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !584
  %i.hn = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo26getArithmeticReductionCostEjPNS_10VectorTypeESt8optionalINS_13FastMathFlagsEENS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, i32 noundef 30, ptr noundef %i.hf, i64 4294967296, i32 noundef 0) #31 ; 2 uses
  %.fca.0.extract122 = extractvalue { i64, i32 } %i.hn, 0
  %.fca.1.extract123 = extractvalue { i64, i32 } %i.hn, 1
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !584
  %i.hp = load ptr, ptr %i.cu, align 8, !tbaa !359
  %i.hq = load i32, ptr %i.dg, align 8, !tbaa !371
  %i.hr = zext i32 %i.hq to i64
  %i.hs = call i64 @_ZNK4llvm13slpvectorizer7BoUpSLP14getOperandInfoENS_8ArrayRefIPNS_5ValueEEE(ptr nonnull align 8 poison, ptr %i.hp, i64 %i.hr)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.ht = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo22getArithmeticInstrCostEjPNS_4TypeENS0_14TargetCostKindENS0_16OperandValueInfoES4_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEPKNS_17TargetLibraryInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, i32 noundef 26, ptr noundef %i.hf, i32 noundef 0, i64 %i.hs, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.526") align 8 %7, ptr noundef null, ptr noundef null) #31 ; 2 uses
  %.fca.0.extract115 = extractvalue { i64, i32 } %i.ht, 0
  %.fca.1.extract116 = extractvalue { i64, i32 } %i.ht, 1
  %i.hu = icmp eq i32 %.fca.1.extract116, 1
  %.0.i.i314 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract122, i64 %.fca.0.extract115)
  %i.hv = load ptr, ptr %i.hl, align 8, !tbaa !584
  %i.hw = load i32, ptr %i.dd, align 8, !tbaa !371 ; 2 uses
  %.not.i.i315 = icmp eq i32 %i.hw, 0
  %i.hx = load i32, ptr %i.dg, align 8
  %.0.in.v.i316 = select i1 %.not.i.i315, i32 %i.hx, i32 %i.hw
  %i.hy = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %i.dl, i32 noundef %.0.in.v.i316)
  %i.hz = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo16getCastInstrCostEjPNS_4TypeES2_NS0_15CastContextHintENS0_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, i32 noundef 40, ptr noundef %i.hf, ptr noundef %i.hy, i8 noundef zeroext %i.hk, i32 noundef 0, ptr noundef null) #31 ; 2 uses
  %.fca.0.extract107 = extractvalue { i64, i32 } %i.hz, 0
  %.fca.1.extract108 = extractvalue { i64, i32 } %i.hz, 1
  %i.ia = icmp eq i32 %.fca.1.extract108, 1
  %i.ib = select i1 %i.ia, i1 true, i1 %i.hu
  %spec.select.i320 = select i1 %i.ib, i32 1, i32 %.fca.1.extract123 ; 21 uses
  %.0.i.i321 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i314, i64 %.fca.0.extract107) ; 21 uses
  %i.ic = load ptr, ptr %i.hl, align 8, !tbaa !584
  %i.id = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo16getCastInstrCostEjPNS_4TypeES2_NS0_15CastContextHintENS0_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, i32 noundef 51, ptr noundef %i.gy, ptr noundef %i.hi, i8 noundef zeroext %i.hk, i32 noundef 0, ptr noundef null) #31 ; 2 uses
  %.fca.0.extract99 = extractvalue { i64, i32 } %i.id, 0 ; 2 uses
  %.fca.1.extract100 = extractvalue { i64, i32 } %i.id, 1 ; 2 uses
  %i.ie = load i32, ptr %i.ee, align 8, !tbaa !371 ; 2 uses
  %.not.i324 = icmp eq i32 %i.ie, 0
  br i1 %.not.i324, label %.critedge.thread, label %_ZN4llvm15InstructionCostpLERKS0_.exit

_ZN4llvm15InstructionCostpLERKS0_.exit:           ; preds = %bb.aq
  %i.if = load ptr, ptr %2, align 8, !tbaa !359
  %i.ig = zext i32 %i.ie to i64
  call fastcc void @_ZL20fixupOrderingIndicesN4llvm15MutableArrayRefIjEE(ptr %i.if, i64 %i.ig)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ih = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ih, ptr %8, align 8, !tbaa !359
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.ii, align 8, !tbaa !371
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 12, ptr %i.ij, align 4, !tbaa !372
  %i.ik = load ptr, ptr %2, align 8, !tbaa !359
  %i.il = load i32, ptr %i.ee, align 8, !tbaa !371
  %i.im = zext i32 %i.il to i64
  call fastcc void @_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE(ptr %i.ik, i64 %i.im, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.in = load ptr, ptr %i.hl, align 8, !tbaa !584
  %i.io = load ptr, ptr %8, align 8, !tbaa !359
  %i.ip = load i32, ptr %i.ii, align 8, !tbaa !371
  %i.iq = zext i32 %i.ip to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ir = call fastcc { i64, i32 } @_ZL14getShuffleCostRKN4llvm19TargetTransformInfoENS0_11ShuffleKindEPNS_10VectorTypeENS_8ArrayRefIiEENS0_14TargetCostKindEiS5_NS6_IPKNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.in, i32 noundef 7, ptr noundef %i.hi, ptr %i.io, i64 %i.iq, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.526") align 8 %9) ; 2 uses
  %.fca.0.extract95 = extractvalue { i64, i32 } %i.ir, 0
  %.fca.1.extract96 = extractvalue { i64, i32 } %i.ir, 1
  %i.is = icmp eq i32 %.fca.1.extract96, 1
  %spec.select = select i1 %i.is, i32 1, i32 %.fca.1.extract100 ; 8 uses
  %.0.i325 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract99, i64 %.fca.0.extract95) ; 7 uses
  %i.it = load ptr, ptr %8, align 8, !tbaa !359   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ih
  br i1 %i.iu, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit
  call void @free(ptr noundef %i.it) #31
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN4llvm15InstructionCostpLERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %.pr = load i32, ptr %i.ee, align 8, !tbaa !371 ; 2 uses
  %.not.i326 = icmp eq i32 %.pr, 0
  br i1 %.not.i326, label %.critedge.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iv = load ptr, ptr %2, align 8, !tbaa !359
  %i.iw = zext i32 %.pr to i64
  %i.ix = call fastcc noundef zeroext i1 @_ZL14isReverseOrderN4llvm8ArrayRefIjEE(ptr %i.iv, i64 %i.iw)
  br i1 %i.ix, label %bb.au, label %.critedge4

bb.au:                                            ; preds = %bb.at
  %i.iy = load ptr, ptr %i.cp, align 8, !tbaa !670
  %i.iz = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.iy, ptr noundef %i.dl) ; 2 uses
  %.fca.1.extract92 = extractvalue { i64, i8 } %i.iz, 1
  %i.ja = trunc nuw i8 %.fca.1.extract92 to i1
  br i1 %i.ja, label %bb.av, label %_ZNK4llvm8TypeSizecvmEv.exit327

bb.av:                                            ; preds = %bb.au
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.107) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit327:                  ; preds = %bb.au
  %.fca.0.extract91 = extractvalue { i64, i8 } %i.iz, 0
  %i.jb = icmp eq i64 %.fca.0.extract91, 8
  br i1 %i.jb, label %bb.aw, label %.critedge

end_hunk_3
begin_hunk_4_@_ZNK4llvm8CallBase31hasIdenticalOperandBundleSchemaERKS0_:bb.a
  br i1 %.not, label %bb.d, label %_ZSt5equalIPKN4llvm8CallBase12BundleOpInfoES4_EbT_S5_T0_.exit

bb.d:                                             ; preds = %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit8
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit, label %_ZNK4llvm8CallBase18bundle_op_info_endEv.exit

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit:  ; preds = %bb.d
  %i.ag = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #31
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0      ; 2 uses
  %.pr = load i32, ptr %i.a, align 4
  %i.ai = icmp slt i32 %.pr, 0
  br i1 %i.ai, label %bb.e, label %_ZNK4llvm8CallBase18bundle_op_info_endEv.exit

bb.e:                                             ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit
  %i.aj = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #31 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  br label %_ZNK4llvm8CallBase18bundle_op_info_endEv.exit

_ZNK4llvm8CallBase18bundle_op_info_endEv.exit:    ; preds = %bb.d, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit, %bb.e
  %.0.i.i13 = phi ptr [ %i.ah, %bb.e ], [ %i.ah, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit ], [ null, %bb.d ] ; 2 uses
  %.0.i.i9 = phi ptr [ %i.am, %bb.e ], [ null, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit ], [ null, %bb.d ] ; 2 uses
  %i.an = load i32, ptr %i.p, align 4
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11

bb.f:                                             ; preds = %_ZNK4llvm8CallBase18bundle_op_info_endEv.exit
  %i.ap = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #31
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  br label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11: ; preds = %_ZNK4llvm8CallBase18bundle_op_info_endEv.exit, %bb.f
  %.0.i.i10 = phi ptr [ %i.aq, %bb.f ], [ null, %_ZNK4llvm8CallBase18bundle_op_info_endEv.exit ]
  %.not9.i.i.i.i = icmp eq ptr %.0.i.i13, %.0.i.i9
  br i1 %.not9.i.i.i.i, label %_ZSt5equalIPKN4llvm8CallBase12BundleOpInfoES4_EbT_S5_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11, %bb.h
  %.011.i.i.i.i = phi ptr [ %i.bf, %bb.h ], [ %.0.i.i10, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11 ] ; 4 uses
  %.0810.i.i.i.i = phi ptr [ %i.be, %bb.h ], [ %.0.i.i13, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11 ] ; 4 uses
  %i.ar = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !1291
  %i.as = load ptr, ptr %.011.i.i.i.i, align 8, !tbaa !1291
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %_ZSt5equalIPKN4llvm8CallBase12BundleOpInfoES4_EbT_S5_T0_.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !934
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !934
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %_ZNK4llvm8CallBase12BundleOpInfoeqERKS1_.exit.i.i.i.i, label %_ZSt5equalIPKN4llvm8CallBase12BundleOpInfoES4_EbT_S5_T0_.exit

_ZNK4llvm8CallBase12BundleOpInfoeqERKS1_.exit.i.i.i.i: ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !935
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !935
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.h, label %_ZSt5equalIPKN4llvm8CallBase12BundleOpInfoES4_EbT_S5_T0_.exit

bb.h:                                             ; preds = %_ZNK4llvm8CallBase12BundleOpInfoeqERKS1_.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.be, %.0.i.i9
  br i1 %.not.i.i.i.i, label %_ZSt5equalIPKN4llvm8CallBase12BundleOpInfoES4_EbT_S5_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !10050

_ZSt5equalIPKN4llvm8CallBase12BundleOpInfoES4_EbT_S5_T0_.exit: ; preds = %bb.h, %_ZNK4llvm8CallBase12BundleOpInfoeqERKS1_.exit.i.i.i.i, %bb.g, %.lr.ph.i.i.i.i, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit8
  %.0 = phi i1 [ false, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit8 ], [ true, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit11 ], [ false, %.lr.ph.i.i.i.i ], [ false, %bb.g ], [ true, %bb.h ], [ false, %_ZNK4llvm8CallBase12BundleOpInfoeqERKS1_.exit.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL25getShufflevectorNumGroupsN4llvm8ArrayRefIPNS_5ValueEEE(ptr %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx2.i = shl nuw nsw i64 %1, 3                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx2.i
  %i.j = lshr i64 %1, 2                           ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.k = and i64 %.idx2.i, 9223372036854775776
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %0, i64 %i.k
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.x, %bb.f ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.l = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !579
  %i.m = load i8, ptr %i.l, align 8, !tbaa !391
  %.not32.i.i.i.i.i = icmp eq i8 %i.m, 95
  br i1 %.not32.i.i.i.i.i, label %bb.c, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !579
  %i.p = load i8, ptr %i.o, align 8, !tbaa !391
  %.not33.i.i.i.i.i = icmp eq i8 %i.p, 95
  br i1 %.not33.i.i.i.i.i, label %bb.d, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !579
  %i.s = load i8, ptr %i.r, align 8, !tbaa !391
  %.not34.i.i.i.i.i = icmp eq i8 %i.s, 95
  br i1 %.not34.i.i.i.i.i, label %bb.e, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit213

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !579
  %i.v = load i8, ptr %i.u, align 8, !tbaa !391
  %.not35.i.i.i.i.i = icmp eq i8 %i.v, 95
  br i1 %.not35.i.i.i.i.i, label %bb.f, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit215

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.x = add nsw i64 %.047.i.i.i.i.i, -1
  %i.y = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !10051

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.f
  %i.z = and i64 %1, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.b
  %.pre-phi53.i.i.i.i.i = phi i64 [ %i.z, %._crit_edge.loopexit.i.i.i.i.i ], [ %1, %bb.b ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %0, %bb.b ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aa = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !579
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !391
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 95
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ad = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !579
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !391
  %.not30.i.i.i.i.i = icmp eq i8 %i.ae, 95
  br i1 %.not30.i.i.i.i.i, label %bb.j, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ag = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !579
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !391
  %.not31.i.i.i.i.i = icmp eq i8 %i.ah, 95
  br i1 %.not31.i.i.i.i.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.thread, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit213: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit215: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit, %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit213, %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit215, %bb.g, %bb.i, %bb.k
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i, %bb.k ], [ %i.ak, %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit215 ], [ %i.aj, %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit213 ], [ %i.ai, %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.al = icmp eq ptr %i.i, %.028.i.i.i.i.i
  br i1 %i.al, label %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.thread, label %.loopexit

_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.thread: ; preds = %bb.k, %._crit_edge.i.i.i.i.i, %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !579   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !546
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !580
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !751 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.au = load i32, ptr %i.at, align 8, !tbaa !371 ; 9 uses
  %i.av = urem i32 %i.as, %i.au
  %i.aw = udiv exact i32 %i.as, %i.au             ; 4 uses
  %.not = icmp ne i32 %i.av, 0
  %2 = icmp eq i32 %i.as, 0
  %or.cond = or i1 %.not, %2
  br i1 %or.cond, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEENS_6detail17IsaCheckPredicateIJNS_17ShuffleVectorInstEEEEEEbOT_T0_.exit.thread
  %i.ax = zext i32 %i.aw to i64                   ; 6 uses
  %i.ay = urem i64 %1, %i.ax
  %.not27 = icmp eq i64 %i.ay, 0
  br i1 %.not27, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.l
  %i.az = icmp ult i32 %i.aw, 58
  %i.ba = add i32 %i.aw, 63                       ; 2 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 3 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = icmp ugt i32 %i.ba, 447
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bc, 3 ; 3 uses
  %i.be = shl nuw i64 %i.ax, 58
  %i.bf = or disjoint i64 %i.be, 1
  %i.bg = lshr i64 %i.ax, 2                       ; 2 uses
  %.not.i34 = icmp eq i64 %i.bg, 0
  %i.bh = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -8   ; 3 uses
  %i.bi = lshr exact i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %xtraiter = and i64 %i.bj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bk = icmp ult i64 %i.bh, 56
  %xtraiter304 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  %i.bl = icmp ult i64 %i.bh, 56
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit
  %i.bm = add i64 %.0137, %i.ax                   ; 2 uses
  %.not28 = icmp eq i64 %i.bm, %1
  br i1 %.not28, label %.loopexit, label %bb.n, !llvm.loop !10052

bb.n:                                             ; preds = %.preheader, %bb.m
  %.0137 = phi i64 [ 0, %.preheader ], [ %i.bm, %bb.m ] ; 2 uses
  %.020136 = phi i32 [ 0, %.preheader ], [ %.1, %bb.m ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0137 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !579
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !546 ; 7 uses
  br i1 %i.az, label %_ZN4llvm14SmallBitVectorC2Ejb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 5 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !359
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 6, ptr %i.bu, align 4, !tbaa !372
  br i1 %i.bd, label %bb.p, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bt, align 8, !tbaa !371
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.bc, i64 noundef 8) #31
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !359 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod305.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bv, %bb.p ] ; 2 uses
  %prol.iter306 = phi i64 [ %prol.iter306.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.p ]
  store i64 0, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !581
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter306.next = add i64 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i64 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !10053

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %bb.p
  %.06.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bv, %bb.p ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.bl, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 0, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !581
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !581
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.bz, align 8, !tbaa !581
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 0, ptr %i.ca, align 8, !tbaa !581
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 32
  store i64 0, ptr %i.cb, align 8, !tbaa !581
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 40
  store i64 0, ptr %i.cc, align 8, !tbaa !581
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 48
  store i64 0, ptr %i.cd, align 8, !tbaa !581
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ce, align 8, !tbaa !581
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.cf, %i.bw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !16

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.o
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bs, %bb.q ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.q ]
  store i64 0, ptr %.06.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !581
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !10054

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %bb.q
  %.06.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bs, %bb.q ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.bk, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 0, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !581
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !581
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.cj, align 8, !tbaa !581
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !581
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 32
  store i64 0, ptr %i.cl, align 8, !tbaa !581
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 40
  store i64 0, ptr %i.cm, align 8, !tbaa !581
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 48
  store i64 0, ptr %i.cn, align 8, !tbaa !581
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 56
  store i64 0, ptr %i.co, align 8, !tbaa !581
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.cp, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !16

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  store i32 %i.bb, ptr %i.bt, align 8, !tbaa !371
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i32 %i.aw, ptr %i.cq, align 8, !tbaa !631
  %i.cr = ptrtoint ptr %i.br to i64
  br label %_ZN4llvm14SmallBitVectorC2Ejb.exit

_ZN4llvm14SmallBitVectorC2Ejb.exit:               ; preds = %bb.n, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i
  %storemerge.i = phi i64 [ %i.cr, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i ], [ %i.bf, %bb.n ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ax ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  br i1 %.not.i34, label %._crit_edge.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %_ZN4llvm14SmallBitVectorC2Ejb.exit, %bb.ak
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %bb.ak ], [ %storemerge.i, %_ZN4llvm14SmallBitVectorC2Ejb.exit ] ; 8 uses
  %.0100.i.i.i.i.i = phi i64 [ %i.jn, %bb.ak ], [ %i.bg, %_ZN4llvm14SmallBitVectorC2Ejb.exit ] ; 2 uses
  %.02999.i.i.i.i.i = phi ptr [ %i.jm, %bb.ak ], [ %i.bn, %_ZN4llvm14SmallBitVectorC2Ejb.exit ] ; 13 uses
  %.029.val32.i.i.i.i.i = load ptr, ptr %.02999.i.i.i.i.i, align 8, !tbaa !579 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.029.val32.i.i.i.i.i, i64 -64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !546 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.bq
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_5ValueEEEZL25getShufflevectorNumGroupsS4_E3$_0EEbOT_T0_.exit"

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.cw = getelementptr inbounds nuw i8, ptr %.029.val32.i.i.i.i.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !580
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = and i32 %i.cz, 255
  %i.db = icmp eq i32 %i.da, 19
  br i1 %i.db, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL25getShufflevectorNumGroupsN4llvm8ArrayRefIPNS2_5ValueEEEE3$_0EclIPKS5_EEbT_.exit.thread64.i.i.i.i.i", label %_ZNK4llvm17ShuffleVectorInst22isExtractSubvectorMaskERi.exit.i.i.i.i.i.i.i

_ZNK4llvm17ShuffleVectorInst22isExtractSubvectorMaskERi.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !580
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load i32, ptr %i.de, align 8, !tbaa !751
  %i.dg = getelementptr inbounds nuw i8, ptr %.029.val32.i.i.i.i.i, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !359
  %i.di = getelementptr inbounds nuw i8, ptr %.029.val32.i.i.i.i.i, i64 80
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !371
  %i.dk = zext i32 %i.dj to i64
  %i.dl = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst22isExtractSubvectorMaskENS_8ArrayRefIiEEiRi(ptr %i.dh, i64 %i.dk, i32 noundef %i.df, ptr noundef nonnull align 4 dereferenceable(4) %i.g) #31
  br i1 %i.dl, label %bb.s, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL25getShufflevectorNumGroupsN4llvm8ArrayRefIPNS2_5ValueEEEE3$_0EclIPKS5_EEbT_.exit.thread64.i.i.i.i.i"

bb.s:                                             ; preds = %_ZNK4llvm17ShuffleVectorInst22isExtractSubvectorMaskERi.exit.i.i.i.i.i.i.i
  %i.dm = load i32, ptr %i.g, align 4, !tbaa !380
  %i.dn = udiv i32 %i.dm, %i.au                   ; 3 uses
  %i.do = trunc i64 %.sroa.0.0 to i1
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = lshr i64 %.sroa.0.0, 1
  %i.dq = lshr i64 %.sroa.0.0, 58
  %i.dr = shl nsw i64 -1, %i.dq
  %i.ds = xor i64 %i.dr, -1
  %i.dt = zext nneg i32 %i.dn to i64
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = or i64 %i.du, %i.dp
  %i.dw = and i64 %i.dv, %i.ds
  %i.dx = shl nuw i64 %i.dw, 1
  %i.dy = and i64 %.sroa.0.0, -288230376151711743
end_hunk_4
begin_hunk_5_@_ZN4llvm13slpvectorizer7BoUpSLP25ShuffleInstructionBuilder16ShuffleIRBuilder19createShuffleVectorEPNS_5ValueES5_NS_8ArrayRefIiEE:bb.a
  %.not.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.f:                                             ; preds = %bb.e
  %i.bd = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.be, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.bd, ptr noundef %.0, ptr noundef %.019, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %6) #31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1653, !nonnull !369, !align !655 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bh, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !361
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.bd, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #31, !inline_history !92
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull %i.bd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %bb.e, %bb.f
  %.1.i = phi ptr [ %i.bd, %bb.f ], [ %i.bc, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bl = load i8, ptr %.1.i, align 8, !tbaa !391
  %i.bm = icmp ult i8 %i.bl, 30                   ; 2 uses
  %spec.select.i.i = select i1 %i.bm, ptr null, ptr %.1.i
  store ptr %spec.select.i.i, ptr %i.a, align 8, !tbaa !383
  br i1 %i.bm, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2157, !nonnull !369, !align !655 ; 4 uses
  %i.bp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !10713
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.bp, 1
  %i.bq = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.bq, label %bb.h, label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !383 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !371 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !372
  %.not.i.i = icmp ult i32 %i.bu, %i.bw
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !548

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef %i.bs)
  br label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = zext i32 %i.bu to i64
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !359
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bs, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.bt, align 8, !tbaa !371
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bt, align 8, !tbaa !371
  br label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2158, !nonnull !369, !align !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !386
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !846
  %i.ch = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !10714 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13slpvectorizer7BoUpSLP25ShuffleInstructionBuilder16ShuffleIRBuilder19createShuffleVectorEPNS_5ValueENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %3 to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !580
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !751
  %i.i = icmp eq i32 %i.h, %i.d
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst14isIdentityMaskENS_8ArrayRefIiEEi(ptr %2, i64 %3, i32 noundef %i.d) #31
  br i1 %i.j, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !2156, !nonnull !369, !align !655
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.l, align 8
  %i.m = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.n = load i8, ptr %i.m, align 8, !tbaa !391
  %i.o = icmp ugt i8 %i.n, 29
  %spec.select.i.i = select i1 %i.o, ptr %i.m, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %i.a, align 8, !tbaa !383
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2157, !nonnull !369, !align !655 ; 4 uses
  %i.r = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !10727
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.r, 1
  %i.s = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.s, label %bb.f, label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !383  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !371  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !372
  %.not.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !548

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.u)
  br label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !359
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.u, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !371
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !371
  br label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2158, !nonnull !369, !align !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !386
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !846
  %i.aj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !10728 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.m, %bb.i ], [ %1, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS1_15FixedVectorTypeEb(ptr %0, i64 %1, i32 %.32.val, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = trunc i64 %1 to i32                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 -1, ptr %i.a, align 4, !tbaa !380
  %i.c = icmp eq i32 %.32.val, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst14isIdentityMaskENS_8ArrayRefIiEEi(ptr %0, i64 %1, i32 noundef %.32.val) #31
  br i1 %i.d, label %_ZN4llvm6all_ofINS_10iota_rangeIiEEZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskENS_8ArrayRefIiEEPKNS_15FixedVectorTypeEbEUliE_EEbOT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst22isExtractSubvectorMaskENS_8ArrayRefIiEEiRi(ptr %0, i64 %1, i32 noundef %.32.val, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #31
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %_ZN4llvm6all_ofINS_10iota_rangeIiEEZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskENS_8ArrayRefIiEEPKNS_15FixedVectorTypeEbEUliE_EEbOT_T0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = srem i32 %i.b, %.32.val
  %i.i = sdiv exact i32 %i.b, %.32.val
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.i to i64                     ; 3 uses
  %i.l = ashr i64 %i.k, 2                         ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.n = sext i32 %.32.val to i64                 ; 11 uses
  %.idx2.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 2 ; 5 uses
  %i.o = lshr i64 %i.n, 2                         ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0     ; 4 uses
  %i.p = and i64 %.idx2.i.i.i.i.i.i.i.i, 9223372036854775792 ; 4 uses
  %i.q = and i64 %i.n, 3                          ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit109.thread.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.063.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.dr, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit109.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.06.062.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit109.thread.i.i.i.i.i ] ; 6 uses
  %i.r = trunc i64 %.sroa.06.062.i.i.i.i.i to i32
  %i.s = mul nsw i32 %.32.val, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx2.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.g
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.u, i64 %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %bb.l ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.l ] ; 9 uses
  %i.w = load i32, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !380
  %.not32.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, -1
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !380
  %.not33.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, -1
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !380
  %.not34.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, -1
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit96

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !380
  %.not35.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ac, -1
  br i1 %.not35.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit98

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ae = add nsw i64 %.047.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !10729

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.l, %bb.g
  %.pre-phi56.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.g ], [ %i.q, %bb.l ]
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i [
    i64 3, label %bb.m
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !380
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.n ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ai = load i32, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !380
  %.not30.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ai, -1
  br i1 %.not30.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.o ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ak = load i32, ptr %.2.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !380
  %.not31.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ak, -1
  br i1 %.not31.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit96: ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit98: ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 12
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit96, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit98, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %.028.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.2.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit98 ], [ %i.al, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit ], [ %i.am, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i.loopexit.split.loop.exit96 ], [ %.02946.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ]
  %i.ao = icmp eq ptr %i.v, %.028.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.i.i.i.i.i: ; preds = %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i
  %i.ap = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst14isIdentityMaskENS_8ArrayRefIiEEi(ptr %i.u, i64 %i.n, i32 noundef %.32.val) #31
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i, label %_ZN4llvm6all_ofINS_10iota_rangeIiEEZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskENS_8ArrayRefIiEEPKNS_15FixedVectorTypeEbEUliE_EEbOT_T0_.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.i.i.i.i.i, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = or disjoint i64 %.sroa.06.062.i.i.i.i.i, 1 ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = mul nsw i32 %.32.val, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx2.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i31.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i31.i.i.i.i.i:                 ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i32.i.i.i.i.i = getelementptr i8, ptr %i.au, i64 %i.p
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i31.i.i.i.i.i
  %.047.i.i.i.i.i.i.i33.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.i.i31.i.i.i.i.i ], [ %i.be, %bb.t ] ; 2 uses
  %.02946.i.i.i.i.i.i.i34.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31.i.i.i.i.i ], [ %i.bd, %bb.t ] ; 9 uses
  %i.aw = load i32, ptr %.02946.i.i.i.i.i.i.i34.i.i.i.i.i, align 4, !tbaa !380
  %.not32.i.i.i.i.i.i.i35.i.i.i.i.i = icmp eq i32 %i.aw, -1
  br i1 %.not32.i.i.i.i.i.i.i35.i.i.i.i.i, label %bb.q, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i34.i.i.i.i.i, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !380
  %.not33.i.i.i.i.i.i.i38.i.i.i.i.i = icmp eq i32 %i.ay, -1
  br i1 %.not33.i.i.i.i.i.i.i38.i.i.i.i.i, label %bb.r, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i.loopexit.split.loop.exit

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i34.i.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !380
  %.not34.i.i.i.i.i.i.i40.i.i.i.i.i = icmp eq i32 %i.ba, -1
  br i1 %.not34.i.i.i.i.i.i.i40.i.i.i.i.i, label %bb.s, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i.loopexit.split.loop.exit104

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i34.i.i.i.i.i, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !380
  %.not35.i.i.i.i.i.i.i42.i.i.i.i.i = icmp eq i32 %i.bc, -1
  br i1 %.not35.i.i.i.i.i.i.i42.i.i.i.i.i, label %bb.t, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i.loopexit.split.loop.exit106

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i34.i.i.i.i.i, i64 16
  %i.be = add nsw i64 %.047.i.i.i.i.i.i.i33.i.i.i.i.i, -1
  %i.bf = icmp sgt i64 %.047.i.i.i.i.i.i.i33.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.p, label %._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i, !llvm.loop !10729

._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i:            ; preds = %bb.t, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i
  %.pre-phi56.i.i.i.i.i.i.i46.i.i.i.i.i = phi i64 [ %i.n, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i ], [ %i.q, %bb.t ]
  %.029.lcssa.i.i.i.i.i.i.i47.i.i.i.i.i = phi ptr [ %i.au, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit.thread.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i32.i.i.i.i.i, %bb.t ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i.i.i46.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit55.thread.i.i.i.i.i [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i51.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i48.i.i.i.i.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i
  %i.bg = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i47.i.i.i.i.i, align 4, !tbaa !380
  %.not.i.i.i.i.i.i.i54.i.i.i.i.i = icmp eq i32 %i.bg, -1
  br i1 %.not.i.i.i.i.i.i.i54.i.i.i.i.i, label %bb.v, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i47.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i51.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i51.i.i.i.i.i: ; preds = %bb.v, %._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i
  %.1.i.i.i.i.i.i.i52.i.i.i.i.i = phi ptr [ %i.bh, %bb.v ], [ %.029.lcssa.i.i.i.i.i.i.i47.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i ] ; 3 uses
  %i.bi = load i32, ptr %.1.i.i.i.i.i.i.i52.i.i.i.i.i, align 4, !tbaa !380
  %.not30.i.i.i.i.i.i.i53.i.i.i.i.i = icmp eq i32 %i.bi, -1
  br i1 %.not30.i.i.i.i.i.i.i53.i.i.i.i.i, label %bb.w, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i

bb.w:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i51.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i52.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i48.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i48.i.i.i.i.i: ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i
  %.2.i.i.i.i.i.i.i49.i.i.i.i.i = phi ptr [ %i.bj, %bb.w ], [ %.029.lcssa.i.i.i.i.i.i.i47.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i45.i.i.i.i.i ] ; 2 uses
  %i.bk = load i32, ptr %.2.i.i.i.i.i.i.i49.i.i.i.i.i, align 4, !tbaa !380
  %.not31.i.i.i.i.i.i.i50.i.i.i.i.i = icmp eq i32 %i.bk, -1
  br i1 %.not31.i.i.i.i.i.i.i50.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_119BaseShuffleAnalysis14isIdentityMaskEN4llvm8ArrayRefIiEEPKNS4_15FixedVectorTypeEbEUliE_EclINS4_6detail15SafeIntIteratorIiLb0EEEEEbT_.exit55.thread.i.i.i.i.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i34.i.i.i.i.i, i64 4
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.i.i36.i.i.i.i.i

end_hunk_5
