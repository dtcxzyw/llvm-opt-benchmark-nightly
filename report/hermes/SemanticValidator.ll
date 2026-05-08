inline.NumInlined: 5065
inline.NumDeleted: 2157
begin_hunk_0_@_ZN6hermes3sem12BlockContext26ensureScopedNamesAreUniqueENS1_14IsFunctionBodyEPNS_6ESTree14IdentifierNodeE:bb.a
  %19 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %20 = alloca %"struct.std::pair.240", align 8   ; 3 uses
  %21 = alloca %"class.llvh::SmallDenseMap.155", align 8 ; 18 uses
  %22 = alloca %"class.llvh::SmallDenseSet.159", align 8 ; 10 uses
  %23 = alloca %"struct.std::pair.168", align 8   ; 7 uses
  %24 = alloca %"struct.std::pair.172", align 8   ; 5 uses
  %25 = alloca %"struct.std::pair.168", align 8   ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes3sem12BlockContext26ensureScopedNamesAreUniqueENS1_14IsFunctionBodyEPNS_6ESTree14IdentifierNodeE:bb.a
bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store i32 1, ptr %22, align 8
  %.07.i.i.i.i.ptr.4.i.a = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 0, ptr %.07.i.i.i.i.ptr.4.i.a, align 4, !tbaa !455
  %.07.i.i.i.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %.07.i.i.i.i.ptr.6.i = getelementptr inbounds nuw i8, ptr %22, i64 16
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.5.i, align 8, !tbaa !382
  %.07.i.i.i.i.ptr.7.i = getelementptr inbounds nuw i8, ptr %22, i64 40
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.7.i, align 8, !tbaa !382
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
end_hunk_1
begin_hunk_2_@_ZN6hermes3sem12BlockContext26ensureScopedNamesAreUniqueENS1_14IsFunctionBodyEPNS_6ESTree14IdentifierNodeE:bb.a
  %i.ap = load i32, ptr %22, align 8
  %i.aq = and i32 %i.ap, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0          ; 2 uses
  %i.ar = load ptr, ptr %.07.i.i.i.i.ptr.5.i, align 8
  %i.as = select i1 %.not.i.i.i.i.i, ptr %i.ar, ptr %.07.i.i.i.i.ptr.5.i ; 2 uses
  %i.at = load i32, ptr %.07.i.i.i.i.ptr.6.i, align 8
  %i.au = select i1 %.not.i.i.i.i.i, i32 %i.at, i32 8 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit156, label %bb.l
end_hunk_2
begin_hunk_3_@_ZN6hermes3sem12BlockContext26ensureScopedNamesAreUniqueENS1_14IsFunctionBodyEPNS_6ESTree14IdentifierNodeE:bb.a
  br i1 %.not.i.i.i78, label %bb.o, label %_ZN4llvh6detail12DenseSetImplIPN6hermes12UniqueStringENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

bb.o:                                             ; preds = %.loopexit158
  %i.db = load ptr, ptr %.07.i.i.i.i.ptr.5.i, align 8, !tbaa !485
  call void @_ZdlPv(ptr noundef %i.db) #20
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes12UniqueStringENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

end_hunk_3
