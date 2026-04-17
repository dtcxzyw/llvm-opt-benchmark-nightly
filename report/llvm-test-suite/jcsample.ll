inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@fullsize_smooth_downsample:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56
  %i.c = shl i32 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 -8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 3 uses
end_hunk_0
begin_hunk_1_@fullsize_smooth_downsample:bb.a
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 9
  %i.av = sub nsw i64 65536, %i.au                ; 3 uses
  %i.aw = shl nsw i32 %i.as, 6
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !47
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %expand_right_edge.exit
  %i.bb = add i32 %i.c, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !60
  %i.bm = zext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !60
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bp, %i.bm
  %i.br = load i8, ptr %i.bf, align 1, !tbaa !60  ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bv = zext i8 %i.br to i64                    ; 2 uses
  %i.bw = load i8, ptr %i.bk, align 1, !tbaa !60
  %i.bx = zext i8 %i.bw to i32
end_hunk_1
begin_hunk_2_@fullsize_smooth_downsample:bb.a
  %i.ca = add nuw nsw i32 %i.bz, %i.bx
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !60
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw nsw i32 %i.bt, 1
  %factor = zext nneg i32 %i.cf to i64
end_hunk_2
begin_hunk_3_@fullsize_smooth_downsample:bb.a
  %i.cm = lshr i64 %i.cl, 16
  %i.cn = trunc i64 %i.cm to i8
  store i8 %i.cn, ptr %i.bd, align 1, !tbaa !60
  %.07178 = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %bb.b, %scalar.ph
  %.07185 = phi ptr [ %.07178, %bb.b ], [ %.071, %scalar.ph ] ; 2 uses
  %.084 = phi i32 [ %i.bt, %bb.b ], [ %.06883, %scalar.ph ]
  %.06883 = phi i32 [ %i.cd, %bb.b ], [ %i.da, %scalar.ph ] ; 2 uses
  %.07082 = phi i32 [ %i.bb, %bb.b ], [ %i.dn, %scalar.ph ]
  %.07281 = phi ptr [ %i.bn, %bb.b ], [ %i.cs, %scalar.ph ]
  %.07380 = phi ptr [ %i.bk, %bb.b ], [ %i.cr, %scalar.ph ]
  %.07479 = phi ptr [ %i.bu, %bb.b ], [ %i.co, %scalar.ph ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.07479, i64 1 ; 3 uses
  %i.cp = load i8, ptr %.07479, align 1, !tbaa !60
  %i.cq = zext i8 %i.cp to i64                    ; 2 uses
end_hunk_3
begin_hunk_4_@fullsize_smooth_downsample:bb.a
  %i.dn = add i32 %.07082, -1                     ; 2 uses
  %.071 = getelementptr inbounds nuw i8, ptr %.07185, i64 1 ; 2 uses
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %.loopexit, label %scalar.ph, !llvm.loop !64

.loopexit:                                        ; preds = %scalar.ph
  %4 = load i8, ptr %i.co, align 1, !tbaa !60
  %i.do = zext i8 %4 to i64                       ; 2 uses
  %5 = shl nuw nsw i32 %i.da, 1
  %factor77 = zext nneg i32 %5 to i64
  %6 = add nuw nsw i64 %factor77, %i.dc
  %i.dp = sub nsw i64 %6, %i.do
  %i.dq = mul nsw i64 %i.av, %i.do
  %i.dr = mul i64 %i.dp, %i.ax
  %i.ds = add nsw i64 %i.dq, 32768
  %i.dt = add i64 %i.ds, %i.dr
end_hunk_4
begin_hunk_5_@fullsize_smooth_downsample:bb.a
  %i.dw = load i32, ptr %i.ay, align 4, !tbaa !47
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %bb.b, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.loopexit, %expand_right_edge.exit
  ret void
end_hunk_5
begin_hunk_6_@fullsize_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !66

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  ret void
end_hunk_6
begin_hunk_7_@h2v1_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !67

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
end_hunk_7
begin_hunk_8_@h2v1_downsample:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %.02125.us, i64 4
  %i.bs = add nuw i32 %.02324.us, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bs, %i.c
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !68

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i32, ptr %i.aq, align 4, !tbaa !47
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph.us, label %._crit_edge30, !llvm.loop !69

._crit_edge30:                                    ; preds = %._crit_edge.us, %expand_right_edge.exit
  ret void
end_hunk_8
begin_hunk_9_@h2v2_smooth_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !70

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
end_hunk_9
begin_hunk_10_@h2v2_smooth_downsample:bb.a
  %i.gd = add i32 %.0112114, -1                   ; 2 uses
  %.0107 = getelementptr inbounds nuw i8, ptr %.0107119, i64 1 ; 2 uses
  %.not = icmp eq i32 %i.gd, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !71

bb.d:                                             ; preds = %bb.c
  %i.ge = getelementptr inbounds nuw i8, ptr %.0111115, i64 1
end_hunk_10
begin_hunk_11_@h2v2_smooth_downsample:bb.a
  %i.ih = load i32, ptr %i.ay, align 4, !tbaa !47
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next126, %i.ii
  br i1 %i.ij, label %bb.b, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.d, %expand_right_edge.exit
  ret void
end_hunk_11
begin_hunk_12_@h2v2_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.us.i.epil, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
end_hunk_12
begin_hunk_13_@h2v2_downsample:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.02734.us, i64 4
  %i.cl = add nuw i32 %.03032.us, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cl, %i.c
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !74

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
end_hunk_13
begin_hunk_14_@h2v2_downsample:bb.a
  %i.cm = load i32, ptr %i.aq, align 4, !tbaa !47
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next43, %i.cn
  br i1 %i.co, label %.lr.ph.us, label %._crit_edge40, !llvm.loop !75

._crit_edge40:                                    ; preds = %._crit_edge.us, %expand_right_edge.exit
  ret void
end_hunk_14
begin_hunk_15_@int_downsample:bb.a
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit.loopexit, label %.lr.ph.us.i.epil, !llvm.loop !76

expand_right_edge.exit.loopexit:                  ; preds = %.lr.ph.us.i.epil, %expand_right_edge.exit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.k, align 4, !tbaa !47
end_hunk_15
begin_hunk_16_@int_downsample:bb.a
  %i.cs = add nsw i64 %i.co, %i.cr                ; 3 uses
  %niter120.next.7 = add i32 %niter120, 8         ; 2 uses
  %niter120.ncmp.7 = icmp eq i32 %niter120.next.7, %unroll_iter119
  br i1 %niter120.ncmp.7, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.new, !llvm.loop !77

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.us.us.us.new
  br i1 %lcmp.mod116.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader
end_hunk_16
begin_hunk_17_@int_downsample:bb.a
  %i.cw = add nsw i64 %.150.us.us.us.us.us.us.epil, %i.cv ; 2 uses
  %epil.iter115.next = add i32 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i32 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %._crit_edge.us.us.us.us.us.us, label %bb.b, !llvm.loop !78

._crit_edge.us.us.us.us.us.us:                    ; preds = %bb.b, %._crit_edge.us.us.us.us.us.us.unr-lcssa
  %.lcssa = phi i64 [ %i.cs, %._crit_edge.us.us.us.us.us.us.unr-lcssa ], [ %i.cw, %bb.b ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, %i.bg
  br i1 %exitcond89.not, label %._crit_edge54.split.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !79

._crit_edge54.split.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us
  %i.cx = add nsw i64 %.lcssa, %i.bd
end_hunk_17
begin_hunk_18_@int_downsample:bb.a
  %i.db = add nuw i32 %.04456.us.us.us.us.us, 1   ; 2 uses
  %i.dc = add i32 %.04357.us.us.us.us.us, %i.h
  %exitcond90.not = icmp eq i32 %i.db, %i.c
  br i1 %exitcond90.not, label %._crit_edge.split.us.split.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !80

._crit_edge.split.us.split.us.us.us.us:           ; preds = %._crit_edge54.split.us.us.us.us.us.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.bg
end_hunk_18
begin_hunk_19_@int_downsample:bb.a
  %i.dd = load i32, ptr %i.k, align 4, !tbaa !47
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next94, %i.de
  br i1 %i.df, label %.preheader.lr.ph.us.us.us, label %._crit_edge66, !llvm.loop !81

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us
  %i.dg = sdiv i32 %i.o, %i.n
end_hunk_19
begin_hunk_20_@int_downsample:bb.a
  %i.dl = load i32, ptr %i.k, align 4, !tbaa !47
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next84, %i.dm
  br i1 %i.dn, label %.preheader.lr.ph.us.us, label %._crit_edge66, !llvm.loop !81

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.do = sdiv i32 %i.o, %i.n
end_hunk_20
begin_hunk_21_@int_downsample:bb.a
  %i.dt = load i32, ptr %i.k, align 4, !tbaa !47
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next, %i.du
  br i1 %i.dv, label %.preheader.lr.ph.us, label %._crit_edge66, !llvm.loop !81

._crit_edge66:                                    ; preds = %.preheader.lr.ph.us, %.preheader.lr.ph.us.us, %._crit_edge.split.us.split.us.us.us.us, %.lr.ph, %expand_right_edge.exit
  ret void
end_hunk_21
begin_hunk_22_@llvm.assume
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !63}
!68 = distinct !{!68, !52}
!69 = distinct !{!69, !52}
!70 = distinct !{!70, !63}
!71 = distinct !{!71, !52}
!72 = distinct !{!72, !52}
!73 = distinct !{!73, !63}
!74 = distinct !{!74, !52}
!75 = distinct !{!75, !52}
!76 = distinct !{!76, !63}
!77 = distinct !{!77, !52}
!78 = distinct !{!78, !63}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52}
!81 = distinct !{!81, !52}
end_hunk_22
