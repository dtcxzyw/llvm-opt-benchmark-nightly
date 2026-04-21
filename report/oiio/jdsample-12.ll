begin_hunk_0_@int_upsample:bb.a
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %.fr50 = freeze i8 %i.i                         ; 6 uses
  %i.j = zext i8 %.fr50 to i32                    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 258
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
end_hunk_0
begin_hunk_1_@int_upsample:bb.a
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64                    ; 2 uses
  %min.iters.check88 = icmp ult i8 %.fr50, 16
  %n.vec91 = and i64 %i.v, 240                    ; 4 uses
  %i.w = shl nuw nsw i64 %n.vec91, 1
  %.cast92 = trunc nuw nsw i64 %n.vec91 to i32
  %i.x = sub nsw i32 %i.j, %.cast92
end_hunk_1
begin_hunk_2_@int_upsample:bb.a

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %..loopexit_crit_edge.us.us.us
  %.03239.us.us.us = phi ptr [ %i.aq, %..loopexit_crit_edge.us.us.us ], [ %i.ae, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03338.us.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us.us ], [ %i.z, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %i.aj = load i16, ptr %.03239.us.us.us, align 2, !tbaa !80 ; 2 uses
  br i1 %min.iters.check88, label %scalar.ph87.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.us.us.us
  %i.ak = getelementptr i8, ptr %.03338.us.us.us, i64 %i.w ; 2 uses
  %broadcast.splatinsert93 = insertelement <8 x i16> poison, i16 %i.aj, i64 0
  %broadcast.splat94 = shufflevector <8 x i16> %broadcast.splatinsert93, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body95
end_hunk_2
begin_hunk_3_@int_upsample:bb.a
  store <8 x i16> %broadcast.splat94, ptr %next.gep98, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat94, ptr %i.al, align 2, !tbaa !80
  %index.next99 = add nuw i64 %index96, 16        ; 2 uses
  %i.am = icmp eq i64 %index.next99, %n.vec91
  br i1 %i.am, label %middle.block100, label %vector.body95, !llvm.loop !116

middle.block100:                                  ; preds = %vector.body95
  br i1 %cmp.n101, label %..loopexit_crit_edge.us.us.us, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %.lr.ph.us.us.us, %middle.block100
  %.137.us.us.us.ph = phi ptr [ %.03338.us.us.us, %.lr.ph.us.us.us ], [ %i.ak, %middle.block100 ]
  %.03436.us.us.us.ph = phi i32 [ %i.j, %.lr.ph.us.us.us ], [ %i.x, %middle.block100 ]
  br label %scalar.ph87

scalar.ph87:                                      ; preds = %scalar.ph87.preheader, %scalar.ph87
end_hunk_3
begin_hunk_4_@int_upsample:bb.a
  store i16 %i.aj, ptr %.137.us.us.us, align 2, !tbaa !80
  %i.ao = add nsw i32 %.03436.us.us.us, -1
  %i.ap = icmp sgt i32 %.03436.us.us.us, 1
  br i1 %i.ap, label %scalar.ph87, label %..loopexit_crit_edge.us.us.us, !llvm.loop !117

..loopexit_crit_edge.us.us.us:                    ; preds = %scalar.ph87, %middle.block100
  %.lcssa = phi ptr [ %i.ak, %middle.block100 ], [ %i.an, %scalar.ph87 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03239.us.us.us, i64 2
  %i.ar = icmp ult ptr %.lcssa, %i.ac
  br i1 %i.ar, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !118

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.as = zext nneg i32 %i.p to i64
end_hunk_4
begin_hunk_5_@int_upsample:bb.a
  %i.at = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.at, 1
  %.not53 = icmp eq i32 %.pre, 0
  %i.au = zext i8 %.fr50 to i64                   ; 2 uses
  %min.iters.check.a = icmp ult i8 %.fr50, 16
  %n.vec.a = and i64 %i.au, 240                   ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec.a, 1
  %.cast.a = trunc nuw nsw i64 %n.vec.a to i32
  %i.aw = sub nsw i32 %i.j, %.cast.a
end_hunk_5
begin_hunk_6_@int_upsample:bb.a

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %..loopexit_crit_edge.us.us
  %.03239.us.us = phi ptr [ %i.bk, %..loopexit_crit_edge.us.us ], [ %i.bb, %.lr.ph.us.us.preheader ] ; 2 uses
  %.03338.us.us = phi ptr [ %.lcssa85, %..loopexit_crit_edge.us.us ], [ %i.ay, %.lr.ph.us.us.preheader ] ; 3 uses
  %i.bd = load i16, ptr %.03239.us.us, align 2, !tbaa !80 ; 2 uses
  br i1 %min.iters.check.a, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us
  %i.be = getelementptr i8, ptr %.03338.us.us, i64 %i.av ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_6
begin_hunk_7_@int_upsample:bb.a
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat, ptr %i.bf, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec.a
  br i1 %i.bg, label %middle.block.a, label %vector.body, !llvm.loop !119

middle.block.a:                                   ; preds = %vector.body
  br i1 %cmp.n.a, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block.a
  %.137.us.us.ph = phi ptr [ %.03338.us.us, %.lr.ph.us.us ], [ %i.be, %middle.block.a ]
  %.03436.us.us.ph = phi i32 [ %i.j, %.lr.ph.us.us ], [ %i.aw, %middle.block.a ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_7
begin_hunk_8_@int_upsample:bb.a
  store i16 %i.bd, ptr %.137.us.us, align 2, !tbaa !80
  %i.bi = add nsw i32 %.03436.us.us, -1
  %i.bj = icmp sgt i32 %.03436.us.us, 1
  br i1 %i.bj, label %scalar.ph, label %..loopexit_crit_edge.us.us, !llvm.loop !120

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph, %middle.block.a
  %.lcssa85 = phi ptr [ %i.be, %middle.block.a ], [ %i.bh, %scalar.ph ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.03239.us.us, i64 2
  %i.bl = icmp ult ptr %.lcssa85, %i.az
  br i1 %i.bl, label %.lr.ph.us.us, label %._crit_edge.split.us.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split
end_hunk_8
begin_hunk_9_@llvm.umax.i64
!114 = !{!57, !4, i64 4}
!115 = distinct !{!115, !68}
!116 = distinct !{!116, !68, !88, !89}
!117 = distinct !{!117, !68, !89, !88}
!118 = distinct !{!118, !68}
!119 = distinct !{!119, !68, !88, !89}
!120 = distinct !{!120, !68, !89, !88}
end_hunk_9
