Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZSelectionDAGInfo?download=true
begin_hunk_0_@_ZN4llvm23SystemZSelectionDAGInfoC2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4llvmL20SystemZGenSDNodeInfoE, ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm23SystemZSelectionDAGInfoE, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm23SystemZSelectionDAGInfo17getTargetNodeNameEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 676
  br i1 %cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !16, !align !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = add i32 %1, -537
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [28 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23SystemZSelectionDAGInfo23EmitTargetCodeForMemcpyERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_NS_5AlignES7_bbNS_18MachinePointerInfoES8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %7, i8 %8, i8 %9, i1 noundef zeroext %10, i1 zeroext %11, ptr nofree noundef readnone byval(%"struct.llvm::MachinePointerInfo") align 8 captures(none) %12, ptr nofree noundef readnone byval(%"struct.llvm::MachinePointerInfo") align 8 captures(none) %13) unnamed_addr #2 align 2 {
bb.a:
  %14 = alloca %"class.llvm::SmallVector.36", align 8 ; 12 uses
  %.sroa.5.i29 = alloca [16 x i8], align 4        ; 4 uses
  %.sroa.6.i30 = alloca [16 x i8], align 4        ; 4 uses
  %15 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %16 = alloca %"class.llvm::SmallVector.36", align 8 ; 13 uses
  %.sroa.6.i = alloca [16 x i8], align 4          ; 4 uses
  %17 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  br i1 %10, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %7, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  switch i32 %i.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread91 [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.sroa.056.0.copyload = load ptr, ptr %5, align 8, !tbaa !47 ; 2 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.257.0.copyload = load i32, ptr %.sroa.257.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i.i.i24 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !54
  %i.k = add i64 %.0.i.i.i24, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = zext i32 %.sroa.257.0.copyload to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.o, align 8, !tbaa !56
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !58
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store ptr %i.q, ptr %16, align 8, !tbaa !60
  store i32 6, ptr %i.s, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.6.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  store ptr %3, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %4, ptr %.sroa.4.0..sroa_idx.i28, align 8
  %.sroa.5.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %.sroa.056.0.copyload, ptr %.sroa.5.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %.sroa.257.0.copyload, ptr %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i, i64 16, i1 false)
  %.sroa.7.i.sroa.3.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr %.fca.0.extract3.i, ptr %.sroa.7.i.sroa.3.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i32 %.fca.1.extract4.i, ptr %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8
  store i32 4, ptr %i.r, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.sroa.5.0.i = extractvalue { ptr, i32 } %i.t, 1
  %.sroa.07.0.i = extractvalue { ptr, i32 } %i.t, 0
  store ptr %i.q, ptr %17, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 4, ptr %i.u, align 8, !tbaa !67
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 570, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.07.0.i, i32 %.sroa.5.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %17) #13 ; 2 uses
  %i.w = load ptr, ptr %16, align 8, !tbaa !60    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.q
  br i1 %i.x, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.w) #13
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.v, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.v, 1
  br label %bb.f

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread91: ; preds = %bb.b
  %.sroa.2.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx43, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.y = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %i.a, i32 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null) #13 ; 2 uses
  %.fca.0.extract11.i = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract12.i = extractvalue { ptr, i32 } %i.y, 1
  store ptr %.fca.0.extract11.i, ptr %18, align 8
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract12.i, ptr %.sroa.214.0..sroa_idx.i, align 8
  %i.z = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract7.i = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract8.i = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract7.i, ptr %19, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract8.i, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.aa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #13 ; 2 uses
  %.fca.0.extract3.i25 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract4.i26 = extractvalue { ptr, i32 } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.ae = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store ptr %i.ab, ptr %14, align 8, !tbaa !60
  store i32 6, ptr %i.ad, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i30)
  %.sroa.5.16..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %.sroa.5.i29, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.16..sroa_idx.i32, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  %.sroa.6.32..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %.sroa.6.i30, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.32..sroa_idx.i33, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  store ptr %3, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %4, ptr %.sroa.4.0..sroa_idx.i35, align 8
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %14, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i36, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i29, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %14, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i37, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i30, i64 16, i1 false)
  %.sroa.7.i31.sroa.3.0..sroa.7.0..sroa_idx.i38.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr %.fca.0.extract3.i25, ptr %.sroa.7.i31.sroa.3.0..sroa.7.0..sroa_idx.i38.sroa_idx, align 8
  %.sroa.7.i31.sroa.4.0..sroa.7.0..sroa_idx.i38.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i32 %.fca.1.extract4.i26, ptr %.sroa.7.i31.sroa.4.0..sroa.7.0..sroa_idx.i38.sroa_idx, align 8
  store i32 4, ptr %i.ac, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i30)
  %.sroa.5.0.i39 = extractvalue { ptr, i32 } %i.ae, 1
  %.sroa.07.0.i40 = extractvalue { ptr, i32 } %i.ae, 0
  store ptr %i.ab, ptr %15, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 4, ptr %i.af, align 8, !tbaa !67
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 570, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.07.0.i40, i32 %.sroa.5.0.i39, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %15) #13 ; 2 uses
  %i.ah = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ab
  br i1 %i.ai, label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit41, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread91
  call void @free(ptr noundef %i.ah) #13
  br label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit41

_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit41: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread91, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.a, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit41
  %.sroa.5.1 = phi i32 [ %.fca.1.extract4, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %.fca.1.extract, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit41 ], [ 0, %bb.a ]
  %.sroa.048.1 = phi ptr [ %.fca.0.extract3, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %.fca.0.extract, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit41 ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.048.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.5.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23SystemZSelectionDAGInfo23EmitTargetCodeForMemsetERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_NS_5AlignEbbNS_18MachinePointerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %7, i8 %8, i1 noundef zeroext %9, i1 zeroext %10, ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8 %11) unnamed_addr #2 align 2 {
bb.a:
  %12 = alloca %"class.llvm::SmallVector.36", align 8 ; 13 uses
  %.sroa.529.i303 = alloca [16 x i8], align 4     ; 4 uses
  %13 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %14 = alloca %"class.llvm::SmallVector.36", align 8 ; 12 uses
  %.sroa.5.i290 = alloca [16 x i8], align 4       ; 4 uses
  %.sroa.6.i291 = alloca [16 x i8], align 4       ; 4 uses
  %15 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %16 = alloca %"class.llvm::SmallVector.36", align 8 ; 14 uses
  %17 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %18 = alloca %"class.llvm::SmallVector.36", align 8 ; 13 uses
  %.sroa.6.i = alloca [16 x i8], align 4          ; 4 uses
  %19 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %25 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %27 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %28 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 6 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %35 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %36 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = load ptr, ptr %5, align 8, !tbaa !31     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !56 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !58 ; 5 uses
  br i1 %9, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %6, align 8, !tbaa !31     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34
  switch i32 %i.j, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ] ; 4 uses
  %i.k = load ptr, ptr %7, align 8, !tbaa !31     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34
  switch i32 %i.m, label %.critedge232 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit237
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit237
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit237: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !52
  %i.s = icmp ult i32 %i.r, 65
  %i.t = load ptr, ptr %i.p, align 8
  %spec.select.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.t
  %.0.i.i.i238 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !54 ; 11 uses
  %i.u = icmp eq i64 %.0.i.i.i238, 0
  br i1 %i.u, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit237
  %.not230 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not230, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52
  %i.aa = icmp ult i32 %i.z, 65
  %i.ab = load ptr, ptr %i.x, align 8
  %spec.select.i.i.i239 = select i1 %i.aa, ptr %i.x, ptr %i.ab
  %.0.i.i.i240 = load i64, ptr %spec.select.i.i.i239, align 8, !tbaa !54 ; 12 uses
  switch i64 %.0.i.i.i240, label %bb.g [
    i64 255, label %bb.f
    i64 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ac = icmp ult i64 %.0.i.i.i238, 17
  %i.ad = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i238)
  %i.ae = icmp samesign ult i64 %i.ad, 3
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.h, label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.af = icmp ult i64 %.0.i.i.i238, 5
  br i1 %i.af, label %bb.i, label %.thread459

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %.0.i.i.i238, 16
  br i1 %i.ag, label %.thread458, label %bb.i

.thread458:                                       ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  br label %.lr.ph.i.preheader

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i238, i1 true) ; 2 uses
  %i.ai = lshr exact i64 -9223372036854775808, %i.ah ; 2 uses
  %i.aj = sub nsw i64 %.0.i.i.i238, %i.ai         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %.not461 = icmp eq i64 %i.ah, 63
  br i1 %.not461, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread458, %bb.i
  %i.ak = phi i64 [ 8, %.thread458 ], [ %i.aj, %bb.i ] ; 2 uses
  %i.al = phi i64 [ 8, %.thread458 ], [ %i.ai, %bb.i ] ; 5 uses
  %i.am = add i64 %i.al, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader486, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.am, -4                      ; 3 uses
  %i.an = or disjoint i64 %n.vec, 1
  %i.ao = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.i.i.i240, i64 0
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0.i.i.i240, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ao, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi463 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.ap = shl <2 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 3)
  %i.aq = add <2 x i64> %step.add, splat (i64 16)
  %i.ar = and <2 x i64> %i.ap, splat (i64 4294967288)
  %i.as = and <2 x i64> %i.aq, splat (i64 4294967288)
  %i.at = shl <2 x i64> %broadcast.splat, %i.ar
  %i.au = shl <2 x i64> %broadcast.splat, %i.as
  %i.av = or <2 x i64> %i.at, %vec.phi            ; 2 uses
  %i.aw = or <2 x i64> %i.au, %vec.phi463         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.aw, %i.av
  %i.ay = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader486

.lr.ph.i.preheader486:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  %.033.i.ph = phi i64 [ %.0.i.i.i240, %.lr.ph.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.i
  %i.az = phi i64 [ %i.aj, %bb.i ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.ba = phi i64 [ 1, %bb.i ], [ %i.al, %middle.block ], [ %i.al, %.lr.ph.i ] ; 4 uses
  %.0.lcssa.i = phi i64 [ %.0.i.i.i240, %bb.i ], [ %i.ay, %middle.block ], [ %i.bk, %.lr.ph.i ]
  %.tr.i = trunc nuw nsw i64 %i.ba to i32
  %i.bb = shl nuw nsw i32 %.tr.i, 3
  %i.bc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.bc to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  %i.bd = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %switch.offset.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.bd, 1
  store ptr %i.a, ptr %26, align 8, !tbaa !47
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %i.c, ptr %.sroa.224.0..sroa_idx.i, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %27, i8 0, i64 40, i1 false)
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.fca.0.extract2.i, i32 %.fca.1.extract3.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %28, i8 %8, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %27) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %.fca.0.extract125 = extractvalue { ptr, i32 } %i.be, 0 ; 2 uses
  %.fca.1.extract126 = extractvalue { ptr, i32 } %i.be, 1 ; 2 uses
  %i.bf = and i64 %i.az, 4294967295               ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.critedge, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader486, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader486 ] ; 2 uses
  %.033.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %.033.i.ph, %.lr.ph.i.preheader486 ]
  %i.bh = shl i64 %indvars.iv.i, 3
  %i.bi = and i64 %i.bh, 4294967288
  %i.bj = shl i64 %.0.i.i.i240, %i.bi
  %i.bk = or i64 %i.bj, %.033.i                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.al
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !73

bb.j:                                             ; preds = %._crit_edge.i
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract112 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract113 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract112, ptr %29, align 8
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.fca.1.extract113, ptr %.sroa.2115.0..sroa_idx, align 8
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29) #13 ; 2 uses
  %.fca.0.extract108 = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract109 = extractvalue { ptr, i32 } %i.bm, 1
  %.0.copyload.i.i.i = load i64, ptr %11, align 8, !noalias !74 ; 6 uses
  %i.bn = icmp ult i64 %.0.copyload.i.i.i, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !77, !noalias !74
  %i.bq = add nsw i64 %i.bp, %i.ba
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !84, !noalias !74
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

bb.l:                                             ; preds = %bb.j
  %i.bt = and i64 %.0.copyload.i.i.i, 4
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !85, !noalias !74 ; 2 uses
  br i1 %i.bu, label %bb.m, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bx = inttoptr i64 %.0.copyload.i.i.i to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !86, !noalias !74 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !74 ; 2 uses
  %i.cc = and i32 %i.cb, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.cc, 18
  br i1 %spec.select.i.i.i.i.i, label %bb.n, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !89, !noalias !74
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !58, !noalias !74
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !74
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i: ; preds = %bb.n, %bb.m
  %i.cg = phi i32 [ %.pre.i.i.i, %bb.n ], [ %i.cb, %bb.m ]
  %i.ch = lshr i32 %i.cg, 8
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i: ; preds = %bb.l
  %i.ci = and i64 %.0.copyload.i.i.i, -5
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !95, !noalias !74
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit: ; preds = %bb.k, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i
  %.sroa.0351.0 = phi i64 [ 0, %bb.k ], [ %.0.copyload.i.i.i, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i ], [ %.0.copyload.i.i.i, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i ]
  %.sroa.7.0 = phi i32 [ %i.bs, %bb.k ], [ %i.ch, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i ], [ %i.cl, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i ]
  %.sroa.10.0 = phi i8 [ 0, %bb.k ], [ %i.bw, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i ], [ %i.bw, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i ]
  store i64 %.sroa.0351.0, ptr %11, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %i.cm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i8
  %i.co = xor i8 %i.cn, 63
  %.sroa.098.0.copyload.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.co, i8 %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  %.not = icmp eq i64 %i.bf, 1
  br i1 %.not, label %._crit_edge.i241, label %.lr.ph.i252.preheader

.lr.ph.i252.preheader:                            ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit
  %i.cp = add nsw i64 %i.bf, -1                   ; 2 uses
  %min.iters.check465 = icmp samesign ult i64 %i.bf, 5
  br i1 %min.iters.check465, label %.lr.ph.i252.preheader483, label %vector.ph466

vector.ph466:                                     ; preds = %.lr.ph.i252.preheader
  %n.vec467 = and i64 %i.cp, -4                   ; 3 uses
  %i.cq = or disjoint i64 %n.vec467, 1
  %i.cr = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.i.i.i240, i64 0
  %broadcast.splatinsert468 = insertelement <2 x i64> poison, i64 %.0.i.i.i240, i64 0
  %broadcast.splat469 = shufflevector <2 x i64> %broadcast.splatinsert468, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph466
  %index471 = phi i64 [ 0, %vector.ph466 ], [ %index.next476, %vector.body470 ]
  %vec.ind472 = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph466 ], [ %vec.ind.next477, %vector.body470 ] ; 3 uses
  %vec.phi473 = phi <2 x i64> [ %i.cr, %vector.ph466 ], [ %i.cy, %vector.body470 ]
  %vec.phi474 = phi <2 x i64> [ zeroinitializer, %vector.ph466 ], [ %i.cz, %vector.body470 ]
  %i.cs = shl <2 x i64> %vec.ind472, splat (i64 3)
  %step.add475 = shl <2 x i64> %vec.ind472, splat (i64 3)
  %i.ct = add <2 x i64> %step.add475, splat (i64 16)
  %i.cu = and <2 x i64> %i.cs, splat (i64 4294967288)
  %i.cv = and <2 x i64> %i.ct, splat (i64 4294967288)
  %i.cw = shl <2 x i64> %broadcast.splat469, %i.cu
  %i.cx = shl <2 x i64> %broadcast.splat469, %i.cv
  %i.cy = or <2 x i64> %i.cw, %vec.phi473         ; 2 uses
  %i.cz = or <2 x i64> %i.cx, %vec.phi474         ; 2 uses
  %index.next476 = add nuw i64 %index471, 4       ; 2 uses
  %vec.ind.next477 = add nuw nsw <2 x i64> %vec.ind472, splat (i64 4)
  %i.da = icmp eq i64 %index.next476, %n.vec467
  br i1 %i.da, label %middle.block478, label %vector.body470, !llvm.loop !97

middle.block478:                                  ; preds = %vector.body470
  %bin.rdx479 = or <2 x i64> %i.cz, %i.cy
  %i.db = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx479) ; 2 uses
  %cmp.n480 = icmp eq i64 %i.cp, %n.vec467
  br i1 %cmp.n480, label %._crit_edge.i241, label %.lr.ph.i252.preheader483

.lr.ph.i252.preheader483:                         ; preds = %.lr.ph.i252.preheader, %middle.block478
  %indvars.iv.i253.ph = phi i64 [ 1, %.lr.ph.i252.preheader ], [ %i.cq, %middle.block478 ]
  %.033.i254.ph = phi i64 [ %.0.i.i.i240, %.lr.ph.i252.preheader ], [ %i.db, %middle.block478 ]
  br label %.lr.ph.i252

._crit_edge.i241:                                 ; preds = %.lr.ph.i252, %middle.block478, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit
  %.0.lcssa.i242 = phi i64 [ %.0.i.i.i240, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit ], [ %i.db, %middle.block478 ], [ %i.dk, %.lr.ph.i252 ]
  %.tr.i243 = trunc nsw i64 %i.az to i32
  %i.dc = shl nsw i32 %.tr.i243, 3                ; 2 uses
  %i.dd = call range(i32 0, 30) i32 @llvm.ctpop.i32(i32 %i.dc)
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %.split.i.i248, label %_ZL11memsetStoreRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_mmNS_5AlignENS_18MachinePointerInfoE.exit257

.split.i.i248:                                    ; preds = %._crit_edge.i241
  %i.df = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dc, i1 true) ; 2 uses
  %i.dg = icmp samesign ult i32 %i.df, 10
  br i1 %i.dg, label %switch.lookup.i.i249, label %_ZL11memsetStoreRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_mmNS_5AlignENS_18MachinePointerInfoE.exit257

switch.lookup.i.i249:                             ; preds = %.split.i.i248
  %switch.idx.cast.i.i250 = trunc nuw nsw i32 %i.df to i16
  %switch.offset.i.i251 = add nuw nsw i16 %switch.idx.cast.i.i250, 2
  br label %_ZL11memsetStoreRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_mmNS_5AlignENS_18MachinePointerInfoE.exit257

.lr.ph.i252:                                      ; preds = %.lr.ph.i252.preheader483, %.lr.ph.i252
  %indvars.iv.i253 = phi i64 [ %indvars.iv.next.i255, %.lr.ph.i252 ], [ %indvars.iv.i253.ph, %.lr.ph.i252.preheader483 ] ; 2 uses
  %.033.i254 = phi i64 [ %i.dk, %.lr.ph.i252 ], [ %.033.i254.ph, %.lr.ph.i252.preheader483 ]
  %i.dh = shl i64 %indvars.iv.i253, 3
  %i.di = and i64 %i.dh, 4294967288
  %i.dj = shl i64 %.0.i.i.i240, %i.di
  %i.dk = or i64 %i.dj, %.033.i254                ; 2 uses
  %indvars.iv.next.i255 = add nuw nsw i64 %indvars.iv.i253, 1 ; 2 uses
  %exitcond.not.i256 = icmp eq i64 %indvars.iv.next.i255, %i.bf
  br i1 %exitcond.not.i256, label %._crit_edge.i241, label %.lr.ph.i252, !llvm.loop !98

_ZL11memsetStoreRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_mmNS_5AlignENS_18MachinePointerInfoE.exit257: ; preds = %._crit_edge.i241, %.split.i.i248, %switch.lookup.i.i249
  %.sroa.0.0.i.i244 = phi i16 [ %switch.offset.i.i251, %switch.lookup.i.i249 ], [ 0, %.split.i.i248 ], [ 0, %._crit_edge.i241 ]
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %.0.lcssa.i242, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.i.i244, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract2.i245 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract3.i246 = extractvalue { ptr, i32 } %i.dl, 1
  store ptr %.fca.0.extract108, ptr %24, align 8, !tbaa !47
  %.sroa.224.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract109, ptr %.sroa.224.0..sroa_idx.i247, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %25, i8 0, i64 40, i1 false)
  %i.dm = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.fca.0.extract2.i245, i32 %.fca.1.extract3.i246, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %11, i8 %.sroa.098.0.copyload.sroa.speculated, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %25) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %.fca.0.extract94 = extractvalue { ptr, i32 } %i.dm, 0
  %.fca.1.extract95 = extractvalue { ptr, i32 } %i.dm, 1
  store ptr %.fca.0.extract125, ptr %30, align 8, !tbaa !47
  %.sroa.5138.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract126, ptr %.sroa.5138.0..sroa_idx139, align 8, !tbaa !48
  store ptr %.fca.0.extract94, ptr %31, align 8, !tbaa !47
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract95, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !48
  %i.dn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31) #13 ; 2 uses
  %.fca.0.extract90 = extractvalue { ptr, i32 } %i.dn, 0
  %.fca.1.extract91 = extractvalue { ptr, i32 } %i.dn, 1
  br label %.critedge

bb.o:                                             ; preds = %bb.d
  %i.do = icmp ult i64 %.0.i.i.i238, 3
  br i1 %i.do, label %bb.p, label %.thread459

bb.p:                                             ; preds = %bb.o
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.278.0.copyload = load i32, ptr %.sroa.278.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %32, i8 0, i64 40, i1 false)
  %i.dp = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nonnull %i.h, i32 %.sroa.278.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %11, i8 %8, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %32) #13 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.dp, 0 ; 2 uses
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.dp, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  %i.dq = icmp eq i64 %.0.i.i.i238, 1
  br i1 %i.dq, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract59 = extractvalue { ptr, i32 } %i.dr, 0
  %.fca.1.extract60 = extractvalue { ptr, i32 } %i.dr, 1
  store ptr %.fca.0.extract59, ptr %33, align 8
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract60, ptr %.sroa.262.0..sroa_idx, align 8
  %i.ds = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #13 ; 2 uses
  %.fca.0.extract55 = extractvalue { ptr, i32 } %i.ds, 0
  %.fca.1.extract56 = extractvalue { ptr, i32 } %i.ds, 1
  store ptr %.fca.0.extract55, ptr %34, align 8, !tbaa !47
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract56, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !48
  call void @_ZNK4llvm18MachinePointerInfo13getWithOffsetEl(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %35, ptr noundef nonnull align 8 dereferenceable(21) %11, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %36, i8 0, i64 40, i1 false)
  %i.dt = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nonnull %i.h, i32 %.sroa.278.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %35, i8 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %36) #13 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.dt, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.dt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #13
  store ptr %.fca.0.extract72, ptr %37, align 8, !tbaa !47
  %.sroa.585.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %.fca.1.extract73, ptr %.sroa.585.0..sroa_idx86, align 8, !tbaa !48
  store ptr %.fca.0.extract44, ptr %38, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !48
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38) #13 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.du, 1
  br label %.critedge

bb.r:                                             ; preds = %bb.f
  %i.dv = icmp eq i64 %.0.i.i.i240, 0
  br i1 %i.dv, label %bb.s, label %.thread459

bb.s:                                             ; preds = %bb.r
  %i.dw = add i64 %.0.i.i.i238, -1
  %i.dx = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.dx, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.dx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.eb = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store ptr %i.dy, ptr %18, align 8, !tbaa !60
  store i32 6, ptr %i.ea, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.6.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  store ptr %3, ptr %i.dy, align 8
  %.sroa.4.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 %4, ptr %.sroa.4.0..sroa_idx.i280, align 8
  %.sroa.5.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %i.a, ptr %.sroa.5.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 %i.c, ptr %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i, i64 16, i1 false)
  %.sroa.7.i.sroa.3.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 64
  store ptr %.fca.0.extract3.i, ptr %.sroa.7.i.sroa.3.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i32 %.fca.1.extract4.i, ptr %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8
  store i32 4, ptr %i.dz, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.sroa.5.0.i = extractvalue { ptr, i32 } %i.eb, 1
  %.sroa.07.0.i = extractvalue { ptr, i32 } %i.eb, 0
  store ptr %i.dy, ptr %19, align 8, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 4, ptr %i.ec, align 8, !tbaa !67
  %i.ed = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 675, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.07.0.i, i32 %.sroa.5.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %19) #13 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm23SystemZSelectionDAGInfo23EmitTargetCodeForMemsetERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_NS_5AlignEbbNS_18MachinePointerInfoE:bb.a
  store ptr %3, ptr %i.el, align 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %4, ptr %.sroa.428.0..sroa_idx.i, align 8
  %.sroa.529.i.sroa.3.0..sroa.529.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.a, ptr %.sroa.529.i.sroa.3.0..sroa.529.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.529.i.sroa.4.0..sroa.529.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %i.c, ptr %.sroa.529.i.sroa.4.0..sroa.529.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.630.i.sroa.3.0..sroa.630.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %.fca.0.extract3.i263, ptr %.sroa.630.i.sroa.3.0..sroa.630.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.630.i.sroa.4.0..sroa.630.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i32 %.fca.1.extract4.i264, ptr %.sroa.630.i.sroa.4.0..sroa.630.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.731.i.sroa.3.0..sroa.731.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr %.fca.0.extract23, ptr %.sroa.731.i.sroa.3.0..sroa.731.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.731.i.sroa.4.0..sroa.731.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i32 %.fca.1.extract24, ptr %.sroa.731.i.sroa.4.0..sroa.731.0..sroa_idx.i.sroa_idx, align 8
  store i32 4, ptr %i.em, align 8, !tbaa !63
  %.sroa.5.0.i284 = extractvalue { ptr, i32 } %i.eo, 1
  %.sroa.07.0.i285 = extractvalue { ptr, i32 } %i.eo, 0
  store ptr %i.el, ptr %17, align 8, !tbaa !64
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 4, ptr %i.ep, align 8, !tbaa !67
  %i.eq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 566, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.07.0.i285, i32 %.sroa.5.0.i284, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %17) #13 ; 2 uses
  %i.er = load ptr, ptr %16, align 8, !tbaa !60   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.el
  br i1 %i.es, label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit286, label %bb.u

bb.u:                                             ; preds = %.thread459
  call void @free(ptr noundef %i.er) #13
  br label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit286

_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit286: ; preds = %.thread459, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.eq, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.eq, 1
  br label %.critedge

.critedge232:                                     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %.not231 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not231, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.critedge232
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !49 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !52
  %i.ey = icmp ult i32 %i.ex, 65
  %i.ez = load ptr, ptr %i.ev, align 8
  %spec.select.i.i.i266 = select i1 %i.ey, ptr %i.ev, ptr %i.ez
  %.0.i.i.i267 = load i64, ptr %spec.select.i.i.i266, align 8, !tbaa !54
  %i.fa = icmp eq i64 %.0.i.i.i267, 0
  br i1 %i.fa, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.sroa.2331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2331.0.copyload = load i32, ptr %.sroa.2331.0..sroa_idx, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.fb = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %i.k, i32 %.sroa.2331.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null) #13 ; 2 uses
  %.fca.0.extract11.i = extractvalue { ptr, i32 } %i.fb, 0
  %.fca.1.extract12.i = extractvalue { ptr, i32 } %i.fb, 1
  store ptr %.fca.0.extract11.i, ptr %22, align 8
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract12.i, ptr %.sroa.214.0..sroa_idx.i, align 8
  %i.fc = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract7.i = extractvalue { ptr, i32 } %i.fc, 0
  %.fca.1.extract8.i = extractvalue { ptr, i32 } %i.fc, 1
  store ptr %.fca.0.extract7.i, ptr %23, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract8.i, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.fd = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #13 ; 2 uses
  %.fca.0.extract3.i268 = extractvalue { ptr, i32 } %i.fd, 0
  %.fca.1.extract4.i269 = extractvalue { ptr, i32 } %i.fd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.fh = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store ptr %i.fe, ptr %14, align 8, !tbaa !60
  store i32 6, ptr %i.fg, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i290)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i291)
  %.sroa.5.16..sroa_idx.i293 = getelementptr inbounds nuw i8, ptr %.sroa.5.i290, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.16..sroa_idx.i293, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  %.sroa.6.32..sroa_idx.i294 = getelementptr inbounds nuw i8, ptr %.sroa.6.i291, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.32..sroa_idx.i294, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  store ptr %3, ptr %i.fe, align 8
  %.sroa.4.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %4, ptr %.sroa.4.0..sroa_idx.i296, align 8
  %.sroa.5.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %14, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i297, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i290, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i298 = getelementptr inbounds nuw i8, ptr %14, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i298, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i291, i64 16, i1 false)
  %.sroa.7.i292.sroa.3.0..sroa.7.0..sroa_idx.i299.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr %.fca.0.extract3.i268, ptr %.sroa.7.i292.sroa.3.0..sroa.7.0..sroa_idx.i299.sroa_idx, align 8
  %.sroa.7.i292.sroa.4.0..sroa.7.0..sroa_idx.i299.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i32 %.fca.1.extract4.i269, ptr %.sroa.7.i292.sroa.4.0..sroa.7.0..sroa_idx.i299.sroa_idx, align 8
  store i32 4, ptr %i.ff, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i290)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i291)
  %.sroa.5.0.i300 = extractvalue { ptr, i32 } %i.fh, 1
  %.sroa.07.0.i301 = extractvalue { ptr, i32 } %i.fh, 0
  store ptr %i.fe, ptr %15, align 8, !tbaa !64
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 4, ptr %i.fi, align 8, !tbaa !67
  %i.fj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 675, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.07.0.i301, i32 %.sroa.5.0.i300, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %15) #13 ; 2 uses
  %i.fk = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fe
  br i1 %i.fl, label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit302, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.fk) #13
  br label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit302

_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit302: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.fj, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.fj, 1
  br label %.critedge

bb.y:                                             ; preds = %bb.v, %.critedge232
  %.sroa.2322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2322.0.copyload = load i32, ptr %.sroa.2322.0..sroa_idx, align 8, !tbaa !48
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !48
  %i.fm = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %i.h, i32 %.sroa.28.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null) #13 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.fm, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.fm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.fn = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %i.k, i32 %.sroa.2322.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null) #13 ; 2 uses
  %.fca.0.extract11.i271 = extractvalue { ptr, i32 } %i.fn, 0
  %.fca.1.extract12.i272 = extractvalue { ptr, i32 } %i.fn, 1
  store ptr %.fca.0.extract11.i271, ptr %20, align 8
  %.sroa.214.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract12.i272, ptr %.sroa.214.0..sroa_idx.i273, align 8
  %i.fo = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef -2, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract7.i274 = extractvalue { ptr, i32 } %i.fo, 0
  %.fca.1.extract8.i275 = extractvalue { ptr, i32 } %i.fo, 1
  store ptr %.fca.0.extract7.i274, ptr %21, align 8
  %.sroa.210.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract8.i275, ptr %.sroa.210.0..sroa_idx.i276, align 8
  %i.fp = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #13 ; 2 uses
  %.fca.0.extract3.i277 = extractvalue { ptr, i32 } %i.fp, 0
  %.fca.1.extract4.i278 = extractvalue { ptr, i32 } %i.fp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ft = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr %i.fq, ptr %12, align 8, !tbaa !60
  store i32 6, ptr %i.fs, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.i303)
  %.sroa.529.16..sroa_idx.i309 = getelementptr inbounds nuw i8, ptr %.sroa.529.i303, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.529.16..sroa_idx.i309, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  store ptr %3, ptr %i.fq, align 8
  %.sroa.428.0..sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %4, ptr %.sroa.428.0..sroa_idx.i312, align 8
  %.sroa.529.0..sroa_idx.i313 = getelementptr inbounds nuw i8, ptr %12, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.529.0..sroa_idx.i313, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.529.i303, i64 16, i1 false)
  %.sroa.630.i304.sroa.3.0..sroa.630.0..sroa_idx.i314.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %.fca.0.extract3.i277, ptr %.sroa.630.i304.sroa.3.0..sroa.630.0..sroa_idx.i314.sroa_idx, align 8
  %.sroa.630.i304.sroa.4.0..sroa.630.0..sroa_idx.i314.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 %.fca.1.extract4.i278, ptr %.sroa.630.i304.sroa.4.0..sroa.630.0..sroa_idx.i314.sroa_idx, align 8
  %.sroa.731.i305.sroa.3.0..sroa.731.0..sroa_idx.i315.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.fca.0.extract3, ptr %.sroa.731.i305.sroa.3.0..sroa.731.0..sroa_idx.i315.sroa_idx, align 8
  %.sroa.731.i305.sroa.4.0..sroa.731.0..sroa_idx.i315.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i32 %.fca.1.extract4, ptr %.sroa.731.i305.sroa.4.0..sroa.731.0..sroa_idx.i315.sroa_idx, align 8
  store i32 4, ptr %i.fr, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529.i303)
  %.sroa.5.0.i316 = extractvalue { ptr, i32 } %i.ft, 1
  %.sroa.07.0.i317 = extractvalue { ptr, i32 } %i.ft, 0
  store ptr %i.fq, ptr %13, align 8, !tbaa !64
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 4, ptr %i.fu, align 8, !tbaa !67
  %i.fv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 566, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.07.0.i317, i32 %.sroa.5.0.i316, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %13) #13 ; 2 uses
  %i.fw = load ptr, ptr %12, align 8, !tbaa !60   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fq
  br i1 %i.fx, label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit318, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.fw) #13
  br label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit318

_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit318: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.fv, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.fv, 1
  br label %.critedge

.critedge:                                        ; preds = %_ZL11memsetStoreRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_mmNS_5AlignENS_18MachinePointerInfoE.exit257, %bb.q, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit286, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit237, %._crit_edge.i, %bb.p, %bb.a, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit302, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit318
  %.sroa.13357.1 = phi i32 [ 0, %bb.a ], [ %.fca.1.extract, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit318 ], [ %.fca.1.extract13, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit302 ], [ %.fca.1.extract91, %_ZL11memsetStoreRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_mmNS_5AlignENS_18MachinePointerInfoE.exit257 ], [ %.fca.1.extract126, %._crit_edge.i ], [ %.fca.1.extract41, %bb.q ], [ %.fca.1.extract20, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit286 ], [ %.fca.1.extract34, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit237 ], [ %.fca.1.extract73, %bb.p ]
  %.sroa.0356.1 = phi ptr [ null, %bb.a ], [ %.fca.0.extract, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit318 ], [ %.fca.0.extract12, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit302 ], [ %.fca.0.extract90, %_ZL11memsetStoreRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_mmNS_5AlignENS_18MachinePointerInfoE.exit257 ], [ %.fca.0.extract125, %._crit_edge.i ], [ %.fca.0.extract40, %bb.q ], [ %.fca.0.extract19, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit286 ], [ %.fca.0.extract33, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit237 ], [ %.fca.0.extract72, %bb.p ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0356.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.13357.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm18MachinePointerInfo13getWithOffsetEl(ptr dead_on_unwind noalias writable sret(%"struct.llvm::MachinePointerInfo") align 8 %0, ptr noundef nonnull align 8 dereferenceable(21) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.0.copyload.i.i = load i64, ptr %1, align 8    ; 5 uses
  %i.a = icmp ult i64 %.0.copyload.i.i, 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77
  %i.d = add nsw i64 %i.c, %2                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !84
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.f, ptr %i.h, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.i, align 4, !tbaa !85
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i.i, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !85    ; 2 uses
  store i64 %.0.copyload.i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.n, align 8, !tbaa !77
  br i1 %i.k, label %bb.d, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.m, ptr %i.p, align 4, !tbaa !85
  %i.q = inttoptr i64 %.0.copyload.i.i to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = and i32 %i.u, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.v, 18
  br i1 %spec.select.i.i.i.i, label %bb.e, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i:  ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %.pre.i.i, %bb.e ], [ %i.u, %bb.d ]
  %i.aa = lshr i32 %i.z, 8
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !84
  br label %bb.f

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.m, ptr %i.ab, align 4, !tbaa !85
  %i.ac = and i64 %.0.copyload.i.i, -5
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i, %bb.b
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8, i8, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm23SystemZSelectionDAGInfo23EmitTargetCodeForMemcmpERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_PKNS_8CallInstE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) initializes((0, 12), (16, 28)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %8, ptr nofree readnone captures(none) %9) unnamed_addr #2 align 2 {
bb.a:
  %10 = alloca %"class.llvm::SmallVector.36", align 8 ; 12 uses
  %.sroa.5.i42 = alloca [16 x i8], align 4        ; 4 uses
  %.sroa.6.i43 = alloca [16 x i8], align 4        ; 4 uses
  %11 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %12 = alloca %"class.llvm::SmallVector.36", align 8 ; 13 uses
  %.sroa.6.i = alloca [16 x i8], align 4          ; 4 uses
  %13 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %i.a = load ptr, ptr %8, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  switch i32 %i.c, label %bb.c [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i.i.i36 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !54
  %.sroa.072.0.copyload = load ptr, ptr %7, align 8, !tbaa !47 ; 2 uses
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.273.0.copyload = load i32, ptr %.sroa.273.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %i.k = add i64 %.0.i.i.i36, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = zext i32 %.sroa.273.0.copyload to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.o, align 8, !tbaa !56
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !58
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr %i.q, ptr %12, align 8, !tbaa !60
  store i32 6, ptr %i.s, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.6.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  store ptr %4, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %5, ptr %.sroa.4.0..sroa_idx.i41, align 8
  %.sroa.5.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %.sroa.072.0.copyload, ptr %.sroa.5.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 %.sroa.273.0.copyload, ptr %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i, i64 16, i1 false)
  %.sroa.7.i.sroa.3.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.fca.0.extract3.i, ptr %.sroa.7.i.sroa.3.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i32 %.fca.1.extract4.i, ptr %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8
  store i32 4, ptr %i.r, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.sroa.5.0.i = extractvalue { ptr, i32 } %i.t, 1
  %.sroa.07.0.i = extractvalue { ptr, i32 } %i.t, 0
  store ptr %i.q, ptr %13, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 4, ptr %i.u, align 8, !tbaa !67
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 559, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.sroa.07.0.i, i32 %.sroa.5.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %13) #13
  %i.w = load ptr, ptr %12, align 8, !tbaa !60    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.q
  br i1 %i.x, label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @free(ptr noundef %i.w) #13
  br label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit

_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.y = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr nonnull %i.a, i32 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 8, ptr null) #13 ; 2 uses
  %.fca.0.extract11.i = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract12.i = extractvalue { ptr, i32 } %i.y, 1
  store ptr %.fca.0.extract11.i, ptr %19, align 8
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract12.i, ptr %.sroa.214.0..sroa_idx.i, align 8
  %i.z = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract7.i = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract8.i = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract7.i, ptr %20, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract8.i, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.aa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #13 ; 2 uses
  %.fca.0.extract3.i37 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract4.i38 = extractvalue { ptr, i32 } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ae = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store ptr %i.ab, ptr %10, align 8, !tbaa !60
  store i32 6, ptr %i.ad, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i42)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i43)
  %.sroa.5.16..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %.sroa.5.i42, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.16..sroa_idx.i45, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false)
  %.sroa.6.32..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %.sroa.6.i43, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.32..sroa_idx.i46, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  store ptr %4, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %5, ptr %.sroa.4.0..sroa_idx.i48, align 8
  %.sroa.5.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %10, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i49, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i42, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %10, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i50, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i43, i64 16, i1 false)
  %.sroa.7.i44.sroa.3.0..sroa.7.0..sroa_idx.i51.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %.fca.0.extract3.i37, ptr %.sroa.7.i44.sroa.3.0..sroa.7.0..sroa_idx.i51.sroa_idx, align 8
  %.sroa.7.i44.sroa.4.0..sroa.7.0..sroa_idx.i51.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i32 %.fca.1.extract4.i38, ptr %.sroa.7.i44.sroa.4.0..sroa.7.0..sroa_idx.i51.sroa_idx, align 8
  store i32 4, ptr %i.ac, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i42)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i43)
  %.sroa.5.0.i52 = extractvalue { ptr, i32 } %i.ae, 1
  %.sroa.07.0.i53 = extractvalue { ptr, i32 } %i.ae, 0
  store ptr %i.ab, ptr %11, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 4, ptr %i.af, align 8, !tbaa !67
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 559, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.sroa.07.0.i53, i32 %.sroa.5.0.i52, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %11) #13
  %i.ah = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ab
  br i1 %i.ai, label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit54, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.ah) #13
  br label %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit54

_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit54: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.e

bb.e:                                             ; preds = %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit54, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit
  %.pn = phi { ptr, i32 } [ %i.ag, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit54 ], [ %i.v, %_ZL16createMemMemNodeRN4llvm12SelectionDAGERKNS_5SDLocEjNS_7SDValueES5_S5_S5_S5_.exit ] ; 2 uses
  %.sroa.7.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.062.0 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %.sroa.062.0, ptr %14, align 8, !tbaa !47
  %.sroa.231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.231.0..sroa_idx.i, align 8, !tbaa !48
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 563, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #13 ; 2 uses
  %.fca.0.extract14.i = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract15.i = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %.fca.0.extract14.i, ptr %15, align 8, !tbaa !47
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract15.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !tbaa !48
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.fca.0.extract9.i, ptr %16, align 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract10.i, ptr %.sroa.212.0..sroa_idx.i, align 8
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #13 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract5.i, ptr %17, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !48
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 30, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract1.i, ptr %18, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 199, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.an, 1
  store ptr %.fca.0.extract, ptr %0, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.062.0, ptr %i.ao, align 8, !tbaa !47
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm23SystemZSelectionDAGInfo23EmitTargetCodeForMemchrERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_NS_18MachinePointerInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) initializes((0, 12), (16, 28)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %7, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %8, ptr nofree noundef readnone byval(%"struct.llvm::MachinePointerInfo") align 8 captures(none) %9) unnamed_addr #2 align 2 {
bb.a:
  %10 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 13 uses
  %15 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.a = load ptr, ptr %6, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !56 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !58 ; 5 uses
  store i16 1, ptr %10, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !101
  %i.i = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %10) #13 ; 2 uses
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = extractvalue { ptr, i32 } %i.i, 1
  %.sroa.078.0.copyload = load ptr, ptr %8, align 8, !tbaa !47
  %.sroa.279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.279.0.copyload = load i32, ptr %.sroa.279.0..sroa_idx, align 8, !tbaa !48
  %i.l = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr %.sroa.078.0.copyload, i32 %.sroa.279.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #13 ; 2 uses
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract72 = extractvalue { ptr, i32 } %i.l, 1
  store ptr %.fca.0.extract71, ptr %8, align 8, !tbaa !47
  store i32 %.fca.1.extract72, ptr %.sroa.279.0..sroa_idx, align 8, !tbaa !48
  %.sroa.065.0.copyload = load ptr, ptr %7, align 8, !tbaa !47
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %.sroa.266.0.copyload = load i32, ptr %.sroa.266.0..sroa_idx, align 8, !tbaa !48
  %i.m = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr %.sroa.065.0.copyload, i32 %.sroa.266.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #13 ; 2 uses
  %.fca.0.extract61 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract62 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract61, ptr %7, align 8, !tbaa !47
  store i32 %.fca.1.extract62, ptr %.sroa.266.0..sroa_idx, align 8, !tbaa !48
  %i.n = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 255, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.n, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.n, 1
  store ptr %.fca.0.extract54, ptr %11, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.257.0..sroa_idx, align 8
  %i.o = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #13 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.o, 0
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.o, 1
  store ptr %.fca.0.extract50, ptr %7, align 8, !tbaa !47
  store i32 %.fca.1.extract51, ptr %.sroa.266.0..sroa_idx, align 8, !tbaa !48
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #13 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.p, 1
  store ptr %4, ptr %12, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !48
  store ptr %.fca.0.extract40, ptr %13, align 8, !tbaa !47
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract41, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !48
  %i.q = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 589, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.j, i32 %i.k, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #13 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.q, 0 ; 3 uses
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store ptr %.fca.0.extract34, ptr %14, align 16, !tbaa !47
  %.sroa.8.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.8.0..sroa_idx121, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.s = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %.fca.0.extract13, ptr %i.r, align 16
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.fca.1.extract14, ptr %.sroa.216.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.u = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 6, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.u, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.u, 1
  store ptr %.fca.0.extract9, ptr %i.t, align 16
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 %.fca.1.extract10, ptr %.sroa.212.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.w = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.w, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.w, 1
  store ptr %.fca.0.extract5, ptr %i.v, align 16
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr %.fca.0.extract34, ptr %i.x, align 16, !tbaa !47
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i32 1, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !48
  store ptr %14, ptr %15, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 5, ptr %i.y, align 8, !tbaa !67
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 590, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %15) #13 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract, ptr %0, align 8, !tbaa !47
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.fca.0.extract34, ptr %i.aa, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %.sroa.4.0..sroa_idx132, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm23SystemZSelectionDAGInfo23EmitTargetCodeForStrcpyERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_NS_18MachinePointerInfoES7_bPKNS_8CallInstE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) initializes((0, 28)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %7, ptr nofree noundef readnone byval(%"struct.llvm::MachinePointerInfo") align 8 captures(none) %8, ptr nofree noundef readnone byval(%"struct.llvm::MachinePointerInfo") align 8 captures(none) %9, i1 noundef zeroext %10, ptr nofree readnone captures(none) %11) unnamed_addr #2 align 2 {
bb.a:
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = load ptr, ptr %6, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !56
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !58
  %i.h = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i16 1, ptr null) #13 ; 2 uses
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = extractvalue { ptr, i32 } %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr %4, ptr %13, align 8, !tbaa !47
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %5, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !48
  %i.k = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.k, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.k, 1
  store ptr %.fca.0.extract5, ptr %14, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.l = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 599, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.i, i32 %i.j, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #13 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.l, 0 ; 2 uses
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.l, 1
end_hunk_1
