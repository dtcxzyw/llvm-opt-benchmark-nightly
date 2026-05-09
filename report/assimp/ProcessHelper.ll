inline.NumInlined: 318
inline.NumDeleted: 153
begin_hunk_0_@_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh:_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.d = load i32, ptr %i.c, align 4
  %.fr = freeze i32 %i.d
  %i.e = icmp ne i32 %.fr, 0                      ; 3 uses
  %i.f = and i1 %.not.i, %i.e
  %spec.select = select i1 %i.f, i32 3, i32 1     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i19 = icmp eq ptr %i.h, null
end_hunk_0
begin_hunk_1_@_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh:_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.j = load ptr, ptr %i.i, align 8
  %.not1.i = icmp eq ptr %i.j, null
  %or.cond.i = select i1 %.not.i19, i1 true, i1 %.not1.i
  %1 = or disjoint i32 %spec.select, 4
  %spec.select25 = select i1 %i.e, i32 %1, i32 1
  %i.k = select i1 %or.cond.i, i32 %spec.select, i32 %spec.select25 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
end_hunk_1
begin_hunk_2_@_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh:_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 3
  %i.ae = select i1 %i.ad, i32 263168, i32 1024
  %.3.2 = or i32 %i.ae, %.3.1                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i20.not.3 = icmp eq ptr %i.ag, null
end_hunk_2
