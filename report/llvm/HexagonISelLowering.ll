Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLowering?download=true
inline.NumInlined: 5380
inline.NumDeleted: 1748
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering18LowerGLOBALADDRESSENS_7SDValueERNS_12SelectionDAGE:bb.a
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.ar, 1
  store ptr %.fca.0.extract15, ptr %9, align 8, !tbaa !414
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract7, ptr %10, align 8, !tbaa !414
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract2, ptr %11, align 8, !tbaa !414
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 539, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.l, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.f
  %.pn95.pn = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.ai, %bb.e ], [ %i.ao, %bb.h ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret { ptr, i32 } %.pn95.pn
}

declare noundef i32 @_ZNK4llvm13TargetMachine18getRelocationModelEv(ptr noundef nonnull align 8 dereferenceable(1728)) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm11GlobalValue16getAliaseeObjectEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm23HexagonTargetObjectFile22isGlobalInSmallSectionEPKNS_12GlobalObjectERKNS_13TargetMachineE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1728)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm13TargetMachine20shouldAssumeDSOLocalEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17LowerBlockAddressENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !656  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !173
  store i64 %i.d, ptr %4, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !174
  store i32 %i.g, ptr %i.e, align 8, !tbaa !175
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.j = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.i) #25
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i16 %i.m(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.j, i32 noundef 0) #25 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !653, !nonnull !19, !align !64
  %i.q = tail call noundef i32 @_ZNK4llvm13TargetMachine18getRelocationModelEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.p) #25
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG15getBlockAddressEPKNS_12BlockAddressENS_3EVTElbj(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef %i.b, i16 %i.n, ptr null, i64 noundef 0, i1 noundef zeroext true, i32 noundef 0) #25 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %.fca.0.extract19, ptr %5, align 8, !tbaa !414
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract20, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !150
  %i.t = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 546, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.n, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG15getBlockAddressEPKNS_12BlockAddressENS_3EVTElbj(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef %i.b, i16 %i.n, ptr null, i64 noundef 0, i1 noundef zeroext true, i32 noundef 1) #25 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.u, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.u, 1
  store ptr %.fca.0.extract4, ptr %6, align 8, !tbaa !414
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 540, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.n, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.t, %bb.b ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering24LowerGLOBAL_OFFSET_TABLEENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.b) #25
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i16 %i.f(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.c, i32 noundef 0) #25 ; 2 uses
  %i.h = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG23getTargetExternalSymbolEPKcNS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull @.str.83, i16 %i.g, ptr null, i32 noundef 1) #25 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.h, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !173
  store i64 %i.j, ptr %4, align 8, !tbaa !173
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !174
  store i32 %i.m, ptr %i.k, align 8, !tbaa !175
  store ptr %.fca.0.extract6, ptr %5, align 8, !tbaa !414
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.n = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 540, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.g, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17GetDynamicTLSAddrERNS_12SelectionDAGENS_7SDValueEPNS_19GlobalAddressSDNodeES3_NS_3EVTEjh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %2, i32 %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"struct.llvm::EVT") align 8 captures(none) %6, i32 noundef %7, i8 noundef zeroext %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %11 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %13 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %14 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462
  %i.e = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null, i16 249, ptr null) #25 ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = extractvalue { ptr, i32 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !173
  store i64 %i.i, ptr %12, align 8, !tbaa !173
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !174
  store i32 %i.l, ptr %i.j, align 8, !tbaa !175
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !464
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !415  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.p, align 8, !tbaa !23
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.r = load i64, ptr %i.q, align 8, !tbaa !652
  %i.s = zext i8 %8 to i32
  %i.t = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getGlobalAddressEPKNS_11GlobalValueERKNS_5SDLocENS_3EVTElbj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, i64 noundef %i.r, i1 noundef zeroext true, i32 noundef %i.s) #25 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.t, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31, !nonnull !19, !align !64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(519600) %i.v) #25 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(316) %i.z, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %2, ptr %13, align 16, !tbaa !414
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.fca.0.extract30, ptr %i.ae, align 16, !tbaa !414
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.fca.1.extract31, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !150
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.026.0.copyload = load i16, ptr %6, align 8, !tbaa !23 ; 3 uses
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.228.0.copyload = load ptr, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !149 ; 3 uses
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 118, i16 %.sroa.026.0.copyload, ptr %.sroa.228.0.copyload) #25 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract22, ptr %i.af, align 16
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %.fca.1.extract23, ptr %.sroa.225.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG15getRegisterMaskEPKj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef %i.ad) #25 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.ai, 1
  store ptr %.fca.0.extract18, ptr %i.ah, align 16
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i32 %.fca.1.extract19, ptr %.sroa.221.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aj, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !550
  store ptr %13, ptr %14, align 8, !tbaa !416
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 5, ptr %i.ak, align 8, !tbaa !419
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr %i.f, i32 %i.g, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %14) #25 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.al, 0 ; 3 uses
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.al, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 65
  store i8 1, ptr %i.am, align 1, !tbaa !659
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.an = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i16 249, ptr %9, align 8, !tbaa !427
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !428
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.026.0.copyload, ptr %.sroa.228.0.copyload, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %9) #25 ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  %i.ar = extractvalue { ptr, i32 } %i.ap, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %.fca.0.extract8, ptr %10, align 16, !tbaa !414
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !150
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 %7, i16 %.sroa.026.0.copyload, ptr %.sroa.228.0.copyload) #25 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.at, 1
  store ptr %.fca.0.extract3.i, ptr %i.as, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.fca.0.extract8, ptr %i.au, align 16, !tbaa !414
  %.sroa.573.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.573.0.extract.trunc = trunc i64 %i.an to i32
  store i32 %.sroa.573.0.extract.trunc, ptr %.sroa.573.0..sroa_idx74, align 8, !tbaa !150
  %.not.i = icmp eq ptr %.fca.0.extract8, null
  %i.av = select i1 %.not.i, i64 2, i64 3
  store ptr %10, ptr %11, align 8, !tbaa !416
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !419
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr %i.aq, i32 %i.ar, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret { ptr, i32 } %i.ax
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef.225") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering26LowerToTLSInitialExecModelEPNS_19GlobalAddressSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %6 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %13 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !173
  store i64 %i.b, ptr %7, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  store i32 %i.e, ptr %i.c, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i64, ptr %i.f, align 8, !tbaa !652
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.j = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.i) #25
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i16 %i.m(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.j, i32 noundef 0) #25 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %i.n, ptr null, i16 1, ptr null) #25 ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = extractvalue { ptr, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.o, ptr %5, align 16, !tbaa !414
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 36, i16 %i.n, ptr null) #25 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.t, 1
  store ptr %.fca.0.extract3.i, ptr %i.s, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %5, ptr %6, align 8, !tbaa !416
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %i.u, align 8, !tbaa !419
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %i.q, i32 %i.r, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %6) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.w = call noundef zeroext i1 @_ZNK4llvm14TargetLowering21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) #25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !464
  %i.z = select i1 %i.w, i32 9, i32 8
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getGlobalAddressEPKNS_11GlobalValueERKNS_5SDLocENS_3EVTElbj(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.n, ptr null, i64 noundef %i.g, i1 noundef zeroext true, i32 noundef %i.z) #25 ; 2 uses
  %.fca.0.extract42 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract43 = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract42, ptr %8, align 8, !tbaa !414
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !150
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 545, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.n, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #25 ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.ab, 0 ; 4 uses
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.ab, 1 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.ad = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ac) #25
  %i.ae = load ptr, ptr %0, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i16 %i.ag(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.ad, i32 noundef 0) #25, !inline_history !660 ; 2 uses
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG23getTargetExternalSymbolEPKcNS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull @.str.83, i16 %i.ah, ptr null, i32 noundef 1) #25 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %.fca.0.extract31, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !173
  store i64 %i.ak, ptr %3, align 8, !tbaa !173
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.fca.0.extract31, i64 68
  %i.an = load i32, ptr %i.am, align 4, !tbaa !174
  store i32 %i.an, ptr %i.al, align 8, !tbaa !175
  store ptr %.fca.0.extract6.i, ptr %4, align 8, !tbaa !414
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract7.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !150
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 540, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.ah, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.ao, 1
  store ptr %.fca.0.extract22, ptr %9, align 8, !tbaa !414
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract31, ptr %10, align 8, !tbaa !414
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !150
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.n, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #25 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.ap, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.036.0 = phi ptr [ %.fca.0.extract14, %bb.b ], [ %.fca.0.extract31, %bb.a ]
  %.sroa.7.0 = phi i32 [ %.fca.1.extract15, %bb.b ], [ %.fca.1.extract32, %bb.a ]
  %.fca.1.extract53 = extractvalue { ptr, i32 } %i.v, 1
  %.fca.0.extract52 = extractvalue { ptr, i32 } %i.v, 0
  store ptr %.sroa.036.0, ptr %11, align 8, !tbaa !414
  %.sroa.7.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx38, align 8, !tbaa !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %12, i8 0, i64 21, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %i.n, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr nonnull %i.o, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %12, i16 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef null) #25 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  store ptr %.fca.0.extract52, ptr %14, align 8, !tbaa !414
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract53, ptr %.sroa.464.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract2, ptr %15, align 8, !tbaa !414
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.n, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering24LowerToTLSLocalExecModelEPNS_19GlobalAddressSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %4 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !173
  store i64 %i.b, ptr %5, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  store i32 %i.e, ptr %i.c, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i64, ptr %i.f, align 8, !tbaa !652
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.j = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.i) #25
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i16 %i.m(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.j, i32 noundef 0) #25 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %i.n, ptr null, i16 1, ptr null) #25 ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = extractvalue { ptr, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.o, ptr %3, align 16, !tbaa !414
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 36, i16 %i.n, ptr null) #25 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.t, 1
  store ptr %.fca.0.extract3.i, ptr %i.s, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %3, ptr %4, align 8, !tbaa !416
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.u, align 8, !tbaa !419
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.q, i32 %i.r, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %4) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.v, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.v, 1
end_hunk_0
begin_hunk_1_@_ZNK4llvm21HexagonTargetLowering10LowerStoreENS_7SDValueERNS_12SelectionDAGE:bb.a
  store ptr %9, ptr %7, align 8, !tbaa !860
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !470
  %i.m = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 1243, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !151  ; 3 uses
  %.sroa.036.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !414
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.237.0.copyload = load i32, ptr %.sroa.237.0..sroa_idx, align 8, !tbaa !150
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i16 5, ptr %10, align 8, !tbaa !427
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !428
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.q, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getTruncStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.036.0.copyload, i32 %.sroa.237.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.m, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.o, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %10, ptr noundef %i.s) #25 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.t, 0 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i16, ptr %i.u, align 8              ; 2 uses
  %i.w = and i16 %i.v, 896
  %.not = icmp eq i16 %i.w, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.t, 1
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !151  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.022.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !414
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !150
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.aa = lshr i16 %i.v, 7
  %i.ab = and i16 %i.aa, 7
  %i.ac = zext nneg i16 %i.ab to i32
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG15getIndexedStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_3ISD14MemIndexedModeE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.fca.0.extract29, i32 %.fca.1.extract30, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %.sroa.022.0.copyload, i32 %.sroa.223.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.z, i32 noundef %i.ac) #25
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.ad, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.critedge, %bb.b
  %.0 = phi ptr [ %1, %bb.a ], [ %.fca.0.extract18, %bb.b ], [ %.fca.0.extract29, %.critedge ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 104
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ag) #25 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !151
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %.sroa.013.0.copyload = load ptr, ptr %i.ak, align 8, !tbaa !414
  %i.al = call noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering25validateConstPtrAlignmentENS_7SDValueENS_5AlignERKNS_5SDLocERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %.sroa.013.0.copyload, i32 poison, i8 %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br i1 %i.al, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.am = load i64, ptr %i.a, align 8, !tbaa !173
  store i64 %i.am, ptr %5, align 8, !tbaa !173
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i32, ptr %i.d, align 4, !tbaa !174
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !175
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 349, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ap) #25 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !463
  %i.at = icmp eq i32 %i.as, 316
  br i1 %i.at, label %bb.e, label %_ZNK4llvm21HexagonTargetLowering19replaceMemWithUndefENS_7SDValueERNS_12SelectionDAGE.exit

bb.e:                                             ; preds = %bb.d
  %.fca.1.extract11.i = extractvalue { ptr, i32 } %i.aq, 1
  %.fca.0.extract10.i = extractvalue { ptr, i32 } %i.aq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !415
  %i.aw = zext i32 %2 to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ax, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i.i, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.ay, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.ay, 1
  store ptr %.fca.0.extract1.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.fca.0.extract10.i, ptr %i.az, align 8, !tbaa !414
  %.sroa.5.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract11.i, ptr %.sroa.5.0..sroa_idx16.i, align 8, !tbaa !150
  %i.ba = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %6, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNK4llvm21HexagonTargetLowering19replaceMemWithUndefENS_7SDValueERNS_12SelectionDAGE.exit

_ZNK4llvm21HexagonTargetLowering19replaceMemWithUndefENS_7SDValueERNS_12SelectionDAGE.exit: ; preds = %bb.d, %bb.e
  %.fca.1.insert.merged.i = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %i.aq, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.fca.0.extract6 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 1
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31, !nonnull !19, !align !64 ; 3 uses
  %i.be = call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.bd, i16 %.sroa.0.0.copyload.i, ptr null, i1 noundef zeroext true) #25
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 432
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !65
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 344
  %i.bj = load i8, ptr %i.bi, align 8, !range !18
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = select i1 %i.bh, i1 %i.bk, i1 false
  %i.bm = select i1 %i.bl, i8 6, i8 7
  br label %_ZNK4llvm16HexagonSubtarget16getTypeAlignmentENS_3MVTE.exit

bb.h:                                             ; preds = %bb.f
  %i.bn = zext i16 %.sroa.0.0.copyload.i to i64
  %i.bo = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bn ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bo, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bp = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.bp, label %bb.i, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %bb.h
  %i.bq = getelementptr i8, ptr %i.bo, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bq, align 16
  %i.br = lshr i64 %.sroa.0.0.copyload.i.i, 3
  %i.bs = trunc i64 %i.br to i32
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.bs, i32 1)
  %i.bt = zext i32 %.sroa.speculated.i to i64
  %i.bu = call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  %i.bw = xor i8 %i.bv, 63
  br label %_ZNK4llvm16HexagonSubtarget16getTypeAlignmentENS_3MVTE.exit

_ZNK4llvm16HexagonSubtarget16getTypeAlignmentENS_3MVTE.exit: ; preds = %bb.g, %_ZNK4llvm8TypeSizecvmEv.exit.i
  %.sroa.07.0.i = phi i8 [ %i.bm, %bb.g ], [ %i.bw, %_ZNK4llvm8TypeSizecvmEv.exit.i ]
  %i.bx = icmp ult i8 %i.ah, %.sroa.07.0.i
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm16HexagonSubtarget16getTypeAlignmentENS_3MVTE.exit
  %i.by = call { ptr, i32 } @_ZNK4llvm14TargetLowering20expandUnalignedStoreEPNS_11StoreSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull %.0, ptr noundef nonnull align 8 dereferenceable(920) %3) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.by, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm16HexagonSubtarget16getTypeAlignmentENS_3MVTE.exit, %bb.j, %_ZNK4llvm21HexagonTargetLowering19replaceMemWithUndefENS_7SDValueERNS_12SelectionDAGE.exit
  %.sroa.096.0 = phi ptr [ %.fca.0.extract, %bb.j ], [ %.fca.0.extract6, %_ZNK4llvm21HexagonTargetLowering19replaceMemWithUndefENS_7SDValueERNS_12SelectionDAGE.exit ], [ %.0, %_ZNK4llvm16HexagonSubtarget16getTypeAlignmentENS_3MVTE.exit ]
  %.sroa.497.0 = phi i32 [ %.fca.1.extract, %bb.j ], [ %.fca.1.extract7, %_ZNK4llvm21HexagonTargetLowering19replaceMemWithUndefENS_7SDValueERNS_12SelectionDAGE.exit ], [ 0, %_ZNK4llvm16HexagonSubtarget16getTypeAlignmentENS_3MVTE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.096.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.497.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getTruncStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG15getIndexedStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_3ISD14MemIndexedModeE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, i32 noundef) local_unnamed_addr #5

declare { ptr, i32 } @_ZNK4llvm14TargetLowering20expandUnalignedStoreEPNS_11StoreSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase30allowsMemoryAccessForAlignmentERNS_11LLVMContextERKNS_10DataLayoutENS_3EVTERKNS_17MachineMemOperandEPj(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(912), i16, ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #5

declare void @_ZNK4llvm14TargetLowering19expandUnalignedLoadEPNS_10LoadSDNodeERNS_12SelectionDAGE(ptr dead_on_unwind writable sret(%"struct.std::pair.592") align 8, ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG20getMemBasePlusOffsetENS_7SDValueENS_8TypeSizeERKNS_5SDLocENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i64, i8, ptr noundef nonnull align 8 dereferenceable(12), i32) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13LowerUAddSubOENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 12 uses
  %11 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %12 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %13 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %14 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %15 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %16 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0135.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !414 ; 4 uses
  %.sroa.6.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i64, ptr %.sroa.6.0..sroa_idx138, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !463
  switch i32 %i.f, label %bb.c [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !173
  store i64 %i.h, ptr %10, align 8, !tbaa !173
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  store i32 %i.k, ptr %i.i, align 8, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !415  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !167  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !170
  %i.s = icmp ult i32 %i.r, 65
  %i.t = load ptr, ptr %i.p, align 8
  %spec.select.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.t
  %.0.i.i.i100 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !172
  %.not99 = icmp eq i64 %.0.i.i.i100, 1
  br i1 %.not99, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !463
  switch i32 %i.v, label %.critedge [
    i32 80, label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit
    i32 82, label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit113
  ]

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit: ; preds = %bb.b
  %.sroa.060.0.copyload = load i16, ptr %i.m, align 8, !tbaa !23
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.262.0.copyload = load ptr, ptr %.sroa.262.0..sroa_idx, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.0135.0.copyload, ptr %i.w, align 8, !tbaa !414
  %.sroa.6.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.6.0.extract.trunc = trunc i64 %i.d to i32
  store i32 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx139, align 8, !tbaa !150
  store ptr %12, ptr %11, align 8, !tbaa !416
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.x, align 8, !tbaa !419
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.060.0.copyload, ptr %.sroa.262.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %11) #25 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.y, 0 ; 3 uses
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.y, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.z = getelementptr inbounds nuw i8, ptr %.fca.0.extract54, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !415
  %i.ab = zext i32 %.fca.1.extract55 to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ac, align 8, !tbaa !23
  %i.ad = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.ad, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.fca.0.extract40, ptr %9, align 8
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract41, ptr %.sroa.2131.0..sroa_idx, align 8
  store ptr %.fca.0.extract54, ptr %7, align 8, !tbaa !414
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !150
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 17) #25 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract2.i, ptr %8, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, i32 0) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.af, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %.fca.0.extract54, ptr %13, align 8, !tbaa !414
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.664.0..sroa_idx, align 8, !tbaa !150
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.fca.0.extract36, ptr %i.ag, align 8, !tbaa !414
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.fca.1.extract37, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !150
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %13, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %10) #25 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.ah, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.critedge

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit113: ; preds = %bb.b
  %.sroa.024.0.copyload = load i16, ptr %i.m, align 8, !tbaa !23
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.226.0.copyload = load ptr, ptr %.sroa.226.0..sroa_idx, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.sroa.0135.0.copyload, ptr %i.ai, align 8, !tbaa !414
  %.sroa.6.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.sroa.6.0.extract.trunc142 = trunc i64 %i.d to i32
  store i32 %.sroa.6.0.extract.trunc142, ptr %.sroa.6.0..sroa_idx140, align 8, !tbaa !150
  store ptr %15, ptr %14, align 8, !tbaa !416
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %i.aj, align 8, !tbaa !419
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.024.0.copyload, ptr %.sroa.226.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %14) #25 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.ak, 0 ; 3 uses
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.ak, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.al = getelementptr inbounds nuw i8, ptr %.fca.0.extract18, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !415
  %i.an = zext i32 %.fca.1.extract19 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an
  %.sroa.0.0.copyload.i.i.i101 = load i16, ptr %i.ao, align 8, !tbaa !23
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.copyload.i.i.i101, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.ap, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.fca.0.extract7, ptr %6, align 8
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.2120.0..sroa_idx, align 8
  store ptr %.fca.0.extract18, ptr %4, align 8, !tbaa !414
  %.sroa.3.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract19, ptr %.sroa.3.0..sroa_idx.i109, align 8, !tbaa !150
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 17) #25 ; 2 uses
  %.fca.0.extract2.i110 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract3.i111 = extractvalue { ptr, i32 } %i.aq, 1
  store ptr %.fca.0.extract2.i110, ptr %5, align 8
  %.sroa.25.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3.i111, ptr %.sroa.25.0..sroa_idx.i112, align 8
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 0) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.ar, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr %.fca.0.extract18, ptr %16, align 8, !tbaa !414
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract19, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !150
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.fca.0.extract3, ptr %i.as, align 8, !tbaa !414
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %.fca.1.extract4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %16, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %10) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.at, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit113
  %.sroa.9.0 = phi i32 [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %.fca.1.extract31, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit ], [ %.fca.1.extract, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit113 ], [ 0, %bb.b ]
  %.sroa.0146.0 = phi ptr [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %.fca.0.extract30, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit ], [ %.fca.0.extract, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit113 ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.critedge
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %.critedge ], [ 0, %bb.a ]
  %.sroa.0146.1 = phi ptr [ %.sroa.0146.0, %.critedge ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0146.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.9.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering18LowerUAddSubOCarryENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %5 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %6 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %7 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %8 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %9 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !173
  store i64 %i.b, ptr %4, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  store i32 %i.e, ptr %i.c, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !463
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.068.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !414 ; 3 uses
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.670.0.copyload = load i32, ptr %.sroa.670.0..sroa_idx, align 8, !tbaa !150 ; 3 uses
  %i.l = icmp eq i32 %i.g, 75
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !415
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.p = load i16, ptr %i.o, align 2, !tbaa !912
  %i.q = zext i16 %i.p to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.sroa.068.0.copyload, ptr %i.s, align 8, !tbaa !414
  %.sroa.670.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.sroa.670.0.copyload, ptr %.sroa.670.0..sroa_idx71, align 8, !tbaa !150
  store ptr %6, ptr %5, align 8, !tbaa !416
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.t, align 8, !tbaa !419
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 537, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.n, i32 %i.q, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !415
  %i.x = zext i32 %.sroa.670.0.copyload to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.y, align 8, !tbaa !23 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !149 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !415
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !912
  %i.ad = zext i16 %i.ac to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getLogicalNOTERKNS_5SDLocENS_7SDValueENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.sroa.068.0.copyload, i32 %.sroa.670.0.copyload, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #25 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract22, ptr %i.af, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %.fca.1.extract23, ptr %.sroa.225.0..sroa_idx, align 8
  store ptr %8, ptr %7, align 8, !tbaa !416
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %i.ah, align 8, !tbaa !419
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 564, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.aa, i32 %i.ad, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.ai, 0 ; 2 uses
  store ptr %.fca.0.extract14, ptr %9, align 16
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %.sroa.217.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getLogicalNOTERKNS_5SDLocENS_7SDValueENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.fca.0.extract14, i32 1, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #25 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.fca.0.extract1, ptr %i.aj, align 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %9, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.u, %bb.b ], [ %i.al, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret { ptr, i32 } %.pn
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getLogicalNOTERKNS_5SDLocENS_7SDValueENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, i16, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering14LowerEH_RETURNENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %7 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 6 uses
  %.sroa.046.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !414
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !150
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.043.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !414 ; 2 uses
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.444.0.copyload = load i32, ptr %.sroa.444.0..sroa_idx, align 8, !tbaa !150 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  store i64 %i.f, ptr %9, align 8, !tbaa !173
end_hunk_1
begin_hunk_2_@_ZNK4llvm21HexagonTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
    i32 405, label %bb.c
    i32 414, label %bb.e
    i32 415, label %bb.e
    i32 416, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !917, !nonnull !19, !align !64
  %i.m = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17splitVecReduceAddEPNS_6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %i.l) #25 ; 2 uses
  %.fca.0.extract96 = extractvalue { ptr, i32 } %i.m, 0 ; 2 uses
  %.fca.1.extract97 = extractvalue { ptr, i32 } %i.m, 1
  %.not223 = icmp eq ptr %.fca.0.extract96, null
  br i1 %.not223, label %bb.d, label %.critedge133

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !917, !nonnull !19, !align !64
  %i.o = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering18expandVecReduceAddEPNS_6SDNodeERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %i.n) ; 2 uses
  %.fca.0.extract86 = extractvalue { ptr, i32 } %i.o, 0 ; 2 uses
  %.fca.1.extract87 = extractvalue { ptr, i32 } %i.o, 1
  %.not224 = icmp eq ptr %.fca.0.extract86, null
  %spec.select = select i1 %.not224, i32 0, i32 %.fca.1.extract87
  br label %.critedge133

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !917, !nonnull !19, !align !64
  %i.r = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering30splitExtendingPartialReduceMLAEPNS_6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %i.q) #25 ; 2 uses
  %.fca.0.extract82 = extractvalue { ptr, i32 } %i.r, 0 ; 2 uses
  %.fca.1.extract83 = extractvalue { ptr, i32 } %i.r, 1
  %.not222 = icmp eq ptr %.fca.0.extract82, null
  %spec.select218 = select i1 %.not222, i32 0, i32 %.fca.1.extract83
  br label %.critedge133

bb.f:                                             ; preds = %bb.a
  %cond = icmp eq i32 %i.g, 220
  br i1 %cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151  ; 3 uses
  %.sroa.0193.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !414 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0193.0.copyload, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !463
  %i.w = icmp eq i32 %i.v, 195
  br i1 %i.w, label %bb.h, label %.critedge133

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0193.0.copyload, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.0191.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !414
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0191.0.copyload, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !463
  %.not = icmp eq i32 %i.ab, 557
  br i1 %.not, label %bb.i, label %.critedge133

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !917, !nonnull !19, !align !64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !415
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.af, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i32 noundef 220, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.y, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ag, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ah) #25 ; 2 uses
  %.fca.0.extract74 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract75 = extractvalue { ptr, i32 } %i.ai, 1
  br label %.critedge133

bb.j:                                             ; preds = %bb.f, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !917, !nonnull !19, !align !64
  %i.al = tail call noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %i.ak) #25
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering20PerformHvxDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #25 ; 2 uses
  %.fca.0.extract70 = extractvalue { ptr, i32 } %i.am, 0 ; 2 uses
  %.fca.1.extract71 = extractvalue { ptr, i32 } %i.am, 1
  %.not227 = icmp eq ptr %.fca.0.extract70, null
  %spec.select220 = select i1 %.not227, i32 0, i32 %.fca.1.extract71
  br label %.critedge133

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i32 %i.g, 230
  br i1 %i.an, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !151
  %.sroa.0186.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !414 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0186.0.copyload, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !463
  %i.as = icmp eq i32 %i.ar, 57
  br i1 %i.as, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !415 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.au, align 8, !tbaa !23 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !149 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0186.0.copyload, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !151 ; 2 uses
  %.sroa.0173.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !414 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ax = load <2 x i32>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !150 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !415
  %i.ba = zext i32 %.sroa.8.0.copyload to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %.sroa.0.0.copyload.i.i142 = load i16, ptr %i.bb, align 8, !tbaa !23 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.21.0.copyload.i.i144 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i143, align 8, !tbaa !149 ; 2 uses
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i142, %.sroa.0.0.copyload.i.i
  %i.bc = icmp eq ptr %.sroa.21.0.copyload.i.i144, %.sroa.21.0.copyload.i.i
  %.not4.i = select i1 %.not.i.i, i1 %i.bc, i1 false
  br i1 %.not4.i, label %.critedge133, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i16 %.sroa.0.0.copyload.i.i142, ptr %5, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i144, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.be, align 8
  %.not.i.i8.i = icmp eq i16 %.sroa.0.0.copyload.i.i142, 0
  br i1 %.not.i.i8.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = zext i16 %.sroa.0.0.copyload.i.i142 to i64
  %i.bg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bh, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.bg, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bi = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.q, %bb.p
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.p ], [ %i.bi, %bb.q ] ; 2 uses
  %.not.i5.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i5.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.bj = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.bk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i = load i64, ptr %i.bl, align 16
  %.sroa.2.0..sroa_idx.i.i7.i.i = getelementptr i8, ptr %i.bk, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i, align 8
  %.fca.0.insert.i.i9.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i, 0
  %.fca.1.insert.i.i10.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i.i, i8 %.sroa.2.0.copyload.i.i8.i.i, 1
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

bb.s:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.bm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

_ZNK4llvm3EVT6bitsGTES0_.exit:                    ; preds = %bb.r, %bb.s
  %.pn.i11.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i, %bb.r ], [ %i.bm, %bb.s ] ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 1
  %i.bn = trunc nuw i8 %.fca.1.extract2.i.i to i1
  %i.bo = trunc nuw i8 %.fca.1.extract.i.i to i1
  %i.bp = icmp ugt i64 %.fca.0.extract1.i.i, %.fca.0.extract.i.i
  %.not7.i.i.i = xor i1 %i.bo, true
  %not.or.cond.i.i.i = select i1 %i.bn, i1 true, i1 %.not7.i.i.i
  %.0.i.i.i = select i1 %not.or.cond.i.i.i, i1 %i.bp, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4llvm3EVT6bitsGTES0_.exit
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !917, !nonnull !19, !align !64
  store ptr %.sroa.0173.0.copyload, ptr %6, align 8, !tbaa !414
  %.sroa.8.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x i32> %i.ax, ptr %.sroa.8.0..sroa_idx179, align 8
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #25 ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.br, 1
  br label %.critedge133

bb.u:                                             ; preds = %bb.m, %_ZNK4llvm3EVT6bitsGTES0_.exit, %bb.l
  %i.bs = load i32, ptr %i.h, align 8, !tbaa !914
  %i.bt = icmp slt i32 %i.bs, 2
  br i1 %i.bt, label %.critedge133, label %bb.v

bb.v:                                             ; preds = %bb.u
  switch i32 %i.g, label %.critedge137 [
    i32 581, label %bb.w
    i32 230, label %bb.z
    i32 194, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !151
  %.sroa.0170.0.copyload = load ptr, ptr %i.bv, align 8, !tbaa !414
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0170.0.copyload, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !463
  switch i32 %i.bx, label %.critedge137 [
    i32 557, label %bb.x
    i32 556, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.aj, align 8, !tbaa !917, !nonnull !19, !align !64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !415
  %.sroa.0.0.copyload.i.i.i152 = load i16, ptr %i.ca, align 8, !tbaa !23
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i152, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.cb, 0
  %.fca.1.extract46 = extractvalue { ptr, i32 } %i.cb, 1
  br label %.critedge133

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !415
  %.sroa.0.0.copyload.i.i.i153 = load i16, ptr %i.cd, align 8, !tbaa !23
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !917, !nonnull !19, !align !64
  %i.cf = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i153, ptr noundef nonnull align 8 dereferenceable(920) %i.ce) ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.cf, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.cf, 1
  br label %.critedge133

bb.z:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !151
  %.sroa.0166.0.copyload = load ptr, ptr %i.ch, align 8, !tbaa !414 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0166.0.copyload, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !463
  %i.ck = icmp eq i32 %i.cj, 57
  br i1 %i.ck, label %bb.aa, label %.critedge137

bb.aa:                                            ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !415
  %.sroa.0.0.copyload.i.i.i154 = load i16, ptr %i.cm, align 8, !tbaa !23 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0166.0.copyload, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !151 ; 2 uses
  %.sroa.022.0.copyload = load ptr, ptr %i.co, align 8, !tbaa !414 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cp = load <2 x i32>, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !150 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !415
  %i.cs = zext i32 %.sroa.7.0.copyload to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs
  %.sroa.0.0.copyload.i.i.i155 = load i16, ptr %i.ct, align 8, !tbaa !23 ; 2 uses
  %i.cu = icmp eq i16 %.sroa.0.0.copyload.i.i.i155, %.sroa.0.0.copyload.i.i.i154
  br i1 %i.cu, label %.critedge133, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = zext i16 %.sroa.0.0.copyload.i.i.i155 to i64
  %i.cw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -16
  %.sroa.0.0.copyload.i.i.i157 = load i64, ptr %i.cx, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.cw, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.cy = zext i16 %.sroa.0.0.copyload.i.i.i154 to i64
  %i.cz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -16
  %.sroa.0.0.copyload.i5.i.i = load i64, ptr %i.da, align 16
  %.sroa.2.0..sroa_idx.i6.i.i = getelementptr i8, ptr %i.cz, i64 -8
  %.sroa.2.0.copyload.i7.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i6.i.i, align 8
  %i.db = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  %i.dc = trunc nuw i8 %.sroa.2.0.copyload.i7.i.i to i1
  %i.dd = icmp ugt i64 %.sroa.0.0.copyload.i.i.i157, %.sroa.0.0.copyload.i5.i.i
  %.not7.i.i.i158 = xor i1 %i.dc, true
  %not.or.cond.i.i.i159 = select i1 %i.db, i1 true, i1 %.not7.i.i.i158
  %.0.i.i.i160 = select i1 %not.or.cond.i.i.i159, i1 %i.dd, i1 false
  br i1 %.0.i.i.i160, label %bb.ac, label %.critedge137

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !917, !nonnull !19, !align !64
  store ptr %.sroa.022.0.copyload, ptr %7, align 8, !tbaa !414
  %.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x i32> %i.cp, ptr %.sroa.7.0..sroa_idx27, align 8
  %i.df = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i154, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #25 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.df, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.df, 1
  br label %.critedge133

bb.ad:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %0, ptr %8, align 8, !tbaa !918
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.dg, align 8, !tbaa !921
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %4, ptr %i.dh, align 8, !tbaa !861
  %i.di = call fastcc { ptr, i32 } @"_ZZNK4llvm21HexagonTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clENS_7SDValueE"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %1, i32 0) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.di, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.di, 1
  %.not225 = icmp eq ptr %.fca.0.extract, null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.not225, label %.critedge137, label %.critedge133

.critedge137:                                     ; preds = %bb.z, %bb.ab, %bb.w, %bb.ad, %bb.v
  br label %.critedge133

.critedge133:                                     ; preds = %bb.h, %bb.k, %bb.e, %bb.d, %bb.y, %bb.x, %bb.ac, %bb.aa, %bb.u, %bb.t, %bb.n, %bb.i, %bb.g, %bb.c, %bb.ad, %.critedge137
  %.sroa.30.4 = phi i32 [ %.fca.1.extract11, %bb.ac ], [ %.fca.1.extract46, %bb.x ], [ 0, %bb.g ], [ %.sroa.8.0.copyload, %bb.n ], [ 0, %.critedge137 ], [ %.sroa.7.0.copyload, %bb.aa ], [ 0, %bb.u ], [ %.fca.1.extract, %bb.ad ], [ %.fca.1.extract97, %bb.c ], [ %spec.select220, %bb.k ], [ %.fca.1.extract38, %bb.y ], [ %spec.select218, %bb.e ], [ %spec.select, %bb.d ], [ %.fca.1.extract75, %bb.i ], [ %.fca.1.extract54, %bb.t ], [ 0, %bb.h ]
  %.sroa.0211.4 = phi ptr [ %.fca.0.extract10, %bb.ac ], [ %.fca.0.extract45, %bb.x ], [ null, %bb.g ], [ %.sroa.0173.0.copyload, %bb.n ], [ null, %.critedge137 ], [ %.sroa.022.0.copyload, %bb.aa ], [ null, %bb.u ], [ %.fca.0.extract, %bb.ad ], [ %.fca.0.extract96, %bb.c ], [ %.fca.0.extract70, %bb.k ], [ %.fca.0.extract37, %bb.y ], [ %.fca.0.extract82, %bb.e ], [ %.fca.0.extract86, %bb.d ], [ %.fca.0.extract74, %bb.i ], [ %.fca.0.extract53, %bb.t ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0211.4, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.30.4, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17splitVecReduceAddEPNS_6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering18expandVecReduceAddEPNS_6SDNodeERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %9 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %10 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %16 = alloca %"class.llvm::SmallVector.719", align 8 ; 11 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %18 = alloca %"class.llvm::ArrayRef.580", align 8 ; 5 uses
  %19 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %20 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !414 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !150 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415
  %i.e = zext i32 %.sroa.6.0.copyload to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.f, align 8, !tbaa !23 ; 10 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !149 ; 3 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %21, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.g, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0 ; 3 uses
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.h = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.h, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #26
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.99) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.j = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.k = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = zext i16 %i.m to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.o = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #26
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.p = phi i32 [ %i.n, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.o, %bb.c ] ; 2 uses
  %.not.i.i15 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i15, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread, label %_ZN4llvm13isPowerOf2_32Ej.exit

_ZN4llvm13isPowerOf2_32Ej.exit.thread:            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.k

_ZN4llvm13isPowerOf2_32Ej.exit:                   ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.q = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.p)
  %i.r = icmp samesign ult i32 %i.q, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br i1 %i.r, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store i16 %.sroa.0.0.copyload.i.i, ptr %14, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.s, align 8
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.d
  %i.t = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.99) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %bb.d
  %i.u = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.v = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !29
  %i.y = zext i16 %i.x to i32
  br label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.z = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %i.aa = phi i32 [ %i.y, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %i.z, %bb.f ] ; 8 uses
  %i.ab = icmp ne i32 %i.aa, 0
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !173
  store i64 %i.ad, ptr %15, align 8, !tbaa !173
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !174
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ah = zext i32 %i.aa to i64                   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.ai, ptr %16, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !255
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 32, ptr %i.ak, align 4, !tbaa !256
  %i.al = icmp ugt i32 %i.aa, 32
  br i1 %i.al, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i, label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i: ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr noundef nonnull %i.ai, i64 noundef %i.ah, i64 noundef 4) #25
  %.pre.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !255 ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.aa, %.pre.i.i.i.i
  br i1 %.not11.i.i.i.i, label %.preheader.lr.ph.i, label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.thread74.i

_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.thread74.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i to i64 ; 2 uses
  %.pre.i.i = load ptr, ptr %16, align 8, !tbaa !21
  %i.am = getelementptr [4 x i8], ptr %.pre.i.i, i64 %.pre13.i.i.i.i
  %i.an = sub nsw i64 %i.ah, %.pre13.i.i.i.i
  %i.ao = shl nsw i64 %i.an, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.ao, i1 false), !tbaa !150
  store i32 %i.aa, ptr %i.aj, align 8, !tbaa !255
  br label %.preheader.lr.ph.i

_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i:         ; preds = %bb.g
  %i.ap = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %i.ap, i1 false), !tbaa !150
  store i32 %i.aa, ptr %i.aj, align 8, !tbaa !255
  %i.aq = icmp samesign ugt i32 %i.aa, 1
  br i1 %i.aq, label %.preheader.lr.ph.i, label %._crit_edge65.i

.preheader.lr.ph.i:                               ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.thread74.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, %.preheader.lr.ph.i
  %.064.i = phi i32 [ %i.aa, %.preheader.lr.ph.i ], [ %i.au, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 3 uses
  %.sroa.0.063.i = phi ptr [ %.sroa.0.0.copyload, %.preheader.lr.ph.i ], [ %.fca.0.extract5.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.sroa.7.062.i = phi i32 [ %.sroa.6.0.copyload, %.preheader.lr.ph.i ], [ %.fca.1.extract6.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 2 uses
  %i.au = lshr i32 %.064.i, 1                     ; 6 uses
  %.not60.i = icmp eq i32 %i.au, 0
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !21 ; 3 uses
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.av = zext nneg i32 %i.au to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %.064.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.av, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index ; 2 uses
  %i.ax = add <4 x i32> %broadcast.splat, %vec.ind
end_hunk_2
