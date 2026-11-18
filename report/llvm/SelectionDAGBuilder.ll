Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGBuilder?download=true
inline.NumInlined: 16572
inline.NumDeleted: 6374
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN4llvm19SelectionDAGBuilder31visitVectorPredicationIntrinsicERKNS_11VPIntrinsicE:bb.a
  %i.nf = load i32, ptr %i.i, align 8, !tbaa !438
  %.not.i.i314 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i314, label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit318, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit313
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !446
  %i.ni = inttoptr i64 %i.nh to ptr
  br label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit318

_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit318: ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit313, %bb.aq
  %.sroa.0.0.i315 = phi ptr [ null, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit313 ], [ %i.ni, %bb.aq ]
  store ptr %.sroa.0.0.i315, ptr %21, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %i.nf, ptr %.sroa.225.0..sroa_idx, align 8
  %i.nj = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nm = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVPZExtOrTruncERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.nd, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %i.mc, ptr %i.md, ptr %.fca.0.extract28, i32 %.fca.1.extract29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.nk, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.nl) #34 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.nm, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.nm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !tbaa !448
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.no = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.nn, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i319 = extractvalue { ptr, i8 } %i.no, 0 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i319, i64 8
  store ptr %.fca.0.extract12, ptr %i.np, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i320 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i319, i64 16
  store i32 %.fca.1.extract13, ptr %.sroa.2.0..0..sroa_idx.i320, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.nq = load ptr, ptr %i.ca, align 8, !tbaa !410, !nonnull !51, !align !346
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  %i.nr = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %i.nr, i64 12, i1 false), !tbaa.struct !209
  %i.ns = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ns, ptr noundef nonnull align 8 dereferenceable(12) %i.nt, i64 12, i1 false), !tbaa.struct !209
  %i.nu = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nu, ptr noundef nonnull align 8 dereferenceable(12) %i.nv, i64 12, i1 false), !tbaa.struct !209
  store ptr %23, ptr %22, align 8, !tbaa !199
  %i.nw = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 3, ptr %i.nw, align 8, !tbaa !200
  %i.nx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.nq, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %i.co, i32 %i.cp, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %22) #34 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.nx, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.nx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !448
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ny, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i322 = extractvalue { ptr, i8 } %i.nz, 0 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i322, i64 8
  store ptr %.fca.0.extract, ptr %i.oa, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i322, i64 16
  store i32 %.fca.1.extract, ptr %.sroa.2.0..0..sroa_idx.i323, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.as

bb.as:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.aj, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit306, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit318, %bb.ar, %bb.ak
  %i.ob = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.cv
  br i1 %i.oc, label %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef %i.ob) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.od = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.bx
  br i1 %i.oe, label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit
  call void @free(ptr noundef %i.od) #34
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit:     ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.av

bb.av:                                            ; preds = %bb.m, %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

declare i16 @_ZN4llvm24convertStrToRoundingModeENS_9StringRefE(ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11APFloatBase23getArbitraryFPSemanticsENS_9StringRefE(ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm11LLVMContext9emitErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71, !noalias !2389 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !71, !noalias !2389 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !71, !alias.scope !2389
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !69, !alias.scope !2389
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !1228
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !1228
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !69, !noalias !2389
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !2389
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !2389
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !69, !noalias !2389
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !2389
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2389
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !2389
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !70, !alias.scope !2389
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !2389
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !70, !alias.scope !2389
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !71, !alias.scope !2389
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !69, !alias.scope !2389
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare noundef i32 @_ZN4llvm11APFloatBase15SemanticsToEnumERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZNK4llvm14TargetLowering16expandIS_FPCLASSENS_3EVTENS_7SDValueENS_11FPClassTestENS_11SDNodeFlagsERKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), i16, ptr, ptr, i32, i32 noundef, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG20CreateStackTemporaryENS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getGetFPEnvENS_7SDValueERKNS_5SDLocES1_NS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getSetFPEnvENS_7SDValueERKNS_5SDLocES1_NS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 91, 99) i32 @_ZL27FixedPointIntrinsicToOpcodej(i32 noundef %0) unnamed_addr #14 {
switch.lookup:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr i8, ptr @switch.table._ZL27FixedPointIntrinsicToOpcodej, i64 %i.a
  %switch.gep = getelementptr i8, ptr %i.b, i64 -338
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL12expandDivFixjRKN4llvm5SDLocENS_7SDValueES3_S3_RNS_12SelectionDAGERKNS_14TargetLoweringE(i32 noundef range(i32 91, 99) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %2, i32 %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(518435) %8) unnamed_addr #3 {
bb.a:
  %9 = alloca %"struct.llvm::EVT", align 8        ; 15 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 16 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !79 ; 7 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !81 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.e, align 8
  %i.f = icmp eq i32 %0, 95
  %i.g = icmp eq i32 %0, 97                       ; 2 uses
  %i.h = or i1 %i.f, %i.g
  %i.i = add nsw i32 %0, -97
  %i.j = icmp ult i32 %i.i, 2                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !201  ; 3 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1166 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !206
  %i.s = icmp ult i32 %i.r, 65
  %i.t = load ptr, ptr %i.p, align 8
  %spec.select.i.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.t
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !70
  %i.u = trunc i64 %.0.i.i.i.i to i32             ; 2 uses
  %.not = icmp ne i32 %i.u, 0
  %brmerge = or i1 %i.g, %.not
  br i1 %brmerge, label %bb.b, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.w = zext i16 %.sroa.0.0.copyload.i.i to i64  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !213
  %.not263 = icmp eq ptr %i.y, null
  br i1 %.not263, label %.split, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i

.split:                                           ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.z = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.z, 197
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.b
  %i.aa = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #35
  br i1 %i.aa, label %bb.d, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread

bb.c:                                             ; preds = %.split
  %i.ab = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !79
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.ae = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #34
  %i.af = extractvalue { i16, ptr } %i.ae, 0
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.d
  %.fca.1.insert.merged.i = phi i16 [ %i.ad, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %.not.i171 = icmp eq i16 %.fca.1.insert.merged.i, 0
  br i1 %.not.i171, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit._ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread_crit_edge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172

_ZNK4llvm3EVT20getVectorElementTypeEv.exit._ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread_crit_edge: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %.sroa.05.0.copyload.pre = load i16, ptr %9, align 8, !tbaa !79
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ah = zext i16 %.fca.1.insert.merged.i to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !213
  %.not264 = icmp eq ptr %i.aj, null
  %.sroa.05.0.copyload.pre273 = load i16, ptr %9, align 8, !tbaa !79 ; 3 uses
  br i1 %.not264, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172
  %.sroa.2110.0.copyload.pre = load ptr, ptr %i.e, align 8, !tbaa !81
  %.not.i.i.i = icmp eq i16 %.sroa.05.0.copyload.pre273, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread.thread, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread.thread: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !94
  br label %_ZNK4llvm3EVT15isScalarIntegerEv.exit

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.e
  %.sroa.0108.0.copyload284 = phi i16 [ %.sroa.05.0.copyload.pre273, %bb.e ], [ %.sroa.0.0.copyload.i.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ] ; 3 uses
  %.sroa.2110.0.copyload283 = phi ptr [ %.sroa.2110.0.copyload.pre, %bb.e ], [ %.sroa.21.0.copyload.i.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 6184
  %i.am = zext nneg i32 %0 to i64
  %i.an = zext i16 %.sroa.0108.0.copyload284 to i64
  %i.ao = getelementptr inbounds nuw [537 x i8], ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !923 ; 2 uses
  %.not.i173 = icmp eq i8 %i.aq, 0
  br i1 %.not.i173, label %bb.f, label %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit

bb.f:                                             ; preds = %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i
  %i.ar = load ptr, ptr %8, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 632
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(518435) %8, i32 noundef %0, i16 %.sroa.0108.0.copyload284, ptr %.sroa.2110.0.copyload283, i32 noundef %i.u) #34, !inline_history !2390
  %i.av = select i1 %i.au, i8 0, i8 2
  %.sroa.05.0.copyload.pre272.pre = load i16, ptr %9, align 8, !tbaa !79
  br label %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit

_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit: ; preds = %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i, %bb.f
  %.sroa.05.0.copyload.pre272 = phi i16 [ %.sroa.05.0.copyload.pre272.pre, %bb.f ], [ %.sroa.0108.0.copyload284, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i ] ; 6 uses
  %.0.i = phi i8 [ %i.av, %bb.f ], [ %i.aq, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i ]
  %i.aw = and i8 %.0.i, -5
  %or.cond4.not = icmp eq i8 %i.aw, 0
  br i1 %or.cond4.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit172.thread, label %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread

_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread: ; preds = %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !94
  %.not.i174 = icmp eq i16 %.sroa.05.0.copyload.pre272, 0
  br i1 %.not.i174, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit, label %.split240

.split240:                                        ; preds = %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread
  %i.ay = add i16 %.sroa.05.0.copyload.pre272, -2
  %spec.select.i.i175 = icmp ult i16 %i.ay, 10
  br i1 %spec.select.i.i175, label %bb.g, label %bb.j

_ZNK4llvm3EVT15isScalarIntegerEv.exit:            ; preds = %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread.thread, %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread
  %i.az = phi ptr [ %i.ak, %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread.thread ], [ %i.ax, %_ZNK4llvm18TargetLoweringBase28getFixedPointOperationActionEjNS_3EVTEj.exit.thread ] ; 2 uses
  %i.ba = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #35
  br i1 %i.ba, label %bb.h, label %bb.k

bb.g:                                             ; preds = %.split240
  %i.bb = zext nneg i16 %.sroa.05.0.copyload.pre272 to i64
  %i.bc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -16
  %.sroa.0.0.copyload.i.i177 = load i64, ptr %i.bd, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bc, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i178 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i177, 0
  %.fca.1.insert.i.i179 = insertvalue { i64, i8 } %.fca.0.insert.i.i178, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.h:                                             ; preds = %_ZNK4llvm3EVT15isScalarIntegerEv.exit
  %i.be = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #35
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.g, %bb.h
  %i.bf = phi ptr [ %i.ax, %bb.g ], [ %i.az, %bb.h ] ; 2 uses
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i179, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %.fca.1.extract102 = extractvalue { i64, i8 } %.pn.i, 1
  %i.bg = trunc nuw i8 %.fca.1.extract102 to i1
  br i1 %i.bg, label %bb.i, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.i:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.37) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract101 = extractvalue { i64, i8 } %.pn.i, 0
  %i.bh = trunc i64 %.fca.0.extract101 to i32
  %i.bi = add i32 %i.bh, 1                        ; 3 uses
  %i.bj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bi)
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %.split.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

.split.i.i:                                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bi, i1 true) ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 10
  br i1 %i.bm, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i:              ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.bl to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  %i.bn = insertvalue { i16, ptr } poison, i16 %switch.offset.i.i, 0
  %i.bo = insertvalue { i16, ptr } %i.bn, ptr null, 1
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i:       ; preds = %.split.i.i, %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bp = call { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.bi) #34
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i
  %.fca.1.insert.merged.i180 = phi { i16, ptr } [ %i.bp, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i ], [ %i.bo, %_ZN4llvm3MVT12getIntegerVTEj.exit.i ] ; 2 uses
  %i.bq = extractvalue { i16, ptr } %.fca.1.insert.merged.i180, 0 ; 2 uses
  %i.br = extractvalue { i16, ptr } %.fca.1.insert.merged.i180, 1 ; 2 uses
  store i16 %i.bq, ptr %10, align 8, !tbaa !79
  store ptr %i.br, ptr %i.bf, align 8, !tbaa !81
  br label %bb.t

bb.j:                                             ; preds = %.split240
  %i.bs = add i16 %.sroa.05.0.copyload.pre272, -19
  %spec.select.i.i182 = icmp ult i16 %i.bs, 197
  call void @llvm.assume(i1 %spec.select.i.i182)
  %i.bt = zext nneg i16 %.sroa.05.0.copyload.pre272 to i64
  %i.bu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !79
  %i.bx = insertvalue { i16, ptr } poison, i16 %i.bw, 0
  %i.by = insertvalue { i16, ptr } %i.bx, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit186

bb.k:                                             ; preds = %_ZNK4llvm3EVT15isScalarIntegerEv.exit
  %i.bz = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #34
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit186

_ZNK4llvm3EVT20getVectorElementTypeEv.exit186:    ; preds = %bb.j, %bb.k
  %i.ca = phi ptr [ %i.ax, %bb.j ], [ %i.az, %bb.k ] ; 4 uses
  %.fca.1.insert.merged.i185 = phi { i16, ptr } [ %i.by, %bb.j ], [ %i.bz, %bb.k ] ; 2 uses
  %i.cb = extractvalue { i16, ptr } %.fca.1.insert.merged.i185, 0 ; 3 uses
  %i.cc = extractvalue { i16, ptr } %.fca.1.insert.merged.i185, 1
  store i16 %i.cb, ptr %10, align 8, !tbaa !79
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !81
  %.not.i187 = icmp eq i16 %i.cb, 0
  br i1 %.not.i187, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit186
  %i.cd = zext i16 %i.cb to i64
  %i.ce = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cd ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  %.sroa.0.0.copyload.i.i188 = load i64, ptr %i.cf, align 16
  %.sroa.2.0..sroa_idx.i.i189 = getelementptr i8, ptr %i.ce, i64 -8
  %.sroa.2.0.copyload.i.i190 = load i8, ptr %.sroa.2.0..sroa_idx.i.i189, align 8
  %.fca.0.insert.i.i191 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i188, 0
  %.fca.1.insert.i.i192 = insertvalue { i64, i8 } %.fca.0.insert.i.i191, i8 %.sroa.2.0.copyload.i.i190, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit194

bb.m:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit186
  %i.cg = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #35
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit194

_ZNK4llvm3EVT13getSizeInBitsEv.exit194:           ; preds = %bb.l, %bb.m
  %.pn.i193 = phi { i64, i8 } [ %.fca.1.insert.i.i192, %bb.l ], [ %i.cg, %bb.m ] ; 2 uses
  %.fca.1.extract92 = extractvalue { i64, i8 } %.pn.i193, 1
  %i.ch = trunc nuw i8 %.fca.1.extract92 to i1
  br i1 %i.ch, label %bb.n, label %_ZNK4llvm8TypeSizecvmEv.exit195

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit194
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.37) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit195:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit194
  %.fca.0.extract91 = extractvalue { i64, i8 } %.pn.i193, 0
  %i.ci = trunc i64 %.fca.0.extract91 to i32
  %i.cj = add i32 %i.ci, 1                        ; 3 uses
  %i.ck = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cj)
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %.split.i.i198, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i196

.split.i.i198:                                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit195
  %i.cm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cj, i1 true) ; 2 uses
  %i.cn = icmp samesign ult i32 %i.cm, 10
  br i1 %i.cn, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i199, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i196

_ZN4llvm3MVT12getIntegerVTEj.exit.i199:           ; preds = %.split.i.i198
  %switch.idx.cast.i.i200 = trunc nuw nsw i32 %i.cm to i16
  %switch.offset.i.i201 = add nuw nsw i16 %switch.idx.cast.i.i200, 2
  %i.co = insertvalue { i16, ptr } poison, i16 %switch.offset.i.i201, 0
  %i.cp = insertvalue { i16, ptr } %i.co, ptr null, 1
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit202

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i196:    ; preds = %.split.i.i198, %_ZNK4llvm8TypeSizecvmEv.exit195
  %i.cq = call { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.cj) #34
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit202

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit202: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i199, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i196
  %.fca.1.insert.merged.i197 = phi { i16, ptr } [ %i.cq, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i196 ], [ %i.cp, %_ZN4llvm3MVT12getIntegerVTEj.exit.i199 ] ; 2 uses
  %i.cr = extractvalue { i16, ptr } %.fca.1.insert.merged.i197, 0 ; 4 uses
  %i.cs = extractvalue { i16, ptr } %.fca.1.insert.merged.i197, 1 ; 2 uses
  store i16 %i.cr, ptr %10, align 8, !tbaa !79
  store ptr %i.cs, ptr %i.ca, align 8, !tbaa !81
  %i.ct = load i16, ptr %9, align 8, !tbaa !208   ; 3 uses
  %.not.i203 = icmp eq i16 %i.ct, 0
  br i1 %.not.i203, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit202
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !210
  %i.cy = add i16 %i.ct, -163
  %spec.select.i.i.i = icmp ult i16 %i.cy, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.cx to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

bb.p:                                             ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit202
  %i.cz = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #35
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

_ZNK4llvm3EVT21getVectorElementCountEv.exit:      ; preds = %bb.o, %bb.p
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.o ], [ %i.cz, %bb.p ] ; 3 uses
  %.sroa.0.0.insert.ext.i = and i64 %.sroa.0.0.in.i, 1099511627775
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.in.i to i32 ; 2 uses
  %i.da = and i64 %.sroa.0.0.in.i, 4294967296
  %.not.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.db = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.cr, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

bb.r:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.dc = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.cr, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i: ; preds = %bb.r, %bb.q
  %.sroa.04.0.i.i = phi i16 [ %i.db, %bb.q ], [ %i.dc, %bb.r ] ; 2 uses
  %.not.i204 = icmp eq i16 %.sroa.04.0.i.i, 0
  br i1 %.not.i204, label %bb.s, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

bb.s:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i
  %i.dd = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i16 %i.cr, ptr %i.cs, i64 %.sroa.0.0.insert.ext.i) #34 ; 2 uses
  %i.de = extractvalue { i16, ptr } %i.dd, 0
  %i.df = extractvalue { i16, ptr } %i.dd, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i, %bb.s
  %.sroa.3.0.i = phi ptr [ %i.df, %bb.s ], [ null, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i16 [ %i.de, %bb.s ], [ %.sroa.04.0.i.i, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ] ; 2 uses
  store i16 %.sroa.0.0.i, ptr %10, align 8, !tbaa !79
  store ptr %.sroa.3.0.i, ptr %i.ca, align 8, !tbaa !81
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit
  %.sroa.3.0.copyload = phi ptr [ %.sroa.3.0.i, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit ], [ %i.br, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit ] ; 2 uses
  %.sroa.0228.0.copyload = phi i16 [ %.sroa.0.0.i, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit ], [ %i.bq, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit ] ; 2 uses
  %i.dg = phi ptr [ %i.ca, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit ], [ %i.bf, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit ] ; 6 uses
  switch i32 %0, label %bb.v [
    i32 97, label %bb.u
    i32 95, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %7, ptr nonnull %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0228.0.copyload, ptr %.sroa.3.0.copyload) #34
  %.sroa.0232.0.copyload246 = load i16, ptr %10, align 8, !tbaa !79
  %.sroa.3234.0.copyload247 = load ptr, ptr %i.dg, align 8, !tbaa !81
  %i.di = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %7, ptr %4, i32 %5, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0232.0.copyload246, ptr %.sroa.3234.0.copyload247) #34
  br label %_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE.exit210

bb.v:                                             ; preds = %bb.t
  %i.dj = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %7, ptr nonnull %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0228.0.copyload, ptr %.sroa.3.0.copyload) #34
  %.sroa.0232.0.copyload = load i16, ptr %10, align 8, !tbaa !79
  %.sroa.3234.0.copyload = load ptr, ptr %i.dg, align 8, !tbaa !81
  %i.dk = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %7, ptr %4, i32 %5, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0232.0.copyload, ptr %.sroa.3234.0.copyload) #34
  br label %_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE.exit210

_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE.exit210: ; preds = %bb.u, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.u ], [ %i.dj, %bb.v ] ; 2 uses
  %.pn.i209 = phi { ptr, i32 } [ %i.di, %bb.u ], [ %i.dk, %bb.v ] ; 2 uses
  %.fca.0.extract73248 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %.fca.1.extract74250 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i32 } %.pn.i209, 0
  %.fca.1.extract64 = extractvalue { ptr, i32 } %.pn.i209, 1
  %.sroa.057.0.copyload = load i16, ptr %10, align 8, !tbaa !79
  %.sroa.259.0.copyload = load ptr, ptr %i.dg, align 8, !tbaa !81
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !215
  %i.dn = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.dm) #34
  %i.do = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase16getShiftAmountTyENS_3EVTERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518435) %8, i16 %.sroa.057.0.copyload, ptr %.sroa.259.0.copyload, ptr noundef nonnull align 8 dereferenceable(912) %i.dn) #34 ; 2 uses
  %i.dp = extractvalue { i16, ptr } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { i16, ptr } %i.do, 1      ; 2 uses
  br i1 %i.j, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE.exit210
  %.sroa.051.0.copyload = load i16, ptr %10, align 8, !tbaa !79
  %.sroa.253.0.copyload = load ptr, ptr %i.dg, align 8, !tbaa !81
  store ptr %.fca.0.extract73248, ptr %11, align 8, !tbaa !202
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract74250, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !73
  %i.dr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %i.dp, ptr %i.dq, i1 noundef zeroext false, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.dr, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.dr, 1
  store ptr %.fca.0.extract44, ptr %12, align 8
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.247.0..sroa_idx, align 8
  %i.ds = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.051.0.copyload, ptr %.sroa.253.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #34 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.ds, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.ds, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE.exit210
  %.sroa.8.0 = phi i32 [ %.fca.1.extract41, %bb.w ], [ %.fca.1.extract74250, %_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE.exit210 ]
  %.sroa.0214.0 = phi ptr [ %.fca.0.extract40, %bb.w ], [ %.fca.0.extract73248, %_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE.exit210 ]
  %.sroa.036.0.copyload = load i16, ptr %10, align 8, !tbaa !79
  %.sroa.238.0.copyload = load ptr, ptr %i.dg, align 8, !tbaa !81
  store ptr %.sroa.0214.0, ptr %13, align 8, !tbaa !202
  %.sroa.8.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx217, align 8, !tbaa !73
  store ptr %.fca.0.extract63, ptr %14, align 8, !tbaa !202
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract64, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !73
  %i.dt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.036.0.copyload, ptr %.sroa.238.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #34 ; 2 uses
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.dt, 0 ; 2 uses
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.dt, 1 ; 2 uses
  br i1 %i.j, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.du = select i1 %i.h, i32 199, i32 200
  %.sroa.028.0.copyload = load i16, ptr %10, align 8, !tbaa !79
  %.sroa.230.0.copyload = load ptr, ptr %i.dg, align 8, !tbaa !81
  store ptr %.fca.0.extract32, ptr %15, align 8, !tbaa !202
end_hunk_0
