inline.NumInlined: 277
inline.NumDeleted: 168
begin_hunk_0_@_ZN5arrow7compute8internal16GetArrayPointersERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS5_EE:bb.a
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %offset.idx ; 2 uses
  %offset.idx16 = shl i64 %index, 4               ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %offset.idx16
  %i.ai = getelementptr i8, ptr %i.c, i64 %offset.idx16
  %next.gep18 = getelementptr i8, ptr %i.ai, i64 32
  %i.aj = load <3 x ptr>, ptr %next.gep17, align 8, !tbaa !46, !alias.scope !50
  %strided.vec = shufflevector <3 x ptr> %i.aj, <3 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %i.ak = load <3 x ptr>, ptr %next.gep18, align 8, !tbaa !46, !alias.scope !50
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal16GetArrayPointersERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS5_EE:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader22, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader22 ] ; 2 uses
  %.sroa.03.06.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader22 ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.03.06.i, align 8, !tbaa !46
  store ptr %.val.i, ptr %.sroa.0.07.i, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal18ChunkedIndexMapper15GetChunkLengthsENS_4util4spanIKPKNS_5ArrayEEE:bb.a
bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.09 = phi i64 [ 0, %.lr.ph.new ], [ %i.aq, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18ChunkedIndexMapper15GetChunkLengthsENS_4util4spanIKPKNS_5ArrayEEE:bb.a
bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.09.epil = phi i64 [ %.09.epil.init, %.epil.preheader ], [ %i.ay, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal18ChunkedIndexMapper15GetChunkLengthsERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS6_EE:bb.a
bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.010 = phi i64 [ 0, %.lr.ph.new ], [ %i.ap, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.010
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal18ChunkedIndexMapper15GetChunkLengthsERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS6_EE:bb.a
bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.010.epil = phi i64 [ %.010.epil.init, %.epil.preheader ], [ %i.av, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.010.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !100
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal18ChunkedIndexMapper17LogicalToPhysicalEv:bb.a
  br i1 %i.p, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.e
  %.sroa.031.035 = phi ptr [ %i.o, %bb.e ], [ %i.e, %.preheader ] ; 2 uses
  %i.q = load i64, ptr %.sroa.031.035, align 8, !tbaa !64
  %i.r = icmp ult i64 %i.q, 1099511627777
  br i1 %i.r, label %bb.e, label %bb.f, !prof !111
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal18ChunkedIndexMapper17LogicalToPhysicalEv:bb.a
.lr.ph42:                                         ; preds = %._crit_edge, %._crit_edge38
  %.02140 = phi i64 [ %i.au, %._crit_edge38 ], [ 0, %._crit_edge ] ; 4 uses
  %.02239 = phi i64 [ %i.at, %._crit_edge38 ], [ 0, %._crit_edge ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.02140
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !64 ; 6 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge38
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal18ChunkedIndexMapper17PhysicalToLogicalEv:bb.a
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01522.epil
  store i64 %.01423.epil, ptr %i.o, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01522.epil
  %i.q = load i64, ptr %i.p, align 8, !tbaa !64
  %i.r = add nsw i64 %i.q, %.01423.epil
  %i.s = add nuw nsw i64 %.01522.epil, 1
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal18ChunkedIndexMapper17PhysicalToLogicalEv:bb.a
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01522
  store i64 %.01423, ptr %i.ae, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01522
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !64
  %i.ah = add nsw i64 %i.ag, %.01423              ; 2 uses
  %i.ai = or disjoint i64 %.01522, 1              ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal18ChunkedIndexMapper17PhysicalToLogicalEv:bb.a
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.024 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !64 ; 2 uses
  %i.bc = and i64 %i.bb, 16777215
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.019.037, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !64
  %i.bf = lshr i64 %i.bb, 24
  %i.bg = add nsw i64 %i.be, %i.bf
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal18ChunkedIndexMapper17PhysicalToLogicalEv:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !64 ; 2 uses
  %i.bk = and i64 %i.bj, 16777215
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.019.037, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !64
  %i.bn = lshr i64 %i.bj, 24
  %i.bo = add nsw i64 %i.bm, %i.bn
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal18ChunkedIndexMapper17PhysicalToLogicalEv:bb.a
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.024.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !64 ; 2 uses
  %i.bt = and i64 %i.bs, 16777215
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.019.037, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !64
  %i.bw = lshr i64 %i.bs, 24
  %i.bx = add nsw i64 %i.bv, %i.bw
end_hunk_12
