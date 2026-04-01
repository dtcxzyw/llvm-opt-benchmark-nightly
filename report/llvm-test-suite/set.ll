begin_hunk_0
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = select i1 %i.ao, i32 1, i32 %i.ar       ; 6 uses
  %i.at = shl nuw nsw i32 %i.as, 2
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nsw i32 %i.as, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %invariant.op105 = sub nsw i64 %i.au, %i.ax     ; 4 uses
  %i.ay = add nuw nsw i64 %i.ax, 4                ; 4 uses
  br i1 %i.am, label %.lr.ph57.split.us, label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57
  br i1 %i.ai, label %.lr.ph57.split.us.split.us.preheader, label %.lr.ph57.split.us.split.preheader

.lr.ph57.split.us.split.preheader:                ; preds = %.lr.ph57.split.us
  %invariant.gep115 = getelementptr i8, ptr %i.w, i64 %invariant.op105
  br label %.lr.ph57.split.us.split

.lr.ph57.split.us.split.us.preheader:             ; preds = %.lr.ph57.split.us
  %invariant.gep117 = getelementptr i8, ptr %i.w, i64 %invariant.op105
  br label %.lr.ph57.split.us.split.us

.lr.ph57.split.us.split.us:                       ; preds = %.lr.ph57.split.us.split.us.preheader, %._crit_edge55.us.us
  %i.az = phi i32 [ %i.ba, %._crit_edge55.us.us ], [ 0, %.lr.ph57.split.us.split.us.preheader ] ; 2 uses
  %.04656.us.us = phi ptr [ %i.ck, %._crit_edge55.us.us ], [ %i.ab, %.lr.ph57.split.us.split.us.preheader ] ; 3 uses
  %i.ba = add nuw nsw i32 %i.az, 1                ; 2 uses
  store i32 %i.ba, ptr %i.y, align 4, !tbaa !34
  %i.bb = mul nsw i32 %i.az, %.pre85
end_hunk_0
begin_hunk_1
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.bc ; 3 uses
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !4
  %i.be = shl nsw i64 %i.bc, 2
  %scevgep77 = getelementptr i8, ptr %invariant.gep117, i64 %i.be
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep77, i8 0, i64 %i.ay, i1 false), !tbaa !4
  br label %.preheader.us.us

end_hunk_1
begin_hunk_2
  %i.cl = icmp ult ptr %i.ck, %i.ag
  br i1 %i.cl, label %.lr.ph57.split.us.split.us, label %._crit_edge58

.lr.ph57.split.us.split:                          ; preds = %.lr.ph57.split.us.split.preheader, %._crit_edge55.us
  %i.cm = phi i32 [ %i.cn, %._crit_edge55.us ], [ 0, %.lr.ph57.split.us.split.preheader ] ; 2 uses
  %.04656.us = phi ptr [ %i.dl, %._crit_edge55.us ], [ %i.ab, %.lr.ph57.split.us.split.preheader ] ; 2 uses
  %i.cn = add nuw nsw i32 %i.cm, 1                ; 2 uses
  store i32 %i.cn, ptr %i.y, align 4, !tbaa !34
  %i.co = mul nsw i32 %i.cm, %.pre85
end_hunk_2
begin_hunk_3
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.cp ; 2 uses
  store i32 %i.as, ptr %i.cq, align 4, !tbaa !4
  %i.cr = shl nsw i64 %i.cp, 2
  %scevgep74 = getelementptr i8, ptr %invariant.gep115, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep74, i8 0, i64 %i.ay, i1 false), !tbaa !4
  br label %.preheader.us

end_hunk_3
begin_hunk_4
  br i1 %i.dm, label %.lr.ph57.split.us.split, label %._crit_edge58

.lr.ph57.split:                                   ; preds = %.lr.ph57
  br i1 %i.ai, label %.lr.ph57.split.split.us.preheader, label %.lr.ph57.split.split.preheader

.lr.ph57.split.split.preheader:                   ; preds = %.lr.ph57.split
  %invariant.gep = getelementptr i8, ptr %i.w, i64 %invariant.op105
  br label %.lr.ph57.split.split

.lr.ph57.split.split.us.preheader:                ; preds = %.lr.ph57.split
  %invariant.gep113 = getelementptr i8, ptr %i.w, i64 %invariant.op105
  br label %.lr.ph57.split.split.us

.lr.ph57.split.split.us:                          ; preds = %.lr.ph57.split.split.us.preheader, %._crit_edge.us65
  %i.dn = phi i32 [ %i.do, %._crit_edge.us65 ], [ 0, %.lr.ph57.split.split.us.preheader ] ; 2 uses
  %.04656.us59 = phi ptr [ %i.ef, %._crit_edge.us65 ], [ %i.ab, %.lr.ph57.split.split.us.preheader ] ; 2 uses
  %i.do = add nuw nsw i32 %i.dn, 1                ; 2 uses
  store i32 %i.do, ptr %i.y, align 4, !tbaa !34
  %i.dp = mul nsw i32 %i.dn, %.pre85
end_hunk_4
begin_hunk_5
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.dq ; 2 uses
  store i32 %i.as, ptr %i.dr, align 4, !tbaa !4
  %i.ds = shl nsw i64 %i.dq, 2
  %scevgep71 = getelementptr i8, ptr %invariant.gep113, i64 %i.ds
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep71, i8 0, i64 %i.ay, i1 false), !tbaa !4
  br label %.preheader.us63

end_hunk_5
begin_hunk_6
  %i.eg = icmp ult ptr %i.ef, %i.ag
  br i1 %i.eg, label %.lr.ph57.split.split.us, label %._crit_edge58

.lr.ph57.split.split:                             ; preds = %.lr.ph57.split.split.preheader, %.lr.ph57.split.split
  %i.eh = phi i32 [ %i.ei, %.lr.ph57.split.split ], [ 0, %.lr.ph57.split.split.preheader ] ; 2 uses
  %.04656 = phi ptr [ %i.en, %.lr.ph57.split.split ], [ %i.ab, %.lr.ph57.split.split.preheader ]
  %i.ei = add nuw nsw i32 %i.eh, 1                ; 2 uses
  store i32 %i.ei, ptr %i.y, align 4, !tbaa !34
  %i.ej = mul nsw i32 %i.eh, %.pre85
end_hunk_6
begin_hunk_7
  %i.el = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ek
  store i32 %i.as, ptr %i.el, align 4, !tbaa !4
  %i.em = shl nsw i64 %i.ek, 2
  %scevgep = getelementptr i8, ptr %invariant.gep, i64 %i.em
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ay, i1 false), !tbaa !4
  %i.en = getelementptr inbounds [4 x i8], ptr %.04656, i64 %i.an ; 2 uses
  %i.eo = icmp ult ptr %i.en, %i.ag
end_hunk_7
begin_hunk_8
  %i.bi = add nsw i32 %i.bf, -1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2                ; 2 uses
  %invariant.op = sub nsw i64 %i.bh, %i.bk
  %i.bl = add nuw nsw i64 %i.bk, 4
  %invariant.gep = getelementptr i8, ptr %i.av, i64 %invariant.op
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %sf_new.exit
end_hunk_8
begin_hunk_9
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bu
  store i32 %i.bf, ptr %i.bv, align 4, !tbaa !4
  %i.bw = shl nsw i64 %i.bu, 2
  %scevgep = getelementptr i8, ptr %invariant.gep, i64 %i.bw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bl, i1 false), !tbaa !4
  %i.bx = add nuw nsw i32 %.02633, 1              ; 2 uses
  %i.by = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
end_hunk_9
