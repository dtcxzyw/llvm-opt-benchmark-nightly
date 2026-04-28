inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@allocateBtreePage:bb.a
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ka = load i32, ptr %i.jz, align 1
  %i.kb = tail call i32 @llvm.bswap.i32(i32 %i.ka)
  %i.kc = sub i32 %i.kb, %3                       ; 3 uses
  %i.kd = icmp slt i32 %i.kc, 0
  %spec.select.i = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.kc)
  %.0.i310 = select i1 %i.kd, i32 %spec.select.i, i32 %i.kc
  %wide.trip.count = zext i32 %i.cz to i64
  br label %.lr.ph
end_hunk_0
begin_hunk_1_@allocateBtreePage:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 1
  %i.kk = tail call i32 @llvm.bswap.i32(i32 %i.kj)
  %i.kl = sub i32 %i.kk, %3                       ; 3 uses
  %spec.select.i311 = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.kl)
  %i.km = icmp slt i32 %i.kl, 0
  %.0.i312 = select i1 %i.km, i32 %spec.select.i311, i32 %i.kl ; 2 uses
  %i.kn = icmp samesign ult i32 %.0.i312, %.0195441
  %spec.select280 = select i1 %i.kn, i32 %i.ke, i32 %.0206439 ; 2 uses
  %spec.select281 = tail call i32 @llvm.umin.i32(i32 %.0.i312, i32 %.0195441)
end_hunk_1
begin_hunk_2_@sqlite3InitOne:bb.a
  br label %sqlite3SetTextEncoding.exit

sqlite3SetTextEncoding.exit:                      ; preds = %.thread206, %sqlite3SetTextEncoding.exit.loopexit, %sqlite3HashFind.exit.i.i.i, %bb.be, %bb.as
  %.sroa.7.0213 = phi i32 [ %i.go, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.go, %sqlite3HashFind.exit.i.i.i ], [ %i.go, %bb.be ], [ %i.go, %bb.as ], [ 0, %.thread206 ] ; 3 uses
  %.sroa.5.0212 = phi i32 [ %i.fd, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.fd, %sqlite3HashFind.exit.i.i.i ], [ %i.fd, %bb.be ], [ %i.fd, %bb.as ], [ 0, %.thread206 ] ; 3 uses
  %i.li = phi ptr [ %.pre177, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.jd, %sqlite3HashFind.exit.i.i.i ], [ %i.jd, %bb.be ], [ %i.jd, %bb.as ], [ %i.jd, %.thread206 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 100
end_hunk_2
begin_hunk_3_@sqlite3InitOne:bb.a
  br i1 %i.lo, label %bb.bh, label %sqlite3BtreeSetCacheSize.exit

bb.bh:                                            ; preds = %sqlite3SetTextEncoding.exit
  %spec.select.i = call i32 @llvm.ssub.sat.i32(i32 0, i32 %.sroa.7.0213)
  %i.lp = icmp slt i32 %.sroa.7.0213, 0
  %.0.i124 = select i1 %i.lp, i32 %spec.select.i, i32 %.sroa.7.0213 ; 3 uses
  %i.lq = icmp eq i32 %.0.i124, 0
end_hunk_3
begin_hunk_4_@sqlite3Pragma:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #71
  store i32 0, ptr %i.g, align 4, !tbaa !5
  %i.hj = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %.0, ptr noundef %i.g) ; 0 uses
  %i.hk = load i32, ptr %i.g, align 4, !tbaa !5   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #71
  %spec.select.i = call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.hk)
  %i.hl = icmp slt i32 %i.hk, 0
  %.0.i1723 = select i1 %i.hl, i32 %spec.select.i, i32 %i.hk ; 3 uses
  call fastcc void @sqlite3BeginWriteOperation(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i1701)
end_hunk_4
begin_hunk_5_@fts5UpdateMethod:bb.a

sqlite3_value_int.exit.i:                         ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cu
  %.0.i.i67.i = phi i64 [ %i.pc, %bb.cu ], [ 0, %bb.cz ], [ %i.pl, %bb.db ], [ 0, %bb.da ], [ %i.ph, %bb.cy ], [ -9223372036854775808, %bb.cw ], [ 9223372036854775807, %bb.cx ]
  %i.pm = trunc i64 %.0.i.i67.i to i32            ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !6352
  %i.pp = getelementptr i8, ptr %i.po, i64 8
end_hunk_5
begin_hunk_6_@fts5UpdateMethod:bb.a
  %i.px = tail call fastcc ptr @fts5IndexOptimizeStruct(ptr noundef nonnull %.val41.i, ptr noundef nonnull %i.pq), !inline_history !6523 ; 3 uses
  tail call fastcc void @fts5StructureRelease(ptr noundef nonnull %i.pq), !inline_history !6523
  store ptr %i.px, ptr %i.a, align 8, !tbaa !6517
  %5 = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.pm)
  %.not16.i.i.i = icmp eq ptr %i.px, null
  br i1 %.not16.i.i.i, label %bb.dg, label %thread-pre-split.thread.i.i.i

thread-pre-split.thread.i.i.i:                    ; preds = %thread-pre-split.i.i.i, %fts5StructureInvalidate.exit.i.i70.i
  %.027.i.i.i = phi i32 [ %5, %thread-pre-split.i.i.i ], [ %i.pm, %fts5StructureInvalidate.exit.i.i70.i ]
  %.01326.i.i.i = phi i32 [ 1, %thread-pre-split.i.i.i ], [ %i.pt, %fts5StructureInvalidate.exit.i.i70.i ]
  %i.py = phi ptr [ %i.px, %thread-pre-split.i.i.i ], [ %i.pq, %fts5StructureInvalidate.exit.i.i70.i ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 28
end_hunk_6
begin_hunk_7_@llvm.usub.sat.i32
declare i32 @llvm.usub.sat.i32(i32, i32) #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #55

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_7
