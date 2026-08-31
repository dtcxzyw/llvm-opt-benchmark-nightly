Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelLowering?download=true
inline.NumInlined: 5945
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZNK4llvm20AMDGPUTargetLowering18ReplaceNodeResultsEPNS_6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE:bb.a
bb.q:                                             ; preds = %bb.o
  %i.al = zext i32 %i.ai to i64
  %i.am = load ptr, ptr %2, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  store ptr %.fca.0.extract6, ptr %i.an, align 1
  %.sroa.32.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.32.0..sroa_idx.i54, align 1
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !484
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !484
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.r:                                             ; preds = %bb.a, %bb.a
  %i.aq = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering16lowerCTLZResultsENS_7SDValueERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr nonnull %1, i32 0, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aq, 0 ; 3 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aq, 1 ; 2 uses
  %.not83 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not83, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !484 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !485
  %.not.i56 = icmp ult i32 %i.as, %i.au
  br i1 %.not.i56, label %bb.u, label %bb.t, !prof !486

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %.fca.0.extract, i32 %.fca.1.extract)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.u:                                             ; preds = %bb.s
  %i.av = zext i32 %i.as to i64
  %i.aw = load ptr, ptr %2, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  store ptr %.fca.0.extract, ptr %i.ax, align 1
  %.sroa.32.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.32.0..sroa_idx.i57, align 1
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !484
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ar, align 8, !tbaa !484
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.n, %bb.p, %bb.q, %bb.j, %bb.l, %bb.m, %bb.f, %bb.h, %bb.i, %bb.b, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering16lowerCTLZResultsENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 12 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !201
  store i64 %i.b, ptr %4, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !202
  store i32 %i.e, ptr %i.c, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !106  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.l = zext i32 %2 to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.m, align 8, !tbaa !64 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98
  %i.n = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.o = add i16 %.sroa.0.0.copyload.i.i, -7
  %i.p = icmp ult i16 %i.o, -2
  %or.cond = select i1 %i.p, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.e, label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit:         ; preds = %bb.a
  %i.q = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.r = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.s, align 16
  %i.t = sub i64 32, %.sroa.0.0.copyload.i.i.i
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.u, 0 ; 2 uses
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.u, 1 ; 2 uses
  %i.v = icmp eq i32 %i.g, 217
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit
  %i.w = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.w, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.w, 1
  store ptr %.fca.0.extract37, ptr %6, align 8, !tbaa !200
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract38, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !81
  store ptr %.fca.0.extract44, ptr %7, align 8, !tbaa !200
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.550.0..sroa_idx, align 8, !tbaa !81
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #25 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.x, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.x, 1
  store ptr %.fca.0.extract30, ptr %8, align 8, !tbaa !200
  %.sroa.14.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract31, ptr %.sroa.14.0..sroa_idx83, align 8, !tbaa !81
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 217, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #25
  br label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract16, ptr %9, align 8, !tbaa !200
  %.sroa.14.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract17, ptr %.sroa.14.0..sroa_idx85, align 8, !tbaa !81
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #25 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract9, ptr %10, align 8, !tbaa !200
  %.sroa.14.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.14.0..sroa_idx87, align 8, !tbaa !81
  store ptr %.fca.0.extract44, ptr %11, align 8, !tbaa !200
  %.sroa.550.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.550.0..sroa_idx51, align 8, !tbaa !81
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.y, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %.sroa.14.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.078.0 = extractvalue { ptr, i32 } %.pn, 0
  store ptr %.sroa.078.0, ptr %12, align 8, !tbaa !200
  %.sroa.14.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx89, align 8, !tbaa !81
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ac, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.4108.0 = phi i32 [ %.fca.1.extract, %bb.d ], [ 0, %bb.a ]
  %.sroa.0107.0 = phi ptr [ %.fca.0.extract, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0107.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4108.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering17LowerBlockAddressENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !693
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = load i64, ptr %i.g, align 8, !tbaa !696
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !697
  %i.k = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG15getBlockAddressEPKNS_12BlockAddressENS_3EVTElbj(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef %i.f, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i64 noundef %i.h, i1 noundef zeroext true, i32 noundef %i.j) #25
  ret { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering18LowerGlobalAddressEPNS_25AMDGPUMachineFunctionInfoENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(920) %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %8 = alloca %"class.llvm::DiagnosticInfoUnsupported", align 8 ; 9 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.c = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.b) #25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !646  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 125 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !698, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN4llvm6AMDGPU14isNamedBarrierERKNS_14GlobalVariableE(ptr noundef nonnull align 8 dereferenceable(89) %i.e) #25
  %i.j = tail call i64 @_ZN4llvm25AMDGPUMachineFunctionInfo21getLDSAbsoluteAddressERKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #25 ; 3 uses
  %.sroa.090.0.extract.trunc = trunc i64 %i.j to i32
  %i.k = and i64 %i.j, 4294967296
  %.not109 = icmp eq i64 %i.k, 0
  br i1 %.not109, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %14 = icmp eq ptr %i.i, null
  br i1 %14, label %bb.d, label %_ZNRSt8optionalIjE5valueEv.exit

_ZNRSt8optionalIjE5valueEv.exit:                  ; preds = %bb.c
  %i.l = tail call noundef i64 @_ZNK4llvm14GlobalVariable13getGlobalSizeERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(89) %i.e, ptr noundef nonnull align 8 dereferenceable(912) %i.c) #25
  %i.m = lshr i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.p = lshr i32 %.sroa.090.0.extract.trunc, 4
  %i.q = and i32 %i.p, 31
  %i.r = add nsw i32 %i.q, -1
  %i.s = add i32 %i.r, %i.n
  %i.t = load i32, ptr %i.o, align 4, !tbaa !81
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.s)
  store i32 %.sroa.speculated.i, ptr %i.o, align 8, !tbaa !702
  br label %bb.d

bb.d:                                             ; preds = %_ZNRSt8optionalIjE5valueEv.exit, %bb.c
  %i.u = and i64 %i.j, 4294967295
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.w = load i64, ptr %i.v, align 8, !tbaa !703
  %i.x = add nsw i64 %i.w, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !201
  store i64 %i.z, ptr %6, align 8, !tbaa !201
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !202
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !203
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85
  %i.af = zext i32 %3 to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ag, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.ah, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.j

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.ai = tail call noundef i32 @_ZNK4llvm19GlobalAddressSDNode15getAddressSpaceEv(ptr noundef nonnull align 8 dereferenceable(108) %2) #25
  %i.aj = icmp eq i32 %i.ai, 3
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ak = tail call noundef i32 @_ZNK4llvm19GlobalAddressSDNode15getAddressSpaceEv(ptr noundef nonnull align 8 dereferenceable(108) %2) #25
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.am = load i8, ptr %i.f, align 1, !tbaa !698, !range !18, !noundef !19
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN4llvmneENS_9StringRefES0_.exit.thread106, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #25 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 1
  %.not.i.i = icmp eq i64 %i.ap, 22
  br i1 %.not.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.g
  %i.aq = extractvalue { ptr, i64 } %i.ao, 0      ; 2 uses
  %i.ar = load i128, ptr %i.aq, align 1
  %i.as = xor i128 %i.ar, 156041165190394120996300804612710362220
  %i.at = getelementptr i8, ptr %i.aq, i64 6
  %i.au = load i128, ptr %i.at, align 1
  %i.av = xor i128 %i.au, 153382643377240582533412436945159021677
  %i.aw = or i128 %i.as, %i.av
  %i.ax = icmp ne i128 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not108 = icmp eq i32 %i.ay, 0
  br i1 %.not108, label %_ZN4llvmneENS_9StringRefES0_.exit.thread106, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.g, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.az = tail call noundef ptr @_ZN4llvm6AMDGPU14isNamedBarrierERKNS_14GlobalVariableE(ptr noundef nonnull align 8 dereferenceable(89) %i.e) #25
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.h, label %_ZN4llvmneENS_9StringRefES0_.exit.thread106

bb.h:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !201
  store i64 %i.bb, ptr %7, align 8, !tbaa !201
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !202
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !203
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !534, !nonnull !19, !align !231
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bk, align 1, !tbaa !656
  store ptr @.str.16, ptr %9, align 8, !tbaa !26
  store i8 3, ptr %i.bj, align 8, !tbaa !653
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 25, ptr %i.bl, align 8, !tbaa !657
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 1, ptr %i.bm, align 4, !tbaa !660
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !661
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !662
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %8, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %9, ptr %i.bp, align 8, !tbaa !665
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(13) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 288
  store ptr %i.bq, ptr %11, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %.sroa.227.0..sroa_idx, align 8
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 349, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #25 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.br, 1
  store ptr %.fca.0.extract20, ptr %12, align 8, !tbaa !200
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 376 ; 3 uses
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bs) #25 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.bt, 0 ; 3 uses
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.bt, 1 ; 2 uses
  %.not.i = icmp eq ptr %.fca.0.extract15, null
  br i1 %.not.i, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.h
  store ptr null, ptr %i.bs, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i32 %.fca.1.extract16, ptr %.sroa.5.0..sroa_idx4.i, align 8, !tbaa !81
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm14checkForCyclesEPKNS_6SDNodeEPKNS_12SelectionDAGEb(ptr noundef nonnull %.fca.0.extract15, ptr noundef nonnull align 8 dereferenceable(920) %4, i1 noundef zeroext false) #25
  store ptr %.fca.0.extract15, ptr %i.bs, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i32 %.fca.1.extract16, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !81
  call void @_ZN4llvm14checkForCyclesEPKNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(920) %4, i1 noundef zeroext false) #25
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit: ; preds = %.thread.i, %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  %i.bw = zext i32 %3 to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload.i.i77 = load i16, ptr %i.bx, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.21.0.copyload.i.i79 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i78, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.by = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i77, ptr %.sroa.21.0.copyload.i.i79) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.by, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.j

_ZN4llvmneENS_9StringRefES0_.exit.thread106:      ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread, %_ZN4llvmneENS_9StringRefES0_.exit, %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 116
  %.sroa.0.0.copyload.i = load i8, ptr %i.bz, align 4, !tbaa !26
  %i.ca = tail call noundef i32 @_ZN4llvm25AMDGPUMachineFunctionInfo17allocateLDSGlobalERKNS_10DataLayoutERKNS_14GlobalVariableENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(130) %1, ptr noundef nonnull align 8 dereferenceable(912) %i.c, ptr noundef nonnull align 8 dereferenceable(89) %i.e, i8 %.sroa.0.0.copyload.i) #25
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !703
  %i.ce = add nsw i64 %i.cd, %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !201
  store i64 %i.cg, ptr %13, align 8, !tbaa !201
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !202
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !203
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85
  %i.cm = zext i32 %3 to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %.sroa.0.0.copyload.i.i82 = load i16, ptr %i.cn, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i83 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.21.0.copyload.i.i84 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i83, align 8, !tbaa !98
  %i.co = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i82, ptr %.sroa.21.0.copyload.i.i84, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.co, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.co, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %_ZN4llvmneENS_9StringRefES0_.exit.thread106, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit
  %.sroa.6104.0 = phi i32 [ %.fca.1.extract, %_ZN4llvmneENS_9StringRefES0_.exit.thread106 ], [ %.fca.1.extract7, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit ], [ %.fca.1.extract37, %bb.d ], [ 0, %bb.e ]
  %.sroa.0103.0 = phi ptr [ %.fca.0.extract, %_ZN4llvmneENS_9StringRefES0_.exit.thread106 ], [ %.fca.0.extract6, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit ], [ %.fca.0.extract36, %bb.d ], [ null, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0103.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6104.0, 1
end_hunk_0
