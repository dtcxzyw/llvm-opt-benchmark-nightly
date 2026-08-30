Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerMemIntrinsics?download=true
inline.NumInlined: 1436
inline.NumDeleted: 565
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm25createMemCpyLoopKnownSizeEPNS_11InstructionEPNS_5ValueES3_PNS_11ConstantIntENS_5AlignES6_bbbRKNS_19TargetTransformInfoESt8optionalIjESA_ImE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.gu = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.af, ptr noundef nonnull %2, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %12) ; 4 uses
  call void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.gu, i32 3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.gv = load ptr, ptr %i.ef, align 8, !tbaa !79, !nonnull !48, !align !49 ; 2 uses
  %.sroa.0.0.copyload.i.i.i148 = load ptr, ptr %i.eo, align 8
  %.sroa.2.0.copyload.i.i.i150 = load i64, ptr %.sroa.4.0..sroa_idx.i.i135, align 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !73
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull %i.gu, ptr noundef nonnull align 8 dereferenceable(34) %30, ptr %.sroa.0.0.copyload.i.i.i148, i64 %.sroa.2.0.copyload.i.i.i150) #14, !inline_history !80
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull %i.gu) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit151

_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit151: ; preds = %bb.s, %bb.t
  %.1.i.i147 = phi ptr [ %i.gu, %bb.t ], [ %i.gt, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %.sroa.0153.0.insert.ext = and i16 %i.fx, 255
  %.sroa.0153.0.insert.insert = or disjoint i16 %.sroa.0153.0.insert.ext, 256
  %i.gz = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateAlignedStoreEPNS_5ValueES2_NS_10MaybeAlignEb(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef %i.gm, ptr noundef nonnull %.1.i.i147, i16 %.sroa.0153.0.insert.insert, i1 noundef zeroext %7) ; 3 uses
  br i1 %8, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store ptr %i.r, ptr %i.f, align 8, !tbaa !81
  %i.ha = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr nonnull %i.f, i64 1, i32 noundef 0, i1 noundef zeroext true) #14
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.gz, i32 noundef 8, ptr noundef %i.ha) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit151
  br i1 %i.fi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 2 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !83
  %i.hd = and i16 %i.hc, -897
  %i.he = or disjoint i16 %i.hd, 128
  store i16 %i.he, ptr %i.hb, align 2, !tbaa !83
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 72
  store i8 1, ptr %i.hf, align 8, !tbaa !84
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !83
  %i.hi = and i16 %i.hh, -897
  %i.hj = or disjoint i16 %i.hi, 128
  store i16 %i.hj, ptr %i.hg, align 2, !tbaa !83
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  store i8 1, ptr %i.hk, align 8, !tbaa !92
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hl = trunc nuw i8 %.fca.1.extract.i.i137 to i1
  br i1 %i.hl, label %bb.y, label %_ZNK4llvm8TypeSizecvmEv.exit152

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.12) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit152:                  ; preds = %bb.x
  %i.hm = add i64 %i.ga, %.0118205
  %i.hn = getelementptr inbounds nuw i8, ptr %.0206, i64 8 ; 2 uses
  %.not120 = icmp eq ptr %i.hn, %i.ey
  br i1 %.not120, label %._crit_edge.loopexit, label %bb.p

bb.z:                                             ; preds = %bb.m, %_ZN4llvm11SmallVectorIPNS_4TypeELj5EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNK4llvm19TargetTransformInfo25getMemcpyLoopLoweringTypeERNS_11LLVMContextEPNS_5ValueEjjNS_5AlignES5_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, i32 noundef, i8, i8, i64) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19insertLoopExpansionPN4llvm11InstructionEPNS_5ValueEjjNS_9StringRefESt8optionalImE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr %.0.val, i64 %.8.val, i64 %.0.val1, i8 %.8.val3) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %18 = alloca %"class.llvm::IRBuilder", align 8  ; 27 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %20 = alloca %"class.llvm::IRBuilder", align 8  ; 21 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = alloca [2 x i64], align 8                ; 5 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %26 = alloca %"class.llvm::IRBuilder", align 8  ; 19 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %28 = alloca %"class.llvm::MDBuilder", align 8  ; 4 uses
  %29 = alloca %"class.llvm::IRBuilder", align 8  ; 22 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.b = alloca [2 x i64], align 8                ; 5 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %35 = alloca %"class.llvm::MDBuilder", align 8  ; 4 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %37 = alloca %"class.llvm::MDBuilder", align 8  ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load i8, ptr %2, align 8, !tbaa !100
  %.not = icmp eq i8 %i.c, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.ci, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 5, ptr %i.j, align 8, !tbaa !101, !alias.scope !104
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 3, ptr %i.k, align 1, !tbaa !107, !alias.scope !104
  store ptr %.0.val, ptr %17, align 8, !tbaa !38, !alias.scope !104
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %.8.val, ptr %i.l, align 8, !tbaa !38, !alias.scope !104
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr @.str.5, ptr %i.m, align 8, !tbaa !38, !alias.scope !104
  %i.n = call noundef ptr @_ZN4llvm10BasicBlock15splitBasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr nonnull %i.g, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %17) #14 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 6 uses
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #14 ; 3 uses
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108  ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43, !nonnull !48, !align !49
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 3 uses
  store ptr null, ptr %18, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 6 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 56
  store ptr null, ptr %i.ad, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i32 0, ptr %i.ae, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 68
  store i8 0, ptr %i.af, align 4, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 69
  store i8 2, ptr %i.ag, align 1, !tbaa !71
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 70
  store i8 7, ptr %i.ah, align 2, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.y, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.z, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.t, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 6 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.u) #14 ; 0 uses
  %i.ao = load i64, ptr %i.r, align 8, !tbaa !76
  store i64 %i.ao, ptr %18, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 9 uses
  %i.ar = zext i32 %3 to i64                      ; 6 uses
  %i.as = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.aq, i64 noundef %i.ar, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 2 uses
  %i.at = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.aq, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 7 uses
  %.not201 = icmp eq i32 %3, 1
  %i.au = load i8, ptr %2, align 8, !tbaa !100
  %.not44 = icmp eq i8 %i.au, 5                   ; 2 uses
  br i1 %.not201, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not44, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = call fastcc noundef ptr @_ZL23getRuntimeLoopRemainderRN4llvm13IRBuilderBaseEPNS_5ValueES3_j(ptr noundef nonnull align 8 dereferenceable(88) %18, ptr noundef nonnull %2, ptr noundef %i.as, i32 noundef %3) ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = call fastcc noundef ptr @_ZL23getRuntimeLoopRemainderRN4llvm13IRBuilderBaseEPNS_5ValueES3_j(ptr noundef nonnull align 8 dereferenceable(88) %18, ptr noundef nonnull %2, ptr noundef %i.as, i32 noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi ptr [ %i.av, %bb.e ], [ %i.aw, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i16 257, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !77, !nonnull !48, !align !49 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !73
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef 16, ptr noundef nonnull %2, ptr noundef %.0.i, i1 noundef zeroext false, i1 noundef zeroext false) #14, !inline_history !109 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.not.i.i, label %bb.h, label %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.bd, align 8, !tbaa !101
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.be, align 1, !tbaa !107
  %i.bf = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 16, ptr noundef nonnull %2, ptr noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr null, i64 0) #14 ; 3 uses
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !79, !nonnull !48, !align !49 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.am, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #14, !inline_history !110
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %18, ptr noundef %i.bf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit

_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit: ; preds = %bb.g, %bb.h
  %.1.i.i = phi ptr [ %i.bc, %bb.g ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %.thread20

bb.i:                                             ; preds = %bb.c
  br i1 %.not44, label %.split, label %.thread20

.split:                                           ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !36
  %i.bn = icmp ult i32 %i.bm, 65
  %i.bo = load ptr, ptr %i.bk, align 8
  %spec.select.i.i211 = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  %.0.i.i212 = load i64, ptr %spec.select.i.i211, align 8, !tbaa !38
  %.not45 = icmp eq i64 %.0.i.i212, 0
  br i1 %.not45, label %bb.af, label %.thread20

bb.j:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !36
  %i.bs = icmp ult i32 %i.br, 65
  %i.bt = load ptr, ptr %i.bp, align 8
  %spec.select.i.i209 = select i1 %i.bs, ptr %i.bp, ptr %i.bt
  %.0.i.i = load i64, ptr %spec.select.i.i209, align 8, !tbaa !38 ; 3 uses
  %i.bu = urem i64 %.0.i.i, %i.ar                 ; 4 uses
  %i.bv = sub nuw i64 %.0.i.i, %i.bu
  %i.bw = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.aq, i64 noundef %i.bv, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 2 uses
  %i.bx = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.aq, i64 noundef %i.bu, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 2 uses
  %.not42 = icmp eq i64 %.0.i.i, %i.bu
  %i.by = icmp ne i64 %i.bu, 0                    ; 4 uses
  br i1 %.not42, label %bb.af, label %.thread20

.thread20:                                        ; preds = %bb.i, %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit, %.split, %bb.j
  %.238 = phi i1 [ true, %.split ], [ true, %bb.j ], [ false, %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit ], [ false, %bb.i ]
  %.118536 = phi i1 [ false, %.split ], [ %i.by, %bb.j ], [ false, %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit ], [ false, %bb.i ]
  %.118734 = phi i1 [ true, %.split ], [ %i.by, %bb.j ], [ true, %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit ], [ true, %bb.i ]
  %.118932 = phi ptr [ null, %.split ], [ %i.bx, %bb.j ], [ %i.av, %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit ], [ null, %bb.i ]
  %.119127 = phi ptr [ %2, %.split ], [ %i.bw, %bb.j ], [ %.1.i.i, %_ZL19getRuntimeLoopUnitsRN4llvm13IRBuilderBaseEPNS_5ValueES3_jS3_.exit ], [ %2, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %i.bz = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 5, ptr %i.bz, align 8, !tbaa !101, !alias.scope !111
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 3, ptr %i.ca, align 1, !tbaa !107, !alias.scope !111
  store ptr %.0.val, ptr %19, align 8, !tbaa !38, !alias.scope !111
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.8.val, ptr %i.cb, align 8, !tbaa !38, !alias.scope !111
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr @.str.6, ptr %i.cc, align 8, !tbaa !38, !alias.scope !111
  %i.cd = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #16 ; 7 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr noundef %i.p, ptr noundef %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cd) #14
  %i.cf = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 3 uses
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr null, ptr %i.ck, align 8, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %20, i64 64
  store i32 0, ptr %i.cl, align 8, !tbaa !69
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 68
  store i8 0, ptr %i.cm, align 4, !tbaa !70
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 69
  store i8 2, ptr %i.cn, align 1, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 70
  store i8 7, ptr %i.co, align 2, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.cf, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.cg, align 8, !tbaa !73
  store ptr %i.cd, ptr %i.cq, align 8, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.cr, ptr %i.cs, align 8
  %.sroa.4.0..sroa_idx.i.i214 = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i214, align 8
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !76
  store i64 %i.ct, ptr %20, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  %i.cu = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.cv, align 1, !tbaa !107
  store ptr @.str.7, ptr %21, align 8, !tbaa !38
  store i8 3, ptr %i.cu, align 8, !tbaa !101
  %i.cw = call noundef ptr @_ZN4llvm13IRBuilderBase9CreatePHIEPNS_4TypeEjRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef %i.aq, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(34) %21) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !114
  %i.cy = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.aq, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 8 uses
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = and i32 %i.da, 268435455
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 76 ; 4 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !115
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread20
  call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cw) #14
  %.pre.i = load i32, ptr %i.cz, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread20
  %i.df = phi i32 [ %.pre.i, %bb.k ], [ %i.da, %.thread20 ] ; 2 uses
  %i.dg = add i32 %i.df, 1
  %i.dh = and i32 %i.dg, 268435455                ; 2 uses
  %i.di = and i32 %i.df, -268435456
  %i.dj = or disjoint i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.cz, align 4
  %i.dk = add nsw i32 %i.dh, -1
  %i.dl = getelementptr inbounds i8, ptr %i.cw, i64 -8 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !118
  %i.dn = zext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dn ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !123 ; 3 uses
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !118
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !119
  store ptr null, ptr %i.dr, align 8, !tbaa !123
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.dp, align 8, !tbaa !119
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.o, %bb.l
  store ptr %i.cy, ptr %i.do, align 8, !tbaa !124
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.du = load i8, ptr %i.cy, align 8, !tbaa !100
  %i.dv = icmp ugt i8 %i.du, 10
  br i1 %i.dv, label %bb.q, label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit

bb.q:                                             ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !118 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !123
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !119
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.r, %bb.q
  store ptr %i.dw, ptr %i.dp, align 8, !tbaa !119
  store ptr %i.do, ptr %i.dw, align 8, !tbaa !118
  br label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit

_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %bb.p, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i
  %i.ea = load i32, ptr %i.cz, align 4
  %i.eb = and i32 %i.ea, 268435455
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = load ptr, ptr %i.dl, align 8, !tbaa !118
  %i.ee = load i32, ptr %i.dc, align 4, !tbaa !115
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %i.ef
  %i.eh = zext i32 %i.ec to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh
  store ptr %i.i, ptr %i.ei, align 8, !tbaa !125
  %i.ej = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.aq, i64 noundef %i.ar, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i16 257, ptr %i.ek, align 8
  %i.el = load ptr, ptr %i.ci, align 8, !tbaa !77, !nonnull !48, !align !49 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !73
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 noundef 14, ptr noundef nonnull %i.cw, ptr noundef %i.ej, i1 noundef zeroext false, i1 noundef zeroext false) #14, !inline_history !126 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.not.i, label %bb.s, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

bb.s:                                             ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 1, ptr %i.eq, align 8, !tbaa !101
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.er, align 1, !tbaa !107
  %i.es = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %i.cw, ptr noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr null, i64 0) #14 ; 3 uses
  %i.et = load ptr, ptr %i.cj, align 8, !tbaa !79, !nonnull !48, !align !49 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cs, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i214, align 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !73
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(34) %22, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #14, !inline_history !127
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef %i.es) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit: ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit, %bb.s
  %.1.i = phi ptr [ %i.ep, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit ], [ %i.es, %bb.s ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  %i.ex = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.ey = and i32 %i.ex, 268435455
  %i.ez = load i32, ptr %i.dc, align 4, !tbaa !115
  %i.fa = icmp eq i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit
  call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cw) #14
  %.pre.i221 = load i32, ptr %i.cz, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit
  %i.fb = phi i32 [ %.pre.i221, %bb.t ], [ %i.ex, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit ] ; 2 uses
  %i.fc = add i32 %i.fb, 1
  %i.fd = and i32 %i.fc, 268435455                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm19expandMemMoveAsLoopEPNS_11MemMoveInstERKNS_19TargetTransformInfoE:bb.a
  %113 = alloca %"class.llvm::SmallVector.62", align 8 ; 9 uses
  %114 = alloca %"class.llvm::IRBuilder", align 8 ; 19 uses
  %115 = alloca %"class.std::optional.0", align 8 ; 3 uses
  %116 = alloca %"class.std::optional.0", align 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 268435455
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 20 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 13 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !124 ; 13 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = tail call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 1) #14 ; 2 uses
  %.sroa.0123.0.extract.trunc = trunc i16 %i.ah to i8
  %i.ai = and i16 %i.ah, 256
  %.not125 = icmp eq i16 %i.ai, 0
  %.sroa.0.0.i.i = select i1 %.not125, i8 0, i8 %.sroa.0123.0.extract.trunc ; 6 uses
  %i.aj = tail call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 0) #14 ; 2 uses
  %.sroa.0122.0.extract.trunc = trunc i16 %i.aj to i8
  %i.ak = and i16 %i.aj, 256
  %.not126 = icmp eq i16 %i.ak, 0
  %.sroa.0.0.i.i82 = select i1 %.not126, i8 0, i8 %.sroa.0122.0.extract.trunc ; 6 uses
  %i.al = load i32, ptr %i.v, align 4
  %i.am = and i32 %i.al, 268435455
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp sgt i8 %i.at, -1                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #14
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43, !nonnull !48, !align !49
  %i.ay = getelementptr inbounds nuw i8, ptr %114, i64 88 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %114, i64 96 ; 3 uses
  store ptr null, ptr %114, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %114, i64 32
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %114, i64 40
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %114, i64 48
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %114, i64 56
  store ptr null, ptr %i.bd, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %114, i64 64
  store i32 0, ptr %i.be, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %114, i64 68
  store i8 0, ptr %i.bf, align 4, !tbaa !70
  %i.bg = getelementptr inbounds nuw i8, ptr %114, i64 69
  store i8 2, ptr %i.bg, align 1, !tbaa !71
  %i.bh = getelementptr inbounds nuw i8, ptr %114, i64 70
  store i8 7, ptr %i.bh, align 2, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %114, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %114, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.ay, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.az, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !75
  %i.bn = getelementptr inbounds nuw i8, ptr %114, i64 16
  store ptr %i.bk, ptr %i.bn, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %114, i64 24
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !76
  store i64 %i.bp, ptr %114, align 8, !tbaa !76
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !76
  store i64 %i.br, ptr %114, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.bw = and i32 %i.bv, 254
  %spec.select.i.i.i = icmp eq i32 %i.bw, 18
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !158
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !98
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.a, %bb.b
  %i.ca = phi i32 [ %.pre.i, %bb.b ], [ %i.bv, %bb.a ]
  %i.cb = lshr i32 %i.ca, 8                       ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8            ; 2 uses
  %i.cg = and i32 %i.cf, 254
  %spec.select.i.i.i83 = icmp eq i32 %i.cg, 18
  br i1 %spec.select.i.i.i83, label %bb.c, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit86

bb.c:                                             ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !158
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !98
  %.phi.trans.insert.i84 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.pre.i85 = load i32, ptr %.phi.trans.insert.i84, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit86

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit86:  ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, %bb.c
  %i.ck = phi i32 [ %.pre.i85, %bb.c ], [ %i.cf, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ]
  %i.cl = lshr i32 %i.ck, 8                       ; 4 uses
  %.not = icmp eq i32 %i.cb, %i.cl
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit86
  %i.cm = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo18addrspacesMayAliasEjj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cb, i32 noundef %i.cl) #14
  br i1 %i.cm, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = call fastcc { i64, i8 } @_ZN12_GLOBAL__N_128getAverageMemOpLoopTripCountERKN4llvm12MemIntrinsicE(ptr noundef nonnull align 8 dereferenceable(92) %0) ; 2 uses
  %i.co = extractvalue { i64, i8 } %i.cn, 0       ; 2 uses
  %i.cp = extractvalue { i64, i8 } %i.cn, 1       ; 2 uses
  %i.cq = load i8, ptr %i.ac, align 8, !tbaa !100
  %.not128 = icmp eq i8 %i.cq, 5
  br i1 %.not128, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.co, ptr %115, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i8 %i.cp, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_ZN4llvm25createMemCpyLoopKnownSizeEPNS_11InstructionEPNS_5ValueES3_PNS_11ConstantIntENS_5AlignES6_bbbRKNS_19TargetTransformInfoESt8optionalIjESA_ImE(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ac, i8 %.sroa.0.0.i.i, i8 %.sroa.0.0.i.i82, i1 noundef zeroext %i.au, i1 noundef zeroext %i.au, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 0, ptr noundef nonnull byval(%"class.std::optional.0") align 8 %115)
  br label %bb.eu

bb.g:                                             ; preds = %bb.e
  store i64 %i.co, ptr %116, align 8
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %116, i64 8
  store i8 %i.cp, ptr %.sroa.5.0..sroa_idx13, align 8
  call void @_ZN4llvm27createMemCpyLoopUnknownSizeEPNS_11InstructionEPNS_5ValueES3_S3_NS_5AlignES4_bbbRKNS_19TargetTransformInfoESt8optionalIjES8_ImE(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ac, i8 %.sroa.0.0.i.i, i8 %.sroa.0.0.i.i82, i1 noundef zeroext %i.au, i1 noundef zeroext %i.au, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 0, ptr noundef nonnull byval(%"class.std::optional.0") align 8 %116)
  br label %bb.eu

bb.h:                                             ; preds = %bb.d
  %i.cr = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isValidAddrSpaceCastEjj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cl, i32 noundef %i.cb) #14
  br i1 %i.cr, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isValidAddrSpaceCastEjj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cb, i32 noundef %i.cl) #14
  br i1 %i.cs, label %bb.j, label %bb.eu

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit86
  %i.ct = load i8, ptr %i.ac, align 8, !tbaa !100
  %.not130 = icmp eq i8 %i.ct, 5
  br i1 %.not130, label %bb.k, label %bb.bl

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %85)
  call void @llvm.lifetime.start.p0(ptr nonnull %86)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %.sroa.0.0.i.i, ptr %85, align 1
  store i8 %.sroa.0.0.i.i82, ptr %86, align 1
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !99
  store ptr %i.af, ptr %i.j, align 8, !tbaa !99
  %i.cu = zext i1 %i.au to i8                     ; 2 uses
  store i8 %i.cu, ptr %i.k, align 1, !tbaa !159
  store i8 %i.cu, ptr %i.l, align 1, !tbaa !159
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = icmp slt i8 %i.cw, 0
  br i1 %i.cx, label %_ZL26createMemMoveLoopKnownSizePN4llvm11InstructionEPNS_5ValueES3_PNS_11ConstantIntENS_5AlignES6_bbRKNS_19TargetTransformInfoE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !35 ; 6 uses
  store ptr %i.cz, ptr %i.m, align 8, !tbaa !98
  %i.da = load ptr, ptr %i.bl, align 8, !tbaa !8  ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !12
  %i.dd = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %i.dc) #14 ; 2 uses
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.da) #14 ; 4 uses
  %i.df = load ptr, ptr %i.bs, align 8, !tbaa !35
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = lshr i32 %i.dh, 8                       ; 3 uses
  %i.dj = load ptr, ptr %i.cc, align 8, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = lshr i32 %i.dl, 8                       ; 3 uses
  %i.dn = call noundef ptr @_ZNK4llvm19TargetTransformInfo25getMemcpyLoopLoweringTypeERNS_11LLVMContextEPNS_5ValueEjjNS_5AlignES5_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %i.ac, i32 noundef %i.di, i32 noundef %i.dm, i8 %.sroa.0.0.i.i, i8 %.sroa.0.0.i.i82, i64 0) #14 ; 3 uses
  %i.do = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.dd, ptr noundef %i.dn) ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.do, 0
  %.fca.1.extract.i.i.i = extractvalue { i64, i8 } %i.do, 1
  %i.dp = add i64 %.fca.0.extract.i.i.i, 7
  %i.dq = lshr i64 %i.dp, 3                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.dr = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.de) #14
  store ptr %i.dr, ptr %i.n, align 8, !tbaa !98
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !36
  %i.dv = icmp ult i32 %i.du, 65
  %i.dw = load ptr, ptr %i.ds, align 8
  %spec.select.i.i.i88 = select i1 %i.dv, ptr %i.ds, ptr %i.dw
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i88, align 8, !tbaa !38 ; 4 uses
  %i.dx = urem i64 %.0.i.i.i, %i.dq               ; 5 uses
  %i.dy = sub i64 %.0.i.i.i, %i.dx                ; 3 uses
  %i.dz = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cz, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 5 uses
  %i.ea = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cz, i64 noundef %i.dy, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 5 uses
  %i.eb = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.eb, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit192.i

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.12) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit192.i:                ; preds = %bb.l
  %i.ec = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cz, i64 noundef %i.dq, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 4 uses
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #14
  %i.ee = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !43, !nonnull !48, !align !49
  %i.eg = getelementptr inbounds nuw i8, ptr %87, i64 88 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %87, i64 96 ; 3 uses
  store ptr null, ptr %87, align 8, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %87, i64 32
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %87, i64 40
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw i8, ptr %87, i64 48
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !55
  %i.el = getelementptr inbounds nuw i8, ptr %87, i64 56
  store ptr null, ptr %i.el, align 8, !tbaa !57
  %i.em = getelementptr inbounds nuw i8, ptr %87, i64 64
  store i32 0, ptr %i.em, align 8, !tbaa !69
  %i.en = getelementptr inbounds nuw i8, ptr %87, i64 68
  store i8 0, ptr %i.en, align 4, !tbaa !70
  %i.eo = getelementptr inbounds nuw i8, ptr %87, i64 69
  store i8 2, ptr %i.eo, align 1, !tbaa !71
  %i.ep = getelementptr inbounds nuw i8, ptr %87, i64 70
  store i8 7, ptr %i.ep, align 2, !tbaa !72
  %i.eq = getelementptr inbounds nuw i8, ptr %87, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %87, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.eg, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.eh, align 8, !tbaa !73
  %i.es = load ptr, ptr %i.bl, align 8, !tbaa !8
  store ptr %i.es, ptr %i.er, align 8, !tbaa !75
  %i.et = getelementptr inbounds nuw i8, ptr %87, i64 16
  store ptr %i.bk, ptr %i.et, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %87, i64 24
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14 ; 0 uses
  %i.ev = load i64, ptr %i.ed, align 8, !tbaa !76
  store i64 %i.ev, ptr %87, align 8, !tbaa !76
  %i.ew = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.ex = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.ey = call fastcc { ptr, ptr } @_ZL30tryInsertCastToCommonAddrSpaceRN4llvm13IRBuilderBaseEPNS_5ValueES3_RKNS_19TargetTransformInfoE(ptr noundef nonnull align 8 dereferenceable(88) %87, ptr noundef %i.ew, ptr noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0
  %i.fa = extractvalue { ptr, ptr } %i.ey, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #14
  %i.fb = getelementptr inbounds nuw i8, ptr %88, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %88, i64 33
  store i8 1, ptr %i.fc, align 1, !tbaa !107
  store ptr @.str.13, ptr %88, align 8, !tbaa !38
  store i8 3, ptr %i.fb, align 8, !tbaa !101
  %i.fd = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %87, i32 noundef 36, ptr noundef %i.ez, ptr noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(34) %88)
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  call void @_ZN4llvm29SplitBlockAndInsertIfThenElseEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEPPS5_SA_PNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoE(ptr noundef %i.fd, ptr nonnull %i.bk, i64 0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %i.fe = load ptr, ptr %i.o, align 8, !tbaa !160
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !8  ; 11 uses
  %i.fh = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !8  ; 8 uses
  %i.fk = load ptr, ptr %i.bl, align 8, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #14
  %i.fl = getelementptr inbounds nuw i8, ptr %89, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %89, i64 33
  store i8 1, ptr %i.fm, align 1, !tbaa !107
  store ptr @.str.14, ptr %89, align 8, !tbaa !38
  store i8 3, ptr %i.fl, align 8, !tbaa !101
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(34) %89) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #14
  %.sroa.073.0.copyload.i = load i8, ptr %85, align 1, !tbaa !38
  %i.fn = zext nneg i8 %.sroa.073.0.copyload.i to i64
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = or i64 %i.fo, %i.dq                     ; 2 uses
  %i.fq = sub i64 0, %i.fp
  %i.fr = and i64 %i.fp, %i.fq
  %i.fs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fr, i1 false)
  %i.ft = trunc nuw nsw i64 %i.fs to i8
  %i.fu = sub nsw i8 63, %i.ft                    ; 3 uses
  %.sroa.068.0.copyload.i = load i8, ptr %86, align 1, !tbaa !38
  %i.fv = zext nneg i8 %.sroa.068.0.copyload.i to i64
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = or i64 %i.fw, %i.dq                     ; 2 uses
  %i.fy = sub i64 0, %i.fx
  %i.fz = and i64 %i.fx, %i.fy
  %i.ga = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fz, i1 false)
  %i.gb = trunc nuw nsw i64 %i.ga to i8
  %i.gc = sub nsw i8 63, %i.gb                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #14
  store ptr %85, ptr %90, align 8, !tbaa !161
  %i.gd = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr %86, ptr %i.gd, align 8, !tbaa !161
  %i.ge = getelementptr inbounds nuw i8, ptr %90, i64 16
  store ptr %i.dd, ptr %i.ge, align 8, !tbaa !163
  %i.gf = getelementptr inbounds nuw i8, ptr %90, i64 24
  store ptr %i.n, ptr %i.gf, align 8, !tbaa !165
  %i.gg = getelementptr inbounds nuw i8, ptr %90, i64 32
  store ptr %i.i, ptr %i.gg, align 8, !tbaa !166
  %i.gh = getelementptr inbounds nuw i8, ptr %90, i64 40
  store ptr %i.m, ptr %i.gh, align 8, !tbaa !165
  %i.gi = getelementptr inbounds nuw i8, ptr %90, i64 48
  store ptr %i.k, ptr %i.gi, align 8, !tbaa !168
  %i.gj = getelementptr inbounds nuw i8, ptr %90, i64 56
  store ptr %i.j, ptr %i.gj, align 8, !tbaa !166
  %i.gk = getelementptr inbounds nuw i8, ptr %90, i64 64
  store ptr %i.l, ptr %i.gk, align 8, !tbaa !168
  %.not.i = icmp eq i64 %i.dx, 0                  ; 3 uses
  br i1 %.not.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit192.i
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #14
  %i.gl = getelementptr inbounds nuw i8, ptr %91, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %91, i64 33
  store i8 1, ptr %i.gm, align 1, !tbaa !107
  store ptr @.str.15, ptr %91, align 8, !tbaa !38
  store i8 3, ptr %i.gl, align 8, !tbaa !101
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(34) %91) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i64 %i.dy, ptr %i.q, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #14
  %i.gn = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fg) #14 ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i64 } %i.gn, 0 ; 4 uses
  %.fca.1.extract2.i.i = extractvalue { ptr, i64 } %i.gn, 1
  %.not.i.i.i = icmp eq ptr %.fca.0.extract1.i.i, null
  %i.go = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fg) #14
  %i.gp = getelementptr inbounds nuw i8, ptr %92, i64 88 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %92, i64 96 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %92, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 0, i64 16, i1 false)
  store ptr null, ptr %92, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %92, i64 32
  store ptr %i.go, ptr %i.gs, align 8, !tbaa !33
  %i.gt = getelementptr inbounds nuw i8, ptr %92, i64 40
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !53
  %i.gu = getelementptr inbounds nuw i8, ptr %92, i64 48
  store ptr %i.gq, ptr %i.gu, align 8, !tbaa !55
  %i.gv = getelementptr inbounds nuw i8, ptr %92, i64 56
  store ptr null, ptr %i.gv, align 8, !tbaa !57
  %i.gw = getelementptr inbounds nuw i8, ptr %92, i64 64
  store i32 0, ptr %i.gw, align 8, !tbaa !69
  %i.gx = getelementptr inbounds nuw i8, ptr %92, i64 68
  store i8 0, ptr %i.gx, align 4, !tbaa !70
  %i.gy = getelementptr inbounds nuw i8, ptr %92, i64 69
  store i8 2, ptr %i.gy, align 1, !tbaa !71
  %i.gz = getelementptr inbounds nuw i8, ptr %92, i64 70
  store i8 7, ptr %i.gz, align 2, !tbaa !72
  %i.ha = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.gp, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.gq, align 8, !tbaa !73
  store ptr %i.fg, ptr %i.ha, align 8, !tbaa !75
  %i.hb = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 2 uses
  store ptr %.fca.0.extract1.i.i, ptr %i.hb, align 8
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %92, i64 24 ; 2 uses
  %i.hc = trunc i64 %.fca.1.extract2.i.i to i16
  %i.hd = and i16 %i.hc, -256
  %i.he = or disjoint i16 %i.hd, 1
  %.sroa.45.0.extract.trunc.i.i.i = select i1 %.not.i.i.i, i16 1, i16 %i.he
  store i16 %.sroa.45.0.extract.trunc.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fg, i64 48 ; 3 uses
  %.not.i.i194.i = icmp eq ptr %.fca.0.extract1.i.i, %i.hf
  br i1 %.not.i.i194.i, label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hg = getelementptr inbounds i8, ptr %.fca.0.extract1.i.i, i64 -24
  %i.hh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hg) #14 ; 0 uses
  br label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i

_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i: ; preds = %bb.o, %bb.n
  %i.hi = load i64, ptr %i.ed, align 8, !tbaa !76
  store i64 %i.hi, ptr %92, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #14
  %i.hj = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 2 uses
  store ptr %i.hj, ptr %93, align 8, !tbaa !94
  %i.hk = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  store i32 0, ptr %i.hk, align 8, !tbaa !96
  %i.hl = getelementptr inbounds nuw i8, ptr %93, i64 12
  store i32 5, ptr %i.hl, align 4, !tbaa !97
  %i.hm = trunc i64 %i.dx to i32
  call void @_ZNK4llvm19TargetTransformInfo33getMemcpyLoopResidualLoweringTypeERNS_15SmallVectorImplIPNS_4TypeEEERNS_11LLVMContextEjjjNS_5AlignES8_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 noundef %i.hm, i32 noundef %i.di, i32 noundef %i.dm, i8 %i.fu, i8 %i.gc, i64 0) #14
  %i.hn = load ptr, ptr %93, align 8, !tbaa !94   ; 3 uses
  %i.ho = load i32, ptr %i.hk, align 8, !tbaa !96 ; 2 uses
  %i.hp = zext i32 %i.ho to i64
  %.idx.i = shl nuw nsw i64 %i.hp, 3
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx.i
  %.not184295.i = icmp eq i32 %i.ho, 0
  br i1 %.not184295.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit.i
  %.pre.i89 = load ptr, ptr %93, align 8, !tbaa !94
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i
  %i.hr = phi ptr [ %.pre.i89, %._crit_edge.loopexit.i ], [ %i.hn, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i ] ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hj
  br i1 %i.hs, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.hr) #14
  br label %bb.r

.lr.ph.i:                                         ; preds = %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i, %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit.i
  %.0181296.i = phi ptr [ %i.ib, %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit.i ], [ %i.hn, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i ] ; 2 uses
  %i.ht = load ptr, ptr %.0181296.i, align 8, !tbaa !98
  %i.hu = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fg) #14 ; 2 uses
  %.fca.0.extract1.i195.i = extractvalue { ptr, i64 } %i.hu, 0 ; 4 uses
  %.fca.1.extract2.i196.i = extractvalue { ptr, i64 } %i.hu, 1
  %.not.i.i197.i = icmp eq ptr %.fca.0.extract1.i195.i, null
  store ptr %i.fg, ptr %i.ha, align 8, !tbaa !75
  store ptr %.fca.0.extract1.i195.i, ptr %i.hb, align 8
  %i.hv = trunc i64 %.fca.1.extract2.i196.i to i16
  %i.hw = and i16 %i.hv, -256
  %i.hx = or disjoint i16 %i.hw, 1
  %.sroa.45.0.extract.trunc.i.i = select i1 %.not.i.i197.i, i16 1, i16 %i.hx
  store i16 %.sroa.45.0.extract.trunc.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %.not.i.i = icmp eq ptr %.fca.0.extract1.i195.i, %i.hf
  br i1 %.not.i.i, label %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.hy = getelementptr inbounds i8, ptr %.fca.0.extract1.i195.i, i64 -24
  %i.hz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hy) #14
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !76
  store i64 %i.ia, ptr %92, align 8, !tbaa !76
  br label %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit.i

_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit.i: ; preds = %bb.q, %.lr.ph.i
  call fastcc void @"_ZZL26createMemMoveLoopKnownSizePN4llvm11InstructionEPNS_5ValueES3_PNS_11ConstantIntENS_5AlignES6_bbRKNS_19TargetTransformInfoEENK3$_0clEPNS_4TypeERNS_13IRBuilderBaseERm"(ptr noundef nonnull align 8 dereferenceable(72) %90, ptr noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(88) %92, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.ib = getelementptr inbounds nuw i8, ptr %.0181296.i, i64 8 ; 2 uses
  %.not184.i = icmp eq ptr %i.ib, %i.hq
  br i1 %.not184.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.r:                                             ; preds = %bb.p, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #14
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gq) #14
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  %.not185.i = icmp eq i64 %.0.i.i.i, %i.dx
  br i1 %.not185.i, label %.critedge.i, label %bb.s

.thread.i:                                        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit192.i
  %.not185292.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not185292.i, label %.critedge.thread.i, label %.thread293.i

bb.s:                                             ; preds = %bb.r
  %i.ic = load ptr, ptr %i.hf, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #14
  %i.id = getelementptr inbounds nuw i8, ptr %94, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %94, i64 33
  store i8 1, ptr %i.ie, align 1, !tbaa !107
  store ptr @.str.16, ptr %94, align 8, !tbaa !38
  store i8 3, ptr %i.id, align 8, !tbaa !101
  %i.if = call noundef ptr @_ZN4llvm10BasicBlock15splitBasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(80) %i.fg, ptr nonnull %i.ic, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %94) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #14
  br label %bb.t

.thread293.i:                                     ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #14
  %i.ig = getelementptr inbounds nuw i8, ptr %95, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %95, i64 33
  store i8 1, ptr %i.ih, align 1, !tbaa !107
  store ptr @.str.16, ptr %95, align 8, !tbaa !38
  store i8 3, ptr %i.ig, align 8, !tbaa !101
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(34) %95) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #14
  br label %bb.t

bb.t:                                             ; preds = %.thread293.i, %bb.s
  %.0180.i = phi ptr [ %i.if, %bb.s ], [ %i.fg, %.thread293.i ] ; 3 uses
  %.0179.i = phi ptr [ %i.fg, %bb.s ], [ %i.da, %.thread293.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #14
  %i.ii = getelementptr inbounds nuw i8, ptr %.0180.i, i64 48 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !108 ; 4 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -24
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 -16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !35
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !43, !nonnull !48, !align !49
  %i.io = getelementptr inbounds nuw i8, ptr %96, i64 88 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %96, i64 96 ; 3 uses
  store ptr null, ptr %96, align 8, !tbaa !50
  %i.iq = getelementptr inbounds nuw i8, ptr %96, i64 32
  store ptr %i.in, ptr %i.iq, align 8, !tbaa !33
  %i.ir = getelementptr inbounds nuw i8, ptr %96, i64 40 ; 4 uses
  store ptr %i.io, ptr %i.ir, align 8, !tbaa !53
  %i.is = getelementptr inbounds nuw i8, ptr %96, i64 48 ; 5 uses
  store ptr %i.ip, ptr %i.is, align 8, !tbaa !55
  %i.it = getelementptr inbounds nuw i8, ptr %96, i64 56
  store ptr null, ptr %i.it, align 8, !tbaa !57
  %i.iu = getelementptr inbounds nuw i8, ptr %96, i64 64
  store i32 0, ptr %i.iu, align 8, !tbaa !69
  %i.iv = getelementptr inbounds nuw i8, ptr %96, i64 68
  store i8 0, ptr %i.iv, align 4, !tbaa !70
  %i.iw = getelementptr inbounds nuw i8, ptr %96, i64 69
  store i8 2, ptr %i.iw, align 1, !tbaa !71
  %i.ix = getelementptr inbounds nuw i8, ptr %96, i64 70
  store i8 7, ptr %i.ix, align 2, !tbaa !72
  %i.iy = getelementptr inbounds nuw i8, ptr %96, i64 72
  %i.iz = getelementptr inbounds nuw i8, ptr %96, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.io, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.ip, align 8, !tbaa !73
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !8
  store ptr %i.jb, ptr %i.iz, align 8, !tbaa !75
  %i.jc = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 5 uses
  store ptr %i.ij, ptr %i.jc, align 8
  %.sroa.4.0..sroa_idx.i.i201.i = getelementptr inbounds nuw i8, ptr %96, i64 24 ; 5 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i201.i, align 8
  %i.jd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ik) #14 ; 0 uses
  %i.je = load i64, ptr %i.ed, align 8, !tbaa !76
  store i64 %i.je, ptr %96, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #14
  %i.jf = getelementptr inbounds nuw i8, ptr %97, i64 32
  store i16 257, ptr %i.jf, align 8
  %i.jg = call noundef ptr @_ZN4llvm13IRBuilderBase9CreatePHIEPNS_4TypeEjRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %96, ptr noundef %i.cz, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %97) ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #14
  %i.jh = getelementptr inbounds nuw i8, ptr %98, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %98, i64 33
  store i8 1, ptr %i.ji, align 1, !tbaa !107
  store ptr @.str.17, ptr %98, align 8, !tbaa !38
  store i8 3, ptr %i.jh, align 8, !tbaa !101
  %i.jj = load ptr, ptr %i.ir, align 8, !tbaa !77, !nonnull !48, !align !49 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !73
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call noundef ptr %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i32 noundef 16, ptr noundef %i.jg, ptr noundef %i.ec, i1 noundef zeroext false, i1 noundef zeroext false) #14, !inline_history !170 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.not.i.i, label %bb.u, label %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #14
  %i.jo = getelementptr inbounds nuw i8, ptr %84, i64 32
  store i8 1, ptr %i.jo, align 8, !tbaa !101
  %i.jp = getelementptr inbounds nuw i8, ptr %84, i64 33
  store i8 1, ptr %i.jp, align 1, !tbaa !107
  %i.jq = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 16, ptr noundef %i.jg, ptr noundef %i.ec, ptr noundef nonnull align 8 dereferenceable(34) %84, ptr null, i64 0) #14 ; 3 uses
  %i.jr = load ptr, ptr %i.is, align 8, !tbaa !79, !nonnull !48, !align !49 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.jc, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i201.i, align 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !73
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.jq, ptr noundef nonnull align 8 dereferenceable(34) %98, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #14, !inline_history !171
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %96, ptr noundef %i.jq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #14
  br label %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i: ; preds = %bb.u, %bb.t
  %.1.i.i = phi ptr [ %i.jn, %bb.t ], [ %i.jq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #14
  store ptr %.1.i.i, ptr %i.r, align 8, !tbaa !99
  %i.jv = load ptr, ptr %i.n, align 8, !tbaa !98  ; 2 uses
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !99  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #14
  %i.jx = getelementptr inbounds nuw i8, ptr %99, i64 32
  store i16 257, ptr %i.jx, align 8
  %i.jy = load ptr, ptr %i.ir, align 8, !tbaa !77, !nonnull !48, !align !49 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !73
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = call noundef ptr %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef %i.jv, ptr noundef %i.jw, ptr nonnull %i.r, i64 1, i32 3) #14, !inline_history !172 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.not.i.i.i, label %bb.v, label %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit.i

bb.v:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #14
  %i.kd = getelementptr inbounds nuw i8, ptr %83, i64 32
  store i16 257, ptr %i.kd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 0, i64 16, i1 false)
  %i.ke = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.jv, ptr noundef %i.jw, ptr nonnull %i.r, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %83, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %82) ; 4 uses
  call void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.ke, i32 3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %82)
  %i.kf = load ptr, ptr %i.is, align 8, !tbaa !79, !nonnull !48, !align !49 ; 2 uses
  %.sroa.0.0.copyload.i.i.i202.i = load ptr, ptr %i.jc, align 8
  %.sroa.2.0.copyload.i.i.i204.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i201.i, align 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !73
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull %i.ke, ptr noundef nonnull align 8 dereferenceable(34) %99, ptr %.sroa.0.0.copyload.i.i.i202.i, i64 %.sroa.2.0.copyload.i.i.i204.i) #14, !inline_history !173
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %96, ptr noundef nonnull %i.ke) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #14
  br label %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit.i

_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit.i: ; preds = %bb.v, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i
  %.1.i.i.i = phi ptr [ %i.ke, %bb.v ], [ %i.kc, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #14
  %i.kj = load i8, ptr %i.k, align 1, !tbaa !159, !range !147, !noundef !48
  %i.kk = trunc nuw i8 %i.kj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #14
  %i.kl = getelementptr inbounds nuw i8, ptr %100, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %100, i64 33
  store i8 1, ptr %i.km, align 1, !tbaa !107
  store ptr @.str.18, ptr %100, align 8, !tbaa !38
  store i8 3, ptr %i.kl, align 8, !tbaa !101
  %.sroa.0275.0.insert.ext.i = zext i8 %i.fu to i16
  %.sroa.0275.0.insert.insert.i = or disjoint i16 %.sroa.0275.0.insert.ext.i, 256 ; 2 uses
  %i.kn = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateAlignedLoadEPNS_4TypeEPNS_5ValueENS_10MaybeAlignEbRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %96, ptr noundef %i.dn, ptr noundef nonnull %.1.i.i.i, i16 %.sroa.0275.0.insert.insert.i, i1 noundef zeroext %i.kk, ptr noundef nonnull align 8 dereferenceable(34) %100)
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #14
  %i.ko = load ptr, ptr %i.n, align 8, !tbaa !98  ; 2 uses
  %i.kp = load ptr, ptr %i.j, align 8, !tbaa !99  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #14
  %i.kq = getelementptr inbounds nuw i8, ptr %101, i64 32
  store i16 257, ptr %i.kq, align 8
  %i.kr = load ptr, ptr %i.ir, align 8, !tbaa !77, !nonnull !48, !align !49 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !73
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 64
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = call noundef ptr %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef %i.ko, ptr noundef %i.kp, ptr nonnull %i.r, i64 1, i32 3) #14, !inline_history !172 ; 2 uses
  %.not.not.i.i205.i = icmp eq ptr %i.kv, null
  br i1 %.not.not.i.i205.i, label %bb.w, label %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit210.i

bb.w:                                             ; preds = %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #14
  %i.kw = getelementptr inbounds nuw i8, ptr %81, i64 32
  store i16 257, ptr %i.kw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %80, i8 0, i64 16, i1 false)
  %i.kx = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.ko, ptr noundef %i.kp, ptr nonnull %i.r, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %81, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %80) ; 4 uses
  call void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.kx, i32 3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %80)
  %i.ky = load ptr, ptr %i.is, align 8, !tbaa !79, !nonnull !48, !align !49 ; 2 uses
  %.sroa.0.0.copyload.i.i.i207.i = load ptr, ptr %i.jc, align 8
  %.sroa.2.0.copyload.i.i.i209.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i201.i, align 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !73
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef nonnull %i.kx, ptr noundef nonnull align 8 dereferenceable(34) %101, ptr %.sroa.0.0.copyload.i.i.i207.i, i64 %.sroa.2.0.copyload.i.i.i209.i) #14, !inline_history !173
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %96, ptr noundef nonnull %i.kx) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #14
  br label %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit210.i

_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit210.i: ; preds = %bb.w, %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit.i
  %.1.i.i206.i = phi ptr [ %i.kx, %bb.w ], [ %i.kv, %_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #14
  %i.lc = load i8, ptr %i.l, align 1, !tbaa !159, !range !147, !noundef !48
  %i.ld = trunc nuw i8 %i.lc to i1
  %.sroa.0271.0.insert.ext.i = zext i8 %i.gc to i16
  %.sroa.0271.0.insert.insert.i = or disjoint i16 %.sroa.0271.0.insert.ext.i, 256 ; 2 uses
  %i.le = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateAlignedStoreEPNS_5ValueES2_NS_10MaybeAlignEb(ptr noundef nonnull align 8 dereferenceable(88) %96, ptr noundef %i.kn, ptr noundef nonnull %.1.i.i206.i, i16 %.sroa.0271.0.insert.insert.i, i1 noundef zeroext %i.ld) ; 0 uses
end_hunk_1
