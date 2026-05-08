inline.NumInlined: 3485
inline.NumDeleted: 1496
begin_hunk_0_@_ZN6hermes3hbc7HBCISel8generateEPNS_18SourceMapGeneratorE:bb.a
  %3 = alloca %"struct.std::pair.432", align 8    ; 3 uses
  %4 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %5 = alloca %"struct.std::pair.432", align 8    ; 3 uses
  %6 = alloca %"class.llvh::SmallDenseSet.422", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.hermes::PostOrderAnalysis", align 8 ; 6 uses
  %8 = alloca %"class.llvh::SmallVector.358", align 8 ; 13 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc7HBCISel8generateEPNS_18SourceMapGeneratorE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !443
  store i32 1, ptr %6, align 8, !noalias !443
  %.07.i.i.i.i.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %.07.i.i.i.i.ptr.10.i.i, align 4, !tbaa !446, !noalias !443
  %.07.i.i.i.i.ptr.11.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.07.i.i.i.i.ptr.12.i.i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.11.i.i, align 8, !tbaa !86, !noalias !443
  %.07.i.i.i.i.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.13.i.i, align 8, !tbaa !86, !noalias !443
  %.07.i.i.i.i.ptr.14.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.14.i.i, align 8, !tbaa !86, !noalias !443
  %.07.i.i.i.i.ptr.15.i.i = getelementptr inbounds nuw i8, ptr %6, i64 104
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.15.i.i, align 8, !tbaa !86, !noalias !443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 20, i1 false), !alias.scope !443
  %.idx.i = shl nuw nsw i64 %i.bb, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc7HBCISel8generateEPNS_18SourceMapGeneratorE:bb.a
  %i.bn = load i32, ptr %6, align 8, !noalias !443
  %i.bo = and i32 %i.bn, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bo, 0        ; 2 uses
  %i.bp = load ptr, ptr %.07.i.i.i.i.ptr.11.i.i, align 8, !noalias !443
  %i.bq = select i1 %.not.i.i.i.i.i.i, ptr %i.bp, ptr %.07.i.i.i.i.ptr.11.i.i ; 2 uses
  %i.br = load i32, ptr %.07.i.i.i.i.ptr.12.i.i.a, align 8, !noalias !443
  %i.bs = select i1 %.not.i.i.i.i.i.i, i32 %i.br, i32 16 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.thread.i, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc7HBCISel8generateEPNS_18SourceMapGeneratorE:bb.a
  br i1 %i.er, label %bb.s, label %_ZL33basicBlocksWithBackwardSuccessorsN4llvh8ArrayRefIPN6hermes10BasicBlockEEE.exit

bb.s:                                             ; preds = %._crit_edge60.i
  %i.es = load ptr, ptr %.07.i.i.i.i.ptr.11.i.i, align 8, !tbaa !465, !noalias !443
  call void @_ZdlPv(ptr noundef %i.es) #20
  br label %_ZL33basicBlocksWithBackwardSuccessorsN4llvh8ArrayRefIPN6hermes10BasicBlockEEE.exit

end_hunk_3
