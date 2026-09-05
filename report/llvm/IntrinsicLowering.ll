Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IntrinsicLowering?download=true
inline.NumInlined: 703
inline.NumDeleted: 361
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvmplERKNS_5TwineES2_:bb.a
bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !70, !noalias !140
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !140
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !140
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !70, !noalias !140
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !140
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !140
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !140
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !71, !alias.scope !140
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !140
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71, !alias.scope !140
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !69, !alias.scope !140
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !70, !alias.scope !140
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm11ConstantInt7getTrueEPNS_4TypeE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL10LowerCTPOPRN4llvm11LLVMContextEPNS_5ValueEPNS_11InstructionE(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %8 = alloca %"class.llvm::IRBuilder", align 8   ; 24 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 3 uses
  store ptr null, ptr %8, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 7 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 7 uses
  store ptr %i.e, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 68
  store i8 0, ptr %i.k, align 4, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 69
  store i8 2, ptr %i.l, align 1, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 70
  store i8 7, ptr %i.m, align 2, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.d, align 8, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.e, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  store ptr %i.r, ptr %i.o, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.p, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 7 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  store i64 %i.u, ptr %8, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #17 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.x, 1
  %i.y = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.y, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.73) #16
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %.fca.0.extract = extractvalue { i64, i8 } %i.x, 0
  %i.z = trunc i64 %.fca.0.extract to i32         ; 2 uses
  %i.aa = add i32 %i.z, 63
  %i.ab = lshr i32 %i.aa, 6                       ; 2 uses
  %i.ac = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef nonnull %i.w, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge8, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 33
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 33
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 33
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 33
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 33
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.k
  %.07 = phi ptr [ %0, %.preheader.lr.ph ], [ %.1, %bb.k ] ; 7 uses
  %.0306 = phi i32 [ %i.z, %.preheader.lr.ph ], [ %.131, %bb.k ] ; 5 uses
  %.0325 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.1.i, %bb.k ] ; 2 uses
  %.0364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dw, %bb.k ]
  %i.ax = call i32 @llvm.umin.i32(i32 %.0306, i32 64)
  %i.ay = icmp ugt i32 %.0306, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %.07, i64 8 ; 2 uses
  br label %bb.d

._crit_edge8:                                     ; preds = %bb.k, %_ZNK4llvm8TypeSizecvmEv.exit
  %.032.lcssa = phi ptr [ %i.ac, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %.1.i, %bb.k ]
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret ptr %.032.lcssa

._crit_edge:                                      ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55, %.preheader
  %.035.lcssa = phi ptr [ %.07, %.preheader ], [ %.1.i51, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55 ] ; 2 uses
  %i.ba = icmp ugt i32 %.0306, 64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store i8 1, ptr %i.ar, align 1, !tbaa !70
  store ptr @.str.71, ptr %13, align 8, !tbaa !71
  store i8 3, ptr %i.aq, align 8, !tbaa !69
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !72, !nonnull !22, !align !23 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef 14, ptr noundef %.035.lcssa, ptr noundef %.0325, i1 noundef zeroext false, i1 noundef zeroext false) #15, !inline_history !143 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.not.i, label %bb.c, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i8 1, ptr %i.as, align 8, !tbaa !69
  store i8 1, ptr %i.at, align 1, !tbaa !70
  %i.bg = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef %.035.lcssa, ptr noundef %.0325, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, i64 0) #15 ; 3 uses
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !73, !nonnull !22, !align !23 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #15, !inline_history !144
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.bg) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit: ; preds = %._crit_edge, %bb.c
  %.1.i = phi ptr [ %i.bf, %._crit_edge ], [ %i.bg, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br i1 %i.ba, label %bb.i, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55
  %.0333 = phi i32 [ 0, %.lr.ph ], [ %16, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55 ] ; 2 uses
  %.0342 = phi i32 [ 1, %.lr.ph ], [ %i.dg, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55 ] ; 2 uses
  %.0351 = phi ptr [ %.07, %.lr.ph ], [ %.1.i51, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55 ] ; 4 uses
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !15
  %15 = zext i32 %.0333 to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10LowerCTPOPRN4llvm11LLVMContextEPNS_5ValueEPNS_11InstructionEE10MaskValues, i64 %15
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !77
  %i.bo = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.bl, i64 noundef %i.bn, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store i8 1, ptr %i.ae, align 1, !tbaa !70
  store ptr @.str.67, ptr %9, align 8, !tbaa !71
  store i8 3, ptr %i.ad, align 8, !tbaa !69
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !72, !nonnull !22, !align !23 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef 29, ptr noundef %.0351, ptr noundef %i.bo) #15, !inline_history !0 ; 2 uses
  %.not.not.i37 = icmp eq ptr %i.bt, null
  br i1 %.not.not.i37, label %bb.e, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i16 257, ptr %i.af, align 8
  %i.bu = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef %.0351, ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #15 ; 3 uses
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !73, !nonnull !22, !align !23 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #15, !inline_history !1
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.bu) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %bb.d, %bb.e
  %.1.i38 = phi ptr [ %i.bu, %bb.e ], [ %i.bt, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.bz = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.ca = zext nneg i32 %.0342 to i64
  %i.cb = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.bz, i64 noundef %i.ca, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store i8 1, ptr %i.ah, align 1, !tbaa !70
  store ptr @.str.68, ptr %10, align 8, !tbaa !71
  store i8 3, ptr %i.ag, align 8, !tbaa !69
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !72, !nonnull !22, !align !23 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef ptr %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i32 noundef 27, ptr noundef %.0351, ptr noundef %i.cb, i1 noundef zeroext false) #15, !inline_history !145 ; 2 uses
  %.not.not.i39 = icmp eq ptr %i.cg, null
  br i1 %.not.not.i39, label %bb.f, label %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit

bb.f:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i16 257, ptr %i.ai, align 8
  %i.ch = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 27, ptr noundef %.0351, ptr noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, i64 0) #15 ; 3 uses
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !73, !nonnull !22, !align !23 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i43 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i.i41, i64 %.sroa.2.0.copyload.i.i43) #15, !inline_history !146
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.ch) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit

_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit: ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit, %bb.f
  %.1.i40 = phi ptr [ %i.cg, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit ], [ %i.ch, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store i8 1, ptr %i.ak, align 1, !tbaa !70
  store ptr @.str.69, ptr %11, align 8, !tbaa !71
  store i8 3, ptr %i.aj, align 8, !tbaa !69
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !72, !nonnull !22, !align !23 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i32 noundef 29, ptr noundef %.1.i40, ptr noundef %i.bo) #15, !inline_history !0 ; 2 uses
  %.not.not.i44 = icmp eq ptr %i.cq, null
  br i1 %.not.not.i44, label %bb.g, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit49

bb.g:                                             ; preds = %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i16 257, ptr %i.al, align 8
  %i.cr = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef %.1.i40, ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, i64 0) #15 ; 3 uses
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !73, !nonnull !22, !align !23 ; 2 uses
  %.sroa.0.0.copyload.i.i46 = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i48 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr %.sroa.0.0.copyload.i.i46, i64 %.sroa.2.0.copyload.i.i48) #15, !inline_history !1
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.cr) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit49

_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit49: ; preds = %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit, %bb.g
  %.1.i45 = phi ptr [ %i.cr, %bb.g ], [ %i.cq, %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store i8 1, ptr %i.an, align 1, !tbaa !70
  store ptr @.str.70, ptr %12, align 8, !tbaa !71
  store i8 3, ptr %i.am, align 8, !tbaa !69
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !72, !nonnull !22, !align !23 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i32 noundef 14, ptr noundef %.1.i38, ptr noundef %.1.i45, i1 noundef zeroext false, i1 noundef zeroext false) #15, !inline_history !143 ; 2 uses
  %.not.not.i50 = icmp eq ptr %i.da, null
  br i1 %.not.not.i50, label %bb.h, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55

bb.h:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i8 1, ptr %i.ao, align 8, !tbaa !69
  store i8 1, ptr %i.ap, align 1, !tbaa !70
  %i.db = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef %.1.i38, ptr noundef %.1.i45, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #15 ; 3 uses
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !73, !nonnull !22, !align !23 ; 2 uses
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i.i54 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr %.sroa.0.0.copyload.i.i.i52, i64 %.sroa.2.0.copyload.i.i.i54) #15, !inline_history !144
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.db) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit55: ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit49, %bb.h
  %.1.i51 = phi ptr [ %i.da, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit49 ], [ %i.db, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.dg = shl nuw nsw i32 %.0342, 1               ; 2 uses
  %16 = add i32 %.0333, 1
  %i.dh = icmp samesign ult i32 %i.dg, %i.ax
  br i1 %i.dh, label %bb.d, label %._crit_edge, !llvm.loop !147

bb.i:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit
  %i.di = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !15
  %i.dk = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.dj, i64 noundef 64, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store i8 1, ptr %i.av, align 1, !tbaa !70
  store ptr @.str.72, ptr %14, align 8, !tbaa !71
  store i8 3, ptr %i.au, align 8, !tbaa !69
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !72, !nonnull !22, !align !23 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef ptr %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i32 noundef 27, ptr noundef nonnull %.07, ptr noundef %i.dk, i1 noundef zeroext false) #15, !inline_history !145 ; 2 uses
  %.not.not.i56 = icmp eq ptr %i.dp, null
  br i1 %.not.not.i56, label %bb.j, label %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit61

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i16 257, ptr %i.aw, align 8
  %i.dq = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 27, ptr noundef nonnull %.07, ptr noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr null, i64 0) #15 ; 3 uses
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !73, !nonnull !22, !align !23 ; 2 uses
  %.sroa.0.0.copyload.i.i58 = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i60 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr %.sroa.0.0.copyload.i.i58, i64 %.sroa.2.0.copyload.i.i60) #15, !inline_history !146
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.dq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit61

_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit61: ; preds = %bb.i, %bb.j
  %.1.i57 = phi ptr [ %i.dp, %bb.i ], [ %i.dq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.dv = add i32 %.0306, -64
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit61, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit
  %.131 = phi i32 [ %i.dv, %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit61 ], [ %.0306, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit ]
  %.1 = phi ptr [ %.1.i57, %_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb.exit61 ], [ %.07, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit ]
  %i.dw = add nuw nsw i32 %.0364, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dw, %i.ab
  br i1 %exitcond.not, label %._crit_edge8, label %.preheader, !llvm.loop !148
}

declare void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #5

declare noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm19ConstantPointerNull3getEPNS_11PointerTypeE(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm10DataLayout13getIntPtrTypeERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL15ReplaceCallWithIPPN4llvm5ValueEEPNS0_8CallInstEPKcS5_T_S8_PNS0_4TypeE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::IRBuilder", align 8   ; 19 uses
  %6 = alloca %"class.llvm::SmallVector.112", align 8 ; 10 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = tail call noundef ptr @_ZNK4llvm11Instruction9getModuleEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %.not43 = icmp eq ptr %2, %3                    ; 2 uses
  br i1 %.not43, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit
  %i.b = ptrtoint ptr %.sroa.7.1 to i64
  %i.c = ptrtoint ptr %.sroa.11.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.11.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %._crit_edge.loopexit ]
  %.sroa.7.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ]
  %.sroa.034.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.034.1, %._crit_edge.loopexit ] ; 4 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.d, %bb.b ], [ 0, %._crit_edge ]
  %i.e = ptrtoint ptr %.sroa.034.0.lcssa to i64   ; 2 uses
  %i.f = sub i64 %.sroa.7.0.lcssa, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = tail call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %4, ptr %.sroa.034.0.lcssa, i64 %i.g, i1 noundef zeroext false) #15
  %i.i = tail call { ptr, ptr } @_ZN4llvm6Module19getOrInsertFunctionENS_9StringRefEPNS_12FunctionTypeE(ptr noundef nonnull align 8 dereferenceable(1288) %i.a, ptr %0, i64 %.sroa.0.0.i, ptr noundef %i.h) #15 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #15
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.q, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.r, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.v, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.w, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i8 0, ptr %i.x, align 4, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 69
  store i8 2, ptr %i.y, align 1, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 70
  store i8 7, ptr %i.z, align 2, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.q, align 8, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.r, align 8, !tbaa !50
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.l, ptr %i.ab, align 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 0, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.not.i.i = icmp eq ptr %i.l, %i.ac
  br i1 %.not.i.i, label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !54
  store i64 %i.ae, ptr %5, align 8, !tbaa !54
  br label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit

_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 8, ptr %i.ah, align 4, !tbaa !81
  %i.ai = ptrtoint ptr %3 to i64
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 3                 ; 3 uses
  %i.am = icmp ugt i64 %i.al, 8
  br i1 %i.am, label %bb.d, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull %i.af, i64 noundef %i.al, i64 noundef 8) #15
  %.pre8.pre.i.i = load i32, ptr %i.ag, align 8, !tbaa !80
  %.pre50.pre = load ptr, ptr %6, align 8, !tbaa !79
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  %.pre50 = phi ptr [ %i.af, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit ], [ %.pre50.pre, %bb.d ] ; 2 uses
  %.pre8.i.i = phi i32 [ 0, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit ], [ %.pre8.pre.i.i, %bb.d ] ; 2 uses
  br i1 %.not43, label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2IPS2_vEET_S6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i
  %i.an = zext i32 %.pre8.i.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre50, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 8 %2, i64 %i.ak, i1 false)
  %.pre.i.i = load i32, ptr %i.ag, align 8, !tbaa !80
  %.pre = load ptr, ptr %6, align 8, !tbaa !79
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2IPS2_vEET_S6_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2IPS2_vEET_S6_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i, %bb.e
  %i.ap = phi ptr [ %.pre50, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i ], [ %.pre, %bb.e ]
  %i.aq = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %i.ar = trunc i64 %i.al to i32
  %i.as = add i32 %i.aq, %i.ar                    ; 2 uses
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !80
  %i.at = zext i32 %i.as to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.au, align 8
  %i.av = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %i.j, ptr noundef %i.k, ptr %i.ap, i64 %i.at, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.aw = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ba, align 1, !tbaa !70
  store ptr %i.ax, ptr %8, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_0
