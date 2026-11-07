Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprEngineCallAndReturn?download=true
inline.NumInlined: 3246
inline.NumDeleted: 1901
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang4ento10ExprEngine15bindReturnValueERKNS0_9CallEventEPKNS_10StackFrameEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEE:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !210 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !393
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !408
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !409 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 4
  %i.bi = xor i64 %i.ba, -1
  %i.bj = add nsw i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bk ; 2 uses
  %.sroa.0.0.copyload.i.i.i154 = load i64, ptr %i.bl, align 8, !tbaa !203
  %.sroa.2.0..sroa_idx.i.i.i155 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.2.0.copyload.i.i.i156 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i155, align 8, !tbaa !203 ; 2 uses
  %i.bm = trunc i64 %.sroa.2.0.copyload.i.i.i156 to i32
  %i.bn = shl i32 %i.bm, 2
  %i.bo = and i32 %i.bn, 12
  %i.bp = trunc i64 %.sroa.0.0.copyload.i.i.i154 to i32
  %i.bq = and i32 %i.bp, 3
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = icmp eq i32 %i.br, 9
  br i1 %i.bs, label %bb.j, label %_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit

bb.j:                                             ; preds = %.critedge151
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %8, i8 0, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bu = load ptr, ptr %2, align 8, !tbaa !218
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(72) %2) #19
  %i.by = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  store ptr %i.by, ptr %10, align 8, !tbaa !53
  %.not.i.i159 = icmp eq ptr %i.by, null
  br i1 %.not.i.i159, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.by) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.j, %bb.k
  %i.bz = load ptr, ptr %i.aj, align 8, !tbaa !212
  %i.ca = and i64 %.sroa.2.0.copyload.i.i.i156, -4
  %i.cb = inttoptr i64 %i.ca to ptr
  call void @_ZN5clang4ento10ExprEngine25handleConstructionContextEPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_18NodeBuilderContextEPKNS_10StackFrameEPKNS_19ConstructionContextERNS0_15EvalCallOptionsEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.830") align 8 %9, ptr noundef nonnull align 8 dereferenceable(812) %1, ptr noundef %i.bx, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.bz, ptr noundef %3, ptr noundef %i.cb, ptr noundef nonnull align 1 dereferenceable(5) %8, i32 noundef 0)
  %i.cc = load ptr, ptr %9, align 8, !tbaa !53
  store ptr null, ptr %9, align 8, !tbaa !53
  %i.cd = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  store ptr %i.cc, ptr %4, align 8, !tbaa !53
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit.thread, label %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit

_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(9) %i.ce, i64 9, i1 false), !tbaa.struct !573
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit

_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cd) #19
  %.pr = load ptr, ptr %9, align 8, !tbaa !53     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(9) %i.cf, i64 9, i1 false), !tbaa.struct !573
  %.not.i.i.i160 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i160, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr) #19
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit: ; preds = %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit.thread, %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit, %bb.l
  %i.cg = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %.not.i.i161 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i161, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cg) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ch = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %7) #19 ; 2 uses
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  call void @_ZN5clang4ento33RegionAndSymbolInvalidationTraits8setTraitEPKNS0_9MemRegionENS1_17InvalidationKindsE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.ch, i32 noundef 4) #19
  %i.ci = load ptr, ptr %4, align 8, !tbaa !53
  %.sroa.077.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !405
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.278.0.copyload = load i64, ptr %.sroa.278.0..sroa_idx, align 8, !tbaa !406
  call void @_ZNK5clang4ento12ProgramState17invalidateRegionsEN4llvm8ArrayRefIPKNS0_9MemRegionEEENS_8CFGBlock14ElementRefImplILb1EEEjPKNS_10StackFrameEbPNS2_8DenseSetIPKNS0_7SymExprENS2_12DenseMapInfoISH_vEEEEPKNS0_9CallEventEPNS0_33RegionAndSymbolInvalidationTraitsE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr nonnull %i.a, i64 1, ptr %.sroa.077.0.copyload, i64 %.sroa.278.0.copyload, i32 noundef %i.au, ptr noundef %3, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %11) #19
  %i.cj = load ptr, ptr %12, align 8, !tbaa !53   ; 2 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  store ptr %i.ck, ptr %12, align 8, !tbaa !53
  store ptr %i.cj, ptr %4, align 8, !tbaa !53
  %.not.i.i162 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i162, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit163, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ck) #19
  %.pre221 = load ptr, ptr %4, align 8, !tbaa !53
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit163

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit163: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.n
  %i.cl = phi ptr [ %i.cj, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit ], [ %.pre221, %bb.n ]
  %.sroa.0.0.copyload.i.i.i164 = load ptr, ptr %7, align 8
  %.sroa.2.0.copyload.i.i.i166 = load i8, ptr %i.bt, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.cm, align 8, !tbaa !203
  %i.cn = call { ptr, i8 } @_ZNK5clang4ento12ProgramState7getSValENS0_3LocENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr %.sroa.0.0.copyload.i.i.i164, i8 %.sroa.2.0.copyload.i.i.i166, i64 %.sroa.0.0.copyload.i) #19 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i8 } %i.cn, 0
  %.fca.1.extract64 = extractvalue { ptr, i8 } %i.cn, 1
  store ptr %.fca.0.extract63, ptr %6, align 8, !tbaa !204
  store i8 %.fca.1.extract64, ptr %i.ah, align 8, !tbaa !404
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !576 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZN4llvm8DenseMapIPKN5clang4ento7SymExprEhNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_hEEED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit163
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !577
  %i.ct = zext i32 %i.cp to i64                   ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 4
  %i.cv = add nuw nsw i64 %i.ct, 31
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = and i64 %i.cw, 1073741820
  %i.cy = add nuw nsw i64 %i.cx, %i.cu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cs, i64 noundef %i.cy, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIPKN5clang4ento7SymExprEhNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_hEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKN5clang4ento7SymExprEhNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_hEEED2Ev.exit.i: ; preds = %bb.o, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit163
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !580 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN5clang4ento33RegionAndSymbolInvalidationTraitsD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang4ento7SymExprEhNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_hEEED2Ev.exit.i
  %i.dc = load ptr, ptr %11, align 8, !tbaa !581
  %i.dd = zext i32 %i.da to i64                   ; 2 uses
  %i.de = shl nuw nsw i64 %i.dd, 4
  %i.df = add nuw nsw i64 %i.dd, 31
  %i.dg = lshr i64 %i.df, 3
  %i.dh = and i64 %i.dg, 1073741820
  %i.di = add nuw nsw i64 %i.dh, %i.de
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dc, i64 noundef %i.di, i64 noundef 8) #19
  br label %_ZN5clang4ento33RegionAndSymbolInvalidationTraitsD2Ev.exit

_ZN5clang4ento33RegionAndSymbolInvalidationTraitsD2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang4ento7SymExprEhNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_hEEED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit191

_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit: ; preds = %.critedge151
  %i.dj = load i16, ptr %i.e, align 8
  %i.dk = and i16 %i.dj, 511
  %.not220 = icmp eq i16 %i.dk, 109
  br i1 %.not220, label %bb.q, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread

bb.q:                                             ; preds = %_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !584 ; 2 uses
  %i.dn = call noundef zeroext i1 @_ZNK5clang12FunctionDecl30isTypeAwareOperatorNewOrDeleteEv(ptr noundef nonnull align 8 dereferenceable(168) %i.dm) #19
  br i1 %i.dn, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit

_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit: ; preds = %bb.q
  %i.do = call noundef zeroext i1 @_ZNK5clang12FunctionDecl54isUsableAsGlobalAllocationFunctionInConstantEvaluationEPNS_16OptionalUnsignedIjEEPb(ptr noundef nonnull align 8 dereferenceable(168) %i.dm, ptr noundef null, ptr noundef null) #19
  br i1 %i.do, label %bb.r, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread

bb.r:                                             ; preds = %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 5 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !219, !nonnull !188, !align !189
  %.sroa.054.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !405
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.255.0.copyload = load i64, ptr %.sroa.255.0..sroa_idx, align 8, !tbaa !406
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i169 = load i64, ptr %i.dr, align 8, !tbaa !203
  %i.ds = call { ptr, i8 } @_ZN5clang4ento11SValBuilder24getConjuredHeapSymbolValENS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(412) %i.dq, ptr %.sroa.054.0.copyload, i64 %.sroa.255.0.copyload, ptr noundef %3, i64 %.sroa.0.0.copyload.i169, i32 noundef %i.au) #19 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i8 } %i.ds, 0
  %.fca.1.extract50 = extractvalue { ptr, i8 } %i.ds, 1
  store ptr %.fca.0.extract49, ptr %6, align 8, !tbaa !204
  store i8 %.fca.1.extract50, ptr %i.ah, align 8, !tbaa !404
  %i.dt = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %6) #19
  %i.du = call noundef nonnull ptr @_ZNK5clang4ento9MemRegion10StripCastsEb(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, i1 noundef zeroext true) #19
  %i.dv = load i32, ptr %i.e, align 8
  %i.dw = and i32 %i.dv, 1048576
  %.not1.i = icmp eq i32 %i.dw, 0
  br i1 %.not1.i, label %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit.thread, label %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit

_ZNK5clang10CXXNewExpr12getArraySizeEv.exit:      ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !402 ; 2 uses
  %.not149 = icmp eq ptr %i.dy, null
  br i1 %.not149, label %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit
  %i.dz = load ptr, ptr %4, align 8, !tbaa !53
  %i.ea = call { ptr, i8 } @_ZNK5clang4ento12ProgramState7getSValEPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull %i.dy, ptr noundef %3) ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i8 } %i.ea, 0
  %.fca.1.extract41 = extractvalue { ptr, i8 } %i.ea, 1
  br label %bb.t

_ZNK5clang10CXXNewExpr12getArraySizeEv.exit.thread: ; preds = %bb.r, %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit
  %i.eb = load ptr, ptr %i.dp, align 8, !tbaa !219, !nonnull !188, !align !189
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !188, !align !189
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 19032
  %.sroa.0.0.copyload.i.i.i172 = load i64, ptr %i.ee, align 8, !tbaa !203
  %i.ef = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ec, i64 noundef 1, i64 %.sroa.0.0.copyload.i.i.i172) #19
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit.thread, %bb.s
  %.sroa.6200.0 = phi i8 [ 6, %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit.thread ], [ %.fca.1.extract41, %bb.s ]
  %.sroa.0199.0 = phi ptr [ %i.ef, %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit.thread ], [ %.fca.0.extract40, %bb.s ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dr, align 8, !tbaa !203
  %i.eg = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load ptr, ptr %i.eh, align 16, !tbaa !303 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i8, ptr %i.ej, align 16
  %.not.i.i175 = icmp eq i8 %i.ek, 40
  br i1 %.not.i.i175, label %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ei) #19
  br label %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit

_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit:  ; preds = %bb.t, %bb.u
  %.1.i.i = phi ptr [ %i.el, %bb.u ], [ %i.ei, %bb.t ]
  %i.em = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.em, align 16, !tbaa !203
  %i.en = load ptr, ptr %i.dp, align 8, !tbaa !219, !nonnull !188, !align !189
  %i.eo = call { ptr, i8 } @_ZN5clang4ento16getElementExtentENS_8QualTypeERNS0_11SValBuilderE(i64 %.sroa.0.0.copyload.i1.i, ptr noundef nonnull align 8 dereferenceable(412) %i.en) #19 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i8 } %i.eo, 0
  %.fca.1.extract23 = extractvalue { ptr, i8 } %i.eo, 1
  %i.ep = load ptr, ptr %i.dp, align 8, !tbaa !219, !nonnull !188, !align !189 ; 2 uses
  %i.eq = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  store ptr %i.eq, ptr %13, align 8, !tbaa !53
  %.not.i.i176 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i176, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit177, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.eq) #19
  %.pre = load ptr, ptr %i.dp, align 8, !tbaa !219
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit177

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit177: ; preds = %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit, %bb.v
  %i.er = phi ptr [ %i.ep, %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit ], [ %.pre, %bb.v ]
  store ptr %.fca.0.extract22, ptr %14, align 8, !tbaa !204
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 %.fca.1.extract23, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !404
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 400
  %.sroa.0.0.copyload.i178 = load i64, ptr %i.es, align 8, !tbaa !203
  %i.et = call { ptr, i8 } @_ZN5clang4ento11SValBuilder9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.ep, ptr nofree noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr %.sroa.0199.0, i8 %.sroa.6200.0, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %14, i64 %.sroa.0.0.copyload.i178) #19 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i8 } %i.et, 0
  %.fca.1.extract15 = extractvalue { ptr, i8 } %i.et, 1 ; 2 uses
  %i.eu = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i179, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit177
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.eu) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit177, %bb.w
  %i.ev = icmp eq i8 %.fca.1.extract15, 0
  %spec.select = call i8 @llvm.umax.i8(i8 %.fca.1.extract15, i8 1)
  %spec.select216 = select i1 %i.ev, ptr null, ptr %.fca.0.extract14
  %i.ew = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  store ptr %i.ew, ptr %16, align 8, !tbaa !53
  %.not.i.i181 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i181, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit182, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ew) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit182

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit182: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180, %bb.x
  call void @_ZN5clang4ento16setDynamicExtentEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_9MemRegionENS0_20DefinedOrUnknownSValE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %15, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %i.du, ptr %spec.select216, i8 %spec.select) #19
  %i.ex = load ptr, ptr %15, align 8, !tbaa !53
  %i.ey = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  store ptr %i.ey, ptr %15, align 8, !tbaa !53
  store ptr %i.ex, ptr %4, align 8, !tbaa !53
  %.not.i.i188 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i188, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit189, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit182
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ey) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit189

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit189: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit182, %bb.y
  %i.ez = load ptr, ptr %16, align 8, !tbaa !53   ; 2 uses
  %.not.i.i190 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i190, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit191, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit189
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ez) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit191

_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread: ; preds = %bb.q, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit, %_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !219, !nonnull !188, !align !189
  %.sroa.05.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !405
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !406
  %i.fc = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValENS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(412) %i.fb, ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, ptr noundef %3, i64 %i.ai, i32 noundef %i.au) #19 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.fc, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fc, 1
  store ptr %.fca.0.extract, ptr %6, align 8, !tbaa !204
  store i8 %.fca.1.extract, ptr %i.ah, align 8, !tbaa !404
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit191

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit191: ; preds = %bb.z, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit189, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread, %_ZN5clang4ento33RegionAndSymbolInvalidationTraitsD2Ev.exit
  %i.fd = load ptr, ptr %4, align 8, !tbaa !53
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !204
  %.sroa.2.0.copyload = load i8, ptr %i.ah, align 8, !tbaa !404
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %i.e, ptr noundef %3, ptr %.sroa.0.0.copyload, i8 %.sroa.2.0.copyload, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %bb.g, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit191, %bb.b
  ret void
}

declare { ptr, i8 } @_ZNK5clang4ento14ObjCMethodCall15getReceiverSValEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare { ptr, i8 } @_ZNK5clang4ento21AnyCXXConstructorCall13getCXXThisValEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare i64 @_ZNK5clang4ento9CallEvent13getResultTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento10ExprEngine25handleConstructionContextEPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_18NodeBuilderContextEPKNS_10StackFrameEPKNS_19ConstructionContextERNS0_15EvalCallOptionsEj(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.830") align 8 %0, ptr noundef nonnull align 8 dereferenceable(812) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(5) %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %9 = alloca %"class.clang::ento::BlockCounter", align 8 ; 4 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %12 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !53     ; 3 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.b = load ptr, ptr %4, align 8, !tbaa !587, !nonnull !188, !align !189
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !366
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !204
  store ptr %.sroa.0.0.copyload.i.i, ptr %9, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !392
  %i.l = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.g, i32 noundef %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.m = call { ptr, i8 } @_ZN5clang4ento10ExprEngine30computeObjectUnderConstructionEPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEjPKNS_10StackFrameEPKNS_19ConstructionContextERNS0_15EvalCallOptionsEj(ptr noundef nonnull align 8 dereferenceable(812) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %i.l, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(5) %7, i32 noundef %8) #19 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.m, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.m, 1 ; 2 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !53    ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i.i12, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.n) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.c
  %i.o = load ptr, ptr %3, align 8, !tbaa !53     ; 3 uses
  store ptr %i.o, ptr %12, align 8, !tbaa !53
  %.not.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i13, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.o) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.d
  call void @_ZN5clang4ento10ExprEngine30updateObjectsUnderConstructionENS0_4SValEPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameEPKNS_19ConstructionContextERKNS0_15EvalCallOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(812) %1, ptr %.fca.0.extract, i8 %.fca.1.extract, ptr noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(5) %7) #19
  %i.p = load ptr, ptr %11, align 8, !tbaa !53
  %i.q = load ptr, ptr %3, align 8, !tbaa !53     ; 3 uses
  store ptr %i.q, ptr %11, align 8, !tbaa !53
  store ptr %i.p, ptr %3, align 8, !tbaa !53
  %.not.i.i15 = icmp eq ptr %i.q, null
  br i1 %.not.i.i15, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit16, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.q) #19
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit16

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit16: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14, %bb.e
  %i.r = load ptr, ptr %12, align 8, !tbaa !53    ; 2 uses
end_hunk_0
