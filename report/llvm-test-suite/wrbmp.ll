inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@put_gray_rows:bb.a
  %i.j = load i32, ptr %i.g, align 4, !tbaa !57
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.g, align 4, !tbaa !57
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !73   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49   ; 7 uses
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader.a

end_hunk_0
begin_hunk_1_@put_gray_rows:bb.a
  %i.o = ptrtoaddr ptr %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 6 uses
  %i.s = zext i32 %i.n to i64                     ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = sub i64 %i.o, %i.t
  %diff.check = icmp ult i64 %i.u, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader34, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph.preheader.a
  %min.iters.check29 = icmp ult i32 %i.n, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 28
  %n.vec = and i64 %i.s, 4294967264               ; 6 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.v = sub i32 %i.n, %.cast
  %i.w = getelementptr i8, ptr %i.l, i64 %n.vec   ; 2 uses
end_hunk_1
begin_hunk_2_@put_gray_rows:bb.a
  store <16 x i8> %wide.load30, ptr %i.z, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader34, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.s, 4294967292             ; 5 uses
  %.cast36 = trunc nuw i64 %n.vec35 to i32
  %3 = sub i32 %i.n, %.cast36
  %4 = getelementptr i8, ptr %i.l, i64 %n.vec35   ; 2 uses
  %5 = getelementptr i8, ptr %i.r, i64 %n.vec35
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %next.gep38 = getelementptr i8, ptr %i.l, i64 %index37
  %next.gep39 = getelementptr i8, ptr %i.r, i64 %index37
  %wide.load40 = load <4 x i8>, ptr %next.gep39, align 1, !tbaa !66
  store <4 x i8> %wide.load40, ptr %next.gep38, align 1, !tbaa !66
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %6 = icmp eq i64 %index.next41, %n.vec35
  br i1 %6, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !85

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %n.vec35, %i.s
  br i1 %cmp.n.a, label %._crit_edge, label %.lr.ph.preheader34

.lr.ph.preheader34:                               ; preds = %.lr.ph.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.01522.ph = phi i32 [ %i.n, %.lr.ph.preheader.a ], [ %i.v, %vec.epilog.iter.check ], [ %3, %middle.block.a ] ; 4 uses
  %.01621.ph = phi ptr [ %i.l, %.lr.ph.preheader.a ], [ %i.w, %vec.epilog.iter.check ], [ %4, %middle.block.a ] ; 2 uses
  %.01720.ph = phi ptr [ %i.r, %.lr.ph.preheader.a ], [ %i.x, %vec.epilog.iter.check ], [ %5, %middle.block.a ] ; 2 uses
  %i.ab = add i32 %.01522.ph, -1
  %xtraiter = and i32 %.01522.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_2
begin_hunk_3_@put_gray_rows:bb.a
  %i.af = add i32 %.01522.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !86

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader34
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader34 ], [ %i.ae, %.lr.ph.prol ]
end_hunk_3
begin_hunk_4_@put_gray_rows:bb.a
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !66
  %i.bf = add i32 %.01522, -8                     ; 2 uses
  %.not.7 = icmp eq i32 %i.bf, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %middle.block.a, %bb.a
  %.016.lcssa = phi ptr [ %i.l, %bb.a ], [ %4, %middle.block.a ], [ %i.w, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.be, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !53 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
end_hunk_4
begin_hunk_5_@put_pixel_rows:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %.02126, i64 6 ; 2 uses
  %i.au = add i32 %.02027, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.au, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.021.lcssa = phi ptr [ %i.l, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.at, %.lr.ph ]
end_hunk_5
begin_hunk_6_@write_colormap
define internal fastcc void @write_colormap(ptr noundef %0, ptr captures(none) %.24.val, i32 noundef range(i32 1, 257) %1, i32 noundef range(i32 3, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !91   ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %bb.b

end_hunk_6
begin_hunk_7_@write_colormap:bb.a
  %i.i = tail call i32 @putc(i32 noundef 0, ptr noundef %.24.val) ; 0 uses
  %i.j = add nuw nsw i32 %.210.us, 1              ; 2 uses
  %exitcond42.not = icmp eq i32 %i.j, 256
  br i1 %exitcond42.not, label %.loopexit, label %.preheader.split.us, !llvm.loop !92

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i32, ptr %i.k, align 8, !tbaa !93
  %i.m = icmp eq i32 %i.l, 3
  %i.n = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %i.m, label %.preheader1, label %.preheader3
end_hunk_7
begin_hunk_8_@write_colormap:bb.a
  %i.ae = tail call i32 @putc(i32 noundef 0, ptr noundef %.24.val) ; 0 uses
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !94

.preheader1:                                      ; preds = %bb.b
  br i1 %i.n, label %.lr.ph7, label %.lr.ph13
end_hunk_8
begin_hunk_9_@write_colormap:bb.a
  %i.ax = tail call i32 @putc(i32 noundef 0, ptr noundef %.24.val) ; 0 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %.loopexit, label %.lr.ph7.split.us, !llvm.loop !95

.lr.ph7.split:                                    ; preds = %.lr.ph7, %.lr.ph7.split
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph7.split ], [ 0, %.lr.ph7 ] ; 4 uses
end_hunk_9
begin_hunk_10_@write_colormap:bb.a
  %i.bm = tail call i32 @putc(i32 noundef %i.bl, ptr noundef %.24.val) ; 0 uses
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count39
  br i1 %exitcond35.not, label %.loopexit, label %.lr.ph7.split, !llvm.loop !95

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
end_hunk_10
begin_hunk_11_@write_colormap:bb.a
  %i.cb = tail call i32 @putc(i32 noundef %i.ca, ptr noundef %.24.val) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count29
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !94

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %.210 = phi i32 [ %i.cf, %.preheader.split ], [ 0, %.preheader ] ; 4 uses
end_hunk_11
begin_hunk_12_@write_colormap:bb.a
  %i.ce = tail call i32 @putc(i32 noundef %.210, ptr noundef %.24.val) ; 0 uses
  %i.cf = add nuw nsw i32 %.210, 1                ; 2 uses
  %exitcond41.not = icmp eq i32 %i.cf, 256
  br i1 %exitcond41.not, label %.loopexit, label %.preheader.split, !llvm.loop !92

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph7.split, %.lr.ph7.split.us, %.preheader.split, %.preheader.split.us
  %.3 = phi i32 [ 256, %.preheader.split.us ], [ %i.d, %.lr.ph7.split ], [ %i.d, %.lr.ph7.split.us ], [ 256, %.preheader.split ], [ %i.d, %.lr.ph.split.us ], [ %i.d, %.lr.ph.split ] ; 4 uses
end_hunk_12
begin_hunk_13_@write_colormap:bb.a
  %i.cr = tail call i32 @putc(i32 noundef 0, ptr noundef %.24.val) ; 0 uses
  %i.cs = add i32 %.412.us, 1                     ; 2 uses
  %exitcond44.not = icmp eq i32 %i.cs, %1
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph13.split.us, !llvm.loop !96

.lr.ph13.split:                                   ; preds = %.lr.ph13, %.lr.ph13.split
  %.412 = phi i32 [ %i.cw, %.lr.ph13.split ], [ %.34850, %.lr.ph13 ]
end_hunk_13
begin_hunk_14_@write_colormap:bb.a
  %i.cv = tail call i32 @putc(i32 noundef 0, ptr noundef %.24.val) ; 0 uses
  %i.cw = add i32 %.412, 1                        ; 2 uses
  %exitcond43.not = icmp eq i32 %i.cw, %1
  br i1 %exitcond43.not, label %._crit_edge, label %.lr.ph13.split, !llvm.loop !96

._crit_edge:                                      ; preds = %.lr.ph13.split, %.lr.ph13.split.us, %bb.d
  ret void
end_hunk_14
begin_hunk_15_@write_colormap:bb.a
!81 = distinct !{!81, !75, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!"branch_weights", i32 4, i32 28}
!85 = distinct !{!85, !75, !82, !83}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !75, !82}
!89 = distinct !{!89, !75}
!90 = !{!9, !16, i64 152}
!91 = !{!9, !5, i64 148}
!92 = distinct !{!92, !75}
!93 = !{!9, !5, i64 136}
!94 = distinct !{!94, !75}
!95 = distinct !{!95, !75}
!96 = distinct !{!96, !75}
end_hunk_15
