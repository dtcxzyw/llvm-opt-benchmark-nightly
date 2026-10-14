Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZNK4llvm23LoongArchTargetLowering15lowerBF16_TO_FPENS_7SDValueERNS_12SelectionDAGE:bb.a
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %.fca.0.extract18, ptr %7, align 8, !tbaa !365
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract19, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !160
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 586, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, ptr %.fca.0.extract18, i32 %.fca.1.extract19) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.z, %bb.b ], [ %i.aa, %bb.c ] ; 3 uses
  %.not = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 14
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.012.0 = extractvalue { ptr, i32 } %.pn, 0
  store ptr %.sroa.012.0, ptr %8, align 8, !tbaa !365
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !160
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 247, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %.pn, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering18lowerVECREDUCE_ADDENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 11 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 16 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !366
  store i64 %i.b, ptr %5, align 8, !tbaa !366
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !367
  store i32 %i.e, ptr %i.c, align 8, !tbaa !369
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !487
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.i, align 8, !tbaa !45 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !497
  %i.l = load ptr, ptr %6, align 8, !tbaa !359
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !498
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !487
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %.sroa.0.0.copyload.i.i.i82 = load i16, ptr %i.r, align 8, !tbaa !45 ; 6 uses
  %i.s = add i16 %.sroa.0.0.copyload.i.i.i82, -163
  %spec.select.i.i = icmp ult i16 %i.s, 53
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.83) #29
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.a
  %i.t = zext i16 %.sroa.0.0.copyload.i.i.i82 to i64 ; 4 uses
  %i.u = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !155
  %i.x = zext i16 %i.w to i32
  %i.y = add i16 %.sroa.0.0.copyload.i.i.i82, -19
  %spec.select.i.i.i = icmp ult i16 %i.y, 197
  br i1 %spec.select.i.i.i, label %bb.c, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.z = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.t
  %i.aa = getelementptr i8, ptr %i.z, i64 -2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !45
  %.pre123 = zext i16 %i.ab to i64
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %bb.c
  %.pre-phi = phi i64 [ %i.t, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.pre123, %bb.c ]
  %i.ac = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.pre-phi
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 16
  %i.ae = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.af = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i84 = icmp ult i16 %i.af, 197
  br i1 %spec.select.i.i.i84, label %bb.d, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit87

bb.d:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.ag = zext nneg i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ah = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !45
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit87

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit87:      ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.d
  %.sroa.0.0.i.i85 = phi i16 [ %i.aj, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ]
  %i.ak = zext i16 %.sroa.0.0.i.i85 to i64
  %i.al = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -16
  %.sroa.0.0.copyload.i.i86 = load i64, ptr %i.am, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !162, !nonnull !41, !align !163
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 348
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !154, !range !40, !noundef !41
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !488
  store i16 %.sroa.0.0.copyload.i.i.i82, ptr %4, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.as, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i82, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.t ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.au, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.at, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.g:                                             ; preds = %bb.e
  %i.av = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.f, %bb.g
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.f ], [ %i.av, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.fca.1.extract56 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.aw = trunc nuw i8 %.fca.1.extract56 to i1
  br i1 %i.aw, label %bb.h, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.h:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract55 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.ax = icmp eq i64 %.fca.0.extract55, 256
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit87
  %i.ay = phi i1 [ false, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit87 ], [ %i.ax, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, %bb.i
  %.sroa.0.0.copyload.i.i.i89 = phi i16 [ %.sroa.0.0.copyload.i.i.i89.pre, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ], [ %.sroa.0.0.copyload.i.i.i82, %bb.i ] ; 2 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i89, 0
  br i1 %.not.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.j
  %i.ba = zext i16 %.sroa.0.0.copyload.i.i.i89 to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.k

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.j, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11WidenVectorERKNS_7SDValueERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %5) #28 ; 2 uses
  %.fca.0.extract47 = extractvalue { ptr, i32 } %i.bd, 0 ; 2 uses
  %.fca.1.extract48 = extractvalue { ptr, i32 } %i.bd, 1 ; 2 uses
  store ptr %.fca.0.extract47, ptr %6, align 8, !tbaa !365
  store i32 %.fca.1.extract48, ptr %i.m, align 8, !tbaa !160
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.fca.0.extract47, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !487
  %.phi.trans.insert120 = zext i32 %.fca.1.extract48 to i64
  %.phi.trans.insert121 = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.phi.trans.insert120
  %.sroa.0.0.copyload.i.i.i89.pre = load i16, ptr %.phi.trans.insert121, align 8, !tbaa !45
  br label %bb.j, !llvm.loop !967

bb.k:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %spec.select = select i1 %i.ay, i32 256, i32 128 ; 2 uses
  %i.be = zext i1 %i.ay to i32
  %spec.select81 = lshr i32 %i.x, %i.be           ; 2 uses
  %i.bf = icmp samesign ugt i32 %spec.select81, 1
  br i1 %i.bf, label %_ZN4llvm3MVT12getIntegerVTEj.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %bb.k
  br i1 %i.ay, label %bb.l, label %bb.m

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %bb.k, %_ZN4llvm3MVT12getIntegerVTEj.exit
  %.080119 = phi i32 [ %i.bl, %_ZN4llvm3MVT12getIntegerVTEj.exit ], [ 1, %bb.k ]
  %.0118 = phi i32 [ %.sroa.speculated, %_ZN4llvm3MVT12getIntegerVTEj.exit ], [ %i.ae, %bb.k ]
  %storemerge = shl i32 %.0118, 1
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %storemerge, i32 64) ; 4 uses
  %i.bg = call range(i32 1, 7) i32 @llvm.ctpop.i32(i32 %.sroa.speculated)
  %i.bh = icmp eq i32 %i.bg, 1
  %i.bi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.speculated, i1 true)
  %switch.idx.cast.i = trunc nuw nsw i32 %i.bi to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  %.sroa.0.0.i = select i1 %i.bh, i16 %switch.offset.i, i16 0
  %12 = udiv i32 %spec.select, %.sroa.speculated
  %i.bj = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %12)
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 616, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.bj, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #28 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.bk, 0
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.bk, 1
  store ptr %.fca.0.extract35, ptr %6, align 8, !tbaa !365
  store i32 %.fca.1.extract36, ptr %i.m, align 8, !tbaa !160
  %i.bl = shl i32 %.080119, 1                     ; 2 uses
  %i.bm = icmp ult i32 %i.bl, %spec.select81
  br i1 %i.bm, label %_ZN4llvm3MVT12getIntegerVTEj.exit, label %._crit_edge, !llvm.loop !968

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !497
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !162, !nonnull !41, !align !163
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 374
  %.sroa.0.0.copyload.i = load i16, ptr %i.bo, align 2, !tbaa !45
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.bp, 1
  store ptr %.fca.0.extract27, ptr %8, align 8
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract28, ptr %.sroa.230.0..sroa_idx, align 8
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #28 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.bq, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.bq, 1
  store ptr %.fca.0.extract23, ptr %9, align 8, !tbaa !365
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract24, ptr %.sroa.433.0..sroa_idx, align 8, !tbaa !160
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #28 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.br, 1
  store ptr %.fca.0.extract16, ptr %6, align 8, !tbaa !365
  store i32 %.fca.1.extract17, ptr %i.m, align 8, !tbaa !160
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.bs = trunc i64 %.sroa.0.0.copyload.i.i86 to i32
  %i.bt = udiv i32 %spec.select, %i.bs
  %i.bu = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.copyload.i.i.i, i32 noundef %i.bt)
  %.sroa.011.0.copyload = load ptr, ptr %6, align 8, !tbaa !365
  %.sroa.212.0.copyload = load i32, ptr %i.m, align 8, !tbaa !160
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %i.bu, ptr null, ptr %.sroa.011.0.copyload, i32 %.sroa.212.0.copyload) #28 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.bv, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.bv, 1
  store ptr %.fca.0.extract7, ptr %6, align 8, !tbaa !365
  store i32 %.fca.1.extract8, ptr %i.m, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !497
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !162, !nonnull !41, !align !163
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 374
  %.sroa.0.0.copyload.i90 = load i16, ptr %i.bx, align 2, !tbaa !45
  %i.by = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i90, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.by, 1
  store ptr %.fca.0.extract1, ptr %11, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret { ptr, i32 } %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering11lowerRotateENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef.201", align 8 ; 3 uses
  %11 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !487
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !45 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !366
  store i64 %i.f, ptr %4, align 8, !tbaa !366
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !367
  store i32 %i.i, ptr %i.g, align 8, !tbaa !369
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !358  ; 5 uses
  %.sroa.068.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !365 ; 3 uses
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.671.0.copyload = load i32, ptr %.sroa.671.0..sroa_idx, align 8, !tbaa !160 ; 3 uses
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.776.0.copyload = load i32, ptr %.sroa.776.0..sroa_idx, align 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.044.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !365 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.m = load <2 x i32>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !160
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179  ; 3 uses
  %i.p = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.p, 197
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.r = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !45
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i16 [ %i.t, %bb.b ], [ %.sroa.0.0.copyload.i.i.i, %bb.a ]
  %i.u = zext i16 %.sroa.0.0.i.i to i64
  %i.v = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 1, ptr %i.x, align 8, !tbaa !364
  store i64 0, ptr %5, align 8, !tbaa !164
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.044.0.copyload, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.z, 162
  br i1 %.not.i, label %bb.c, label %"_ZZNK4llvm23LoongArchTargetLowering11lowerRotateENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_RNS_5APIntE.exit.thread"

bb.c:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.aa = tail call { ptr, i32 } @_ZNK4llvm17BuildVectorSDNode13getSplatValueEPNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.044.0.copyload, ptr noundef null) #28
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.aa, 0 ; 3 uses
  %.not7.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not7.i, label %"_ZZNK4llvm23LoongArchTargetLowering11lowerRotateENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_RNS_5APIntE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !179
  switch i32 %i.ac, label %"_ZZNK4llvm23LoongArchTargetLowering11lowerRotateENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_RNS_5APIntE.exit.thread" [
    i32 37, label %bb.e
    i32 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !362 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !364 ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 65
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !164
  store i64 %i.aj, ptr %5, align 8, !tbaa !164
  store i32 %i.ah, ptr %i.x, align 8, !tbaa !364
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.af) #28
  br label %bb.h

"_ZZNK4llvm23LoongArchTargetLowering11lowerRotateENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_RNS_5APIntE.exit.thread": ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.c, %bb.d
  %i.ak = icmp eq i32 %i.o, 201
  br i1 %i.ak, label %bb.j, label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 2 uses
  %i.am = call noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.al) #28
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i32 %i.o, 201
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZZNK4llvm23LoongArchTargetLowering11lowerRotateENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_RNS_5APIntE.exit.thread", %bb.i
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.ap, 1
  store ptr %.sroa.068.0.copyload, ptr %6, align 8, !tbaa !365
  %.sroa.671.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.671.0.copyload, ptr %.sroa.671.0..sroa_idx72, align 8, !tbaa !160
  %.sroa.776.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.776.0.copyload, ptr %.sroa.776.0..sroa_idx77, align 4
  store ptr %.fca.0.extract26, ptr %8, align 8, !tbaa !365
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract27, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !160
  store ptr %.sroa.044.0.copyload, ptr %9, align 8, !tbaa !365
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x i32> %i.m, ptr %.sroa.6.0..sroa_idx47, align 8
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #28 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.aq, 1
  store ptr %.fca.0.extract20, ptr %7, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.223.0..sroa_idx, align 8
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 202, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #28 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.ar, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
end_hunk_0
