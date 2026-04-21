inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_charset_load:bb.a
  %.not99117 = icmp ugt i32 %1, 1
  br i1 %.not99117, label %.lr.ph119, label %.loopexit113

.loopexit.loopexit:                               ; preds = %scalar.ph, %middle.block.a
  %indvars.iv.next.lcssa = phi i64 [ %i.av, %middle.block.a ], [ %indvars.iv.next, %scalar.ph ]
  %i.y = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

end_hunk_0
begin_hunk_1_@cff_charset_load:bb.a

.lr.ph119:                                        ; preds = %bb.g, %.loopexit
  %.182118 = phi i32 [ %.2.lcssa, %.loopexit ], [ 1, %bb.g ] ; 3 uses
  %i.z = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #21 ; 5 uses
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !3
  %.not96 = icmp eq i32 %i.aa, 0
  br i1 %.not96, label %bb.h, label %thread-pre-split
end_hunk_1
begin_hunk_2_@cff_charset_load:bb.a
  br i1 %i.ao, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !64  ; 2 uses
  %i.aq = zext i32 %.182118 to i64                ; 4 uses
  %i.ar = zext i32 %.180.fr to i64
  %i.as = xor i64 %i.aq, -1
  %i.at = add nsw i64 %i.as, %i.l
  %umin = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.at) ; 2 uses
  %i.au = add nuw nsw i64 %umin, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.au, 8589934576              ; 5 uses
  %i.av = add nuw nsw i64 %n.vec, %i.aq           ; 2 uses
  %i.aw = trunc i64 %n.vec to i32
  %.cast = trunc i64 %n.vec to i16
  %i.ax = add i16 %i.z, %.cast
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
end_hunk_2
begin_hunk_3_@cff_charset_load:bb.a
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block.a, label %vector.body, !llvm.loop !617

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n.a, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block.a
  %indvars.iv.ph.a = phi i64 [ %i.aq, %.lr.ph ], [ %i.av, %middle.block.a ]
  %.078116.ph = phi i32 [ 0, %.lr.ph ], [ %i.aw, %middle.block.a ]
  %.083114.ph = phi i16 [ %i.z, %.lr.ph ], [ %i.ax, %middle.block.a ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph.a, %scalar.ph.preheader ] ; 2 uses
  %.078116 = phi i32 [ %i.bb, %scalar.ph ], [ %.078116.ph, %scalar.ph.preheader ] ; 2 uses
  %.083114 = phi i16 [ %i.bc, %scalar.ph ], [ %.083114.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv
  store i16 %.083114, ptr %i.ba, align 2, !tbaa !60
  %i.bb = add nuw nsw i32 %.078116, 1
end_hunk_3
begin_hunk_4_@cff_charset_load:bb.a
  %i.bd = icmp samesign ult i64 %indvars.iv.next, %i.l
  %i.be = icmp samesign ult i32 %.078116, %.180.fr
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %scalar.ph, label %.loopexit.loopexit, !llvm.loop !618

bb.l:                                             ; preds = %bb.e
  store i32 3, ptr %i.b, align 4, !tbaa !3
end_hunk_4
begin_hunk_5_@cff_charset_load:bb.a
  %i.ch = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load140, <8 x i16> %vec.phi139) ; 2 uses
  %index.next141.a = add nuw i64 %index138, 16    ; 2 uses
  %i.ci = icmp eq i64 %index.next141.a, %n.vec136
  br i1 %i.ci, label %middle.block142, label %vector.body137, !llvm.loop !619

middle.block142:                                  ; preds = %vector.body137
  %rdx.minmax = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.cg, <8 x i16> %i.ch)
end_hunk_5
begin_hunk_6_@cff_charset_load:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block142
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf135, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.a, label %vec.epilog.ph, !prof !620

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_6
begin_hunk_7_@cff_charset_load:bb.a
  %i.cl = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load150, <4 x i16> %vec.phi149) ; 2 uses
  %index.next151 = add nuw i64 %index148, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next151, %n.vec145
  br i1 %i.cm, label %vec.epilog.middle.block.a, label %vec.epilog.vector.body.a, !llvm.loop !621

vec.epilog.middle.block.a:                        ; preds = %vec.epilog.vector.body.a
  %i.cn = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.cl) ; 2 uses
end_hunk_7
begin_hunk_8_@cff_charset_load:bb.a
  %spec.select.i = call i16 @llvm.umax.i16(i16 %i.cp, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !622

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block.a, %middle.block142
  %spec.select.i.lcssa = phi i16 [ %i.cn, %vec.epilog.middle.block.a ], [ %i.cj, %middle.block142 ], [ %spec.select.i, %vec.epilog.scalar.ph ] ; 2 uses
end_hunk_8
begin_hunk_9_@cff_charset_load:bb.a
  store i16 %i.cw, ptr %i.db, align 2, !tbaa !60
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.dc = icmp ult i32 %.124.i, %1
  br i1 %i.dc, label %bb.y, label %._crit_edge33.i, !llvm.loop !623

._crit_edge33.i:                                  ; preds = %bb.y
  %i.dd = zext i16 %spec.select.i.lcssa to i32
  store i32 %i.dd, ptr %i.ca, align 8, !tbaa !196
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.de, align 4, !tbaa !624
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.x, %._crit_edge.i, %._crit_edge33.i
end_hunk_9
begin_hunk_10_@cff_encoding_load:bb.a
  %indvars.iv.next192.1 = add nuw nsw i64 %indvars.iv191, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph171, !llvm.loop !625

.thread.loopexit.unr-lcssa:                       ; preds = %bb.k
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
end_hunk_10
begin_hunk_11_@cff_encoding_load:bb.a
  %indvars.iv.next187.1 = add nuw nsw i64 %indvars.iv186, 2 ; 2 uses
  %i.cx = add i32 %.0118160, 2
  %exitcond189.not.1 = icmp eq i64 %indvars.iv.next187.1, %wide.trip.count
  br i1 %exitcond189.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !626

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.u, %bb.q
  %i.cy = add nuw nsw i32 %.1120162, 1            ; 2 uses
  %exitcond190.not = icmp eq i32 %i.cy, %i.o
  br i1 %exitcond190.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !627

._crit_edge166:                                   ; preds = %._crit_edge
  %i.cz = icmp ugt i32 %i.bo, 256
end_hunk_11
begin_hunk_12_@cff_encoding_load:bb.a
bb.ac:                                            ; preds = %bb.aa
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit, label %bb.aa, !llvm.loop !628

.loopexit:                                        ; preds = %bb.ac, %bb.z, %bb.ab
  %i.ds = add nuw nsw i32 %.2121175, 1            ; 2 uses
  %exitcond201.not = icmp eq i32 %i.ds, %i.dd
  br i1 %exitcond201.not, label %.loopexit154, label %bb.x, !llvm.loop !629

bb.ad:                                            ; preds = %bb.b
  %trunc = trunc nuw i64 %5 to i1
end_hunk_12
begin_hunk_13_@cff_encoding_load:bb.a
  %i.ee = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load232, <8 x i16> %vec.phi231) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !630

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ed, <8 x i16> %i.ee)
end_hunk_13
begin_hunk_14_@cff_encoding_load:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !620

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_14
begin_hunk_15_@cff_encoding_load:bb.a
  %i.ei = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load237, <4 x i16> %vec.phi236) ; 2 uses
  %index.next238 = add nuw i64 %index235, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next238, %n.vec234
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !631

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ek = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ei) ; 2 uses
end_hunk_15
begin_hunk_16_@cff_encoding_load:bb.a
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.em, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !632

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader27.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader27.i ], [ %i.ek, %vec.epilog.middle.block ], [ %i.eg, %middle.block ], [ %spec.select.i, %vec.epilog.scalar.ph ] ; 2 uses
end_hunk_16
begin_hunk_17_@cff_encoding_load:bb.a
  store i16 %i.et, ptr %i.ey, align 2, !tbaa !60
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.ez = icmp ult i32 %.124.i, %2
  br i1 %i.ez, label %bb.ah, label %._crit_edge33.i, !llvm.loop !623

._crit_edge33.i:                                  ; preds = %bb.ah, %.preheader.i
  %i.fa = zext i16 %.0.lcssa.i to i32             ; 2 uses
  store i32 %i.fa, ptr %i.dy, align 8, !tbaa !196
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %2, ptr %i.fb, align 4, !tbaa !624
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.ag, %._crit_edge33.i
end_hunk_17
begin_hunk_18_@cff_encoding_load:bb.a
bb.ak:                                            ; preds = %cff_charset_cid_to_gindex.exit.thread, %bb.aj
  %indvars.iv.next.pre-phi = phi i64 [ %.pre202, %cff_charset_cid_to_gindex.exit.thread ], [ %i.fo, %bb.aj ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 256
  br i1 %exitcond.not, label %.loopexit154, label %bb.ai, !llvm.loop !633

.loopexit154:                                     ; preds = %bb.ak, %.lr.ph165, %bb.n, %.loopexit, %bb.y, %bb.x, %bb.f, %bb.a, %.thread149..loopexit154_crit_edge, %cff_charset_compute_cids.exit.thread, %bb.g, %bb.w, %bb.c, %bb.d, %bb.e
  %i.fr = phi i32 [ %.pre, %.thread149..loopexit154_crit_edge ], [ 3, %bb.f ], [ 0, %.loopexit ], [ %i.bi, %.lr.ph165 ], [ %i.er, %cff_charset_compute_cids.exit.thread ], [ %i.v, %bb.g ], [ %i.de, %bb.w ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 3, %bb.a ], [ %i.dj, %bb.y ], [ %i.dh, %bb.x ], [ %i.bk, %bb.n ], [ 0, %bb.ak ]
end_hunk_18
begin_hunk_19_@cff_vstore_done:bb.a
  %i.j = load i32, ptr %i.c, align 4, !tbaa !485
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.loopexit25, !llvm.loop !634

.loopexit25:                                      ; preds = %.lr.ph, %.preheader24, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %.preheader24 ], [ %i.h, %.lr.ph ]
end_hunk_19
begin_hunk_20_@cff_vstore_done:bb.a
  %i.x = load i32, ptr %0, align 8, !tbaa !478
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next33, %i.y
  br i1 %i.z, label %.lr.ph28, label %.loopexit, !llvm.loop !635

.loopexit:                                        ; preds = %.lr.ph28, %.preheader, %.loopexit25
  %i.aa = phi ptr [ null, %.loopexit25 ], [ %i.o, %.preheader ], [ %i.u, %.lr.ph28 ]
end_hunk_20
begin_hunk_21_@cff_subfont_done:bb.a

cff_index_done.exit:                              ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !636
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.j) #21
  store ptr null, ptr %i.i, align 8, !tbaa !636
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !637
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.l) #21
  store ptr null, ptr %i.k, align 8, !tbaa !637
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !638
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.n) #21
  store ptr null, ptr %i.m, align 8, !tbaa !638
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !469
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.p) #21
end_hunk_21
begin_hunk_22_@llvm.vector.reduce.umax.v4i16
!615 = distinct !{!615, !62}
!616 = distinct !{!616, !62}
!617 = distinct !{!617, !62, !522, !523}
!618 = distinct !{!618, !62, !523, !522}
!619 = distinct !{!619, !62, !522, !523}
!620 = !{!"branch_weights", i32 4, i32 12}
!621 = distinct !{!621, !62, !522, !523}
!622 = distinct !{!622, !62, !523, !522}
!623 = distinct !{!623, !62}
!624 = !{!65, !4, i64 36}
!625 = distinct !{!625, !62}
!626 = distinct !{!626, !62}
!627 = distinct !{!627, !62}
!628 = distinct !{!628, !62}
!629 = distinct !{!629, !62}
!630 = distinct !{!630, !62, !522, !523}
!631 = distinct !{!631, !62, !522, !523}
!632 = distinct !{!632, !62, !523, !522}
!633 = distinct !{!633, !62}
!634 = distinct !{!634, !62}
!635 = distinct !{!635, !62}
!636 = !{!71, !51, i64 1208}
!637 = !{!71, !34, i64 1080}
!638 = !{!71, !55, i64 1096}
end_hunk_22
