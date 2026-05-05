inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@add_to_list:bb.a
  br label %exr_attr_list_remove.exit

bb.ak:                                            ; preds = %.lr.ph.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %.lr.ph.i ] ; 5 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.ef = and i64 %indvars.iv.i.lcssa, 4294967295
end_hunk_0
begin_hunk_1_@add_to_list:bb.a
vector.ph:                                        ; preds = %.lr.ph60.preheader.i
  %n.vec = and i64 %i.ej, -4                      ; 2 uses
  %i.ek = add i64 %indvars.iv.i.lcssa, %n.vec
  %i.el = lshr i64 %lsr.iv61, 2
  %i.em = shl nuw i64 %i.el, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv68 = phi ptr [ %scevgep69, %vector.body ], [ %lsr.iv66, %vector.ph ] ; 5 uses
  %lsr.iv63 = phi i64 [ %lsr.iv.next64, %vector.body ], [ %i.em, %vector.ph ]
  %scevgep70 = getelementptr i8, ptr %lsr.iv68, i64 -16
  %wide.load = load <2 x ptr>, ptr %scevgep70, align 8, !tbaa !25
end_hunk_1
begin_hunk_2_@exr_attr_list_remove:bb.a
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %.lr.ph ] ; 5 uses
  %i.s = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.t = and i64 %indvars.iv.lcssa, 4294967295
end_hunk_2
begin_hunk_3_@exr_attr_list_remove:bb.a
vector.ph:                                        ; preds = %.lr.ph60.preheader
  %n.vec = and i64 %i.x, -4                       ; 2 uses
  %i.y = add i64 %indvars.iv.lcssa, %n.vec
  %i.z = lshr i64 %lsr.iv, 2
  %i.aa = shl nuw i64 %i.z, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv100 = phi ptr [ %scevgep101, %vector.body ], [ %lsr.iv98, %vector.ph ] ; 5 uses
  %lsr.iv95 = phi i64 [ %lsr.iv.next96, %vector.body ], [ %i.aa, %vector.ph ]
  %scevgep102 = getelementptr i8, ptr %lsr.iv100, i64 -16
  %wide.load = load <2 x ptr>, ptr %scevgep102, align 8, !tbaa !25
end_hunk_3
