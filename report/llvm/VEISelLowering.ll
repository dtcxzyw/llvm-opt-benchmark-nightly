Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VEISelLowering?download=true
inline.NumInlined: 4497
inline.NumDeleted: 1598
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK4llvm16VETargetLowering9lowerLOADENS_7SDValueERNS_12SelectionDAGE:bb.a
  store i32 0, ptr %i.ed, align 8, !tbaa !491
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %16, i64 112
  store ptr null, ptr %.ptr.7.i, align 16, !tbaa !490
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 120
  store i32 0, ptr %i.ee, align 8, !tbaa !491
  %i.ef = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr null) #25
  store ptr %.sroa.0194.0.copyload.i, ptr %17, align 8, !tbaa !326
  %.sroa.6197.0..sroa_idx200.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.6197.0.copyload.i, ptr %.sroa.6197.0..sroa_idx200.i, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx204.i = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx204.i, align 4
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0151.0.insert.ext.i = zext nneg i8 %spec.select.i36 to i16
  %.sroa.0151.0.insert.insert.i = or disjoint i16 %.sroa.0151.0.insert.ext.i, 256
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  store ptr %16, ptr %25, align 8, !tbaa !329
  %i.ei = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 8, ptr %i.ei, align 8, !tbaa !332
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.271") align 8 %25) #25 ; 2 uses
  %.fca.0.extract1.i42 = extractvalue { ptr, i32 } %i.ej, 0
  %.fca.1.extract2.i43 = extractvalue { ptr, i32 } %i.ej, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  store ptr %i.fa, ptr %26, align 16, !tbaa !490
  %i.ek = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 0, ptr %i.ek, align 8, !tbaa !491
  %i.el = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %.fca.0.extract1.i42, ptr %i.el, align 16, !tbaa !326
  %.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i32 %.fca.1.extract2.i43, ptr %.sroa.4.0..sroa_idx.i44, align 8, !tbaa !11
  %i.em = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %26, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %4) #25 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.em, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.em, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %_ZL11lowerLoadI1N4llvm7SDValueERNS_12SelectionDAGE.exit

bb.q:                                             ; preds = %bb.q, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.q ] ; 4 uses
  %.0129213.i = phi ptr [ %i.ef, %bb.o ], [ %i.fa, %bb.q ]
  %i.en = shl nuw nsw i64 %indvars.iv.i, 3
  %i.eo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.en, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i37, ptr %.sroa.21.0.copyload.i.i.i39, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract21.i = extractvalue { ptr, i32 } %i.eo, 0
  %.fca.1.extract22.i = extractvalue { ptr, i32 } %i.eo, 1
  store ptr %.fca.0.extract21.i, ptr %18, align 8
  store i32 %.fca.1.extract22.i, ptr %.sroa.224.0..sroa_idx.i, align 8
  %i.ep = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i37, ptr %.sroa.21.0.copyload.i.i.i39, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #25 ; 2 uses
  %.fca.0.extract17.i = extractvalue { ptr, i32 } %i.ep, 0
  %.fca.1.extract18.i = extractvalue { ptr, i32 } %i.ep, 1
  %i.eq = load ptr, ptr %i.cj, align 8, !tbaa !494 ; 2 uses
  %.sroa.015.0.copyload.i = load ptr, ptr %i.eq, align 8, !tbaa !326
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.216.0.copyload.i = load i32, ptr %.sroa.216.0..sroa_idx.i, align 8, !tbaa !11
  store ptr %.fca.0.extract17.i, ptr %19, align 8, !tbaa !326
  store i32 %.fca.1.extract18.i, ptr %.sroa.432.0..sroa_idx.i, align 8, !tbaa !11
  %.0.copyload.i.i.i.i.i.i.i143.i = load i64, ptr %i.cm, align 8
  %i.er = and i64 %.0.copyload.i.i.i.i.i.i.i143.i, -5
  %i.es = inttoptr i64 %i.er to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  %i.et = load i8, ptr %i.eg, align 8
  %i.eu = lshr i8 %i.et, 1
  %i.ev = and i8 %i.eu, 4
  %i.ew = zext nneg i8 %i.ev to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, i8 0, i64 40, i1 false)
  %i.ex = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 8, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.sroa.015.0.copyload.i, i32 %.sroa.216.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %20, i16 %.sroa.0151.0.insert.insert.i, i16 noundef zeroext %i.ew, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef null) #25 ; 2 uses
  %.fca.0.extract10.i = extractvalue { ptr, i32 } %i.ex, 0 ; 2 uses
  %.fca.1.extract11.i = extractvalue { ptr, i32 } %i.ex, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %indvars.iv.i ; 2 uses
  store ptr %.fca.0.extract10.i, ptr %i.ey, align 16, !tbaa !326
  %.sroa.4.0..sroa_idx150.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx150.i, align 8, !tbaa !11
  %i.ez = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %indvars.iv.i, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.ez, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.ez, 1
  store ptr %.fca.0.extract6.i, ptr %22, align 8
  store i32 %.fca.1.extract7.i, ptr %.sroa.29.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract10.i, ptr %23, align 8, !tbaa !326
  store i32 %.fca.1.extract11.i, ptr %.sroa.5156.0..sroa_idx.i, align 8, !tbaa !11
  store ptr %.0129213.i, ptr %24, align 8, !tbaa !490
  store i32 0, ptr %i.eh, align 8, !tbaa !491
  %i.fa = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 351, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #25 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.p, label %bb.q, !llvm.loop !551

_ZL11lowerLoadI1N4llvm7SDValueERNS_12SelectionDAGE.exit: ; preds = %bb.l, %bb.n, %bb.p
  %.sroa.5209.0.i = phi i32 [ %.fca.1.extract43.i, %bb.l ], [ %.fca.1.extract.i, %bb.p ], [ 0, %bb.n ]
  %.sroa.0208.0.i = phi ptr [ %.fca.0.extract42.i, %bb.l ], [ %.fca.0.extract.i, %bb.p ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.insert.i40 = insertvalue { ptr, i32 } poison, ptr %.sroa.0208.0.i, 0
  %.fca.1.insert.i41 = insertvalue { ptr, i32 } %.fca.0.insert.i40, i32 %.sroa.5209.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.fb = insertvalue { ptr, i32 } poison, ptr %1, 0
  %i.fc = insertvalue { ptr, i32 } %i.fb, i32 %2, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %bb.h, %_ZL11lowerLoadI1N4llvm7SDValueERNS_12SelectionDAGE.exit, %bb.r, %bb.d
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.r, %bb.f ], [ %i.bz, %bb.h ], [ %.fca.1.insert.i41, %_ZL11lowerLoadI1N4llvm7SDValueERNS_12SelectionDAGE.exit ], [ %i.fc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare noundef zeroext i1 @_ZN4llvm10isMaskTypeENS_3EVTE(i16, ptr) local_unnamed_addr #3

declare { ptr, i32 } @_ZNK4llvm16VETargetLowering10lowerToVVPENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518448), ptr, i32, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16VETargetLowering10lowerSTOREENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 31 uses
  %5 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 10 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 11 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 12 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 11 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 11 uses
  %11 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 10 uses
  %12 = alloca %"struct.llvm::AAMDNodes", align 8 ; 16 uses
  %13 = alloca %"class.llvm::ArrayRef.271", align 8 ; 5 uses
  %14 = alloca [8 x %"class.llvm::SDValue"], align 16 ; 20 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %20 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %21 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %22 = alloca %"class.llvm::ArrayRef.271", align 8 ; 5 uses
  %23 = alloca %"class.llvm::SDLoc", align 8      ; 13 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %26 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %27 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %28 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %32 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %33 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %34 = alloca %"class.llvm::ArrayRef.271", align 8 ; 5 uses
  %35 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 8, !tbaa !30 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !328 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %35, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.f = load i8, ptr %i.e, align 8, !tbaa !152, !range !81, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.b
  %i.h = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.h, 197
  br i1 %spec.select.i.i, label %bb.c, label %bb.e

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #27
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.j = call noundef zeroext i1 @_ZN4llvm10isMaskTypeENS_3EVTE(i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #25
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call { ptr, i32 } @_ZNK4llvm16VETargetLowering10lowerToVVPENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) #25 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.k, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.k, 1
  br label %bb.m

bb.e:                                             ; preds = %.split, %bb.c, %_ZNK4llvm3EVT8isVectorEv.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !494
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.049.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !326
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !479
  switch i32 %i.p, label %bb.f [
    i32 41, label %bb.m
    i32 16, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = load i16, ptr %35, align 8, !tbaa !499   ; 2 uses
  %.not.i.i = icmp eq i16 %i.q, 17
  %i.r = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %.not4.i = select i1 %.not.i.i, i1 %i.s, i1 false
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !475
  store i64 %i.u, ptr %23, align 8, !tbaa !475
  %i.v = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !482
  store i32 %i.x, ptr %i.v, align 8, !tbaa !483
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !479
  %i.aa = icmp eq i32 %i.z, 317
  %spec.select.i.i.i = select i1 %i.aa, ptr %1, ptr null ; 2 uses
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract52.i = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract53.i = extractvalue { ptr, i32 } %i.ab, 1
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract45.i = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract46.i = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 40 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !494
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %.fca.0.extract52.i, ptr %24, align 8, !tbaa !326
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract53.i, ptr %.sroa.457.0..sroa_idx.i, align 8, !tbaa !11
  %i.ag = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.af, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #25
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !494
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr %.fca.0.extract45.i, ptr %25, align 8, !tbaa !326
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract46.i, ptr %.sroa.450.0..sroa_idx.i, align 8, !tbaa !11
  %i.aj = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ai, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8
  %i.al = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.am) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %26, i64 16
  %spec.select.i = call i8 @llvm.umin.i8(i8 %i.an, i8 3) ; 2 uses
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !494 ; 3 uses
  %.sroa.034.0.copyload.i = load ptr, ptr %i.ap, align 8, !tbaa !326
  %.sroa.235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.235.0.copyload.i = load i32, ptr %.sroa.235.0..sroa_idx.i, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %27, i8 0, i64 21, i1 false)
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = lshr i8 %i.as, 1
  %i.au = and i8 %i.at, 4
  %i.av = zext nneg i8 %i.au to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.034.0.copyload.i, i32 %.sroa.235.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr %i.aj, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aq, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %27, i8 %spec.select.i, i16 noundef zeroext %i.av, ptr noundef nonnull align 8 dereferenceable(40) %28) #25 ; 2 uses
  %.fca.0.extract29.i = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract30.i = extractvalue { ptr, i32 } %i.aw, 1
  store ptr %.fca.0.extract29.i, ptr %26, align 16, !tbaa !326
  store i32 %.fca.1.extract30.i, ptr %i.ao, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !494 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !490
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !491
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !327
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !328 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !529
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract13.i = extractvalue { ptr, i32 } %i.bg, 0
  %.fca.1.extract14.i = extractvalue { ptr, i32 } %i.bg, 1
  store ptr %.fca.0.extract13.i, ptr %30, align 8
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract14.i, ptr %.sroa.216.0..sroa_idx.i, align 8
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30) #25 ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.bh, 1
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !494 ; 2 uses
  %.sroa.06.0.copyload.i = load ptr, ptr %i.bi, align 8, !tbaa !326
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.27.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 8, !tbaa !11
  store ptr %.fca.0.extract9.i, ptr %31, align 8, !tbaa !326
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract10.i, ptr %.sroa.424.0..sroa_idx.i, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %32, i8 0, i64 21, i1 false)
  %i.bj = load i8, ptr %i.ar, align 8
  %i.bk = lshr i8 %i.bj, 1
  %i.bl = and i8 %i.bk, 4
  %i.bm = zext nneg i8 %i.bl to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %33, i8 0, i64 40, i1 false)
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.06.0.copyload.i, i32 %.sroa.27.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr %i.ag, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %32, i8 %spec.select.i, i16 noundef zeroext %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %33) #25 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.bn, 1
  store ptr %.fca.0.extract1.i, ptr %.ptr.1.i, align 16, !tbaa !326
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i32 %.fca.1.extract2.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  store ptr %26, ptr %34, align 8, !tbaa !329
  %i.bo = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 2, ptr %i.bo, align 8, !tbaa !332
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.271") align 8 %34) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.bp, 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bq = call noundef zeroext i1 @_ZN4llvm10isMaskTypeENS_3EVTE(i16 %i.q, ptr %i.r) #25
  br i1 %i.bq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !475
  store i64 %i.bs, ptr %4, align 8, !tbaa !475
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !482
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !483
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !479
  %i.by = icmp eq i32 %i.bx, 317
  %spec.select.i.i.i28 = select i1 %i.by, ptr %1, ptr null
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i28, i64 40 ; 11 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !494 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %.sroa.0150.0.copyload.i = load ptr, ptr %i.cb, align 8, !tbaa !326 ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cc = load <2 x i32>, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %i.cd = extractelement <2 x i32> %i.cc, i64 0   ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i29 = load i64, ptr %i.ce, align 8
  %i.cf = and i64 %.0.copyload.i.i.i.i.i.i.i.i29, -5
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cg) #25
  %spec.select.i30 = call i8 @llvm.umin.i8(i8 %i.ch, i8 3) ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0150.0.copyload.i, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !327
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %.sroa.0.0.copyload.i.i.i31 = load i16, ptr %i.cl, align 8, !tbaa !30 ; 10 uses
  %.sroa.21.0..sroa_idx.i.i.i32 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
end_hunk_0
begin_hunk_1_@_ZNK4llvm16VETargetLowering10lowerSTOREENS_7SDValueERNS_12SelectionDAGE:bb.a
  %.fca.0.extract53.i.2 = extractvalue { ptr, i32 } %i.dt, 0
  %.fca.1.extract54.i.2 = extractvalue { ptr, i32 } %i.dt, 1
  store ptr %.fca.0.extract53.i.2, ptr %9, align 8
  store i32 %.fca.1.extract54.i.2, ptr %.sroa.256.0..sroa_idx.i, align 8
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i31, ptr %.sroa.21.0.copyload.i.i.i33, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #25 ; 2 uses
  %.fca.0.extract49.i.2 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract50.i.2 = extractvalue { ptr, i32 } %i.du, 1
  %i.dv = load ptr, ptr %i.bz, align 8, !tbaa !494 ; 2 uses
  %.sroa.043.0.copyload.i.2 = load ptr, ptr %i.dv, align 8, !tbaa !326
  %.sroa.244.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.244.0.copyload.i.2 = load i32, ptr %.sroa.244.0..sroa_idx.i.2, align 8, !tbaa !11
  store ptr %.fca.0.extract49.i.2, ptr %10, align 8, !tbaa !326
  store i32 %.fca.1.extract50.i.2, ptr %.sroa.464.0..sroa_idx.i, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %11, i8 0, i64 21, i1 false)
  %i.dw = load i8, ptr %i.cq, align 8
  %i.dx = lshr i8 %i.dw, 1
  %i.dy = and i8 %i.dx, 4
  %i.dz = zext nneg i8 %i.dy to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.043.0.copyload.i.2, i32 %.sroa.244.0.copyload.i.2, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.ds, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %11, i8 %spec.select.i30, i16 noundef zeroext %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %12) #25 ; 2 uses
  %.fca.0.extract38.i.2 = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract39.i.2 = extractvalue { ptr, i32 } %i.ea, 1
  store ptr %.fca.0.extract38.i.2, ptr %.ptr112.2.i, align 16, !tbaa !326
  %.sroa.447.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.fca.1.extract39.i.2, ptr %.sroa.447.0..sroa_idx.i.2, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !494
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !tbaa.struct !529
  %i.ed = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract66.i.3 = extractvalue { ptr, i32 } %i.ed, 0
  %.fca.1.extract67.i.3 = extractvalue { ptr, i32 } %i.ed, 1
  store ptr %.fca.0.extract66.i.3, ptr %7, align 8
  store i32 %.fca.1.extract67.i.3, ptr %.sroa.269.0..sroa_idx.i, align 8
  %i.ee = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 4558, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #25
  store ptr %.sroa.0150.0.copyload.i, ptr %8, align 8, !tbaa !326
  store i32 %i.cd, ptr %.sroa.6.0..sroa_idx153.i, align 8, !tbaa !11
  store i32 %i.co, ptr %.sroa.7157.0..sroa_idx158.i, align 4
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 24, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i31, ptr %.sroa.21.0.copyload.i.i.i33, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract53.i.3 = extractvalue { ptr, i32 } %i.ef, 0
  %.fca.1.extract54.i.3 = extractvalue { ptr, i32 } %i.ef, 1
  store ptr %.fca.0.extract53.i.3, ptr %9, align 8
  store i32 %.fca.1.extract54.i.3, ptr %.sroa.256.0..sroa_idx.i, align 8
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i31, ptr %.sroa.21.0.copyload.i.i.i33, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #25 ; 2 uses
  %.fca.0.extract49.i.3 = extractvalue { ptr, i32 } %i.eg, 0
  %.fca.1.extract50.i.3 = extractvalue { ptr, i32 } %i.eg, 1
  %i.eh = load ptr, ptr %i.bz, align 8, !tbaa !494 ; 2 uses
  %.sroa.043.0.copyload.i.3 = load ptr, ptr %i.eh, align 8, !tbaa !326
  %.sroa.244.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.244.0.copyload.i.3 = load i32, ptr %.sroa.244.0..sroa_idx.i.3, align 8, !tbaa !11
  store ptr %.fca.0.extract49.i.3, ptr %10, align 8, !tbaa !326
  store i32 %.fca.1.extract50.i.3, ptr %.sroa.464.0..sroa_idx.i, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %11, i8 0, i64 21, i1 false)
  %i.ei = load i8, ptr %i.cq, align 8
  %i.ej = lshr i8 %i.ei, 1
  %i.ek = and i8 %i.ej, 4
  %i.el = zext nneg i8 %i.ek to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  %i.em = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.043.0.copyload.i.3, i32 %.sroa.244.0.copyload.i.3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.ee, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %11, i8 %spec.select.i30, i16 noundef zeroext %i.el, ptr noundef nonnull align 8 dereferenceable(40) %12) #25 ; 2 uses
  %.fca.0.extract38.i.3 = extractvalue { ptr, i32 } %i.em, 0
  %.fca.1.extract39.i.3 = extractvalue { ptr, i32 } %i.em, 1
  store ptr %.fca.0.extract38.i.3, ptr %.ptr112.3.i, align 16, !tbaa !326
  %.sroa.447.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %.fca.1.extract39.i.3, ptr %.sroa.447.0..sroa_idx.i.3, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store ptr %5, ptr %13, align 8, !tbaa !329
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 4, ptr %i.en, align 8, !tbaa !332
  %i.eo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.271") align 8 %13) #25 ; 2 uses
  %.fca.0.extract34.i = extractvalue { ptr, i32 } %i.eo, 0
  %.fca.1.extract35.i = extractvalue { ptr, i32 } %i.eo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZL12lowerStoreI1N4llvm7SDValueERNS_12SelectionDAGE.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i116.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 32
  %.not.i.i118.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 97
  %i.ep = or i1 %.not.i.i116.i, %.not.i.i118.i
  %or.cond165.i = select i1 %i.ep, i1 %i.cm, i1 false
  br i1 %or.cond165.i, label %.preheader166.i, label %_ZL12lowerStoreI1N4llvm7SDValueERNS_12SelectionDAGE.exit

.preheader166.i:                                  ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr null, ptr %14, align 16, !tbaa !490
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.eq, align 8, !tbaa !491
  %.ptr.1.i36 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr null, ptr %.ptr.1.i36, align 16, !tbaa !490
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 0, ptr %i.er, align 8, !tbaa !491
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr null, ptr %.ptr.2.i, align 16, !tbaa !490
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 0, ptr %i.es, align 8, !tbaa !491
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %.ptr.3.i, align 16, !tbaa !490
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 0, ptr %i.et, align 8, !tbaa !491
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr null, ptr %.ptr.4.i, align 16, !tbaa !490
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i32 0, ptr %i.eu, align 8, !tbaa !491
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %14, i64 80
  store ptr null, ptr %.ptr.5.i, align 16, !tbaa !490
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %i.ev, align 8, !tbaa !491
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %14, i64 96
  store ptr null, ptr %.ptr.6.i, align 16, !tbaa !490
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 104
  store i32 0, ptr %i.ew, align 8, !tbaa !491
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr null, ptr %.ptr.7.i, align 16, !tbaa !490
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 120
  store i32 0, ptr %i.ex, align 8, !tbaa !491
  %.sroa.229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.6.0..sroa_idx155.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.216.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.424.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  store ptr %14, ptr %22, align 8, !tbaa !329
  %i.ez = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 8, ptr %i.ez, align 8, !tbaa !332
  %i.fa = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.271") align 8 %22) #25 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.fa, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.fa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZL12lowerStoreI1N4llvm7SDValueERNS_12SelectionDAGE.exit

bb.l:                                             ; preds = %bb.l, %.preheader166.i
  %indvars.iv.i = phi i64 [ 0, %.preheader166.i ], [ %indvars.iv.next.i, %bb.l ] ; 4 uses
  %i.fb = load ptr, ptr %i.bz, align 8, !tbaa !494
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false), !tbaa.struct !529
  %i.fd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %indvars.iv.i, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract26.i = extractvalue { ptr, i32 } %i.fd, 0
  %.fca.1.extract27.i = extractvalue { ptr, i32 } %i.fd, 1
  store ptr %.fca.0.extract26.i, ptr %16, align 8
  store i32 %.fca.1.extract27.i, ptr %.sroa.229.0..sroa_idx.i, align 8
  %i.fe = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 358, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #25
  store ptr %.sroa.0150.0.copyload.i, ptr %17, align 8, !tbaa !326
  store <2 x i32> %i.cc, ptr %.sroa.6.0..sroa_idx155.i, align 8
  %i.ff = shl nuw nsw i64 %indvars.iv.i, 3
  %i.fg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i31, ptr %.sroa.21.0.copyload.i.i.i33, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract13.i39 = extractvalue { ptr, i32 } %i.fg, 0
  %.fca.1.extract14.i40 = extractvalue { ptr, i32 } %i.fg, 1
  store ptr %.fca.0.extract13.i39, ptr %18, align 8
  store i32 %.fca.1.extract14.i40, ptr %.sroa.216.0..sroa_idx.i37, align 8
  %i.fh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i31, ptr %.sroa.21.0.copyload.i.i.i33, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #25 ; 2 uses
  %.fca.0.extract9.i41 = extractvalue { ptr, i32 } %i.fh, 0
  %.fca.1.extract10.i42 = extractvalue { ptr, i32 } %i.fh, 1
  %i.fi = load ptr, ptr %i.bz, align 8, !tbaa !494 ; 2 uses
  %.sroa.06.0.copyload.i43 = load ptr, ptr %i.fi, align 8, !tbaa !326
  %.sroa.27.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.27.0.copyload.i45 = load i32, ptr %.sroa.27.0..sroa_idx.i44, align 8, !tbaa !11
  store ptr %.fca.0.extract9.i41, ptr %19, align 8, !tbaa !326
  store i32 %.fca.1.extract10.i42, ptr %.sroa.424.0..sroa_idx.i38, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %20, i8 0, i64 21, i1 false)
  %i.fj = load i8, ptr %i.ey, align 8
  %i.fk = lshr i8 %i.fj, 1
  %i.fl = and i8 %i.fk, 4
  %i.fm = zext nneg i8 %i.fl to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, i8 0, i64 40, i1 false)
  %i.fn = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.06.0.copyload.i43, i32 %.sroa.27.0.copyload.i45, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.fe, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %20, i8 %spec.select.i30, i16 noundef zeroext %i.fm, ptr noundef nonnull align 8 dereferenceable(40) %21) #25 ; 2 uses
  %.fca.0.extract1.i46 = extractvalue { ptr, i32 } %i.fn, 0
  %.fca.1.extract2.i47 = extractvalue { ptr, i32 } %i.fn, 1
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %indvars.iv.i ; 2 uses
  store ptr %.fca.0.extract1.i46, ptr %i.fo, align 16, !tbaa !326
  %.sroa.4.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i32 %.fca.1.extract2.i47, ptr %.sroa.4.0..sroa_idx.i48, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.k, label %bb.l, !llvm.loop !552

_ZL12lowerStoreI1N4llvm7SDValueERNS_12SelectionDAGE.exit: ; preds = %.preheader.i, %bb.j, %bb.k
  %.sroa.5.0.i = phi i32 [ %.fca.1.extract35.i, %.preheader.i ], [ %.fca.1.extract.i, %bb.k ], [ 0, %bb.j ]
  %.sroa.0164.0.i = phi ptr [ %.fca.0.extract34.i, %.preheader.i ], [ %.fca.0.extract.i, %bb.k ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.e, %bb.g, %_ZL12lowerStoreI1N4llvm7SDValueERNS_12SelectionDAGE.exit, %bb.h, %bb.d
  %.sroa.7.1 = phi i32 [ %.fca.1.extract14, %bb.d ], [ %2, %bb.e ], [ %.fca.1.extract7, %bb.g ], [ %.sroa.5.0.i, %_ZL12lowerStoreI1N4llvm7SDValueERNS_12SelectionDAGE.exit ], [ 0, %bb.h ], [ %2, %bb.e ]
  %.sroa.051.1 = phi ptr [ %.fca.0.extract13, %bb.d ], [ %1, %bb.e ], [ %.fca.0.extract6, %bb.g ], [ %.sroa.0164.0.i, %_ZL12lowerStoreI1N4llvm7SDValueERNS_12SelectionDAGE.exit ], [ null, %bb.h ], [ %1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  %i.fp = insertvalue { ptr, i32 } poison, ptr %.sroa.051.1, 0
  %i.fq = insertvalue { ptr, i32 } %i.fp, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %i.fq
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16VETargetLowering12lowerVASTARTENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 7 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !437
  %i.e = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.b) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !336
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i16 %i.h(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.e, i32 noundef 0) #25 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !338
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 37
  store i8 1, ptr %i.l, align 1, !tbaa !553
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !475
  store i64 %i.n, ptr %6, align 8, !tbaa !475
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !482
  store i32 %i.q, ptr %i.o, align 8, !tbaa !483
  %i.r = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 196, i16 %i.i, ptr null) #25 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.r, 1
  store ptr %.fca.0.extract14, ptr %7, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.217.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !438
  %i.u = sext i32 %i.t to i64
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.v, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.v, 1
  store ptr %.fca.0.extract10, ptr %8, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.213.0..sroa_idx, align 8
  %i.w = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !494  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !490
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !554 ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !326
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !557 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i32 %i.ag, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.ah, 18
  br i1 %spec.select.i.i.i.i, label %bb.c, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !558
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !328
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i:  ; preds = %bb.c, %bb.b
  %i.al = phi i32 [ %.pre.i.i, %bb.c ], [ %i.ag, %bb.b ]
  %i.am = lshr i32 %i.al, 8
  br label %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit: ; preds = %bb.a, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i
  %i.an = phi i32 [ %i.am, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i ], [ 0, %bb.a ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ap = ptrtoint ptr %i.ac to i64
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.w, 1 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.w, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %i.ap, ptr %4, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.240.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.an, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.fca.0.extract6, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !327
  %i.as = zext i32 %.fca.1.extract7 to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.at, align 8, !tbaa !30
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !328
  %i.au = call i8 @_ZNK4llvm12SelectionDAG11getEVTAlignENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i) #25
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.03.0.copyload, i32 %.sroa.24.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %.fca.0.extract6, i32 %.fca.1.extract7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %4, i8 %i.au, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret { ptr, i32 } %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16VETargetLowering10lowerVAARGENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 7 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 19 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 5 uses
  %11 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %27 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !327  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !30 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !328 ; 3 uses
  store i16 %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !494  ; 6 uses
  %.sroa.0137.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !326
  %.sroa.6138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6138.0.copyload = load i32, ptr %.sroa.6138.0..sroa_idx, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0240.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !326 ; 3 uses
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.6243.0.copyload = load i32, ptr %.sroa.6243.0..sroa_idx, align 8, !tbaa !11 ; 3 uses
  %.sroa.7248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.sroa.7248.0.copyload = load i32, ptr %.sroa.7248.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0240.0.copyload, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !327
  %i.i = zext i32 %.sroa.6243.0.copyload to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.j, align 8, !tbaa !30 ; 13 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !328 ; 11 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !490
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !554  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !475
  store i64 %i.q, ptr %8, align 8, !tbaa !475
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !482
  store i32 %i.t, ptr %i.r, align 8, !tbaa !483
  store ptr %.sroa.0240.0.copyload, ptr %9, align 8, !tbaa !326
  %.sroa.6243.0..sroa_idx244 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.6243.0.copyload, ptr %.sroa.6243.0..sroa_idx244, align 8, !tbaa !11
  %.sroa.7248.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.7248.0.copyload, ptr %.sroa.7248.0..sroa_idx249, align 4
  %i.u = ptrtoint ptr %i.o to i64                 ; 2 uses
  store i64 %i.u, ptr %10, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !562
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 0, ptr %i.x, align 4, !tbaa !569
  %.not.i = icmp eq ptr %i.o, null                ; 2 uses
  br i1 %.not.i, label %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit, label %bb.b
end_hunk_1
