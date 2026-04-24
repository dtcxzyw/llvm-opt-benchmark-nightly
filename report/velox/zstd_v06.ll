inline.NumInlined: 338
inline.NumDeleted: 52
begin_hunk_0_@ZSTDv06_decompressBlock_internal:bb.a
  br i1 %or.cond178.i, label %ZSTDv06_decompressSequences.exit, label %.thread172.i

.thread172.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z
  %.0176.i = phi i32 [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %.0123.in175.i = phi i32 [ %i.fd, %bb.ab ], [ %i.es, %bb.aa ], [ %i.em, %bb.z ]
  %.0123.i = zext nneg i32 %.0123.in175.i to i64  ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 3 uses
  %6 = zext nneg i32 %.0176.i to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 %6
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !27
  %i.fj = add nuw nsw i64 %.0123.i, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fg, i8 %i.fi, i64 %i.fj, i1 false)
end_hunk_0
begin_hunk_1_@ZSTDv06_decompressBlock_internal:bb.a
  store ptr %i.fg, ptr %i.fk, align 8, !tbaa !107
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0123.i, ptr %i.fl, align 8, !tbaa !108
  %7 = add nuw nsw i32 %.0176.i, 1
  %8 = zext nneg i32 %7 to i64
  br label %bb.ac

default.unreachable:                              ; preds = %bb.c
end_hunk_1
begin_hunk_2_@ZSTDv06_decompressBlock_internal:bb.a
bb.ac:                                            ; preds = %.thread172.i, %bb.x, %bb.w, %bb.p, %bb.k
  %i.fm = phi i64 [ %.0125.i, %bb.w ], [ %i.cm, %bb.p ], [ %.0123.i, %.thread172.i ], [ %.0125.i, %bb.x ], [ %.0128151159168.i, %bb.k ]
  %i.fn = phi ptr [ %i.ec, %bb.w ], [ %i.cw, %bb.p ], [ %i.fg, %.thread172.i ], [ %i.eh, %bb.x ], [ %i.by, %bb.k ] ; 4 uses
  %.5.i = phi i64 [ %i.dy, %bb.w ], [ %i.cu, %bb.p ], [ %8, %.thread172.i ], [ %i.dy, %bb.x ], [ %i.bv, %bb.k ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 %.5.i ; 6 uses
  %i.fp = sub nsw i64 %4, %.5.i                   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
end_hunk_2
