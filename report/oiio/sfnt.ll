begin_hunk_0
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1            ; 2 uses
  %.not.i31 = icmp eq i32 %i.az, 0
  br i1 %.not.i31, label %tt_cmap14_char_map_def_binary.exit.thread, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.g
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %5 = zext i32 %2 to i64                         ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %8, %.lr.ph.i32
  %.02635.i = phi i32 [ %4, %.lr.ph.i32 ], [ %.228.i, %8 ] ; 2 uses
  %.02934.i = phi i32 [ 0, %.lr.ph.i32 ], [ %.231.i, %8 ] ; 2 uses
  %i.ba = add i32 %.02934.i, %.02635.i
  %i.bb = lshr i32 %i.ba, 1                       ; 3 uses
  %i.bc = shl i32 %i.bb, 2
  %i.bd = zext i32 %i.bc to i64
end_hunk_0
begin_hunk_1
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bn, %i.bq            ; 2 uses
  %i.bs = icmp samesign ugt i64 %i.br, %5
  br i1 %i.bs, label %8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 7
end_hunk_1
begin_hunk_2
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.br, %i.bv
  %i.bx = icmp samesign ult i64 %i.bw, %5
  br i1 %i.bx, label %6, label %tt_cmap14_char_map_def_binary.exit

6:                                                ; preds = %bb.i
  %7 = add nuw i32 %i.bb, 1
  br label %8

8:                                                ; preds = %6, %bb.h
  %.231.i = phi i32 [ %.02934.i, %bb.h ], [ %7, %6 ] ; 2 uses
  %.228.i = phi i32 [ %i.bb, %bb.h ], [ %.02635.i, %6 ] ; 2 uses
  %9 = icmp ult i32 %.231.i, %.228.i
  br i1 %9, label %bb.h, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !95

tt_cmap14_char_map_def_binary.exit:               ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_2
begin_hunk_3
  %i.cc = tail call i32 %i.cb(ptr noundef %1, i32 noundef %2) #27
  br label %tt_cmap14_char_map_nondef_binary.exit

tt_cmap14_char_map_def_binary.exit.thread:        ; preds = %8, %bb.g, %bb.f
  %.not30 = icmp eq i64 %i.av, 0
  br i1 %.not30, label %tt_cmap14_char_map_nondef_binary.exit, label %bb.j

end_hunk_3
begin_hunk_4
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1            ; 2 uses
  %.not.i29 = icmp eq i32 %i.az, 0
  br i1 %.not.i29, label %tt_cmap14_char_map_def_binary.exit.thread, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.g
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %4 = zext i32 %1 to i64                         ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %7, %.lr.ph.i30
  %.02635.i = phi i32 [ %3, %.lr.ph.i30 ], [ %.228.i, %7 ] ; 2 uses
  %.02934.i = phi i32 [ 0, %.lr.ph.i30 ], [ %.231.i, %7 ] ; 2 uses
  %i.ba = add i32 %.02934.i, %.02635.i
  %i.bb = lshr i32 %i.ba, 1                       ; 3 uses
  %i.bc = shl i32 %i.bb, 2
  %i.bd = zext i32 %i.bc to i64
end_hunk_4
begin_hunk_5
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bn, %i.bq            ; 2 uses
  %i.bs = icmp samesign ugt i64 %i.br, %4
  br i1 %i.bs, label %7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 7
end_hunk_5
begin_hunk_6
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.br, %i.bv
  %i.bx = icmp samesign ult i64 %i.bw, %4
  br i1 %i.bx, label %5, label %tt_cmap14_char_map_def_binary.exit

5:                                                ; preds = %bb.i
  %6 = add nuw i32 %i.bb, 1
  br label %7

7:                                                ; preds = %5, %bb.h
  %.231.i = phi i32 [ %.02934.i, %bb.h ], [ %6, %5 ] ; 2 uses
  %.228.i = phi i32 [ %i.bb, %bb.h ], [ %.02635.i, %5 ] ; 2 uses
  %8 = icmp ult i32 %.231.i, %.228.i
  br i1 %8, label %bb.h, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !95

tt_cmap14_char_map_def_binary.exit.thread:        ; preds = %7, %bb.g, %bb.f
  %.not27 = icmp eq i64 %i.av, 0
  br i1 %.not27, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %bb.j

end_hunk_6
begin_hunk_7
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1            ; 2 uses
  %.not.i47 = icmp eq i32 %i.bf, 0
  br i1 %.not.i47, label %tt_cmap14_char_map_def_binary.exit.thread, label %.lr.ph.i.preheader.a

.lr.ph.i.preheader.a:                             ; preds = %bb.f
  %3 = call i32 @llvm.bswap.i32(i32 %i.bf)
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.preheader.a, %6
  %.02635.i = phi i32 [ %.228.i, %6 ], [ %3, %.lr.ph.i.preheader.a ] ; 2 uses
  %.02934.i = phi i32 [ %.231.i, %6 ], [ 0, %.lr.ph.i.preheader.a ] ; 2 uses
  %i.bg = add i32 %.02934.i, %.02635.i
  %i.bh = lshr i32 %i.bg, 1                       ; 3 uses
  %i.bi = shl i32 %i.bh, 2
  %i.bj = zext i32 %i.bi to i64
end_hunk_7
begin_hunk_8
  %i.bw = zext i8 %i.bv to i64
  %i.bx = or disjoint i64 %i.bt, %i.bw            ; 2 uses
  %i.by = icmp samesign ugt i64 %i.bx, %i.t
  br i1 %i.by, label %6, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 7
end_hunk_8
begin_hunk_9
  %i.cb = zext i8 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.bx, %i.cb
  %i.cd = icmp samesign ult i64 %i.cc, %i.t
  br i1 %i.cd, label %4, label %tt_cmap14_char_map_def_binary.exit

4:                                                ; preds = %bb.g
  %5 = add nuw i32 %i.bh, 1
  br label %6

6:                                                ; preds = %4, %.lr.ph.i.a
  %.231.i = phi i32 [ %.02934.i, %.lr.ph.i.a ], [ %5, %4 ] ; 2 uses
  %.228.i = phi i32 [ %i.bh, %.lr.ph.i.a ], [ %.02635.i, %4 ] ; 2 uses
  %7 = icmp ult i32 %.231.i, %.228.i
  br i1 %7, label %.lr.ph.i.a, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !95

tt_cmap14_char_map_def_binary.exit.thread:        ; preds = %6, %bb.f, %bb.e
  %.not45 = icmp eq i64 %i.ba, 0
  br i1 %.not45, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %bb.h

end_hunk_9
begin_hunk_10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.dw = getelementptr inbounds i8, ptr %i.j, i64 -4
  %.not116 = icmp ugt ptr %i.dv, %i.dw
  br i1 %.not116, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dx = load i32, ptr %i.dv, align 1
end_hunk_10
begin_hunk_11
  %exitcond.not = icmp eq i64 %i.hk, %i.s
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !514

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %.critedge, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.ab
  %.1 = phi i8 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ 1, %bb.ab ], [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i8 %.1
}
end_hunk_11
begin_hunk_12
  br label %sfnt_get_var_ps_name.exit

sfnt_get_var_ps_name.exit:                        ; preds = %bb.f, %sfnt_get_name_id.exit237.i, %bb.ad, %.thread277.i, %bb.aq, %bb.bt, %murmur_hash_3_128.exit.i
  %.4.i = phi ptr [ %.6.i, %bb.bt ], [ null, %bb.aq ], [ null, %.thread277.i ], [ %.6.i, %murmur_hash_3_128.exit.i ], [ null, %bb.ad ], [ null, %sfnt_get_name_id.exit237.i ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
end_hunk_12
begin_hunk_13
  store i32 %.065, ptr %i.bi, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.166 = phi i32 [ %.065, %bb.k ], [ %i.bh, %bb.j ], [ 0, %bb.i ]
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !73
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %1, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.loopexit, %bb.l, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.065, %.loopexit ], [ %.166, %bb.l ], [ 0, %bb.g ]
  ret i32 %.1
}
end_hunk_13
begin_hunk_14
  store i32 %.059, ptr %i.bx, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %tt_cmap13_next.exit.thread, %bb.l, %bb.m
  %i.by = phi i32 [ %i.h, %bb.m ], [ %i.bw, %bb.l ], [ %i.h, %tt_cmap13_next.exit.thread ]
  %.160 = phi i32 [ %.059, %bb.m ], [ %i.br, %bb.l ], [ 0, %tt_cmap13_next.exit.thread ]
  store i32 %i.by, ptr %1, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.loopexit, %bb.n, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.059, %.loopexit ], [ %.160, %bb.n ], [ 0, %bb.g ]
  ret i32 %.1
}
end_hunk_14
