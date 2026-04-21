begin_hunk_0_@int_upsample:bb.a
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %.fr50 = freeze i8 %i.i                         ; 8 uses
  %i.j = zext i8 %.fr50 to i32                    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 258
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
end_hunk_0
begin_hunk_1_@int_upsample:bb.a
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64                    ; 5 uses
  %min.iters.check99 = icmp ult i8 %.fr50, 4
  %min.iters.check88 = icmp ult i8 %.fr50, 16
  %n.mod.vf103 = and i64 %i.v, 12
  %n.vec104 = and i64 %i.v, 240                   ; 5 uses
  %4 = shl nuw nsw i64 %n.vec104, 1
  %.cast105 = trunc nuw nsw i64 %n.vec104 to i32
  %5 = sub nsw i32 %i.j, %.cast105
  %cmp.n114 = icmp eq i64 %n.vec104, %i.v
  %min.epilog.iters.check120 = icmp eq i64 %n.mod.vf103, 0
  %n.vec91 = and i64 %i.v, 252                    ; 4 uses
  %i.w = shl nuw nsw i64 %n.vec91, 1
  %.cast92 = trunc nuw nsw i64 %n.vec91 to i32
  %i.x = sub nsw i32 %i.j, %.cast92
end_hunk_1
begin_hunk_2_@int_upsample:bb.a

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %..loopexit_crit_edge.us.us.us
  %.03239.us.us.us = phi ptr [ %i.aq, %..loopexit_crit_edge.us.us.us ], [ %i.ae, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03338.us.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us.us ], [ %i.z, %.lr.ph.us.us.us.preheader ] ; 5 uses
  %i.aj = load i16, ptr %.03239.us.us.us, align 2, !tbaa !80 ; 3 uses
  br i1 %min.iters.check99, label %scalar.ph87.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %.lr.ph.us.us.us
  br i1 %min.iters.check88, label %vec.epilog.ph121, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check100
  %i.ak = getelementptr i8, ptr %.03338.us.us.us, i64 %4 ; 2 uses
  %broadcast.splatinsert93 = insertelement <8 x i16> poison, i16 %i.aj, i64 0
  %broadcast.splat94 = shufflevector <8 x i16> %broadcast.splatinsert93, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body95
end_hunk_2
begin_hunk_3_@int_upsample:bb.a
  store <8 x i16> %broadcast.splat94, ptr %next.gep98, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat94, ptr %i.al, align 2, !tbaa !80
  %index.next99 = add nuw i64 %index96, 16        ; 2 uses
  %i.am = icmp eq i64 %index.next99, %n.vec104
  br i1 %i.am, label %middle.block113, label %vector.body95, !llvm.loop !116

middle.block113:                                  ; preds = %vector.body95
  br i1 %cmp.n114, label %..loopexit_crit_edge.us.us.us, label %vec.epilog.iter.check119

vec.epilog.iter.check119:                         ; preds = %middle.block113
  br i1 %min.epilog.iters.check120, label %scalar.ph87.preheader, label %vec.epilog.ph121, !prof !117

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check119
  %vec.epilog.resume.val115 = phi i64 [ %n.vec104, %vec.epilog.iter.check119 ], [ 0, %vector.main.loop.iter.check100 ]
  %6 = getelementptr i8, ptr %.03338.us.us.us, i64 %i.w ; 2 uses
  %broadcast.splatinsert125 = insertelement <4 x i16> poison, i16 %i.aj, i64 0
  %broadcast.splat126 = shufflevector <4 x i16> %broadcast.splatinsert125, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body127

vec.epilog.vector.body127:                        ; preds = %vec.epilog.vector.body127, %vec.epilog.ph121
  %index128 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph121 ], [ %index.next130, %vec.epilog.vector.body127 ] ; 2 uses
  %7 = shl i64 %index128, 1
  %next.gep129 = getelementptr i8, ptr %.03338.us.us.us, i64 %7
  store <4 x i16> %broadcast.splat126, ptr %next.gep129, align 2, !tbaa !80
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %8 = icmp eq i64 %index.next130, %n.vec91
  br i1 %8, label %middle.block100, label %vec.epilog.vector.body127, !llvm.loop !118

middle.block100:                                  ; preds = %vec.epilog.vector.body127
  br i1 %cmp.n101, label %..loopexit_crit_edge.us.us.us, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %.lr.ph.us.us.us, %vec.epilog.iter.check119, %middle.block100
  %.137.us.us.us.ph = phi ptr [ %.03338.us.us.us, %.lr.ph.us.us.us ], [ %i.ak, %vec.epilog.iter.check119 ], [ %6, %middle.block100 ]
  %.03436.us.us.us.ph = phi i32 [ %i.j, %.lr.ph.us.us.us ], [ %5, %vec.epilog.iter.check119 ], [ %i.x, %middle.block100 ]
  br label %scalar.ph87

scalar.ph87:                                      ; preds = %scalar.ph87.preheader, %scalar.ph87
end_hunk_3
begin_hunk_4_@int_upsample:bb.a
  store i16 %i.aj, ptr %.137.us.us.us, align 2, !tbaa !80
  %i.ao = add nsw i32 %.03436.us.us.us, -1
  %i.ap = icmp sgt i32 %.03436.us.us.us, 1
  br i1 %i.ap, label %scalar.ph87, label %..loopexit_crit_edge.us.us.us, !llvm.loop !119

..loopexit_crit_edge.us.us.us:                    ; preds = %scalar.ph87, %middle.block100, %middle.block113
  %.lcssa = phi ptr [ %6, %middle.block100 ], [ %i.ak, %middle.block113 ], [ %i.an, %scalar.ph87 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03239.us.us.us, i64 2
  %i.ar = icmp ult ptr %.lcssa, %i.ac
  br i1 %i.ar, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !120

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.as = zext nneg i32 %i.p to i64
end_hunk_4
begin_hunk_5_@int_upsample:bb.a
  %i.at = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.at, 1
  %.not53 = icmp eq i32 %.pre, 0
  %i.au = zext i8 %.fr50 to i64                   ; 5 uses
  %min.iters.check = icmp ult i8 %.fr50, 4
  %min.iters.check.a = icmp ult i8 %.fr50, 16
  %n.mod.vf = and i64 %i.au, 12
  %n.vec = and i64 %i.au, 240                     ; 5 uses
  %9 = shl nuw nsw i64 %n.vec, 1
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %10 = sub nsw i32 %i.j, %.cast
  %cmp.n = icmp eq i64 %n.vec, %i.au
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec.a = and i64 %i.au, 252                   ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec.a, 1
  %.cast.a = trunc nuw nsw i64 %n.vec.a to i32
  %i.aw = sub nsw i32 %i.j, %.cast.a
end_hunk_5
begin_hunk_6_@int_upsample:bb.a

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %..loopexit_crit_edge.us.us
  %.03239.us.us = phi ptr [ %i.bk, %..loopexit_crit_edge.us.us ], [ %i.bb, %.lr.ph.us.us.preheader ] ; 2 uses
  %.03338.us.us = phi ptr [ %.lcssa85, %..loopexit_crit_edge.us.us ], [ %i.ay, %.lr.ph.us.us.preheader ] ; 5 uses
  %i.bd = load i16, ptr %.03239.us.us, align 2, !tbaa !80 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph.us.us
  br i1 %min.iters.check.a, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = getelementptr i8, ptr %.03338.us.us, i64 %9 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_6
begin_hunk_7_@int_upsample:bb.a
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat, ptr %i.bf, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %scalar.ph.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %11 = getelementptr i8, ptr %.03338.us.us, i64 %i.av ; 2 uses
  %broadcast.splatinsert91 = insertelement <4 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat92 = shufflevector <4 x i16> %broadcast.splatinsert91, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 2 uses
  %12 = shl i64 %index93, 1
  %next.gep94 = getelementptr i8, ptr %.03338.us.us, i64 %12
  store <4 x i16> %broadcast.splat92, ptr %next.gep94, align 2, !tbaa !80
  %index.next95 = add nuw i64 %index93, 4         ; 2 uses
  %13 = icmp eq i64 %index.next95, %n.vec.a
  br i1 %13, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !122

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  br i1 %cmp.n.a, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %vec.epilog.iter.check, %middle.block.a
  %.137.us.us.ph = phi ptr [ %.03338.us.us, %.lr.ph.us.us ], [ %i.be, %vec.epilog.iter.check ], [ %11, %middle.block.a ]
  %.03436.us.us.ph = phi i32 [ %i.j, %.lr.ph.us.us ], [ %10, %vec.epilog.iter.check ], [ %i.aw, %middle.block.a ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_7
begin_hunk_8_@int_upsample:bb.a
  store i16 %i.bd, ptr %.137.us.us, align 2, !tbaa !80
  %i.bi = add nsw i32 %.03436.us.us, -1
  %i.bj = icmp sgt i32 %.03436.us.us, 1
  br i1 %i.bj, label %scalar.ph, label %..loopexit_crit_edge.us.us, !llvm.loop !123

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph, %middle.block.a, %middle.block
  %.lcssa85 = phi ptr [ %11, %middle.block.a ], [ %i.be, %middle.block ], [ %i.bh, %scalar.ph ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.03239.us.us, i64 2
  %i.bl = icmp ult ptr %.lcssa85, %i.az
  br i1 %i.bl, label %.lr.ph.us.us, label %._crit_edge.split.us.us, !llvm.loop !120

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split
end_hunk_8
begin_hunk_9_@llvm.umax.i64
!114 = !{!57, !4, i64 4}
!115 = distinct !{!115, !68}
!116 = distinct !{!116, !68, !88, !89}
!117 = !{!"branch_weights", i32 4, i32 12}
!118 = distinct !{!118, !68, !88, !89}
!119 = distinct !{!119, !68, !89, !88}
!120 = distinct !{!120, !68}
!121 = distinct !{!121, !68, !88, !89}
!122 = distinct !{!122, !68, !88, !89}
!123 = distinct !{!123, !68, !89, !88}
end_hunk_9
