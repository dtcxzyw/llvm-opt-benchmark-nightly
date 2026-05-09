inline.NumInlined: 29
inline.NumDeleted: 13
begin_hunk_0_@_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE:bb.a
  %i.k = icmp slt i32 %i.j, 11
  %i.l = select i1 %i.k, i64 150, i64 325         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.m = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 3072) ; 8 uses
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 127)
  %i.o = add i64 %2, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !47
  %.not = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not, i64 0, i64 256
  %i.u = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 9896) ; 7 uses
  store i32 0, ptr %9, align 4, !tbaa !32
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 696
  %i.as = getelementptr [8 x i8], ptr %i.m, i64 %i.t ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 3 uses
  %i.aw = add i64 %i.r, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ay = ptrtoint ptr %i.as to i64
  %13 = getelementptr i8, ptr %i.as, i64 -512     ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 4
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE:bb.a
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !103, !noalias !97 ; 7 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.026.i459
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !35, !noalias !97
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %.0.i150460
  %i.iw = sub i64 64, %.0.i150460                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 8
end_hunk_2
begin_hunk_3_@_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE:bb.a
  ]

bb.be:                                            ; preds = %_ZN13duckdb_brotliL32FindAllCompoundDictionaryMatchesEPKNS_18PreparedDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit
  %i.mk = getelementptr [8 x i8], ptr %13, i64 %i.mj
  %i.ml = getelementptr i8, ptr %i.mk, i64 -4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !71
  %i.mn = lshr i32 %i.mm, 5
end_hunk_3
begin_hunk_4_@_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE:bb.a
  %.030.lcssa.i = phi i64 [ %i.mj, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ], [ %.131.i, %bb.bk ] ; 6 uses
  %.027.lcssa.i = phi ptr [ %i.as, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ], [ %.128.i242, %bb.bk ] ; 4 uses
  %.024.lcssa.i = phi i64 [ %i.in, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ], [ %.125.i, %bb.bk ] ; 6 uses
  %.021.lcssa.i = phi ptr [ %13, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ], [ %.122.i, %bb.bk ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %i.m, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ], [ %.1.i243, %bb.bk ] ; 5 uses
  %.027.lcssa.i751 = ptrtoaddr ptr %.027.lcssa.i to i64
  %.not46.i = icmp eq i64 %.030.lcssa.i, 0
end_hunk_4
begin_hunk_5_@_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE:bb.a

.lr.ph.i:                                         ; preds = %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit, %bb.bk
  %.041.i = phi ptr [ %.1.i243, %bb.bk ], [ %i.m, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ] ; 3 uses
  %.02140.i = phi ptr [ %.122.i, %bb.bk ], [ %13, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ] ; 5 uses
  %.02439.i = phi i64 [ %.125.i, %bb.bk ], [ %i.in, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ] ; 2 uses
  %.02738.i = phi ptr [ %.128.i242, %bb.bk ], [ %i.as, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ] ; 5 uses
  %.03037.i = phi i64 [ %.131.i, %bb.bk ], [ %i.mj, %_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN13duckdb_brotli38BrotliCreateHqZopfliBackwardReferencesEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandESA_SA_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46   ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !tbaa !47
  %.not223 = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not223, i64 0, i64 256       ; 2 uses
  %i.z = icmp ugt i64 %1, 3
  br i1 %i.z, label %.lr.ph635, label %._crit_edge636

end_hunk_6
begin_hunk_7_@_ZN13duckdb_brotli38BrotliCreateHqZopfliBackwardReferencesEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandESA_SA_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 624
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 629
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 256
  %16 = or disjoint i64 %i.y, 128
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 696
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4
end_hunk_7
