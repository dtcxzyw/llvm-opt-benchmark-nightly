inline.NumInlined: 4977
inline.NumDeleted: 2626
begin_hunk_0
@.str.28 = private unnamed_addr constant [60 x i8] c"predecessors.size() <= std::numeric_limits<uint32_t>::max()\00", align 1
@.str.29 = private unnamed_addr constant [81 x i8] c"merge_values_.size() + predecessor_count <= std::numeric_limits<uint32_t>::max()\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"std::numeric_limits<size_t>::max() - size() >= count\00", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = private unnamed_addr constant [4 x i32] [i32 0, i32 4128, i32 0, i32 4128], align 4
@switch.table._ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE = private unnamed_addr constant [22 x i8] c"\00\00\01\01\02\02\03\03\01\02\03\03\03\03\03\03\03\03\02\03\04\05", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv = private unnamed_addr constant [12 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2, i64 3, i64 0, i64 1, i64 1], align 8

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1512) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer11ProcessLoadENS2_7OpIndexERKNS2_6LoadOpE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.010.0.copyload = load i8, ptr %i.ak, align 1
  %i.al = zext nneg i8 %.sroa.010.0.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1
  switch i8 %.sroa.012.0.copyload, label %bb.i [
    i8 0, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable4FindERKNS2_6LoadOpE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext nneg i8 %i.ab to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE, i64 %i.ac
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ad = shl nuw nsw i8 1, %switch.load
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_6LoadOpENS2_7OpIndexE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext nneg i8 %i.ab to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE, i64 %i.ac
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ad = shl nuw nsw i8 1, %switch.load          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext nneg i8 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE, i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ae = shl nuw nsw i8 1, %switch.load          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_4
begin_hunk_5_@_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv:switch.lookup
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.load
end_hunk_5
