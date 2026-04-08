inline.NumInlined: 27
inline.NumDeleted: 17
begin_hunk_0_@chm_unpack:bb.a
  br label %chm_copy_file_data.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.lh = sub i64 %.02029.i.i, %i.kz              ; 2 uses
  %.not.i115.i = icmp eq i64 %i.lh, 0
  br i1 %.not.i115.i, label %chm_copy_file_data.exit.i, label %.lr.ph.i.i, !llvm.loop !69

end_hunk_0
begin_hunk_1_@read_chunk_entries:bb.a
  %i.l = load i8, ptr %.0.i, align 1, !tbaa !18   ; 2 uses
  %i.m = and i8 %i.l, 127
  %i.n = zext nneg i8 %i.m to i64
  %i.o = or disjoint i64 %i.k, %i.n               ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 3 uses
  %.not.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i, label %read_enc_int.exit, label %.preheader.i, !llvm.loop !71
end_hunk_1
begin_hunk_2_@read_chunk_entries:bb.a
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.012.i8791
  store i8 0, ptr %i.ab, align 1, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.012.i8790 = phi i64 [ %i.o, %bb.i ], [ %.012.i8791, %bb.l ]
  %i.ac = phi ptr [ %i.q, %bb.i ], [ %i.w, %bb.l ] ; 2 uses
  br label %.preheader.i57

end_hunk_2
begin_hunk_3_@read_chunk_entries:bb.a
  %.012.i73 = phi i64 [ 0, %read_enc_int.exit68 ], [ %i.ba, %bb.p ], [ 0, %.preheader.i69 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.012.i73, ptr %i.bc, align 8, !tbaa !47
  %5 = icmp ugt i64 %.012.i8790, 1
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !14 ; 3 uses
  br i1 %5, label %bb.q, label %bb.t

bb.q:                                             ; preds = %read_enc_int.exit74
  %i.bd = load i8, ptr %.pre.pre, align 1, !tbaa !18
end_hunk_3
