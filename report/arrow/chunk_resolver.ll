inline.NumInlined: 223
inline.NumDeleted: 140
begin_hunk_0_@_ZNK5arrow13ChunkResolver15ResolveManyImplElPKhPNS_18TypedChunkLocationIhEEi:bb.a
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %.not.i.i.i = icmp ugt i64 %i.y, %i.m           ; 2 uses
  %i.z = sub nuw i32 %.013.i.i.i, %i.u
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.u, i32 %i.z ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.v ; 3 uses
  %i.aa = icmp ugt i32 %.114.i.i.i, 1
end_hunk_0
begin_hunk_1_@_ZNK5arrow13ChunkResolver15ResolveManyImplElPKtPNS_18TypedChunkLocationItEEi:bb.a
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %.not.i.i.i = icmp ugt i64 %i.y, %i.m           ; 2 uses
  %i.z = sub nuw i32 %.013.i.i.i, %i.u
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.u, i32 %i.z ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.v ; 3 uses
  %i.aa = icmp ugt i32 %.114.i.i.i, 1
end_hunk_1
begin_hunk_2_@_ZNK5arrow13ChunkResolver15ResolveManyImplElPKjPNS_18TypedChunkLocationIjEEi:bb.a
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %.not.i.i.i = icmp ugt i64 %i.y, %i.m           ; 2 uses
  %i.z = sub nuw i32 %.013.i.i.i, %i.u
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.u, i32 %i.z ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.v ; 3 uses
  %i.aa = icmp ugt i32 %.114.i.i.i, 1
end_hunk_2
begin_hunk_3_@_ZNK5arrow13ChunkResolver15ResolveManyImplElPKmPNS_18TypedChunkLocationImEEi:bb.a
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  %.not.i.i.i = icmp ult i64 %i.l, %i.x           ; 2 uses
  %i.y = sub nuw i32 %.013.i.i.i, %i.t
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.t, i32 %i.y ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.u ; 2 uses
  %i.z = icmp ugt i32 %.114.i.i.i, 1
end_hunk_3
