inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sessionSelectStmt
define internal fastcc i32 @sessionSelectStmt(ptr noundef %0, i32 noundef range(i32 0, 256) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef nonnull writeonly captures(none) %7, ptr noundef writeonly captures(address_is_null) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %9 = alloca %struct.SessionBuffer, align 8      ; 14 uses
  %10 = alloca %struct.SessionBuffer, align 8     ; 10 uses
  %11 = alloca %struct.SessionBuffer, align 8     ; 14 uses
  %12 = alloca %struct.SessionBuffer, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #71
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #71
end_hunk_0
begin_hunk_1_@sessionSelectStmt:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.d = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %sqlite3_realloc64.exit.i.i, label %sqlite3_realloc64.exit.thread.i.i
end_hunk_1
begin_hunk_2_@sessionSelectStmt:bb.a

sessionBufferGrow.exit.thread12.i:                ; preds = %sqlite3_realloc64.exit.i.i
  store ptr %i.e, ptr %10, align 8, !tbaa !1625
  store i32 256, ptr %i.b, align 4, !tbaa !1624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.2118, i64 3, i1 false)
  store i32 3, ptr %i.c, align 8, !tbaa !1616
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 0, ptr %i.g, align 1, !tbaa !227
  br label %sessionAppendStr.exit
end_hunk_2
begin_hunk_3_@sessionSelectStmt:bb.a
sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i50: ; preds = %sqlite3_realloc64.exit.i.i46
  store ptr %i.an, ptr %10, align 8, !tbaa !1625
  %i.ap = trunc nsw i64 %spec.select to i32
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !1624
  br label %sessionBufferGrow.exit.thread12.i38

sessionBufferGrow.exit.thread12.i38:              ; preds = %bb.e, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i50
end_hunk_3
begin_hunk_4_@sessionSelectStmt:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ar, ptr noundef nonnull align 1 dereferenceable(23) @.str.2119, i64 23, i1 false)
  %i.as = add nuw nsw i32 %i.l, 23                ; 2 uses
  store i32 %i.as, ptr %i.c, align 8, !tbaa !1616
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !227
end_hunk_4
begin_hunk_5_@sessionSelectStmt:bb.a
  br i1 %i.az, label %bb.g, label %sqlite3_free.exit

bb.g:                                             ; preds = %sessionAppendStr.exit54
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1624 ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp sgt i64 %i.ay, %i.bc
  tail call void @llvm.assume(i1 %i.bd)
  %.not.i.i60 = icmp eq i32 %i.bb, 0
  %spec.select.i.i61 = select i1 %.not.i.i60, i64 128, i64 %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.024.i.i62 = phi i64 [ %spec.select.i.i61, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %i.be = shl nsw i64 %.024.i.i62, 1              ; 3 uses
  %i.bf = icmp slt i64 %i.be, %i.ay
  br i1 %i.bf, label %bb.h, label %bb.i, !llvm.loop !1626
end_hunk_5
begin_hunk_6_@sessionSelectStmt:bb.a
  br i1 %i.bh, label %sqlite3_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i.i63 = phi i64 [ 2147483391, %bb.j ], [ %i.be, %bb.i ]
  %i.bi = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i64 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i64, label %sqlite3_realloc64.exit.i.i66, label %sqlite3_free.exit

sqlite3_realloc64.exit.i.i66:                     ; preds = %bb.k
  %i.bj = tail call fastcc ptr @sqlite3Realloc(ptr noundef null, i64 noundef %.1.i.i63), !inline_history !1057 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %sqlite3_free.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3_realloc64.exit.i.i66
  store ptr %i.bj, ptr %11, align 8, !tbaa !1625
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.ax
  store i64 8675174369127588468, ptr %i.bl, align 1
  %i.bm = sext i32 %i.aw to i64
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  store i8 0, ptr %i.bo, align 1, !tbaa !227
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
end_hunk_6
begin_hunk_7_@sessionSelectStmt:bb.a
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1624 ; 2 uses
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp sgt i64 %i.bs, %i.bv
  tail call void @llvm.assume(i1 %i.bw)
  %.not.i.i80 = icmp eq i32 %i.bu, 0
  %spec.select.i.i81 = select i1 %.not.i.i80, i64 128, i64 %i.bv
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.024.i.i82 = phi i64 [ %spec.select.i.i81, %bb.l ], [ %i.bx, %bb.m ] ; 2 uses
  %i.bx = shl nsw i64 %.024.i.i82, 1              ; 3 uses
  %i.by = icmp slt i64 %i.bx, %i.bs
  br i1 %i.by, label %bb.m, label %bb.n, !llvm.loop !1626
end_hunk_7
begin_hunk_8_@sessionSelectStmt:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i.i83 = phi i64 [ 2147483391, %bb.o ], [ %i.bx, %bb.n ]
  %i.cb = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i84 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i84, label %sqlite3_realloc64.exit.i.i86, label %sqlite3_free.exit

sqlite3_realloc64.exit.i.i86:                     ; preds = %bb.p
  %i.cc = tail call fastcc ptr @sqlite3Realloc(ptr noundef null, i64 noundef %.1.i.i83), !inline_history !1057 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %sqlite3_free.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3_realloc64.exit.i.i86
  store ptr %i.cc, ptr %12, align 8, !tbaa !1625
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.ce, ptr noundef nonnull align 1 dereferenceable(44) @.str.2121, i64 44, i1 false)
  %i.cf = sext i32 %i.bq to i64
  %i.cg = getelementptr i8, ptr %i.cc, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 44
  store i8 0, ptr %i.ch, align 1, !tbaa !227
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_8
begin_hunk_9_@sessionSelectStmt:bb.a
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !1624 ; 2 uses
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = icmp sgt i64 %i.cl, %i.co
  tail call void @llvm.assume(i1 %i.cp)
  %.not.i.i100 = icmp eq i32 %i.cn, 0
  %spec.select.i.i101 = select i1 %.not.i.i100, i64 128, i64 %i.co
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.024.i.i102 = phi i64 [ %spec.select.i.i101, %bb.q ], [ %i.cq, %bb.r ] ; 2 uses
  %i.cq = shl nsw i64 %.024.i.i102, 1             ; 3 uses
  %i.cr = icmp slt i64 %i.cq, %i.cl
  br i1 %i.cr, label %bb.r, label %bb.s, !llvm.loop !1626
end_hunk_9
begin_hunk_10_@sessionSelectStmt:bb.a

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i.i103 = phi i64 [ 2147483391, %bb.t ], [ %i.cq, %bb.s ]
  %i.cu = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i.i104 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i104, label %sqlite3_realloc64.exit.i.i106, label %sqlite3_free.exit

sqlite3_realloc64.exit.i.i106:                    ; preds = %bb.u
  %i.cv = tail call fastcc ptr @sqlite3Realloc(ptr noundef null, i64 noundef %.1.i.i103), !inline_history !1057 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %sqlite3_free.exit, label %sessionAppendStr.exit114.thread287

sessionAppendStr.exit114.thread287:               ; preds = %sqlite3_realloc64.exit.i.i106
  store ptr %i.cv, ptr %9, align 8, !tbaa !1625
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.cx, ptr noundef nonnull align 1 dereferenceable(13) @.str.2122, i64 13, i1 false)
  %i.cy = sext i32 %i.cj to i64
  %i.cz = getelementptr i8, ptr %i.cv, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 13
  store i8 0, ptr %i.da, align 1, !tbaa !227
  br label %bb.au
end_hunk_10
