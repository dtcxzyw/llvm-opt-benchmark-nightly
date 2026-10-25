Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGBuilder?download=true
inline.NumInlined: 16572
inline.NumDeleted: 6374
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN4llvm19SelectionDAGBuilder18visitInsertElementERKNS_4UserE:bb.a
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.as, ptr %.sroa.217.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !410, !nonnull !51, !align !346
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !215
  %i.az = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ay) #34
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(518435) %i.e, ptr noundef nonnull align 8 dereferenceable(912) %i.az) #34, !inline_history !10 ; 2 uses
  %i.be = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bd)
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %.split.i.i, label %_ZNK4llvm18TargetLoweringBase14getVectorIdxTyERKNS_10DataLayoutE.exit

.split.i.i:                                       ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit
  %i.bg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bd, i1 true) ; 2 uses
  %i.bh = icmp samesign ult i32 %i.bg, 10
  br i1 %i.bh, label %switch.lookup.i.i, label %_ZNK4llvm18TargetLoweringBase14getVectorIdxTyERKNS_10DataLayoutE.exit

switch.lookup.i.i:                                ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.bg to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZNK4llvm18TargetLoweringBase14getVectorIdxTyERKNS_10DataLayoutE.exit

_ZNK4llvm18TargetLoweringBase14getVectorIdxTyERKNS_10DataLayoutE.exit: ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit, %.split.i.i, %switch.lookup.i.i
  %.sroa.0.0.i.i = phi i16 [ %switch.offset.i.i, %switch.lookup.i.i ], [ 0, %.split.i.i ], [ 0, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit ]
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, ptr %.fca.0.extract18, i32 %.fca.1.extract19, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.i.i, ptr null) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !410, !nonnull !51, !align !346 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.bk = load ptr, ptr %0, align 8, !tbaa !436   ; 2 uses
  %i.bl = load i32, ptr %i.ar, align 8, !tbaa !438
  %.not.i.i51 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i51, label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit55, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm18TargetLoweringBase14getVectorIdxTyERKNS_10DataLayoutE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !446
  %i.bo = inttoptr i64 %i.bn to ptr
  br label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit55

_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit55: ; preds = %_ZNK4llvm18TargetLoweringBase14getVectorIdxTyERKNS_10DataLayoutE.exit, %bb.i
  %.sroa.0.0.i52 = phi ptr [ null, %_ZNK4llvm18TargetLoweringBase14getVectorIdxTyERKNS_10DataLayoutE.exit ], [ %i.bo, %bb.i ]
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.bi, 1
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.ac, 1
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.q, 1
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.q, 0
  store ptr %.sroa.0.0.i52, ptr %3, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bl, ptr %.sroa.26.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !215
  %i.br = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.bq) #34
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !554
  %i.bu = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.e, ptr noundef nonnull align 8 dereferenceable(912) %i.br, ptr noundef %i.bt, i1 noundef zeroext false) ; 2 uses
  %i.bv = extractvalue { i16, ptr } %i.bu, 0
  %i.bw = extractvalue { i16, ptr } %i.bu, 1
  store ptr %.fca.0.extract32, ptr %4, align 8, !tbaa !202
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract33, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !73
  store ptr %.fca.0.extract25, ptr %5, align 8, !tbaa !202
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract26, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !73
  store ptr %.fca.0.extract9, ptr %6, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, i32 noundef 163, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.bv, ptr %i.bw, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #34 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !448
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bz, 0 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %.fca.0.extract, ptr %i.ca, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  store i32 %.fca.1.extract, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19SelectionDAGBuilder18visitShuffleVectorERKNS_4UserE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 8 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 10 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 22 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 16 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.895", align 8 ; 3 uses
  %16 = alloca %"class.llvm::SmallVector.899", align 8 ; 13 uses
  %17 = alloca %"class.llvm::SmallVector.128", align 8 ; 14 uses
  %18 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %19 = alloca %"class.llvm::SmallVector.128", align 8 ; 11 uses
  %20 = alloca %"class.llvm::SmallVector.128", align 8 ; 21 uses
  %21 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %22 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %23 = alloca %"class.llvm::SmallVector.899", align 8 ; 9 uses
  %24 = alloca %"class.llvm::ArrayRef.895", align 8 ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %28 = alloca %"class.llvm::SmallVector.899", align 8 ; 10 uses
  %29 = alloca %"class.llvm::ArrayRef.895", align 8 ; 3 uses
  %30 = alloca %"class.llvm::SmallVector.128", align 8 ; 10 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = and i32 %i.i, 1073741824
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !674
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.c:                                             ; preds = %bb.a
  %i.m = and i32 %i.i, 268435455
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [32 x i8], ptr %1, i64 %i.o
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.l, %bb.b ], [ %i.p, %bb.c ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !454
  %i.s = tail call { ptr, i32 } @_ZN4llvm19SelectionDAGBuilder8getValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.r) ; 2 uses
  %.fca.0.extract336 = extractvalue { ptr, i32 } %i.s, 0 ; 5 uses
  %.fca.1.extract337 = extractvalue { ptr, i32 } %i.s, 1 ; 5 uses
  store ptr %.fca.0.extract336, ptr %8, align 8
  %.sroa.2339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 %.fca.1.extract337, ptr %.sroa.2339.0..sroa_idx, align 8
  %i.t = load i32, ptr %i.h, align 4              ; 2 uses
  %i.u = and i32 %i.t, 1073741824
  %.not.i.i402 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i402, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.v = getelementptr inbounds i8, ptr %1, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !674
  br label %_ZNK4llvm4User10getOperandEj.exit403

bb.e:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.x = and i32 %i.t, 268435455
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %1, i64 %i.z
  br label %_ZNK4llvm4User10getOperandEj.exit403

_ZNK4llvm4User10getOperandEj.exit403:             ; preds = %bb.d, %bb.e
  %i.ab = phi ptr [ %i.w, %bb.d ], [ %i.aa, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !454
  %i.ae = tail call { ptr, i32 } @_ZN4llvm19SelectionDAGBuilder8getValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.ad) ; 2 uses
  %.fca.0.extract332 = extractvalue { ptr, i32 } %i.ae, 0 ; 3 uses
  %.fca.1.extract333 = extractvalue { ptr, i32 } %i.ae, 1 ; 3 uses
  store ptr %.fca.0.extract332, ptr %9, align 8
  %.sroa.2335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 %.fca.1.extract333, ptr %.sroa.2335.0..sroa_idx, align 8
  %i.af = load i8, ptr %1, align 8, !tbaa !449
  %.not = icmp eq i8 %i.af, 95
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit403
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !82
  %i.ak = zext i32 %i.aj to i64
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit403
  %i.al = tail call { ptr, i64 } @_ZNK4llvm12ConstantExpr14getShuffleMaskEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #34 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.14.0 = phi i64 [ %i.an, %bb.g ], [ %i.ak, %bb.f ] ; 11 uses
  %.sroa.0498.0 = phi ptr [ %i.am, %bb.g ], [ %i.ah, %bb.f ] ; 14 uses
  %.sroa.0498.0759 = ptrtoaddr ptr %.sroa.0498.0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ao = load ptr, ptr %0, align 8, !tbaa !436   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !438
  %.not.i.i404 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i404, label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !446
  %i.at = inttoptr i64 %i.as to ptr
  br label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit

_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i = phi ptr [ null, %bb.h ], [ %i.at, %bb.i ]
  store ptr %.sroa.0.0.i, ptr %10, align 8
  %.sroa.2325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.aq, ptr %.sroa.2325.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 21 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !215
  %i.ba = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.az) #34
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !554
  %i.bd = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.ax, ptr noundef nonnull align 8 dereferenceable(912) %i.ba, ptr noundef %i.bc, i1 noundef zeroext false) ; 2 uses
  %i.be = extractvalue { i16, ptr } %i.bd, 0      ; 10 uses
  store i16 %i.be, ptr %11, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.bg = extractvalue { i16, ptr } %i.bd, 1      ; 5 uses
  store ptr %i.bg, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.bh = getelementptr inbounds nuw i8, ptr %.fca.0.extract336, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !211
  %i.bj = zext i32 %.fca.1.extract337 to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bk, align 8, !tbaa !79 ; 8 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !81 ; 2 uses
  %.fca.0.insert.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i, ptr %.sroa.21.0.copyload.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %12, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.bl, align 8
  %.idx2.i = shl nuw nsw i64 %.sroa.14.0, 2       ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0498.0, i64 %.idx2.i ; 3 uses
  %i.bn = lshr i64 %.sroa.14.0, 2                 ; 2 uses
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit
  %i.bo = and i64 %.idx2.i, 9223372036854775792
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.sroa.0498.0, i64 %i.bo
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bx, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %.sroa.0498.0, %.lr.ph.i.i.i.i.i ], [ %i.bw, %bb.n ] ; 9 uses
  %i.bp = load i32, ptr %.02946.i.i.i.i.i, align 4, !tbaa !73
  %.not32.i.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not32.i.i.i.i.i, label %bb.k, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %.not33.i.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not33.i.i.i.i.i, label %bb.l, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !73
  %.not34.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not34.i.i.i.i.i, label %bb.m, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit670.a

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %.not35.i.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not35.i.i.i.i.i, label %bb.n, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit672

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.bx = add nsw i64 %.047.i.i.i.i.i, -1
  %i.by = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.by, label %bb.j, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1852

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.n
  %i.bz = and i64 %.sroa.14.0, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit
  %.pre-phi56.i.i.i.i.i = phi i64 [ %i.bz, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.14.0, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.0498.0, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.thread [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !73
  %.not.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.p, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.cb, %bb.p ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.cc = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !73
  %.not30.i.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not30.i.i.i.i.i, label %bb.q, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.q, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.cd, %bb.q ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !73
  %.not31.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not31.i.i.i.i.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.thread, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit670.a: ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit672: ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit: ; preds = %bb.j, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit670.a, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit672, %bb.o, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.o ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.ch, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit672 ], [ %i.cg, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit670.a ], [ %i.cf, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.j ]
  %i.ci = icmp eq ptr %i.bm, %.028.i.i.i.i.i
  br i1 %i.ci, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.thread, label %.critedge

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit
  %.not.i407 = icmp eq i16 %i.be, 0
  br i1 %.not.i407, label %_ZNK4llvm3EVT16isScalableVectorEv.exit, label %.split

.split:                                           ; preds = %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.thread
  %i.cj = add i16 %i.be, -163
  %spec.select.i.i408 = icmp ult i16 %i.cj, 53
  br i1 %spec.select.i.i408, label %bb.r, label %.critedge

_ZNK4llvm3EVT16isScalableVectorEv.exit:           ; preds = %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.thread
  %i.ck = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #35
  br i1 %i.ck, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.split, %_ZNK4llvm3EVT16isScalableVectorEv.exit
  %i.cl = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346 ; 4 uses
  %.not.i.i409 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i409, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.r
  %i.cm = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.cm, 197
  br i1 %spec.select.i.i.i, label %bb.s, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.r
  %i.cn = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  br i1 %i.cn, label %bb.t, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.s:                                             ; preds = %.split.i
  %i.co = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.cp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !79
  %i.cs = insertvalue { i16, ptr } poison, i16 %i.cr, 0
  %i.ct = insertvalue { i16, ptr } %i.cs, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.t:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.cu = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #34
  %.pre588 = load ptr, ptr %i.au, align 8, !tbaa !410
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %.split.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.s, %bb.t
  %i.cv = phi ptr [ %.pre588, %bb.t ], [ %i.cl, %bb.s ], [ %i.cl, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %i.cl, %.split.i ]
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.cu, %bb.t ], [ %i.ct, %bb.s ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.fca.1.insert.i.i, %.split.i ] ; 2 uses
  %i.cw = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.cx = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.cv, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract312 = extractvalue { ptr, i32 } %i.cy, 0
  %.fca.1.extract313 = extractvalue { ptr, i32 } %i.cy, 1
  store ptr %.fca.0.extract312, ptr %13, align 8
  %.sroa.2315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract313, ptr %.sroa.2315.0..sroa_idx, align 8
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.cl, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %i.cw, ptr %i.cx, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #34 ; 2 uses
  %.fca.0.extract308 = extractvalue { ptr, i32 } %i.cz, 0
  %.fca.1.extract309 = extractvalue { ptr, i32 } %i.cz, 1
  %i.da = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  %.sroa.0303.0.copyload = load i16, ptr %11, align 8, !tbaa !79
  %.sroa.2305.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !81
  store ptr %.fca.0.extract308, ptr %14, align 8, !tbaa !202
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract309, ptr %.sroa.4319.0..sroa_idx, align 8, !tbaa !73
  %i.db = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.da, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0303.0.copyload, ptr %.sroa.2305.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #34 ; 2 uses
  %.fca.0.extract299 = extractvalue { ptr, i32 } %i.db, 0
  %.fca.1.extract300 = extractvalue { ptr, i32 } %i.db, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8, !tbaa !448
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dd, 0 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %.fca.0.extract299, ptr %i.de, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  store i32 %.fca.1.extract300, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cd

.critedge:                                        ; preds = %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit, %.split, %_ZNK4llvm3EVT16isScalableVectorEv.exit
  %.not.i.i410 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i410, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i411

.split.i411:                                      ; preds = %.critedge
  %i.df = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i412 = icmp ult i16 %i.df, 53
  br i1 %spec.select.i.i.i412, label %bb.u, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %.critedge
  %i.dg = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i411
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.41) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i411
  %i.dh = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.di = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !210
  %i.dl = zext i16 %i.dk to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.v:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.dm = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.v
  %i.dn = phi i32 [ %i.dl, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.dm, %bb.v ] ; 25 uses
  %i.do = trunc i64 %.sroa.14.0 to i32            ; 14 uses
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  store ptr %.sroa.0498.0, ptr %15, align 8, !tbaa !925
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !66
  %i.dr = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.dq, i16 %i.be, ptr %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %.fca.0.extract336, i32 %.fca.1.extract337, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.895") align 8 %15) #34 ; 2 uses
  %.fca.0.extract250 = extractvalue { ptr, i32 } %i.dr, 0
  %.fca.1.extract251 = extractvalue { ptr, i32 } %i.dr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !tbaa !448
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.fca.0.extract.i.i413 = extractvalue { ptr, i8 } %i.dt, 0 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i413, i64 8
  store ptr %.fca.0.extract250, ptr %i.du, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i413, i64 16
  store i32 %.fca.1.extract251, ptr %.sroa.2.0..0..sroa_idx.i414, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.cd

bb.x:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.dv = icmp ult i32 %i.dn, %i.do
  br i1 %i.dv, label %bb.y, label %bb.bf

bb.y:                                             ; preds = %bb.x
  %i.dw = urem i32 %i.do, %i.dn
  %i.dx = udiv i32 %i.do, %i.dn                   ; 3 uses
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.dz = zext i32 %i.dx to i64                   ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  store ptr %i.ea, ptr %16, align 8, !tbaa !54
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store i32 0, ptr %i.eb, align 8, !tbaa !82
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 8, ptr %i.ec, align 4, !tbaa !77
  %i.ed = icmp ugt i32 %i.dx, 8
  br i1 %i.ed, label %bb.aa, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull %i.ea, i64 noundef %i.dz, i64 noundef 4) #34
  %i.ee = load ptr, ptr %16, align 8, !tbaa !54   ; 4 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dz, 2  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i.i.i.i.i.i.i
  %i.eg = add nsw i64 %.idx.i.i.i.i.i.i.i, -4     ; 2 uses
  %i.eh = lshr exact i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check726 = icmp ult i64 %i.eg, 28
  br i1 %min.iters.check726, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph727

vector.ph727:                                     ; preds = %bb.aa
  %n.vec728 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ej = shl i64 %n.vec728, 2
  %i.ek = getelementptr i8, ptr %i.ee, i64 %i.ej
  br label %vector.body729

vector.body729:                                   ; preds = %vector.body729, %vector.ph727
  %index730 = phi i64 [ 0, %vector.ph727 ], [ %index.next732, %vector.body729 ] ; 2 uses
  %i.el = shl i64 %index730, 2
  %next.gep731 = getelementptr i8, ptr %i.ee, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep731, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep731, align 4, !tbaa !73
  store <4 x i32> splat (i32 -1), ptr %i.em, align 4, !tbaa !73
  %index.next732 = add nuw i64 %index730, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next732, %n.vec728
  br i1 %i.en, label %middle.block733, label %vector.body729, !llvm.loop !1853

middle.block733:                                  ; preds = %vector.body729
  %cmp.n734 = icmp eq i64 %i.ei, %n.vec728
  br i1 %cmp.n734, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.aa, %middle.block733
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ee, %bb.aa ], [ %i.ek, %middle.block733 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !73
  %i.eo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eo, %i.ef
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1854

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.z
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.dz, 2    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx.i.i.i.i.i.i
  %i.eq = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.er = lshr exact i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check715 = icmp ult i64 %i.eq, 28
  br i1 %min.iters.check715, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph716

vector.ph716:                                     ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  %n.vec717 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.et = shl i64 %n.vec717, 2
  %i.eu = getelementptr i8, ptr %i.ea, i64 %i.et
  br label %vector.body718

vector.body718:                                   ; preds = %vector.body718, %vector.ph716
  %index719 = phi i64 [ 0, %vector.ph716 ], [ %index.next721, %vector.body718 ] ; 2 uses
  %i.ev = shl i64 %index719, 2
  %next.gep720 = getelementptr i8, ptr %i.ea, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep720, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep720, align 8, !tbaa !73
  store <4 x i32> splat (i32 -1), ptr %i.ew, align 8, !tbaa !73
  %index.next721 = add nuw i64 %index719, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next721, %n.vec717
  br i1 %i.ex, label %middle.block722, label %vector.body718, !llvm.loop !1855

middle.block722:                                  ; preds = %vector.body718
  %cmp.n723 = icmp eq i64 %i.es, %n.vec717
  br i1 %cmp.n723, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i, %middle.block722
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ea, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i ], [ %i.eu, %middle.block722 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !73
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ey, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1856

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block722, %middle.block733
  store i32 %i.dx, ptr %i.eb, align 8, !tbaa !82
  %i.ez = load ptr, ptr %16, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, %bb.ae
  %indvars.iv = phi i64 [ 0, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0498.0, i64 %indvars.iv
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !73 ; 3 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = urem i32 %i.fb, %i.dn
  %i.fe = udiv i32 %i.fb, %i.dn                   ; 2 uses
  %i.ff = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.fg = urem i32 %i.ff, %i.dn
  %i.fh = udiv i32 %i.ff, %i.dn
  %.not390 = icmp eq i32 %i.fd, %i.fg
  br i1 %.not390, label %bb.ad, label %.critedge398

bb.ad:                                            ; preds = %bb.ac
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !73 ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 0
  %.not391 = icmp eq i32 %i.fk, %i.fe
  %or.cond678 = or i1 %i.fl, %.not391
  br i1 %or.cond678, label %._crit_edge590.a, label %.critedge398

._crit_edge590.a:                                 ; preds = %bb.ad
  store i32 %i.fe, ptr %i.fj, align 4, !tbaa !73
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge590.a, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %i.do
  br i1 %exitcond, label %bb.af, label %bb.ab, !llvm.loop !1857

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.fm = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.fm, ptr %17, align 8, !tbaa !54
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 10 uses
  store i32 0, ptr %i.fn, align 8, !tbaa !82
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 3 uses
  store i32 8, ptr %i.fo, align 4, !tbaa !77
  %i.fp = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.fq = load i32, ptr %i.eb, align 8, !tbaa !82 ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %.idx556 = shl nuw nsw i64 %i.fr, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx556
  %.not392550 = icmp eq i32 %i.fq, 0
  br i1 %.not392550, label %._crit_edge554, label %.lr.ph553

._crit_edge554.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.pre586 = load ptr, ptr %17, align 8, !tbaa !54
  %.pre587 = load i32, ptr %i.fn, align 8, !tbaa !82
  %i.ft = zext i32 %.pre587 to i64
  br label %._crit_edge554

._crit_edge554:                                   ; preds = %._crit_edge554.loopexit, %bb.af
  %i.fu = phi i64 [ %i.ft, %._crit_edge554.loopexit ], [ 0, %bb.af ]
  %i.fv = phi ptr [ %.pre586, %._crit_edge554.loopexit ], [ %i.fm, %bb.af ]
  %i.fw = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  %.sroa.0209.0.copyload = load i16, ptr %11, align 8, !tbaa !79
  %.sroa.2211.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !81
  store ptr %i.fv, ptr %18, align 8, !tbaa !199
  %i.fx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.fu, ptr %i.fx, align 8, !tbaa !200
  %i.fy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.fw, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0209.0.copyload, ptr %.sroa.2211.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %18) #34 ; 2 uses
  %.fca.0.extract205 = extractvalue { ptr, i32 } %i.fy, 0
  %.fca.1.extract206 = extractvalue { ptr, i32 } %i.fy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8, !tbaa !448
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ga = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fz, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.fca.0.extract.i.i416 = extractvalue { ptr, i8 } %i.ga, 0 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i416, i64 8
  store ptr %.fca.0.extract205, ptr %i.gb, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i417 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i416, i64 16
  store i32 %.fca.1.extract206, ptr %.sroa.2.0..0..sroa_idx.i417, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gc = load ptr, ptr %17, align 8, !tbaa !54   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fm
  br i1 %i.gd, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge554
  call void @free(ptr noundef %i.gc) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %._crit_edge554, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %i.ge = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ea
  br i1 %i.gf, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  call void @free(ptr noundef %i.ge) #34
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.cd

.lr.ph553:                                        ; preds = %bb.af, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.0357551 = phi ptr [ %i.he, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %i.fp, %bb.af ] ; 2 uses
  %i.gg = load i32, ptr %.0357551, align 4, !tbaa !73 ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.lr.ph553
  %i.gi = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  %.sroa.0224.0.copyload = load i16, ptr %12, align 8, !tbaa !79
  %.sroa.2226.0.copyload = load ptr, ptr %i.bl, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.gj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.gi, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0224.0.copyload, ptr %.sroa.2226.0.copyload) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %.fca.0.extract220 = extractvalue { ptr, i32 } %i.gj, 0 ; 2 uses
  %.fca.1.extract221 = extractvalue { ptr, i32 } %i.gj, 1 ; 2 uses
  %i.gk = load i32, ptr %i.fn, align 8, !tbaa !82 ; 2 uses
  %i.gl = load i32, ptr %i.fo, align 4, !tbaa !77
  %.not.i418 = icmp ult i32 %i.gk, %i.gl
  br i1 %.not.i418, label %bb.ak, label %bb.aj, !prof !89

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract220, i32 %.fca.1.extract221)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gm = zext i32 %i.gk to i64
  %i.gn = load ptr, ptr %17, align 8, !tbaa !54
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %i.gm ; 2 uses
  store ptr %.fca.0.extract220, ptr %i.go, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i32 %.fca.1.extract221, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.gp = load i32, ptr %i.fn, align 8, !tbaa !82
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.fn, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.al:                                            ; preds = %.lr.ph553
  %i.gr = icmp eq i32 %i.gg, 0
  %i.gs = load i32, ptr %i.fn, align 8, !tbaa !82 ; 3 uses
  %i.gt = load i32, ptr %i.fo, align 4, !tbaa !77
  %.not.i419 = icmp ult i32 %i.gs, %i.gt          ; 2 uses
  br i1 %i.gr, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i419, label %bb.ao, label %bb.an, !prof !89

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract336, i32 %.fca.1.extract337)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.ao:                                            ; preds = %bb.am
  %i.gu = zext i32 %i.gs to i64
  %i.gv = load ptr, ptr %17, align 8, !tbaa !54
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gu ; 2 uses
  store ptr %.fca.0.extract336, ptr %i.gw, align 1
  %.sroa.32.0..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.fca.1.extract337, ptr %.sroa.32.0..sroa_idx.i420, align 1
  %i.gx = load i32, ptr %i.fn, align 8, !tbaa !82
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %i.fn, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.ap:                                            ; preds = %bb.al
  br i1 %.not.i419, label %bb.ar, label %bb.aq, !prof !89

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.extract332, i32 %.fca.1.extract333)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gz = zext i32 %i.gs to i64
  %i.ha = load ptr, ptr %17, align 8, !tbaa !54
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.gz ; 2 uses
  store ptr %.fca.0.extract332, ptr %i.hb, align 1
  %.sroa.32.0..sroa_idx.i423 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 %.fca.1.extract333, ptr %.sroa.32.0..sroa_idx.i423, align 1
  %i.hc = load i32, ptr %i.fn, align 8, !tbaa !82
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.fn, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.ak, %bb.aj
  %i.he = getelementptr inbounds nuw i8, ptr %.0357551, i64 4 ; 2 uses
  %.not392 = icmp eq ptr %i.he, %i.fs
  br i1 %.not392, label %._crit_edge554.loopexit, label %.lr.ph553

.critedge398:                                     ; preds = %bb.ad, %bb.ac
  %i.hf = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.ea
  br i1 %i.hg, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit425, label %bb.as

bb.as:                                            ; preds = %.critedge398
  call void @free(ptr noundef %i.hf) #34
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit425

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit425:         ; preds = %.critedge398, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %.pre584 = load i16, ptr %11, align 8, !tbaa !208
  br label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit425, %bb.y
  %i.hh = phi i16 [ %.pre584, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit425 ], [ %i.be, %bb.y ] ; 4 uses
  %i.hi = add i32 %i.do, -1
  %i.hj = udiv i32 %i.hi, %i.dn                   ; 2 uses
  %i.hk = add i32 %i.hj, 1
  %i.hl = mul i32 %i.hk, %i.dn                    ; 9 uses
  %i.hm = udiv i32 %i.hl, %i.dn                   ; 6 uses
  %i.hn = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !201
  %.not.i.i426 = icmp eq i16 %i.hh, 0
  br i1 %.not.i.i426, label %_ZNK4llvm3EVT8isVectorEv.exit.i432, label %.split.i427

.split.i427:                                      ; preds = %bb.at
  %i.hq = add i16 %i.hh, -19
  %spec.select.i.i.i428 = icmp ult i16 %i.hq, 197
  br i1 %spec.select.i.i.i428, label %bb.au, label %bb.aw

_ZNK4llvm3EVT8isVectorEv.exit.i432:               ; preds = %bb.at
  %i.hr = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #35
  br i1 %i.hr, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %.split.i427
  %i.hs = zext nneg i16 %i.hh to i64
  %i.ht = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 -2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !79
  %i.hw = insertvalue { i16, ptr } poison, i16 %i.hv, 0
  %i.hx = insertvalue { i16, ptr } %i.hw, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit433

end_hunk_0
begin_hunk_1_@_ZN4llvm19SelectionDAGBuilder18visitShuffleVectorERKNS_4UserE:bb.a
  store i32 8, ptr %i.kh, align 4, !tbaa !77
  %xtraiter785 = and i64 %i.ij, 7                 ; 2 uses
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  br i1 %lcmp.mod786.not, label %.lr.ph.i.i.i.i.i446.prol.loopexit, label %.lr.ph.i.i.i.i.i446.prol

.lr.ph.i.i.i.i.i446.prol:                         ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444, %.lr.ph.i.i.i.i.i446.prol
  %.09.i.i.i.i.i447.prol = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i446.prol ], [ %i.kf, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444 ] ; 3 uses
  %.068.i.i.i.i.i448.prol = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i446.prol ], [ %i.ij, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444 ]
  %prol.iter787 = phi i64 [ %prol.iter787.next, %.lr.ph.i.i.i.i.i446.prol ], [ 0, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444 ]
  store ptr %.fca.0.extract184, ptr %.09.i.i.i.i.i447.prol, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447.prol, i64 8
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.prol, align 8, !tbaa !73
  %i.ki = add nsw i64 %.068.i.i.i.i.i448.prol, -1 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447.prol, i64 16 ; 2 uses
  %prol.iter787.next = add i64 %prol.iter787, 1   ; 2 uses
  %prol.iter787.cmp.not = icmp eq i64 %prol.iter787.next, %xtraiter785
  br i1 %prol.iter787.cmp.not, label %.lr.ph.i.i.i.i.i446.prol.loopexit, label %.lr.ph.i.i.i.i.i446.prol, !llvm.loop !1861

.lr.ph.i.i.i.i.i446.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i446.prol, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444
  %.09.i.i.i.i.i447.unr = phi ptr [ %i.kf, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444 ], [ %i.kj, %.lr.ph.i.i.i.i.i446.prol ]
  %.068.i.i.i.i.i448.unr = phi i64 [ %i.ij, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444 ], [ %i.ki, %.lr.ph.i.i.i.i.i446.prol ]
  %i.kk = icmp ult i64 %i.ja, 7
  br i1 %i.kk, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457, label %.lr.ph.i.i.i.i.i446

.lr.ph.i.i.i.i.i446:                              ; preds = %.lr.ph.i.i.i.i.i446.prol.loopexit, %.lr.ph.i.i.i.i.i446
  %.09.i.i.i.i.i447 = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i446 ], [ %.09.i.i.i.i.i447.unr, %.lr.ph.i.i.i.i.i446.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i448 = phi i64 [ %i.ks, %.lr.ph.i.i.i.i.i446 ], [ %.068.i.i.i.i.i448.unr, %.lr.ph.i.i.i.i.i446.prol.loopexit ]
  store ptr %.fca.0.extract184, ptr %.09.i.i.i.i.i447, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 8
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449, align 8, !tbaa !73
  %i.kl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 16
  store ptr %.fca.0.extract184, ptr %i.kl, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 24
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.1, align 8, !tbaa !73
  %i.km = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 32
  store ptr %.fca.0.extract184, ptr %i.km, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 40
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.2, align 8, !tbaa !73
  %i.kn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 48
  store ptr %.fca.0.extract184, ptr %i.kn, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 56
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.3, align 8, !tbaa !73
  %i.ko = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 64
  store ptr %.fca.0.extract184, ptr %i.ko, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 72
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.4, align 8, !tbaa !73
  %i.kp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 80
  store ptr %.fca.0.extract184, ptr %i.kp, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 88
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.5, align 8, !tbaa !73
  %i.kq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 96
  store ptr %.fca.0.extract184, ptr %i.kq, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 104
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.6, align 8, !tbaa !73
  %i.kr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 112
  store ptr %.fca.0.extract184, ptr %i.kr, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 120
  store i32 %.fca.1.extract185, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i449.7, align 8, !tbaa !73
  %i.ks = add nsw i64 %.068.i.i.i.i.i448, -8      ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i447, i64 128
  %.not.i.i.i.i.i450.7 = icmp eq i64 %i.ks, 0
  br i1 %.not.i.i.i.i.i450.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457, label %.lr.ph.i.i.i.i.i446, !llvm.loop !11

_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i452
  %.pre585 = load ptr, ptr %19, align 8, !tbaa !54
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457

_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457: ; preds = %.lr.ph.i.i.i.i.i446.prol.loopexit, %.lr.ph.i.i.i.i.i446, %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457.loopexit, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444.thread
  %i.ku = phi ptr [ %.pre585, %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457.loopexit ], [ %i.ik, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444.thread ], [ %i.ik, %.lr.ph.i.i.i.i.i446 ], [ %i.ik, %.lr.ph.i.i.i.i.i446.prol.loopexit ]
  %i.kv = phi ptr [ %i.jr, %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457.loopexit ], [ %i.jf, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444.thread ], [ %i.kg, %.lr.ph.i.i.i.i.i446 ], [ %i.kg, %.lr.ph.i.i.i.i.i446.prol.loopexit ] ; 2 uses
  %i.kw = phi ptr [ %i.jq, %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457.loopexit ], [ %i.je, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i444.thread ], [ %i.kf, %.lr.ph.i.i.i.i.i446 ], [ %i.kf, %.lr.ph.i.i.i.i.i446.prol.loopexit ]
  store i32 %i.hm, ptr %i.kv, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ku, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %i.kx = load ptr, ptr %20, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kx, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.ky = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  %i.kz = load ptr, ptr %19, align 8, !tbaa !54
  store ptr %i.kz, ptr %21, align 8, !tbaa !199
  %i.la = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.lb = load i32, ptr %i.il, align 8, !tbaa !82
  %i.lc = zext i32 %i.lb to i64
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !200
  %i.ld = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ky, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.i435, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %21) #34 ; 2 uses
  %.fca.0.extract174 = extractvalue { ptr, i32 } %i.ld, 0
  %.fca.1.extract175 = extractvalue { ptr, i32 } %i.ld, 1
  %i.le = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  %i.lf = load ptr, ptr %20, align 8, !tbaa !54
  store ptr %i.lf, ptr %22, align 8, !tbaa !199
  %i.lg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.lh = load i32, ptr %i.kv, align 8, !tbaa !82
  %i.li = zext i32 %i.lh to i64
  store i64 %i.li, ptr %i.lg, align 8, !tbaa !200
  %i.lj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.le, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.i435, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %22) #34 ; 2 uses
  %.fca.0.extract164 = extractvalue { ptr, i32 } %i.lj, 0
  %.fca.1.extract165 = extractvalue { ptr, i32 } %i.lj, 1
  store ptr %.fca.0.extract164, ptr %9, align 8
  store i32 %.fca.1.extract165, ptr %.sroa.2335.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  %i.lk = zext i32 %i.hl to i64                   ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 10 uses
  store ptr %i.ll, ptr %23, align 8, !tbaa !54
  %i.lm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i32 0, ptr %i.lm, align 8, !tbaa !82
  %i.ln = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 8, ptr %i.ln, align 4, !tbaa !77
  %i.lo = icmp ugt i32 %i.hl, 8
  br i1 %i.lo, label %bb.ay, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i458

bb.ay:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull %i.ll, i64 noundef %i.lk, i64 noundef 4) #34
  %i.lp = load ptr, ptr %23, align 8, !tbaa !54   ; 6 uses
  %.idx.i.i.i.i.i.i.i464 = shl nuw nsw i64 %i.lk, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.idx.i.i.i.i.i.i.i464
  %i.lr = add nsw i64 %.idx.i.i.i.i.i.i.i464, -4  ; 2 uses
  %i.ls = lshr exact i64 %i.lr, 2
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check748 = icmp ult i64 %i.lr, 28
  br i1 %min.iters.check748, label %.lr.ph.i.i.i.i.i.i.i.i.i465.preheader, label %vector.ph749

vector.ph749:                                     ; preds = %bb.ay
  %n.vec750 = and i64 %i.lt, 9223372036854775800  ; 3 uses
  %i.lu = shl i64 %n.vec750, 2
  %i.lv = getelementptr i8, ptr %i.lp, i64 %i.lu
  br label %vector.body751

vector.body751:                                   ; preds = %vector.body751, %vector.ph749
  %index752 = phi i64 [ 0, %vector.ph749 ], [ %index.next754, %vector.body751 ] ; 2 uses
  %i.lw = shl i64 %index752, 2
  %next.gep753 = getelementptr i8, ptr %i.lp, i64 %i.lw ; 2 uses
  %i.lx = getelementptr i8, ptr %next.gep753, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep753, align 4, !tbaa !73
  store <4 x i32> splat (i32 -1), ptr %i.lx, align 4, !tbaa !73
  %index.next754 = add nuw i64 %index752, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next754, %n.vec750
  br i1 %i.ly, label %middle.block755, label %vector.body751, !llvm.loop !1862

middle.block755:                                  ; preds = %vector.body751
  %cmp.n756 = icmp eq i64 %i.lt, %n.vec750
  br i1 %cmp.n756, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468, label %.lr.ph.i.i.i.i.i.i.i.i.i465.preheader

.lr.ph.i.i.i.i.i.i.i.i.i465.preheader:            ; preds = %bb.ay, %middle.block755
  %.06.i.i.i.i.i.i.i.i.i466.ph = phi ptr [ %i.lp, %bb.ay ], [ %i.lv, %middle.block755 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i465

.lr.ph.i.i.i.i.i.i.i.i.i465:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i465.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i465
  %.06.i.i.i.i.i.i.i.i.i466 = phi ptr [ %i.lz, %.lr.ph.i.i.i.i.i.i.i.i.i465 ], [ %.06.i.i.i.i.i.i.i.i.i466.ph, %.lr.ph.i.i.i.i.i.i.i.i.i465.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i.i466, align 4, !tbaa !73
  %i.lz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i466, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i467 = icmp eq ptr %i.lz, %i.lq
  br i1 %.not.i.i.i.i.i.i.i.i.i467, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468, label %.lr.ph.i.i.i.i.i.i.i.i.i465, !llvm.loop !1863

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i458:       ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2EmRKS1_.exit457
  %.not.i459 = icmp eq i32 %i.hl, 0
  br i1 %.not.i459, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468, label %bb.az

bb.az:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i458
  %.idx.i.i.i.i.i.i460 = shl nuw nsw i64 %i.lk, 2 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.idx.i.i.i.i.i.i460
  %i.mb = add nsw i64 %.idx.i.i.i.i.i.i460, -4    ; 2 uses
  %i.mc = lshr exact i64 %i.mb, 2
  %i.md = add nuw nsw i64 %i.mc, 1                ; 2 uses
  %min.iters.check737 = icmp ult i64 %i.mb, 28
  br i1 %min.iters.check737, label %.lr.ph.i.i.i.i.i.i.i.i461.preheader, label %vector.ph738

vector.ph738:                                     ; preds = %bb.az
  %n.vec739 = and i64 %i.md, 9223372036854775800  ; 3 uses
  %i.me = shl i64 %n.vec739, 2
  %i.mf = getelementptr i8, ptr %i.ll, i64 %i.me
  br label %vector.body740

vector.body740:                                   ; preds = %vector.body740, %vector.ph738
  %index741 = phi i64 [ 0, %vector.ph738 ], [ %index.next743, %vector.body740 ] ; 2 uses
  %i.mg = shl i64 %index741, 2
  %next.gep742 = getelementptr i8, ptr %i.ll, i64 %i.mg ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep742, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep742, align 8, !tbaa !73
  store <4 x i32> splat (i32 -1), ptr %i.mh, align 8, !tbaa !73
  %index.next743 = add nuw i64 %index741, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next743, %n.vec739
  br i1 %i.mi, label %middle.block744, label %vector.body740, !llvm.loop !1864

middle.block744:                                  ; preds = %vector.body740
  %cmp.n745 = icmp eq i64 %i.md, %n.vec739
  br i1 %cmp.n745, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468, label %.lr.ph.i.i.i.i.i.i.i.i461.preheader

.lr.ph.i.i.i.i.i.i.i.i461.preheader:              ; preds = %bb.az, %middle.block744
  %.06.i.i.i.i.i.i.i.i462.ph = phi ptr [ %i.ll, %bb.az ], [ %i.mf, %middle.block744 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i461

.lr.ph.i.i.i.i.i.i.i.i461:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i461.preheader, %.lr.ph.i.i.i.i.i.i.i.i461
  %.06.i.i.i.i.i.i.i.i462 = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i461 ], [ %.06.i.i.i.i.i.i.i.i462.ph, %.lr.ph.i.i.i.i.i.i.i.i461.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i462, align 4, !tbaa !73
  %i.mj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i462, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i463 = icmp eq ptr %i.mj, %i.ma
  br i1 %.not.i.i.i.i.i.i.i.i463, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468, label %.lr.ph.i.i.i.i.i.i.i.i461, !llvm.loop !1865

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i461, %.lr.ph.i.i.i.i.i.i.i.i.i465, %middle.block744, %middle.block755, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i458
  %i.mk = phi ptr [ %i.lp, %middle.block755 ], [ %i.ll, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i458 ], [ %i.ll, %middle.block744 ], [ %i.lp, %.lr.ph.i.i.i.i.i.i.i.i.i465 ], [ %i.ll, %.lr.ph.i.i.i.i.i.i.i.i461 ] ; 6 uses
  store i32 %i.hl, ptr %i.lm, align 8, !tbaa !82
  %.neg396 = mul i32 %i.hj, %i.dn                 ; 4 uses
  %i.ml = and i64 %.sroa.14.0, 4294967295         ; 2 uses
  %min.iters.check761 = icmp samesign ult i64 %i.ml, 8
  %i.mm = ptrtoaddr ptr %i.mk to i64
  %i.mn = sub i64 %.sroa.0498.0759, %i.mm
  %diff.check = icmp ugt i64 %i.mn, -32
  %or.cond777 = select i1 %min.iters.check761, i1 true, i1 %diff.check
  br i1 %or.cond777, label %scalar.ph760.preheader, label %vector.ph762

vector.ph762:                                     ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468
  %n.vec763 = and i64 %.sroa.14.0, 4294967288     ; 3 uses
  %broadcast.splatinsert764.a = insertelement <4 x i32> poison, i32 %.neg396, i64 0
  %broadcast.splat765.a = shufflevector <4 x i32> %broadcast.splatinsert764.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert766 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat767 = shufflevector <4 x i32> %broadcast.splatinsert766, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body768

vector.body768:                                   ; preds = %vector.body768, %vector.ph762
  %index769 = phi i64 [ 0, %vector.ph762 ], [ %index.next772, %vector.body768 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0498.0, i64 %index769 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %wide.load770 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !73 ; 2 uses
  %wide.load771 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !73 ; 2 uses
  %i.mq = icmp slt <4 x i32> %wide.load770, %broadcast.splat767
  %i.mr = icmp slt <4 x i32> %wide.load771, %broadcast.splat767
  %i.ms = select <4 x i1> %i.mq, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat765.a
  %i.mt = select <4 x i1> %i.mr, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat765.a
  %i.mu = add <4 x i32> %i.ms, %wide.load770
  %i.mv = add <4 x i32> %i.mt, %wide.load771
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index769 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <4 x i32> %i.mu, ptr %i.mw, align 4, !tbaa !73
  store <4 x i32> %i.mv, ptr %i.mx, align 4, !tbaa !73
  %index.next772 = add nuw i64 %index769, 8       ; 2 uses
  %i.my = icmp eq i64 %index.next772, %n.vec763
  br i1 %i.my, label %middle.block773, label %vector.body768, !llvm.loop !1866

middle.block773:                                  ; preds = %vector.body768
  %cmp.n774 = icmp eq i64 %i.ml, %n.vec763
  br i1 %cmp.n774, label %.loopexit, label %scalar.ph760.preheader

scalar.ph760.preheader:                           ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468, %middle.block773
  %indvars.iv566.ph = phi i64 [ 0, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit468 ], [ %n.vec763, %middle.block773 ] ; 5 uses
  %33 = trunc nuw i64 %indvars.iv566.ph to i32
  %xtraiter794 = and i32 %i.do, 1
  %lcmp.mod795.not = icmp eq i32 %xtraiter794, 0
  br i1 %lcmp.mod795.not, label %scalar.ph760.prol.loopexit, label %scalar.ph760.prol

scalar.ph760.prol:                                ; preds = %scalar.ph760.preheader
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0498.0, i64 %indvars.iv566.ph
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !73 ; 2 uses
  %.not395.prol = icmp slt i32 %i.na, %i.dn
  %i.nb = select i1 %.not395.prol, i32 0, i32 %.neg396
  %.0359.prol = add i32 %i.nb, %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv566.ph
  store i32 %.0359.prol, ptr %i.nc, align 4, !tbaa !73
  %indvars.iv.next567.prol = or disjoint i64 %indvars.iv566.ph, 1
  br label %scalar.ph760.prol.loopexit

scalar.ph760.prol.loopexit:                       ; preds = %scalar.ph760.prol, %scalar.ph760.preheader
  %indvars.iv566.unr = phi i64 [ %indvars.iv566.ph, %scalar.ph760.preheader ], [ %indvars.iv.next567.prol, %scalar.ph760.prol ]
  %34 = add i32 %i.do, -1
  %i.nd = icmp eq i32 %34, %33
  br i1 %i.nd, label %.loopexit, label %scalar.ph760

.loopexit:                                        ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760, %middle.block773
  %i.ne = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  store ptr %i.mk, ptr %24, align 8, !tbaa !927
  %i.nf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ng = load i32, ptr %i.lm, align 8, !tbaa !82
  %i.nh = zext i32 %i.ng to i64
  store i64 %i.nh, ptr %i.nf, align 8, !tbaa !928
  %i.ni = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ne, i16 %.sroa.0.0.i435, ptr %.sroa.3.0.i, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %.fca.0.extract174, i32 %.fca.1.extract175, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.895") align 8 %24) #34 ; 2 uses
  %.fca.0.extract146 = extractvalue { ptr, i32 } %i.ni, 0 ; 2 uses
  %.fca.1.extract147 = extractvalue { ptr, i32 } %i.ni, 1 ; 2 uses
  %.not394 = icmp eq i32 %i.hl, %i.do
  br i1 %.not394, label %bb.bb, label %bb.ba

scalar.ph760:                                     ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760
  %indvars.iv566 = phi i64 [ %indvars.iv.next567.1, %scalar.ph760 ], [ %indvars.iv566.unr, %scalar.ph760.prol.loopexit ] ; 4 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0498.0, i64 %indvars.iv566
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !73 ; 2 uses
  %.not395 = icmp slt i32 %i.nk, %i.dn
  %i.nl = select i1 %.not395, i32 0, i32 %.neg396
  %.0359 = add i32 %i.nl, %i.nk
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv566
  store i32 %.0359, ptr %i.nm, align 4, !tbaa !73
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0498.0, i64 %indvars.iv.next567
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !73 ; 2 uses
  %.not395.1 = icmp slt i32 %i.no, %i.dn
  %i.np = select i1 %.not395.1, i32 0, i32 %.neg396
  %.0359.1 = add i32 %i.np, %i.no
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next567
  store i32 %.0359.1, ptr %i.nq, align 4, !tbaa !73
  %indvars.iv.next567.1 = add nuw nsw i64 %indvars.iv566, 2 ; 2 uses
  %lftr.wideiv569.1 = trunc i64 %indvars.iv.next567.1 to i32
  %exitcond570.1 = icmp eq i32 %lftr.wideiv569.1, %i.do
  br i1 %exitcond570.1, label %.loopexit, label %scalar.ph760, !llvm.loop !1867

bb.ba:                                            ; preds = %.loopexit
  %i.nr = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346 ; 2 uses
  %.sroa.0140.0.copyload = load i16, ptr %11, align 8, !tbaa !79
  %.sroa.2142.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !81
  store ptr %.fca.0.extract146, ptr %25, align 8, !tbaa !202
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract147, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !73
  %i.ns = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.nr, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract136 = extractvalue { ptr, i32 } %i.ns, 0
  %.fca.1.extract137 = extractvalue { ptr, i32 } %i.ns, 1
  store ptr %.fca.0.extract136, ptr %26, align 8
  %.sroa.2139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.fca.1.extract137, ptr %.sroa.2139.0..sroa_idx, align 8
  %i.nt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.nr, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0140.0.copyload, ptr %.sroa.2142.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) #34 ; 2 uses
  %.fca.0.extract132 = extractvalue { ptr, i32 } %i.nt, 0
  %.fca.1.extract133 = extractvalue { ptr, i32 } %i.nt, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit
  %.sroa.0156.0 = phi ptr [ %.fca.0.extract132, %bb.ba ], [ %.fca.0.extract146, %.loopexit ]
  %.sroa.6.0 = phi i32 [ %.fca.1.extract133, %bb.ba ], [ %.fca.1.extract147, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !tbaa !448
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.nu, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i.i469 = extractvalue { ptr, i8 } %i.nv, 0 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i469, i64 8
  store ptr %.sroa.0156.0, ptr %i.nw, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i470 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i469, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.2.0..0..sroa_idx.i470, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.nx = load ptr, ptr %23, align 8, !tbaa !54   ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.ll
  br i1 %i.ny, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit471, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %i.nx) #34
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit471

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit471:         ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  %i.nz = load ptr, ptr %20, align 8, !tbaa !54   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.kw
  br i1 %i.oa, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit472, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit471
  call void @free(ptr noundef %i.nz) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit472

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit472: ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit471, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  %i.ob = load ptr, ptr %19, align 8, !tbaa !54   ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.ik
  br i1 %i.oc, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit473, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit472
  call void @free(ptr noundef %i.ob) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit473

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit473: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit472, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.cd

bb.bf:                                            ; preds = %bb.x
  %.not382536 = icmp eq i64 %.sroa.14.0, 0
  br i1 %.not382536, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.cont
  %i.od = icmp slt i32 %.sroa.0.2, 0              ; 2 uses
  %i.oe = icmp slt i32 %.sroa.7.2, 0              ; 3 uses
  %or.cond = select i1 %i.od, i1 %i.oe, i1 false
  br i1 %or.cond, label %._crit_edge.thread, label %bb.bj

.lr.ph:                                           ; preds = %bb.bf, %.cont
  %.sroa.0.1 = phi i32 [ %.sroa.0.2, %.cont ], [ -1, %bb.bf ] ; 3 uses
  %.sroa.7.1 = phi i32 [ %.sroa.7.2, %.cont ], [ -1, %bb.bf ] ; 3 uses
  %.0360538 = phi i1 [ %.2362, %.cont ], [ true, %bb.bf ] ; 2 uses
  %.0363537 = phi ptr [ %i.on, %.cont ], [ %.sroa.0498.0, %bb.bf ] ; 2 uses
  %i.of = load i32, ptr %.0363537, align 4, !tbaa !73 ; 3 uses
  %i.og = icmp slt i32 %i.of, 0
  br i1 %i.og, label %.cont, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph
  %.not387 = icmp slt i32 %i.of, %i.dn            ; 4 uses
  %i.oh = select i1 %.not387, i32 0, i32 %i.dn
  %spec.select399 = sub i32 %i.of, %i.oh          ; 2 uses
  %i.oi = urem i32 %spec.select399, %i.do
  %i.oj = sub nuw i32 %spec.select399, %i.oi      ; 4 uses
  %i.ok = add i32 %i.oj, %i.do
  %i.ol = icmp ugt i32 %i.ok, %i.dn
  br i1 %i.ol, label %._crit_edge592, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.speculated = select i1 %.not387, i32 %.sroa.0.1, i32 %.sroa.7.1 ; 2 uses
  %i.om = icmp slt i32 %.sroa.speculated, 0
  %.not388 = icmp eq i32 %.sroa.speculated, %i.oj
  %or.cond400 = or i1 %i.om, %.not388
  br i1 %or.cond400, label %bb.bi, label %._crit_edge592

._crit_edge592:                                   ; preds = %bb.bg, %bb.bh
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge592, %bb.bh
  %.1361 = phi i1 [ false, %._crit_edge592 ], [ %.0360538, %bb.bh ]
  %spec.select = select i1 %.not387, i32 %i.oj, i32 %.sroa.0.1
  %spec.select679 = select i1 %.not387, i32 %.sroa.7.1, i32 %i.oj
  br label %.cont

.cont:                                            ; preds = %bb.bi, %.lr.ph
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %.lr.ph ], [ %spec.select, %bb.bi ] ; 5 uses
  %.sroa.7.2 = phi i32 [ %.sroa.7.1, %.lr.ph ], [ %spec.select679, %bb.bi ] ; 4 uses
  %.2362 = phi i1 [ %.0360538, %.lr.ph ], [ %.1361, %bb.bi ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.0363537, i64 4 ; 2 uses
  %.not382 = icmp eq ptr %i.on, %i.bm
  br i1 %.not382, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.bf, %._crit_edge
  %i.oo = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.op = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.oo, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.be, ptr %i.bg) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.fca.0.extract103 = extractvalue { ptr, i32 } %i.op, 0
  %.fca.1.extract104 = extractvalue { ptr, i32 } %i.op, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !tbaa !448
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.or = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i474 = extractvalue { ptr, i8 } %i.or, 0 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i474, i64 8
  store ptr %.fca.0.extract103, ptr %i.os, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i475 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i474, i64 16
  store i32 %.fca.1.extract104, ptr %.sroa.2.0..0..sroa_idx.i475, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.cd

bb.bj:                                            ; preds = %._crit_edge
  br i1 %.2362, label %.preheader, label %bb.bt

.preheader:                                       ; preds = %bb.bj
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.ot = load ptr, ptr %i.au, align 8, !tbaa !410, !nonnull !51, !align !346 ; 3 uses
  br i1 %i.od, label %.split651, label %bb.bk

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %bb.bn
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull %i.rc, i64 noundef %.sroa.14.0, i64 noundef 4) #34
  %.pre8.pre.i.i = load i32, ptr %i.rd, align 8, !tbaa !82
  %i.ou = zext i32 %.pre8.pre.i.i to i64
  %.pre581.a = load ptr, ptr %28, align 8, !tbaa !54
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.bn, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i
  %i.ov = phi ptr [ %.pre581.a, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.rc, %bb.bn ]
  %.pre8.i5.i = phi i64 [ %i.ou, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %bb.bn ]
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ow, ptr align 4 %.sroa.0498.0, i64 %.idx2.i, i1 false)
  %.pre582 = load ptr, ptr %28, align 8, !tbaa !54 ; 12 uses
  %.pre.i.i = load i32, ptr %i.rd, align 8, !tbaa !82
  %i.ox = add i32 %.pre.i.i, %i.do                ; 3 uses
  store i32 %i.ox, ptr %i.rd, align 8, !tbaa !82
  %i.oy = zext i32 %i.ox to i64
  %.idx555 = shl nuw nsw i64 %i.oy, 2             ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.pre582, i64 %.idx555
  %.not385544 = icmp eq i32 %i.ox, 0
  br i1 %.not385544, label %._crit_edge547, label %.lr.ph546

.lr.ph546:                                        ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %i.pa = add i32 %i.dn, %.sroa.7.2
  %.neg = sub i32 %i.do, %i.pa                    ; 2 uses
  %i.pb = add nsw i64 %.idx555, -4                ; 2 uses
  %i.pc = lshr exact i64 %i.pb, 2
  %i.pd = add nuw nsw i64 %i.pc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.pb, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph546
  %n.vec = and i64 %i.pd, 9223372036854775800     ; 3 uses
  %i.pe = shl i64 %n.vec, 2
  %i.pf = getelementptr i8, ptr %.pre582, i64 %i.pe
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert687.a = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat688.a = shufflevector <4 x i32> %broadcast.splatinsert687.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert689 = insertelement <4 x i32> poison, i32 %.sroa.0.2, i64 0
  %broadcast.splat690 = shufflevector <4 x i32> %broadcast.splatinsert689, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pg = sub <4 x i32> zeroinitializer, %broadcast.splat690
  %i.ph = sub <4 x i32> zeroinitializer, %broadcast.splat690
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue713, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue713 ] ; 2 uses
  %i.pi = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.pre582, i64 %i.pi ; 3 uses
  %i.pj = getelementptr i8, ptr %.pre582, i64 %i.pi
  %next.gep691.a = getelementptr i8, ptr %i.pj, i64 4
  %i.pk = getelementptr i8, ptr %.pre582, i64 %i.pi
  %next.gep692.a = getelementptr i8, ptr %i.pk, i64 8
  %i.pl = getelementptr i8, ptr %.pre582, i64 %i.pi
end_hunk_1
