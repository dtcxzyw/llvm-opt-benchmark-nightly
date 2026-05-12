inline.NumInlined: 93
inline.NumDeleted: 12
begin_hunk_0_@xorObjectDigest:bb.a
  %26 = alloca %struct.listTypeEntry, align 8     ; 5 uses
  %27 = alloca %struct.setTypeIterator, align 8   ; 6 uses
  %i.m = alloca [20 x i8], align 16               ; 28 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@xorObjectDigest:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  %i.bg = call ptr @lpSeek(ptr noundef %i.bf, i64 noundef 0) #24 ; 4 uses
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !24
  %.not78 = icmp eq ptr %i.bg, null
  br i1 %.not78, label %bb.l, label %bb.m, !prof !26
end_hunk_1
begin_hunk_2_@xorObjectDigest:bb.a
  %i.bh = call ptr @lpNext(ptr noundef %i.bf, ptr noundef nonnull %i.bg) #24 ; 2 uses
  store ptr %i.bh, ptr %i.o, align 8, !tbaa !24
  %.not79 = icmp eq ptr %i.bh, null
  br i1 %.not79, label %bb.n, label %.lr.ph109, !prof !26

.lr.ph109:                                        ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
end_hunk_2
begin_hunk_3_@xorObjectDigest:bb.a
  unreachable

bb.o:                                             ; preds = %.lr.ph109, %bb.r
  %i.bm = phi ptr [ %i.bg, %.lr.ph109 ], [ %i.cs, %bb.r ]
  %i.bn = call ptr @lpGetValue(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #24 ; 2 uses
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.bp = call double @zzlGetScore(ptr noundef %i.bo) #24
end_hunk_3
begin_hunk_4_@xorObjectDigest:bb.a
  %.not80 = icmp eq ptr %i.cs, null
  br i1 %.not80, label %._crit_edge110, label %bb.o, !llvm.loop !29

._crit_edge110:                                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
end_hunk_4
