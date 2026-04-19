inline.NumInlined: 43
inline.NumDeleted: 22
begin_hunk_0_@WebPMuxDeleteChunk:bb.a

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.f
  %i.g = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.c ] ; 3 uses
  %.012.i.i = phi i32 [ %.1.i.i, %bb.f ], [ 0, %bb.c ]
  %.0711.i.i = phi ptr [ %.18.i.i, %bb.f ], [ %i.e, %bb.c ] ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = icmp eq i32 %i.h, %i.c
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.j = tail call ptr @ChunkDelete(ptr noundef nonnull %i.g) #6 ; 2 uses
  store ptr %i.j, ptr %.0711.i.i, align 8, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@WebPMuxDeleteChunk:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.j, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %.18.i.i = phi ptr [ %.0711.i.i, %bb.d ], [ %i.k, %bb.e ]
  %.1.i.i = phi i32 [ 1, %bb.d ], [ %.012.i.i, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %MuxDeleteAllNamedData.exit, label %.lr.ph.i.i, !llvm.loop !21

MuxDeleteAllNamedData.exit:                       ; preds = %bb.f, %bb.c, %bb.b, %bb.b, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %bb.b ], [ 0, %bb.c ], [ %.1.i.i, %bb.f ]
  ret i32 %.0
}

end_hunk_1
begin_hunk_2_@WebPMuxAssemble:bb.a
  br i1 %or.cond.i, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @kChunks, i64 24), align 8, !tbaa !30 ; 3 uses
  %i.ak = call i32 @ChunkGetIdFromTag(i32 noundef %i.aj) #6 ; 2 uses
  switch i32 %i.ak, label %bb.p [
    i32 3, label %MuxCleanup.exit.thread
end_hunk_2
begin_hunk_3_@WebPMuxAssemble:bb.a
  %.not10.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i, label %MuxCleanup.exit.thread, label %.lr.ph.i.i.outer.i.outer

.lr.ph.i.i.outer.i.outer:                         ; preds = %bb.p, %.thread.i
  %.ph.i.ph = phi ptr [ %i.au, %.thread.i ], [ %i.am, %bb.p ] ; 3 uses
  %.not25.not.i = phi i1 [ false, %.thread.i ], [ true, %bb.p ]
  %.0711.i.i.ph.i = phi ptr [ %i.at, %.thread.i ], [ %i.al, %bb.p ]
  %i.an = load i32, ptr %.ph.i.ph, align 8, !tbaa !19
  %i.ao = icmp eq i32 %i.an, %i.aj
  br i1 %i.ao, label %.thread.i, label %.lr.ph.i.i.i._crit_edge

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i._crit_edge
  %i.ap = load i32, ptr %.pre.i.i.i, align 8, !tbaa !19
  %i.aq = icmp eq i32 %i.ap, %i.aj
  br i1 %i.aq, label %.lr.ph.i.i.i._crit_edge.thread, label %.lr.ph.i.i.i._crit_edge, !llvm.loop !21

.lr.ph.i.i.i._crit_edge:                          ; preds = %.lr.ph.i.i.outer.i.outer, %.lr.ph.i.i.i
  %.ph.i123 = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %.ph.i.ph, %.lr.ph.i.i.outer.i.outer ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.ph.i123, i64 24
  %.pre.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i, label %MuxDeleteAllNamedData.exit.i, label %.lr.ph.i.i.i, !llvm.loop !21

.lr.ph.i.i.i._crit_edge.thread:                   ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.ph.i123, i64 24
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i.i.i._crit_edge.thread, %.lr.ph.i.i.outer.i.outer
  %.lcssa71 = phi ptr [ %.ph.i.ph, %.lr.ph.i.i.outer.i.outer ], [ %.pre.i.i.i, %.lr.ph.i.i.i._crit_edge.thread ]
  %i.at = phi ptr [ %.0711.i.i.ph.i, %.lr.ph.i.i.outer.i.outer ], [ %i.as, %.lr.ph.i.i.i._crit_edge.thread ] ; 2 uses
  %i.au = call ptr @ChunkDelete(ptr noundef nonnull %.lcssa71) #6 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !17
  %.not.i.i35.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i35.i, label %.loopexit, label %.lr.ph.i.i.outer.i.outer, !llvm.loop !21

MuxDeleteAllNamedData.exit.i:                     ; preds = %.lr.ph.i.i.i._crit_edge
  br i1 %.not25.not.i, label %MuxCleanup.exit.thread, label %.loopexit
end_hunk_3
begin_hunk_4_@WebPMuxAssemble:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.as

.loopexit:                                        ; preds = %.thread.i, %MuxDeleteAllNamedData.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
end_hunk_4
begin_hunk_5_@WebPMuxAssemble:bb.a
  br i1 %.not.i.i, label %bb.ag, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.af
  %.02413.i.i = phi i32 [ %.131.i.i, %bb.af ], [ 0, %bb.ae ]
  %.02712.i.i = phi i32 [ %spec.select.i.i, %bb.af ], [ 0, %bb.ae ]
  %.02911.i.i = phi ptr [ %i.dn, %bb.af ], [ %.val.i, %bb.ae ] ; 4 uses
  %i.cm = load ptr, ptr %.02911.i.i, align 8, !tbaa !36 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !16
  %.not.i.i.i.i = icmp eq i64 %i.co, 16
end_hunk_5
begin_hunk_6_@WebPMuxAssemble:bb.a
  %i.dd = shl nuw nsw i32 %i.dc, 17
  %i.de = shl nuw nsw i32 %i.cz, 1
  %i.df = or disjoint i32 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.02911.i.i, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %.02911.i.i, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !42
  %i.dk = add nsw i32 %i.cx, %i.dh
  %i.dl = add nsw i32 %i.df, %i.dj
  %.131.i.i = call i32 @llvm.smax.i32(i32 %i.dl, i32 %.02413.i.i) ; 2 uses
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.dk, i32 %.02712.i.i) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02911.i.i, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !57 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.dn, null
  br i1 %.not36.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !58
end_hunk_6
