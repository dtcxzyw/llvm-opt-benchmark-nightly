inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@optimize_node_left:bb.a
  %7 = alloca %struct.NodeOptInfo, align 8        ; 13 uses
  %i.g = ptrtoint ptr %7 to i64                   ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 52         ; 7 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !93
  %i.i = getelementptr i8, ptr %1, i64 56         ; 8 uses
  store i32 0, ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr i8, ptr %1, i64 60         ; 13 uses
  store i8 0, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr i8, ptr %1, i64 88         ; 5 uses
  %i.l = getelementptr i8, ptr %1, i64 116        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.l, align 4, !tbaa !93
  %i.m = getelementptr i8, ptr %1, i64 120        ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !92
  %i.n = getelementptr i8, ptr %1, i64 124        ; 4 uses
  store i8 0, ptr %i.n, align 4, !tbaa !35
  %i.o = getelementptr i8, ptr %1, i64 152        ; 7 uses
  %i.p = getelementptr i8, ptr %1, i64 180
  store i32 -1, ptr %i.p, align 4, !tbaa !93
  %i.q = getelementptr i8, ptr %1, i64 184        ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !92
  %i.r = getelementptr i8, ptr %1, i64 188
  store i8 0, ptr %i.r, align 4, !tbaa !35
  %i.s = getelementptr i8, ptr %1, i64 216        ; 10 uses
  %i.t = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.u = getelementptr i8, ptr %2, i64 8          ; 2 uses
end_hunk_0
begin_hunk_1_@optimize_node_left:bb.a
tailrecurse:                                      ; preds = %bb.fc, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.aib, %bb.fc ] ; 37 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #23
  %.val9.i = load i64, ptr %2, align 8, !tbaa !95 ; 2 uses
  %.val10.i = load i64, ptr %i.u, align 8, !tbaa !94 ; 2 uses
end_hunk_1
