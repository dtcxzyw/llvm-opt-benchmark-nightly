Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGObjC?download=true
inline.NumInlined: 5887
inline.NumDeleted: 2907
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang7CodeGen15CodeGenFunction42GenerateObjCAtomicGetterCopyHelperFunctionEPKNS_20ObjCPropertyImplDeclE:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !667, !nonnull !253, !align !254 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 4096
  %.not92 = icmp eq i64 %i.ab, 0
  br i1 %.not92, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 392
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !671
  switch i32 %i.ad, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142 [
    i32 1, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread
    i32 0, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread
    i32 2, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread
    i32 3, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread
    i32 5, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 396
  %i.af = load i64, ptr %i.ae, align 4, !noalias !1503 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  switch i32 %i.ag, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread [
    i32 0, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142
    i32 1, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit
  ]

_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit: ; preds = %bb.g
  %i.ah = and i64 %i.af, 9223372032559808512
  %i.ai = icmp samesign ugt i64 %i.ah, 30064771071
  br i1 %i.ai, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142

_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread: ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit
  %.0.copyload.i.i.i.i.i = load i64, ptr %4, align 8 ; 2 uses
  %i.aj = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !301
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !276
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !301
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 16
  %i.as = icmp eq i8 %i.ar, 49
  br i1 %i.as, label %bb.h, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142

bb.h:                                             ; preds = %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread
  %i.at = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %.val = load ptr, ptr %i.at, align 8, !tbaa !771 ; 3 uses
  %.not.i95 = icmp eq ptr %.val, null
  br i1 %.not.i95, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i24, ptr %.val, align 8            ; 2 uses
  %i.av = and i24 %i.au, 1536
  %.not1.i = icmp eq i24 %i.av, 0
  br i1 %.not1.i, label %bb.j, label %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aw = trunc i24 %i.au to i16
  %i.ax = and i16 %i.aw, 511
  %i.ay = add nsw i16 %i.ax, -117
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ay, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit, label %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit.thread

_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit: ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !774
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = and i32 %i.bc, 8388608
  %.not148 = icmp eq i32 %i.bd, 0
  br i1 %.not148, label %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit.thread, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142

_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit.thread: ; preds = %bb.j, %bb.i, %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.0.copyload.i.i.i.i.i, ptr %3, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 1872
  %i.bf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !681 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not93 = icmp eq ptr %i.bh, null
  br i1 %.not93, label %_ZN5clang7CodeGen12AggValueSlot7forAddrENS0_7AddressENS_10QualifiersENS1_14IsDestructed_tENS1_17NeedsGCBarriers_tENS1_11IsAliased_tENS1_9Overlap_tENS1_10IsZeroed_tENS1_20IsSanitizerChecked_tE.exit, label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142

_ZN5clang7CodeGen12AggValueSlot7forAddrENS0_7AddressENS_10QualifiersENS1_14IsDestructed_tENS1_17NeedsGCBarriers_tENS1_11IsAliased_tENS1_9Overlap_tENS1_10IsZeroed_tENS1_20IsSanitizerChecked_tE.exit: ; preds = %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit.thread
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !664, !nonnull !253, !align !254
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 17768
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1142, !nonnull !253, !align !254
  %i.bn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang15IdentifierTable3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(112) %i.bm, ptr nonnull @.str.54, i64 30)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 18896
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.bo, align 8, !tbaa !276 ; 3 uses
  %.sroa.051.0.copyload = load i64, ptr %4, align 8, !tbaa !276
  %i.bp = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, i64 %.sroa.051.0.copyload) #21 ; 4 uses
  %i.bq = load i64, ptr %4, align 8, !tbaa !276
  %i.br = or i64 %i.bq, 1
  %i.bs = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, i64 %i.br) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bt, ptr %5, align 8, !tbaa !273
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !274
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 2, ptr %i.bv, align 4, !tbaa !275
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.bp)
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.bs)
  %i.bw = load ptr, ptr %5, align 8, !tbaa !273
  %i.bx = load i32, ptr %i.bu, align 8, !tbaa !274
  %i.by = zext i32 %i.bx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i16 0, ptr %6, align 8, !tbaa !1144
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !1146
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !1161
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.cb, align 8, !tbaa !1162
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.cc, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false)
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = and i16 %i.cf, -4096
  store i16 %i.cg, ptr %i.ce, align 8
  %i.ch = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, i64 %.sroa.0.0.copyload.i96, ptr %i.bw, i64 %i.by, ptr noundef nonnull align 8 dereferenceable(138) %6, i1 noundef zeroext false) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ci = call noundef ptr @_ZNK5clang10ASTContext22getTranslationUnitDeclEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.k) ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %spec.select = select i1 %i.cj, ptr null, ptr %i.ck
  %i.cl = ptrtoint ptr %i.bn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cm = call noundef ptr @_ZN5clang12FunctionDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationES5_NS_15DeclarationNameENS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassEbbbNS_17ConstexprSpecKindERKNS_20AssociatedConstraintE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, ptr noundef %spec.select, i32 0, i32 0, i64 %i.cl, i64 %i.ch, ptr noundef null, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.cn, ptr %8, align 8, !tbaa !273
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.co, align 8, !tbaa !274
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.cp, align 4, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cq = icmp eq ptr %i.cm, null
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cs = select i1 %i.cq, ptr null, ptr %i.cr    ; 2 uses
  %i.ct = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, i64 %i.bp, i32 0) #21
  %i.cu = call noundef ptr @_ZN5clang11ParmVarDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationES5_PKNS_14IdentifierInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, ptr noundef %i.cs, i32 0, i32 0, ptr noundef null, i64 %i.bp, ptr noundef %i.ct, i32 noundef 0, ptr noundef null) #21 ; 3 uses
  store ptr %i.cu, ptr %i.a, align 16, !tbaa !298
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang7VarDeclELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.cu)
  %i.cv = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, i64 %i.bs, i32 0) #21
  %i.cw = call noundef ptr @_ZN5clang11ParmVarDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationES5_PKNS_14IdentifierInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, ptr noundef %i.cs, i32 0, i32 0, ptr noundef null, i64 %i.bs, ptr noundef %i.cv, i32 noundef 0, ptr noundef null) #21 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !298
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang7VarDeclELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.cw)
  %i.cy = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(168) %i.cm) #23
  call void @_ZN5clang12FunctionDecl9setParamsERNS_10ASTContextEN4llvm8ArrayRefIPNS_11ParmVarDeclEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.cm, ptr noundef nonnull align 8 dereferenceable(23904) %i.cy, ptr nonnull %i.a, i64 2) #21
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 400
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !689
  %i.dc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5clang7CodeGen12CodeGenTypes33arrangeBuiltinFunctionDeclarationENS_8QualTypeERKNS0_15FunctionArgListE(ptr noundef nonnull align 8 dereferenceable(232) %i.db, i64 %.sroa.0.0.copyload.i96, ptr noundef nonnull align 8 dereferenceable(144) %8) #21 ; 3 uses
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 400
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !689
  %i.dg = call noundef ptr @_ZN5clang7CodeGen12CodeGenTypes15GetFunctionTypeERKNS0_14CGFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(232) %i.df, ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.di, align 1, !tbaa !304
  store ptr @.str.54, ptr %9, align 8, !tbaa !276
  store i8 3, ptr %i.dh, align 8, !tbaa !305
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 200
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1163, !nonnull !253, !align !254
  %i.dm = call noundef ptr @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineEPNS_6ModuleE(ptr noundef %i.dg, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull %i.dl) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  call void @_ZN5clang7CodeGen13CodeGenModule29SetInternalFunctionAttributesENS_10GlobalDeclEPN4llvm8FunctionERKNS0_14CGFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(4008) %i.dn, i64 0, i32 0, ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #21
  call void @_ZN5clang10GlobalDeclC2EPKNS_12FunctionDeclEj(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull %i.cm, i32 noundef 0)
  %i.do = load i64, ptr %10, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dq = load i32, ptr %i.dp, align 8
  call void @_ZN5clang7CodeGen15CodeGenFunction13StartFunctionENS_10GlobalDeclENS_8QualTypeEPN4llvm8FunctionERKNS0_14CGFunctionInfoERKNS0_15FunctionArgListENS_14SourceLocationESD_(ptr noundef nonnull align 8 dereferenceable(6288) %0, i64 %i.do, i32 %i.dq, i64 %.sroa.0.0.copyload.i96, ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr noundef nonnull align 8 dereferenceable(144) %8, i32 0, i32 0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 144
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !664, !nonnull !253, !align !254
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i64 0, ptr %12, align 8
  call void @_ZN5clang11DeclRefExprC1ERKNS_10ASTContextEPNS_9ValueDeclEbNS_8QualTypeENS_13ExprValueKindENS_14SourceLocationERKNS_18DeclarationNameLocENS_15NonOdrUseReasonE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.dt, ptr noundef %i.cw, i1 noundef zeroext false, i64 %i.bs, i32 noundef 0, i32 0, ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.du = and i64 %i.bs, -16
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load ptr, ptr %i.dv, align 16, !tbaa !301
  %i.dx = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dw) #21
  %i.dy = call noundef ptr @_ZN5clang13UnaryOperator6CreateERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, ptr noundef nonnull %11, i32 noundef 5, i64 %i.dx, i32 noundef 1, i32 noundef 0, i32 0, i1 noundef zeroext false, i64 0) #21
  %i.dz = load ptr, ptr %i.at, align 8, !tbaa !771 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ea, ptr %13, align 8, !tbaa !273
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.eb, align 8, !tbaa !274
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 4, ptr %i.ec, align 4, !tbaa !275
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.dy)
  %i.ed = load i16, ptr %i.dz, align 8
  %i.ee = and i16 %i.ed, 511
  %.not.i.i = icmp eq i16 %i.ee, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %spec.select.v.i.i ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1504
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ej
  call void @_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_S3_PS6_EEvEEvT_SA_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr nonnull %i.eg, ptr nonnull %i.ek)
  %.sroa.06.0.copyload = load i64, ptr %4, align 8, !tbaa !276
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !774
  %i.en = load i32, ptr %i.dz, align 8            ; 3 uses
  %i.eo = and i32 %i.en, 524288
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = load ptr, ptr %13, align 8, !tbaa !273
  store ptr %i.eq, ptr %14, align 8, !tbaa !1507
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.es = load i32, ptr %i.eb, align 8, !tbaa !274
  %i.et = zext i32 %i.es to i64
  store i64 %i.et, ptr %i.er, align 8, !tbaa !1508
  %i.eu = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.ev = shufflevector <4 x i32> %i.eu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ew = and <4 x i32> %i.ev, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.ex = icmp ne <4 x i32> %i.ew, zeroinitializer ; 4 uses
  %i.ey = lshr i32 %i.en, 24
  %i.ez = and i32 %i.ey, 7
  %i.fa = extractelement <4 x i1> %i.ex, i64 0
  %i.fb = extractelement <4 x i1> %i.ex, i64 1
  %i.fc = extractelement <4 x i1> %i.ex, i64 2
  %i.fd = extractelement <4 x i1> %i.ex, i64 3
  %i.fe = call noundef ptr @_ZN5clang16CXXConstructExpr6CreateERKNS_10ASTContextENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, i64 %.sroa.06.0.copyload, i32 0, ptr noundef %i.em, i1 noundef zeroext %i.ep, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1344") align 8 %14, i1 noundef zeroext %i.fd, i1 noundef zeroext %i.fc, i1 noundef zeroext %i.fb, i1 noundef zeroext %i.fa, i32 noundef %i.ez, i64 0) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.ff = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !664, !nonnull !253, !align !254
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store i64 0, ptr %16, align 8
  call void @_ZN5clang11DeclRefExprC1ERKNS_10ASTContextEPNS_9ValueDeclEbNS_8QualTypeENS_13ExprValueKindENS_14SourceLocationERKNS_18DeclarationNameLocENS_15NonOdrUseReasonE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(23904) %i.fh, ptr noundef %i.cu, i1 noundef zeroext false, i64 %i.bp, i32 noundef 0, i32 0, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.fi = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %18, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.fi, i8 0, i64 25, i1 false)
  call void @_ZN5clang7CodeGen15CodeGenFunction11EmitAnyExprEPKNS_4ExprENS0_12AggValueSlotEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::RValue") align 8 %17, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %15, ptr noundef nonnull byval(%"class.clang::CodeGen::AggValueSlot") align 8 %18, i1 noundef zeroext false) #21
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !664, !nonnull !253, !align !254
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.0.0.copyload.i99 = load i64, ptr %i.fm, align 8, !tbaa !276
  %i.fn = call i64 @_ZNK5clang10ASTContext19getTypeAlignInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fl, i64 %.sroa.0.0.copyload.i99) #21
  %i.fo = load ptr, ptr %17, align 8, !tbaa !276  ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %4, align 8, !tbaa !276
  %i.fp = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction17ConvertTypeForMemENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %0, i64 %.sroa.02.0.copyload) #21
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = and i64 %i.fq, -5
  %i.fs = icmp ugt ptr %i.fo, inttoptr (i64 7 to ptr)
  %masksel = select i1 %i.fs, i64 4, i64 0
  %spec.select147 = or disjoint i64 %i.fr, %masksel
  store i64 %spec.select147, ptr %19, align 8
  %.sroa.6138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.fp, ptr %.sroa.6138.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.fn, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.fu, align 8, !alias.scope !1509
  call void @_ZN5clang7CodeGen15CodeGenFunction11EmitAggExprEPKNS_4ExprENS0_12AggValueSlotE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.fe, ptr noundef nonnull byval(%"class.clang::CodeGen::AggValueSlot") align 8 %19) #21
  call void @_ZN5clang7CodeGen15CodeGenFunction14FinishFunctionENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(6288) %0, i32 0) #21
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !252, !nonnull !253, !align !254
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload, ptr %2, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1872
  %i.fx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang8QualTypeEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i.i101 = extractvalue { ptr, i8 } %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i101, i64 8
  store ptr %i.dm, ptr %i.fy, align 8, !tbaa !681
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.fz = load ptr, ptr %13, align 8, !tbaa !273  ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ea
  br i1 %i.ga, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5clang7CodeGen12AggValueSlot7forAddrENS0_7AddressENS_10QualifiersENS1_14IsDestructed_tENS1_17NeedsGCBarriers_tENS1_11IsAliased_tENS1_9Overlap_tENS1_10IsZeroed_tENS1_20IsSanitizerChecked_tE.exit
  call void @free(ptr noundef %i.fz) #21
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN5clang7CodeGen12AggValueSlot7forAddrENS0_7AddressENS_10QualifiersENS1_14IsDestructed_tENS1_17NeedsGCBarriers_tENS1_11IsAliased_tENS1_9Overlap_tENS1_10IsZeroed_tENS1_20IsSanitizerChecked_tE.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gb = load ptr, ptr %8, align 8, !tbaa !273   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.cn
  br i1 %i.gc, label %_ZN4llvm11SmallVectorIPKN5clang7VarDeclELj16EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit
  call void @free(ptr noundef %i.gb) #21
  br label %_ZN4llvm11SmallVectorIPKN5clang7VarDeclELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang7VarDeclELj16EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gd = load ptr, ptr %5, align 8, !tbaa !273   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.bt
  br i1 %i.ge, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang7VarDeclELj16EED2Ev.exit
  call void @free(ptr noundef %i.gd) #21
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang8QualTypeELj2EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKN5clang7VarDeclELj16EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142

_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142: ; preds = %bb.h, %bb.f, %bb.g, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj2EED2Ev.exit, %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit, %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit.thread, %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread, %bb.e, %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit
  %.1 = phi ptr [ %i.w, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit ], [ null, %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread ], [ null, %bb.e ], [ null, %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit ], [ %i.dm, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj2EED2Ev.exit ], [ null, %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit ], [ %i.bh, %_ZL17hasTrivialGetExprPKN5clang20ObjCPropertyImplDeclE.exit.thread ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142
  %.2 = phi ptr [ %.1, %_ZNK5clang11ObjCRuntime19hasAtomicCopyHelperEv.exit.thread142 ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind
declare void @_ZN5clang7CodeGen15CodeGenFunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(6288) dereferenceable(6288)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction22generateObjCGetterBodyEPKNS_22ObjCImplementationDeclEPKNS_20ObjCPropertyImplDeclEPKNS_14ObjCMethodDeclEPN4llvm8ConstantE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %7 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %8 = alloca %"class.clang::CodeGen::Address", align 8 ; 4 uses
  %9 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %10 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %11 = alloca %"class.clang::CodeGen::Address", align 8 ; 4 uses
  %12 = alloca %"class.clang::DeclRefExpr", align 8 ; 4 uses
  %13 = alloca %"class.clang::DeclarationNameLoc", align 8 ; 4 uses
  %14 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %15 = alloca %"class.clang::CodeGen::ReturnValueSlot", align 8 ; 7 uses
  %16 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %17 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %18 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %19 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %20 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %21 = alloca %"class.clang::DeclRefExpr", align 8 ; 4 uses
  %22 = alloca %"class.clang::DeclarationNameLoc", align 8 ; 4 uses
  %23 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %24 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %25 = alloca %"class.clang::CodeGen::CallArgList", align 8 ; 28 uses
  %26 = alloca %"class.clang::CodeGen::CGCallee", align 8 ; 7 uses
  %.sroa.4.i = alloca [23 x i8], align 1          ; 4 uses
  %27 = alloca %"class.clang::CodeGen::RValue", align 8 ; 3 uses
  %28 = alloca %"class.clang::CodeGen::ReturnValueSlot", align 8 ; 7 uses
  %29 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %30 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %31 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %32 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %34 = alloca %"class.clang::DeclRefExpr", align 8 ; 4 uses
  %35 = alloca %"class.clang::DeclarationNameLoc", align 8 ; 4 uses
  %36 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %37 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 2 uses
  %38 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %39 = alloca %"class.clang::CodeGen::Address", align 8 ; 4 uses
  %40 = alloca %"class.clang::DeclRefExpr", align 8 ; 4 uses
  %41 = alloca %"class.clang::DeclarationNameLoc", align 8 ; 4 uses
  %42 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %43 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %44 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %.sroa.4324 = alloca [52 x i8], align 4         ; 4 uses
  %45 = alloca %"class.clang::CodeGen::LValue", align 8 ; 10 uses
  %46 = alloca %"class.(anonymous namespace)::PropertyImplStrategy", align 8 ; 5 uses
  %47 = alloca %"class.clang::CodeGen::LValue", align 8 ; 7 uses
  %48 = alloca %"class.clang::CodeGen::CGPointerAuthInfo", align 8 ; 5 uses
  %49 = alloca %"class.clang::CodeGen::Address", align 8 ; 5 uses
  %50 = alloca %"class.clang::CodeGen::CGPointerAuthInfo", align 8 ; 5 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %53 = alloca %"class.clang::CodeGen::CGCallee", align 8 ; 7 uses
  %54 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %55 = alloca %"class.clang::CodeGen::CallArgList", align 8 ; 26 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %56 = alloca %"class.clang::CodeGen::RValue", align 8 ; 8 uses
  %.sroa.4224 = alloca [23 x i8], align 1         ; 2 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %58 = alloca %"class.clang::CodeGen::LValue", align 8 ; 14 uses
  %59 = alloca %"class.clang::CodeGen::LValue", align 8 ; 10 uses
  %60 = alloca %"class.clang::CodeGen::LValue", align 8 ; 10 uses
  %61 = alloca %"class.clang::CodeGen::Address", align 8 ; 6 uses
  %62 = alloca %"class.clang::CodeGen::CGPointerAuthInfo", align 8 ; 5 uses
  %63 = alloca %"class.clang::CodeGen::Address", align 8 ; 5 uses
  %64 = alloca %"class.clang::CodeGen::CGPointerAuthInfo", align 8 ; 5 uses
  %65 = alloca %"class.clang::CodeGen::RValue", align 8 ; 4 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %67 = alloca %"class.clang::CodeGen::RValue", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1164 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !276
  store i64 %.sroa.0.0.copyload.i, ptr %43, align 8
  %i.e = call noundef i32 @_ZNK5clang8QualType27isNonTrivialToPrimitiveCopyEv(ptr noundef nonnull align 8 dereferenceable(8) %43) #21
end_hunk_0
