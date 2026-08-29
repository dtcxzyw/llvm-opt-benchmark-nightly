Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelLowering?download=true
inline.NumInlined: 26532
inline.NumDeleted: 5745
loop-unroll.NumCompletelyUnrolled: 411
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 438
begin_hunk_0_@_ZL32getContainerForFixedLengthVectorN4llvm3MVTERKNS_14RISCVSubtargetE:bb.a
  %i.s = sub nuw nsw i8 2, %i.l
  %.zext = zext nneg i8 %i.s to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.r, i32 %.zext)
  %i.t = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.j, i32 noundef %.sroa.speculated)
  ret i16 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm19RISCVTargetLowering12computeVLMaxENS_3MVTERKNS_5SDLocERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, i16 %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181, !nonnull !24, !align !182
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.d = load i8, ptr %i.c, align 8, !tbaa !183, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.e, i16 8, i16 7
  %i.g = zext i16 %1 to i64
  %i.h = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !196
  %i.k = add i16 %1, -163
  %spec.select.i.i = icmp ult i16 %i.k, 53
  %.sroa.2.0.insert.shift.i.i = select i1 %spec.select.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.j to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.l = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG15getElementCountERKNS_5SDLocENS_3EVTENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.f, ptr null, i64 %.sroa.0.0.insert.insert.i.i) #34
  ret { ptr, i32 } %i.l
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG15getElementCountERKNS_5SDLocENS_3EVTENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 288230371923853312) i64 @_ZN4llvm19RISCVTargetLowering18computeVLMAXBoundsENS_3MVTERKNS_14RISCVSubtargetE(i16 %0, ptr noundef nonnull align 8 dereferenceable(519768) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = add i16 %0, -19
  %spec.select.i.i.i = icmp ult i16 %i.a, 197
  %i.b = zext i16 %0 to i64                       ; 3 uses
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !194
  %.pre11 = zext i16 %i.e to i64
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.a, %bb.b
  %.pre-phi12 = phi i64 [ %.pre11, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.pre-phi12
  %i.g = getelementptr i8, ptr %i.f, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 16
  %i.h = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b
  %i.i = getelementptr i8, ptr %i.h, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 16
  %i.j = tail call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMaxRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %1) #34 ; 2 uses
  %i.k = tail call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMinRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %1) #34 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.n = load i32, ptr %i.m, align 8, !tbaa !291
  br label %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit

_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit: ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.c
  %i.o = phi i32 [ %i.n, %bb.c ], [ %i.k, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ]
  %i.p = icmp eq i32 %i.j, 0
  %i.q = select i1 %i.p, i32 65536, i32 %i.j
  %i.r = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.s = udiv i32 %i.q, %i.r
  %i.t = trunc i64 %.sroa.0.0.copyload.i to i32   ; 2 uses
  %i.u = mul i32 %i.s, %i.t
  %i.v = lshr i32 %i.u, 6
  %i.w = udiv i32 %i.o, %i.r
  %i.x = mul i32 %i.w, %i.t
  %i.y = lshr i32 %i.x, 6
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.v to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.y to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19RISCVTargetLowering35shouldExpandBuildVectorWithShufflesENS_3EVTEj(ptr nofree nonnull readnone align 8 captures(none) %0, i16 %1, ptr nofree readnone captures(none) %2, i32 %3) unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm19RISCVTargetLowering11getLMULCostENS_3MVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, i16 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = add i16 %1, -19
  %spec.select.i = icmp ult i16 %i.a, 197
  br i1 %spec.select.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181, !nonnull !24, !align !182 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 349
  %i.e = load i8, ptr %i.d, align 1, !tbaa !448, !range !23, !noundef !24 ; 3 uses
  %i.f = trunc nuw i8 %i.e to i1
  %..i = select i1 %i.f, i32 2, i32 1             ; 2 uses
  %i.g = add nsw i16 %1, -163
  %spec.select.i12 = icmp ult i16 %i.g, 53
  %i.h = zext nneg i16 %1 to i64                  ; 2 uses
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 16 ; 3 uses
  br i1 %spec.select.i12, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.b
  %i.k = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.l = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.h
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !194
  %i.o = icmp eq i16 %i.n, 2
  %i.p = shl i32 %i.k, 3
  %spec.select.i13 = select i1 %i.o, i32 %i.p, i32 %i.k
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %spec.select.i13, i1 true)
  %switch.tableidx = add nsw i32 %i.q, -3
  %switch.cast = zext i32 %switch.tableidx to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 846628248815109, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %i.r = tail call i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext %switch.masked) #34 ; 3 uses
  %.sroa.016.0.extract.trunc = trunc i64 %i.r to i32 ; 2 uses
  %i.s = and i64 %i.r, 4294967296
  %.not25 = icmp eq i64 %i.s, 0
  br i1 %.not25, label %bb.e, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %.not = icmp ult i32 %..i, %.sroa.016.0.extract.trunc
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = trunc nuw nsw i32 %..i to i8
  %.rhs.trunc = trunc i64 %i.r to i8
  %i.t = udiv i8 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i8 %i.t to i32
  br label %bb.i

bb.e:                                             ; preds = %switch.lookup
  %i.u = zext nneg i8 %i.e to i32
  %i.v = shl i32 %.sroa.016.0.extract.trunc, %i.u
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.i, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.w = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.w, label %bb.g, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.284) #35
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.f
  %i.x = tail call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMinRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %i.c) #34 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit

bb.h:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 680
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !291
  br label %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit

_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.h
  %i.ab = phi i32 [ %i.aa, %bb.h ], [ %i.x, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %i.ac = zext nneg i8 %i.e to i32
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %i.ag = zext i1 %i.af to i64                    ; 2 uses
  %i.ah = sub i64 %.sroa.0.0.copyload.i.i, %i.ag
  %i.ai = udiv i64 %i.ah, %i.ae
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %bb.d, %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit
  %.1 = phi i32 [ %i.ak, %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit ], [ %i.v, %bb.e ], [ %.zext, %bb.d ], [ 1, %bb.c ]
  %i.al = zext i32 %.1 to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.021.0 = phi i64 [ %i.am, %bb.i ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i32 [ 0, %bb.i ], [ 1, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.021.0, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { i64, i32 } %.fca.1.insert
}

declare i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm19RISCVTargetLowering17getVRGatherVVCostENS_3MVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, i16 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZNK4llvm19RISCVTargetLowering11getLMULCostENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518448) %0, i16 %1) ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i32 } %i.a, 0 ; 9 uses
  %.fca.1.extract9 = extractvalue { i64, i32 } %i.a, 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181, !nonnull !24, !align !182
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 345
  %i.e = load i8, ptr %i.d, align 1, !tbaa !449
  %i.f = icmp eq i8 %i.e, 1
  %i.g = icmp eq i32 %.fca.1.extract9, 0
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 %.fca.0.extract8, 4
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.i, 63
  br i1 %.not, label %.thread, label %.thread.i.i.a

.thread.i.i.a:                                    ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = sub nsw i64 252, %i.j
  %i.l = and i64 %i.k, 17179869180                ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.fca.0.extract8, i64 %i.l)
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %2, label %4

2:                                                ; preds = %.thread.i.i.a
  %3 = icmp sgt i64 %.fca.0.extract8, 0
  %spec.select = select i1 %3, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit25

4:                                                ; preds = %.thread.i.i.a
  %5 = mul nsw i64 %i.l, %.fca.0.extract8
  %6 = ashr exact i64 %5, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit25

.thread:                                          ; preds = %bb.b, %bb.a
  %i.o = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.fca.0.extract8, i64 %.fca.0.extract8)
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %or.cond36.not = icmp eq i64 %.fca.0.extract8, 0
  %spec.select37 = select i1 %or.cond36.not, i64 -9223372036854775808, i64 9223372036854775807
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit25

bb.d:                                             ; preds = %.thread
  %7 = mul nsw i64 %.fca.0.extract8, %.fca.0.extract8
  %8 = lshr i64 %7, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit25

_ZN4llvmmlERKNS_15InstructionCostES2_.exit25:     ; preds = %bb.d, %bb.c, %4, %2
  %.sroa.014.1 = phi i64 [ %spec.select, %2 ], [ %6, %4 ], [ %8, %bb.d ], [ %spec.select37, %bb.c ]
  %.sroa.3.1 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %.fca.1.extract9, %bb.d ], [ %.fca.1.extract9, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.014.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.3.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm19RISCVTargetLowering17getVRGatherVICostENS_3MVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, i16 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZNK4llvm19RISCVTargetLowering11getLMULCostENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518448) %0, i16 %1)
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm19RISCVTargetLowering15getVSlideVXCostENS_3MVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, i16 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZNK4llvm19RISCVTargetLowering11getLMULCostENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518448) %0, i16 %1)
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm19RISCVTargetLowering15getVSlideVICostENS_3MVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, i16 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZNK4llvm19RISCVTargetLowering11getLMULCostENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518448) %0, i16 %1)
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19RISCVTargetLowering12isSpreadMaskENS_8ArrayRefIiEEjRj(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.297", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = zext i32 %2 to i64                       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !450
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 40, ptr %i.d, align 8, !tbaa !452
  %i.e = icmp ugt i32 %2, 40
  br i1 %i.e, label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !tbaa !453
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.b, i64 noundef %i.a, i64 noundef 1) #34
  %i.f = load ptr, ptr %4, align 8, !tbaa !450
  br label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.a
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit, label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i: ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i
  %.sink.i = phi ptr [ %i.f, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ], [ %i.b, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i, i8 1, i64 %i.a, i1 false), !tbaa !454
  br label %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit

_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit:        ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i
  %i.g = phi ptr [ %i.b, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ], [ %.sink.i, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i ] ; 4 uses
  store i64 %i.a, ptr %i.c, align 8, !tbaa !453
  %.not57 = icmp eq i64 %1, 0
  br i1 %.not57, label %.preheader45, label %.lr.ph

.preheader45:                                     ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit
  %.not49.not = icmp eq i32 %2, 0
  br i1 %.not49.not, label %.loopexit, label %.lr.ph52

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !203
  %i.j = icmp eq i32 %i.i, -1
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = urem i32 %i.k, %2
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !454, !range !23, !noundef !24
  %i.p = icmp ne i8 %i.o, 0
  %i.q = and i1 %i.j, %i.p
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %i.n, align 1, !tbaa !454
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.s = and i64 %indvars.iv.next, 4294967295
  %i.t = icmp ugt i64 %1, %i.s
  br i1 %i.t, label %.lr.ph, label %.preheader45, !llvm.loop !455

.lr.ph52:                                         ; preds = %.preheader45, %bb.d
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.d ], [ 0, %.preheader45 ] ; 3 uses
  %.03050 = phi i8 [ %.131, %bb.d ], [ 0, %.preheader45 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv60
  %i.v = load i8, ptr %i.u, align 1, !tbaa !454, !range !23, !noundef !24
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph52
  %i.x = trunc nuw i8 %.03050 to i1
  br i1 %i.x, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = trunc nuw i64 %indvars.iv60 to i32
  store i32 %i.y, ptr %3, align 4, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph52, %bb.c
  %.131 = phi i8 [ %.03050, %.lr.ph52 ], [ 1, %bb.c ] ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph52, !llvm.loop !456

.critedge:                                        ; preds = %bb.d
  %i.z = trunc nuw i8 %.131 to i1
  br i1 %i.z, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.critedge
  %i.aa = udiv i64 %1, %i.a
  %.not3953 = icmp ult i64 %1, %i.a
  br i1 %.not3953, label %.loopexit, label %.critedge41.lr.ph

.critedge41.lr.ph:                                ; preds = %.preheader
  %i.ab = load i32, ptr %3, align 4, !tbaa !203
  br label %.critedge41

.critedge41:                                      ; preds = %.critedge41, %.critedge41.lr.ph
  %.054 = phi i32 [ 0, %.critedge41.lr.ph ], [ %i.ah, %.critedge41 ] ; 3 uses
  %i.ac = mul i32 %.054, %2
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !203 ; 2 uses
  %.not37 = icmp eq i32 %i.ag, -1
  %.not38 = icmp eq i32 %i.ag, %.054
  %or.cond = or i1 %.not37, %.not38               ; 2 uses
  %i.ah = add i32 %.054, 1                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.not39.not = icmp ugt i64 %i.aa, %i.ai
  %or.cond68 = select i1 %or.cond, i1 %.not39.not, i1 false
  br i1 %or.cond68, label %.critedge41, label %.loopexit, !llvm.loop !457

.loopexit:                                        ; preds = %bb.b, %.critedge41, %.preheader45, %.preheader, %.critedge
  %.4 = phi i1 [ false, %.critedge ], [ true, %.preheader ], [ %or.cond, %.critedge41 ], [ false, %.preheader45 ], [ false, %bb.b ]
  %i.aj = icmp eq ptr %i.g, %i.b
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.g) #34
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm19RISCVTargetLowering19lowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.308", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %17 = alloca %"class.llvm::ArrayRef.308", align 8 ; 5 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %19 = alloca %"class.llvm::ArrayRef.308", align 8 ; 5 uses
  %20 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %21 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %22 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %23 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %24 = alloca %"class.llvm::ArrayRef.308", align 8 ; 5 uses
  %25 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %26 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %27 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %28 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %29 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %34 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %35 = alloca [6 x %"class.llvm::SDValue"], align 16 ; 13 uses
  %36 = alloca %"class.llvm::ArrayRef.308", align 8 ; 5 uses
  %37 = alloca %"struct.std::pair.304", align 8   ; 6 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %41 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %42 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %43 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %44 = alloca %"class.llvm::SmallVector.1197", align 8 ; 11 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %47 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
end_hunk_0
