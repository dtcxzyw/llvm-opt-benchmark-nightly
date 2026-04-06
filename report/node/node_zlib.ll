begin_hunk_0_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE5ResetERKN2v820FunctionCallbackInfoINS4_5ValueEEE:bb.a
bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 264
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 408
  %i.w = load i64, ptr %i.v, align 8, !noalias !254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = add i64 %i.x, -264
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 400 ; 3 uses
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner14AllocForBrotliEPvm, ptr %1, align 8, !noalias !257
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner11FreeForZlibEPvS2_, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !257
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !257
  %i.ac = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #32, !noalias !257 ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !257 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !noalias !257
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call i64 @ZSTD_freeCCtx(ptr noundef nonnull %i.ad) #32, !noalias !257 ; 0 uses
  %.val7.pr.i = load ptr, ptr %i.ab, align 8, !noalias !257
  br label %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i

_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i: ; preds = %bb.e, %bb.d
end_hunk_0
begin_hunk_1_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE5ResetERKN2v820FunctionCallbackInfoINS4_5ValueEEE:bb.a
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i
  %i.af = tail call i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef nonnull %.val7.i, i64 noundef %i.w) #32, !noalias !257
  %i.ag = tail call i32 @ZSTD_isError(i64 noundef %i.af) #32, !noalias !257
  %.not5.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i, label %_ZN4node12_GLOBAL__N_119ZstdCompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.g

_ZN4node12_GLOBAL__N_119ZstdCompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i
  %.str.443.sink = phi ptr [ @.str.443, %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i ], [ @.str.445, %bb.f ]
  store ptr %.str.443.sink, ptr %2, align 8, !alias.scope !257
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.392, ptr %i.ah, align 8, !alias.scope !257
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.ai, align 8, !alias.scope !257
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(416) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.h

end_hunk_1
begin_hunk_2_@_ZNK4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10MemoryInfoEPNS_13MemoryTrackerE:bb.a

bb.i:                                             ; preds = %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !260
  %i.aj = icmp eq ptr %i.ae, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !260
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 512
end_hunk_2
begin_hunk_3_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE19AfterThreadPoolWorkEi:bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.u, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.w = load i32, ptr %i.v, align 8, !noalias !263 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.y = load ptr, ptr %i.x, align 8, !noalias !263 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !263 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !alias.scope !263
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !263
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.w, ptr %i.ac, align 8, !alias.scope !263
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv.exit.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_116CompressionErrorC1EPKcS3_iE20error_and_abort_args) #32, !noalias !263
  tail call void @abort() #33, !noalias !263
  unreachable

_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv.exit.i: ; preds = %bb.e
end_hunk_3
begin_hunk_4_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE5WriteILb0EEEvRKN2v820FunctionCallbackInfoINS5_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.gn = load ptr, ptr %i.gm, align 8
  tail call void %i.gn(ptr noundef nonnull align 8 dereferenceable(408) %.0.i.i74) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 328
  %i.gp = load i32, ptr %i.go, align 8, !noalias !266 ; 2 uses
  %.not.i.i5.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i5.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE3RefEv.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 336
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !266 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 368
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !266 ; 2 uses
  store ptr %i.gr, ptr %1, align 8, !alias.scope !266
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.gt, ptr %i.gu, align 8, !alias.scope !266
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.gp, ptr %i.gv, align 8, !alias.scope !266
  %.not.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i, label %bb.au, label %_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv.exit.i.i, !prof !5

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_116CompressionErrorC1EPKcS3_iE20error_and_abort_args) #32, !noalias !266
  tail call void @abort() #33, !noalias !266
  unreachable

_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv.exit.i.i: ; preds = %bb.at
end_hunk_4
begin_hunk_5_@_ZN4node12_GLOBAL__N_110ZstdStreamINS0_21ZstdDecompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %.sroa.5.0 = phi ptr [ null, %_ZNK2v85Value16QuickIsUndefinedEv.exit ], [ %i.gj, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66 ], [ null, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i96, i64 264
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = add i64 %i.gn, -264
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 232
  %i.gr = getelementptr i8, ptr %.0.i.i96, i64 400 ; 4 uses
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner14AllocForBrotliEPvm, ptr %1, align 8, !noalias !269
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner11FreeForZlibEPvS2_, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !269
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.gq, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !269
  %i.gs = call ptr @ZSTD_createDCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #32, !noalias !269 ; 2 uses
  %i.gt = load ptr, ptr %i.gr, align 8, !noalias !269 ; 2 uses
  store ptr %i.gs, ptr %i.gr, align 8, !noalias !269
  %.not.i.i.i97 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i97, label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.gu = call i64 @ZSTD_freeDCtx(ptr noundef nonnull %i.gt) #32, !noalias !269 ; 0 uses
  %.val2.pr.i = load ptr, ptr %i.gr, align 8, !noalias !269
  br label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i

_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i: ; preds = %bb.al, %.critedge
end_hunk_5
begin_hunk_6_@_ZN4node12_GLOBAL__N_110ZstdStreamINS0_21ZstdDecompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  br i1 %i.gv, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gw = call i64 @ZSTD_DCtx_loadDictionary(ptr noundef nonnull %.val2.i, ptr noundef %.sroa.5.0, i64 noundef %.sroa.0111.0) #32, !noalias !269
  %i.gx = call i32 @ZSTD_isError(i64 noundef %i.gw) #32, !noalias !269
  %.not.i98 = icmp eq i32 %i.gx, 0
  br i1 %.not.i98, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i
  %.str.443.sink = phi ptr [ @.str.443, %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i ], [ @.str.444, %bb.an ] ; 3 uses
  %.str.392.sink = phi ptr [ @.str.392, %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i ], [ @.str.394, %bb.an ]
  store ptr %.str.443.sink, ptr %3, align 8, !alias.scope !269
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.str.392.sink, ptr %i.gy, align 8, !alias.scope !269
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.gz, align 8, !alias.scope !269
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(408) %.0.i.i96, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.ha = getelementptr i8, ptr %.0.i.i96, i64 88
end_hunk_6
begin_hunk_7_@_ZN4node12_GLOBAL__N_110ZstdStreamINS0_21ZstdDecompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %.val95 = load ptr, ptr %i.gr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.ip = trunc nuw nsw i64 %indvars.iv to i32
  %i.iq = call i64 @ZSTD_DCtx_setParameter(ptr noundef %.val95, i32 noundef %i.ip, i32 noundef %i.in) #32, !noalias !272
  %i.ir = call i32 @ZSTD_isError(i64 noundef %i.iq) #32, !noalias !272
  %.not.i99 = icmp eq i32 %i.ir, 0
  br i1 %.not.i99, label %.critedge60, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr @.str.397, ptr %4, align 8, !alias.scope !272
  store ptr @.str.446, ptr %i.ik, align 8, !alias.scope !272
  store i32 -1, ptr %i.il, align 8, !alias.scope !272
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(408) %.0.i.i96, ptr noundef nonnull align 8 dereferenceable(20) %4)
  %i.is = getelementptr i8, ptr %.0.i.i96, i64 88
  %.val90 = load ptr, ptr %i.is, align 8
end_hunk_7
begin_hunk_8_@_ZN4node12_GLOBAL__N_110ZstdStreamINS0_21ZstdDecompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
bb.bb:                                            ; preds = %.critedge60, %bb.ay
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ij
  br i1 %exitcond.not, label %.loopexit, label %bb.ay, !llvm.loop !275

.loopexit:                                        ; preds = %bb.bb, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, %bb.ba, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
end_hunk_8
begin_hunk_9_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE5ResetERKN2v820FunctionCallbackInfoINS4_5ValueEEE:bb.a
bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !276
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, -264
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 400 ; 3 uses
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner14AllocForBrotliEPvm, ptr %1, align 8, !noalias !282
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner11FreeForZlibEPvS2_, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !282
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.y, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !282
  %i.aa = tail call ptr @ZSTD_createDCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #32, !noalias !282 ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !282 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !noalias !282
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @ZSTD_freeDCtx(ptr noundef nonnull %i.ab) #32, !noalias !282 ; 0 uses
  %.val2.pr.i.i = load ptr, ptr %i.z, align 8, !noalias !282
  br label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i

_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i: ; preds = %bb.e, %bb.d
end_hunk_9
begin_hunk_10_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE5ResetERKN2v820FunctionCallbackInfoINS4_5ValueEEE:bb.a
  br i1 %.not4.i.i.not, label %bb.f, label %_ZN4node12_GLOBAL__N_121ZstdDecompressContext11ResetStreamEv.exit

_ZN4node12_GLOBAL__N_121ZstdDecompressContext11ResetStreamEv.exit: ; preds = %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !276
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i
  store ptr @.str.443, ptr %2, align 8, !alias.scope !282
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.392, ptr %i.ad, align 8, !alias.scope !282
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.ae, align 8, !alias.scope !282
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !276
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(408) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.g

end_hunk_10
begin_hunk_11_@_ZNK4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10MemoryInfoEPNS_13MemoryTrackerE:bb.a

bb.i:                                             ; preds = %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !283
  %i.aj = icmp eq ptr %i.ae, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !283
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 512
end_hunk_11
begin_hunk_12_@_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE19AfterThreadPoolWorkEi:bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.u, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.w = load i32, ptr %i.v, align 8, !noalias !286 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.y = load ptr, ptr %i.x, align 8, !noalias !286 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !286 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !alias.scope !286
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !286
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.w, ptr %i.ac, align 8, !alias.scope !286
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv.exit.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_116CompressionErrorC1EPKcS3_iE20error_and_abort_args) #32, !noalias !286
  tail call void @abort() #33, !noalias !286
  unreachable

_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv.exit.i: ; preds = %bb.e
end_hunk_12
begin_hunk_13_@_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS4_RKSE_NSG_10_AllocNodeISaINSG_10_Hash_nodeISE_Lb0EEEEEEEES3_INSG_14_Node_iteratorISE_Lb0ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %bb.c, !llvm.loop !289

bb.e:                                             ; preds = %bb.c
  %i.q = sext i32 %i.l to i64                     ; 2 uses
end_hunk_13
begin_hunk_14_@_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS4_RKSE_NSG_10_AllocNodeISaINSG_10_Hash_nodeISE_Lb0EEEEEEEES3_INSG_14_Node_iteratorISE_Lb0ELb0EEEbEOT_OT0_RKT1_:bb.a

bb.g:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %i.c, %i.ab
  br i1 %i.y, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !290

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ]
end_hunk_14
begin_hunk_15_@_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS4_RKSE_NSG_10_AllocNodeISaINSG_10_Hash_nodeISE_Lb0EEEEEEEES3_INSG_14_Node_iteratorISE_Lb0ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.ac = sext i32 %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.f
  %.not19.i.i = icmp eq i64 %i.ad, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !290

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !290

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread31
  %i.ae = phi i64 [ %i.t, %bb.e ], [ %i.g, %.thread31 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
end_hunk_15
begin_hunk_16_@_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !291

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
end_hunk_16
begin_hunk_17_@_GLOBAL__sub_I_node_zlib.cc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %__cxx_global_var_init.10.exit, !prof !292

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #32
end_hunk_17
begin_hunk_18_@llvm.vector.reduce.add.v2i64
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZN4node12_GLOBAL__N_119ZstdCompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!259 = distinct !{!259, !"_ZN4node12_GLOBAL__N_119ZstdCompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZNKSt5dequeIPN4node18MemoryRetainerNodeESaIS2_EE3endEv: argument 0"}
!262 = distinct !{!262, !"_ZNKSt5dequeIPN4node18MemoryRetainerNodeESaIS2_EE3endEv"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv: argument 0"}
!265 = distinct !{!265, !"_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv: argument 0"}
!268 = distinct !{!268, !"_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv"}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!271 = distinct !{!271, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext12SetParameterEii: argument 0"}
!274 = distinct !{!274, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext12SetParameterEii"}
!275 = distinct !{!275, !14}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext11ResetStreamEv: argument 0"}
!278 = distinct !{!278, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext11ResetStreamEv"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!281 = distinct !{!281, !"_ZN4node12_GLOBAL__N_121ZstdDecompressContext4InitEmSt17basic_string_viewIcSt11char_traitsIcEE"}
!282 = !{!280, !277}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZNKSt5dequeIPN4node18MemoryRetainerNodeESaIS2_EE3endEv: argument 0"}
!285 = distinct !{!285, !"_ZNKSt5dequeIPN4node18MemoryRetainerNodeESaIS2_EE3endEv"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv: argument 0"}
!288 = distinct !{!288, !"_ZNK4node12_GLOBAL__N_111ZstdContext12GetErrorInfoEv"}
!289 = distinct !{!289, !14}
!290 = distinct !{!290, !14}
!291 = distinct !{!291, !14}
!292 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_18
