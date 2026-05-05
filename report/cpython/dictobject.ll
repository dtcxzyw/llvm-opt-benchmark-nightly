inline.NumInlined: 780
inline.NumDeleted: 160
begin_hunk_0_@delitem_common:bb.a
  br i1 %.not.i31, label %bb.d, label %bb.c, !llvm.loop !169

bb.d:                                             ; preds = %bb.c
  %.0.i.lcssa = phi i32 [ %.0.i, %bb.c ]          ; 2 uses
  %.lcssa = phi i64 [ %i.p, %bb.c ]               ; 3 uses
  %i.u = zext i8 %i.o to i32                      ; 3 uses
end_hunk_0
begin_hunk_1_@delitem_common:bb.a
  %n.mod.vf = and i64 %i.aa, 28
  %n.vec = and i64 %i.aa, 8589934560              ; 3 uses
  %i.ab = add nsw i64 %n.vec, %.lcssa
  %i.ac = sub i32 %i.x, %.0.i
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 1
  %i.af = lshr i64 %i.ae, 5
end_hunk_1
begin_hunk_2_@delitem_common:bb.a
  %i.ah = shl nuw nsw i64 %i.l, 3
  %i.ai = add nuw nsw i64 %i.ah, 25
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.ai
  %i.aj = sext i32 %lsr.iv.next to i64
  %scevgep49 = getelementptr i8, ptr %scevgep, i64 %i.aj ; 2 uses
  br label %vector.body

end_hunk_2
begin_hunk_3_@delitem_common:bb.a
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.aa, 8589934588            ; 2 uses
  %i.al = add nsw i64 %n.vec43, %.lcssa
  %i.am = sub i32 %i.x, %.0.i
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 1
  %i.ap = lshr i64 %i.ao, 2
end_hunk_3
begin_hunk_4_@delitem_common:bb.a
  %i.ar = shl nuw nsw i64 %i.l, 3
  %i.as = add nuw nsw i64 %i.ar, 9
  %scevgep55 = getelementptr i8, ptr %i.h, i64 %i.as
  %i.at = sext i32 %lsr.iv.next to i64
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %i.at
  br label %vec.epilog.vector.body

end_hunk_4
begin_hunk_5_@dict_merge_from_seq2:bb.a

bb.b:                                             ; preds = %bb.ai, %.lr.ph.i
  %i.f = phi ptr [ %i.c, %.lr.ph.i ], [ %i.bn, %bb.ai ] ; 9 uses
  %.042126.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %bb.ai ] ; 4 uses
  %i.g = tail call ptr @PySequence_Fast(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.49) #21, !inline_history !211 ; 14 uses
  %i.h = icmp eq ptr %i.g, null                   ; 6 uses
  br i1 %i.h, label %bb.c, label %bb.e
end_hunk_5
begin_hunk_6_@dict_merge_from_seq2:bb.a
  br i1 %.not50.i, label %.thread94.i, label %.thread.i._crit_edge

split.a:                                          ; preds = %bb.f
  %.042126.i.lcssa212 = phi i64 [ %.042126.i, %bb.f ]
  br label %bb.g

.thread.i._crit_edge:                             ; preds = %.thread.i
  %.042126.i.lcssa211 = phi i64 [ %.042126.i, %.thread.i ]
  br label %bb.g

bb.g:                                             ; preds = %split.a, %.thread.i._crit_edge
  %.val87.i.lcssa = phi i64 [ %.val87.i, %.thread.i._crit_edge ], [ %.val87.i, %split.a ]
  %.lcssa197 = phi ptr [ %i.f, %.thread.i._crit_edge ], [ %i.f, %split.a ]
  %.042126.i.lcssa192 = phi i64 [ %.042126.i.lcssa211, %.thread.i._crit_edge ], [ %.042126.i.lcssa212, %split.a ]
  %.lcssa188 = phi ptr [ %i.g, %.thread.i._crit_edge ], [ %i.g, %split.a ]
  %.lcssa183 = phi i1 [ %i.h, %.thread.i._crit_edge ], [ %i.h, %split.a ]
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !58
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.51, i64 noundef %.042126.i.lcssa192, i64 noundef %.val87.i.lcssa) #21, !inline_history !211 ; 0 uses
  br label %bb.aj
end_hunk_6
begin_hunk_7_@store_instance_attr_lock_held:bb.a
  br i1 %.not.i74, label %bb.v, label %bb.u, !llvm.loop !169

bb.v:                                             ; preds = %bb.u
  %.0.i.lcssa = phi i32 [ %.0.i, %bb.u ]          ; 2 uses
  %.lcssa117 = phi i64 [ %i.bz, %bb.u ]           ; 3 uses
  %i.ce = zext i8 %i.by to i32                    ; 3 uses
end_hunk_7
begin_hunk_8_@store_instance_attr_lock_held:bb.a
  %n.mod.vf = and i64 %i.ck, 28
  %n.vec = and i64 %i.ck, 8589934560              ; 3 uses
  %i.cl = add nsw i64 %n.vec, %.lcssa117
  %i.cm = sub i32 %i.ch, %.0.i
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cn, 1
  %i.cp = lshr i64 %i.co, 5
end_hunk_8
begin_hunk_9_@store_instance_attr_lock_held:bb.a
  %i.cr = shl nuw nsw i64 %i.bv, 3
  %i.cs = add nuw nsw i64 %i.cr, 25
  %scevgep = getelementptr i8, ptr %1, i64 %i.cs
  %i.ct = sext i32 %lsr.iv.next to i64
  %scevgep118 = getelementptr i8, ptr %scevgep, i64 %i.ct ; 2 uses
  br label %vector.body

end_hunk_9
begin_hunk_10_@store_instance_attr_lock_held:bb.a
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec94 = and i64 %i.ck, 8589934588            ; 2 uses
  %i.cv = add nsw i64 %n.vec94, %.lcssa117
  %i.cw = sub i32 %i.ch, %.0.i
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cx, 1
  %i.cz = lshr i64 %i.cy, 2
end_hunk_10
begin_hunk_11_@store_instance_attr_lock_held:bb.a
  %i.db = shl nuw nsw i64 %i.bv, 3
  %i.dc = add nuw nsw i64 %i.db, 9
  %scevgep124 = getelementptr i8, ptr %1, i64 %i.dc
  %i.dd = sext i32 %lsr.iv.next to i64
  %scevgep125 = getelementptr i8, ptr %scevgep124, i64 %i.dd
  br label %vec.epilog.vector.body

end_hunk_11
