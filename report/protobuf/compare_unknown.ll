inline.NumInlined: 75
inline.NumDeleted: 49
begin_hunk_0_@upb_CombineUnknownFields:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr i8, ptr %0, i64 24
  br label %upb_WireReader_ReadVarint.exit

upb_WireReader_ReadVarint.exit:                   ; preds = %upb_WireReader_ReadVarint.exit.backedge, %bb.a
  %.086 = phi ptr [ %i.b, %bb.a ], [ %.187, %upb_WireReader_ReadVarint.exit.backedge ] ; 11 uses
  %.082 = phi ptr [ %i.d, %bb.a ], [ %i.bz, %upb_WireReader_ReadVarint.exit.backedge ] ; 5 uses
  %.078 = phi ptr [ %i.f, %bb.a ], [ %.179, %upb_WireReader_ReadVarint.exit.backedge ] ; 3 uses
  %.074 = phi ptr [ %i.g, %bb.a ], [ %.074.be, %upb_WireReader_ReadVarint.exit.backedge ] ; 5 uses
  %.038 = phi i32 [ %i.i, %bb.a ], [ %.073, %upb_WireReader_ReadVarint.exit.backedge ] ; 2 uses
  %.037 = phi i8 [ %i.k, %bb.a ], [ %spec.select, %upb_WireReader_ReadVarint.exit.backedge ] ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !33
  %i.s = ptrtoint ptr %.074 to i64
  %i.t = ptrtoint ptr %i.r to i64
end_hunk_0
begin_hunk_1_@upb_CombineUnknownFields:bb.a
  br label %upb_WireReader_ReadTag.exit

upb_WireReader_ReadTag.exit:                      ; preds = %bb.d, %bb.c
  %.073 = phi i32 [ %i.ae, %bb.c ], [ %i.ak, %bb.d ] ; 4 uses
  %.0.i = phi ptr [ %i.af, %bb.c ], [ %i.ai, %bb.d ] ; 12 uses
  %i.al = trunc i32 %.073 to i8
  %i.am = and i8 %i.al, 7                         ; 2 uses
end_hunk_1
begin_hunk_2_@upb_CombineUnknownFields:bb.a
  br i1 %i.an, label %upb_EpsCopyInputStream_IsDone.exit.thread, label %bb.e

bb.e:                                             ; preds = %upb_WireReader_ReadTag.exit
  %i.ao = icmp ult i32 %.073, %.038
  %spec.select = select i1 %i.ao, i8 0, i8 %.037
  %i.ap = icmp eq ptr %.082, %.078
  br i1 %i.ap, label %bb.f, label %bb.o

end_hunk_2
begin_hunk_3_@upb_CombineUnknownFields:bb.a
  br label %bb.o

bb.o:                                             ; preds = %upb_UnknownFields_Grow.exit, %bb.e
  %.187 = phi ptr [ %.4, %upb_UnknownFields_Grow.exit ], [ %.086, %bb.e ]
  %.183 = phi ptr [ %i.bx, %upb_UnknownFields_Grow.exit ], [ %.082, %bb.e ] ; 8 uses
  %.179 = phi ptr [ %i.by, %upb_UnknownFields_Grow.exit ], [ %.078, %bb.e ]
  store i32 %.073, ptr %.183, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %.183, i64 24
  switch i8 %i.am, label %bb.ac [
    i8 0, label %bb.p
    i8 1, label %bb.s
end_hunk_3
begin_hunk_4_@upb_CombineUnknownFields:bb.a
  store i64 %i.ch, ptr %i.ca, align 8, !tbaa !10
  br label %upb_WireReader_ReadVarint.exit.backedge

upb_WireReader_ReadVarint.exit.backedge:          ; preds = %bb.r, %bb.q, %bb.s, %bb.t, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit, %bb.ab
  %.074.be = phi ptr [ %i.cg, %bb.r ], [ %i.ce, %bb.q ], [ %i.cj, %bb.s ], [ %i.cl, %bb.t ], [ %.0.i51, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ %i.dr, %bb.ab ]
  br label %upb_WireReader_ReadVarint.exit

bb.s:                                             ; preds = %bb.o
end_hunk_4
begin_hunk_5_@upb_CombineUnknownFields:bb.a
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit: ; preds = %bb.x, %bb.y
  %.sroa.0.2 = phi ptr [ undef, %bb.x ], [ %i.dh, %bb.y ]
  %.0.i51 = phi ptr [ %i.dd, %bb.x ], [ %i.di, %bb.y ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.183, i64 8
  store ptr %.sroa.0.2, ptr %i.dj, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.183, i64 16
  store i64 %i.ct, ptr %i.dk, align 8, !tbaa !7
  br label %upb_WireReader_ReadVarint.exit.backedge

bb.z:                                             ; preds = %bb.o
  %i.dl = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
end_hunk_5
begin_hunk_6_@upb_CombineUnknownFields:bb.a
  store ptr %.086, ptr %1, align 8, !tbaa !44
  store ptr %.082, ptr %i.c, align 8, !tbaa !46
  store ptr %.078, ptr %i.e, align 8, !tbaa !47
  store i8 %.037, ptr %i.j, align 4, !tbaa !49
  store i32 %.038, ptr %i.h, align 8, !tbaa !48
  ret void
}

end_hunk_6
begin_hunk_7_@upb_UnknownFields_SortRecursive:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.047.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ] ; 2 uses
  %.03846.i = phi ptr [ %.139.i, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 3 uses
  %.04045.i = phi ptr [ %.141.i, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %i.i = load i32, ptr %.04045.i, align 8, !tbaa !41
  %i.j = load i32, ptr %.03846.i, align 8, !tbaa !41
  %.not.i = icmp ugt i32 %i.i, %i.j               ; 3 uses
  %.04045.sink.i = select i1 %.not.i, ptr %.03846.i, ptr %.04045.i
  %.141.idx.i = select i1 %.not.i, i64 0, i64 24
  %.141.i = getelementptr inbounds nuw i8, ptr %.04045.i, i64 %.141.idx.i ; 4 uses
  %.139.idx.i = select i1 %.not.i, i64 24, i64 0
  %.139.i = getelementptr inbounds nuw i8, ptr %.03846.i, i64 %.139.idx.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.047.i, ptr noundef nonnull align 8 dereferenceable(24) %.04045.sink.i, i64 24, i1 false)
  %.1.i = getelementptr inbounds nuw i8, ptr %.047.i, i64 24 ; 2 uses
  %i.k = icmp ult ptr %.141.i, %i.g               ; 4 uses
  %i.l = icmp ult ptr %.139.i, %i.h               ; 2 uses
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

end_hunk_7
begin_hunk_8_@upb_UnknownFields_SortRecursive:bb.a
  br i1 %brmerge.i, label %.sink.split.i, label %upb_UnknownFields_Merge.exit

.sink.split.i:                                    ; preds = %._crit_edge.i
  %.038.lcssa.mux.i = select i1 %i.k, ptr %.141.i, ptr %.139.i
  %.mux.i = select i1 %i.k, ptr %i.g, ptr %i.h
  %i.n = ptrtoint ptr %.mux.i to i64
  %i.o = ptrtoint ptr %.038.lcssa.mux.i to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1.i, ptr nonnull align 8 %.141.i, i64 %i.p, i1 false)
  br label %upb_UnknownFields_Merge.exit

upb_UnknownFields_Merge.exit:                     ; preds = %.sink.split.i, %._crit_edge.i, %bb.a
end_hunk_8
