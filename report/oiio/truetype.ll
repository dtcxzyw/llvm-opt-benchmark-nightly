inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@TT_RunIns:bb.a
  unreachable

bb.vb:                                            ; preds = %switch.lookup1302
  %i.cpt = lshr exact i64 %switch.load1304, 2
  br label %bb.ve

bb.vc:                                            ; preds = %switch.lookup1302
  %i.cpu = lshr exact i64 %switch.load1304, 1
  br label %bb.ve

bb.vd:                                            ; preds = %switch.lookup1302
  %i.cpv = mul nuw nsw i64 %switch.load1304, 3
  %i.cpw = lshr exact i64 %i.cpv, 2
  br label %bb.ve

bb.ve:                                            ; preds = %bb.vd, %bb.vc, %bb.vb, %switch.lookup1302
end_hunk_0
begin_hunk_1_@TT_RunIns:bb.a
  %.sink.i.i = phi i64 [ %i.cqa, %bb.vf ], [ %.sext.i.i, %bb.vg ]
  %i.cqe = lshr exact i64 %switch.load1304, 8
  store i64 %i.cqe, ptr %i.fe, align 8, !tbaa !464
  %11 = lshr i64 %i.cpx, 8
  store i64 %11, ptr %i.ff, align 8, !tbaa !465
  %i.cqf = ashr i64 %.sink.i.i, 8
  store i64 %i.cqf, ptr %i.fd, align 8, !tbaa !466
  store i32 6, ptr %i.cz, align 8, !tbaa !320
end_hunk_1
begin_hunk_2_@TT_RunIns:bb.a
  ]

bb.vh:                                            ; preds = %switch.lookup1305
  %i.cql = lshr i64 %switch.load1307, 2
  br label %bb.vk

bb.vi:                                            ; preds = %switch.lookup1305
  %i.cqm = lshr i64 %switch.load1307, 1
  br label %bb.vk

bb.vj:                                            ; preds = %switch.lookup1305
  %i.cqn = mul nuw nsw i64 %switch.load1307, 3
  %i.cqo = lshr i64 %i.cqn, 2
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %bb.vi, %bb.vh, %switch.lookup1305
end_hunk_2
begin_hunk_3_@TT_RunIns:bb.a
  %.sink.i.i648 = phi i64 [ %i.cqs, %bb.vl ], [ %.sext.i.i647, %bb.vm ]
  %i.cqw = lshr i64 %switch.load1307, 8
  store i64 %i.cqw, ptr %i.fe, align 8, !tbaa !464
  %12 = lshr i64 %i.cqp, 8
  store i64 %12, ptr %i.ff, align 8, !tbaa !465
  %i.cqx = ashr i64 %.sink.i.i648, 8
  store i64 %i.cqx, ptr %i.fd, align 8, !tbaa !466
  store i32 7, ptr %i.cz, align 8, !tbaa !320
end_hunk_3
