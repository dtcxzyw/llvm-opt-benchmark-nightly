inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@fullsize_smooth_downsample:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 -8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i32, ptr %i.j, align 8, !tbaa !53   ; 3 uses
end_hunk_0
begin_hunk_1_@fullsize_smooth_downsample:bb.a
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !54 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 9
  %i.ba = sub nsw i64 65536, %i.az                ; 5 uses
  %i.bb = shl nsw i32 %i.ax, 6
  %i.bc = zext i32 %i.bb to i64                   ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !52
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %expand_right_edge.exit
  %i.bg = add i32 %i.h, -2                        ; 2 uses
  %.not7782 = icmp eq i32 %i.bg, 0
  br i1 %.not7782, label %.lr.ph94.split.us, label %.lr.ph

.lr.ph94.split.us:                                ; preds = %.lr.ph94, %.lr.ph94.split.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph94.split.us ], [ 0, %.lr.ph94 ] ; 3 uses
end_hunk_1
begin_hunk_2_@fullsize_smooth_downsample:bb.a
  %i.dg = icmp slt i64 %indvars.iv.next100, %i.df
  br i1 %i.dg, label %.lr.ph94.split.us, label %._crit_edge95, !llvm.loop !68

.lr.ph:                                           ; preds = %.lr.ph94, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph94 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !63 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !63 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 -8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !63 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !63 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1 ; 2 uses
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !35
  %i.dr = zext i8 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %i.dt = load i8, ptr %i.do, align 1, !tbaa !35
  %i.du = zext i8 %i.dt to i32
  %i.dv = add nuw nsw i32 %i.du, %i.dr
  %i.dw = load i8, ptr %i.dk, align 1, !tbaa !35  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dv, %i.dx            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 2 uses
  %i.ea = zext i8 %i.dw to i64                    ; 2 uses
  %i.eb = load i8, ptr %i.dp, align 1, !tbaa !35
  %i.ec = zext i8 %i.eb to i32
end_hunk_2
begin_hunk_3_@fullsize_smooth_downsample:bb.a
  %i.ef = add nuw nsw i32 %i.ee, %i.ec
  %i.eg = load i8, ptr %i.dz, align 1, !tbaa !35
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nuw nsw i32 %i.ef, %i.eh            ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw nsw i32 %i.dy, 1
  %factor = zext nneg i32 %i.ek to i64
end_hunk_3
begin_hunk_4_@fullsize_smooth_downsample:bb.a
  %i.er = lshr i64 %i.eq, 16
  %i.es = trunc i64 %i.er to i8
  store i8 %i.es, ptr %i.di, align 1, !tbaa !35
  %.07381 = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph, %scalar.ph
  %.07389 = phi ptr [ %.07381, %.lr.ph ], [ %.073, %scalar.ph ] ; 2 uses
  %.088 = phi i32 [ %i.dy, %.lr.ph ], [ %.07087, %scalar.ph ]
  %.07087 = phi i32 [ %i.ei, %.lr.ph ], [ %i.ff, %scalar.ph ] ; 2 uses
  %.07286 = phi i32 [ %i.bg, %.lr.ph ], [ %i.fs, %scalar.ph ]
  %.07485 = phi ptr [ %i.ds, %.lr.ph ], [ %i.ex, %scalar.ph ]
  %.07584 = phi ptr [ %i.dp, %.lr.ph ], [ %i.ew, %scalar.ph ]
  %.07683 = phi ptr [ %i.dz, %.lr.ph ], [ %i.et, %scalar.ph ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.07683, i64 1 ; 3 uses
  %i.eu = load i8, ptr %.07683, align 1, !tbaa !35
  %i.ev = zext i8 %i.eu to i64                    ; 2 uses
end_hunk_4
begin_hunk_5_@fullsize_smooth_downsample:bb.a
  %i.fs = add i32 %.07286, -1                     ; 2 uses
  %.073 = getelementptr inbounds nuw i8, ptr %.07389, i64 1 ; 2 uses
  %.not77 = icmp eq i32 %i.fs, 0
  br i1 %.not77, label %._crit_edge, label %scalar.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %scalar.ph
  %i.ft = load i8, ptr %i.et, align 1, !tbaa !35
  %i.fu = zext i8 %i.ft to i64                    ; 2 uses
  %i.fv = shl nuw nsw i32 %i.ff, 1
  %factor80 = zext nneg i32 %i.fv to i64
  %i.fw = add nuw nsw i64 %factor80, %i.fh
  %i.fx = sub nsw i64 %i.fw, %i.fu
  %i.fy = mul nsw i64 %i.ba, %i.fu
  %i.fz = mul i64 %i.fx, %i.bc
end_hunk_5
begin_hunk_6_@fullsize_smooth_downsample:bb.a
  %i.gb = add i64 %i.ga, %i.fz
  %i.gc = lshr i64 %i.gb, 16
  %i.gd = trunc i64 %i.gc to i8
  store i8 %i.gd, ptr %.073, align 1, !tbaa !35
  %i.ge = load i32, ptr %i.bd, align 4, !tbaa !52
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next, %i.gf
end_hunk_6
begin_hunk_7_@fullsize_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !70

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  ret void
end_hunk_7
begin_hunk_8_@h2v1_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !71

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
end_hunk_8
begin_hunk_9_@h2v1_downsample:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %.02327.us, i64 4 ; 2 uses
  %niter44.next.1 = add i32 %niter44, 2           ; 2 uses
  %niter44.ncmp.1 = icmp eq i32 %niter44.next.1, %unroll_iter43
  br i1 %niter44.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !72

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod41.not, label %._crit_edge.us, label %.epil.preheader
end_hunk_9
begin_hunk_10_@h2v1_downsample:bb.a
  %i.cg = load i32, ptr %i.av, align 4, !tbaa !52
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph.us, label %._crit_edge32, !llvm.loop !73

._crit_edge32:                                    ; preds = %._crit_edge.us, %expand_right_edge.exit
  ret void
end_hunk_10
begin_hunk_11_@h2v2_smooth_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !74

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 308
end_hunk_11
begin_hunk_12_@h2v2_smooth_downsample:bb.a
  %i.gi = add i32 %.0114118, -1                   ; 2 uses
  %.0109 = getelementptr inbounds nuw i8, ptr %.0109123, i64 1 ; 2 uses
  %.not115 = icmp eq i32 %i.gi, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0113.lcssa = phi ptr [ %i.cp, %bb.b ], [ %i.ey, %.lr.ph ] ; 3 uses
end_hunk_12
begin_hunk_13_@h2v2_smooth_downsample:bb.a
  %i.im = load i32, ptr %i.bd, align 4, !tbaa !52
  %i.in = sext i32 %i.im to i64
  %i.io = icmp slt i64 %indvars.iv.next137, %i.in
  br i1 %i.io, label %bb.b, label %._crit_edge131, !llvm.loop !76

._crit_edge131:                                   ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
end_hunk_13
begin_hunk_14_@h2v2_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !77

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
end_hunk_14
begin_hunk_15_@h2v2_downsample:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %.02936.us, i64 4 ; 2 uses
  %niter58.next.1 = add i32 %niter58, 2           ; 2 uses
  %niter58.ncmp.1 = icmp eq i32 %niter58.next.1, %unroll_iter57
  br i1 %niter58.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !78

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod55.not, label %._crit_edge.us, label %.epil.preheader
end_hunk_15
begin_hunk_16_@h2v2_downsample:bb.a
  %i.dh = load i32, ptr %i.av, align 4, !tbaa !52
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next46, %i.di
  br i1 %i.dj, label %.lr.ph.us, label %._crit_edge42, !llvm.loop !79

._crit_edge42:                                    ; preds = %._crit_edge.us, %expand_right_edge.exit
  ret void
end_hunk_16
begin_hunk_17_@int_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit.loopexit, label %.lr.ph.us.i.epil, !llvm.loop !80

expand_right_edge.exit.loopexit:                  ; preds = %.lr.ph.us.i.epil, %expand_right_edge.exit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.p, align 4, !tbaa !52
end_hunk_17
begin_hunk_18_@int_downsample:bb.a
  %i.cx = add nsw i64 %i.ct, %i.cw                ; 3 uses
  %niter123.next.7 = add i32 %niter123, 8         ; 2 uses
  %niter123.ncmp.7 = icmp eq i32 %niter123.next.7, %unroll_iter122
  br i1 %niter123.ncmp.7, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.new, !llvm.loop !81

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.us.us.us.new
  br i1 %lcmp.mod119.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader
end_hunk_18
begin_hunk_19_@int_downsample:bb.a
  %i.db = add nsw i64 %.152.us.us.us.us.us.us.epil, %i.da ; 2 uses
  %epil.iter118.next = add i32 %epil.iter118, 1   ; 2 uses
  %epil.iter118.cmp.not = icmp eq i32 %epil.iter118.next, %xtraiter117
  br i1 %epil.iter118.cmp.not, label %._crit_edge.us.us.us.us.us.us, label %bb.b, !llvm.loop !82

._crit_edge.us.us.us.us.us.us:                    ; preds = %bb.b, %._crit_edge.us.us.us.us.us.us.unr-lcssa
  %.lcssa = phi i64 [ %i.cx, %._crit_edge.us.us.us.us.us.us.unr-lcssa ], [ %i.db, %bb.b ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, %i.bl
  br i1 %exitcond92.not, label %._crit_edge56.split.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !83

._crit_edge56.split.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us
  %i.dc = add nsw i64 %.lcssa, %i.bi
end_hunk_19
begin_hunk_20_@int_downsample:bb.a
  %i.dg = add nuw i32 %.04758.us.us.us.us.us, 1   ; 2 uses
  %i.dh = add i32 %.04659.us.us.us.us.us, %i.m
  %exitcond93.not = icmp eq i32 %i.dg, %i.h
  br i1 %exitcond93.not, label %._crit_edge.split.us.split.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !84

._crit_edge.split.us.split.us.us.us.us:           ; preds = %._crit_edge56.split.us.us.us.us.us.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, %i.bl
end_hunk_20
begin_hunk_21_@int_downsample:bb.a
  %i.di = load i32, ptr %i.p, align 4, !tbaa !52
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next97, %i.dj
  br i1 %i.dk, label %.preheader.lr.ph.us.us.us, label %._crit_edge68, !llvm.loop !85

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us
  %i.dl = sdiv i32 %i.t, %i.s
end_hunk_21
begin_hunk_22_@int_downsample:bb.a
  %i.dq = load i32, ptr %i.p, align 4, !tbaa !52
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next87, %i.dr
  br i1 %i.ds, label %.preheader.lr.ph.us.us, label %._crit_edge68, !llvm.loop !85

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.dt = sdiv i32 %i.t, %i.s
end_hunk_22
begin_hunk_23_@int_downsample:bb.a
  %i.dy = load i32, ptr %i.p, align 4, !tbaa !52
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next, %i.dz
  br i1 %i.ea, label %.preheader.lr.ph.us, label %._crit_edge68, !llvm.loop !85

._crit_edge68:                                    ; preds = %.preheader.lr.ph.us, %.preheader.lr.ph.us.us, %._crit_edge.split.us.split.us.us.us.us, %.lr.ph, %expand_right_edge.exit
  ret void
end_hunk_23
begin_hunk_24_@llvm.assume
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !57}
!69 = distinct !{!69, !57}
!70 = distinct !{!70, !67}
!71 = distinct !{!71, !67}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !67}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !67}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !57}
!80 = distinct !{!80, !67}
!81 = distinct !{!81, !57}
!82 = distinct !{!82, !67}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !57}
!85 = distinct !{!85, !57}
end_hunk_24
