inline.NumInlined: 28
inline.NumDeleted: 15
begin_hunk_0_@opj_t2_encode_packets:bb.a
bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %storemerge = phi i64 [ %i.dp, %bb.ad ], [ %i.dy, %bb.ag ], [ %i.dv, %bb.af ] ; 3 uses
  store i64 %storemerge, ptr %i.dl, align 8, !tbaa !64
  %i.dz = add i64 %storemerge, %i.ct
  %i.ea = add i64 %i.dz, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !66
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !67
  %14 = add i64 %storemerge, %i.ed
  %i.ee = add i64 %14, -1
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !67
  br label %bb.ai

end_hunk_0
begin_hunk_1_@opj_t2_encode_packet:bb.a
  br i1 %i.ep, label %.lr.ph.i, label %opj_int_floorlog2.exit

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.i
  %.06.i = phi i32 [ %i.er, %.lr.ph.i ], [ 0, %bb.ak ]
  %.045.i = phi i32 [ %i.eq, %.lr.ph.i ], [ %i.el, %bb.ak ] ; 2 uses
  %i.eq = lshr i32 %.045.i, 1
  %i.er = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %i.es = icmp samesign ugt i32 %.045.i, 3
  br i1 %i.es, label %.lr.ph.i, label %opj_int_floorlog2.exit, !llvm.loop !106

opj_int_floorlog2.exit:                           ; preds = %.lr.ph.i, %bb.ak
  %.0.lcssa.i = phi i32 [ 0, %bb.ak ], [ %i.er, %.lr.ph.i ]
  %i.et = load i32, ptr %i.eh, align 4, !tbaa !102
  %i.eu = icmp sgt i32 %i.ei, 1
  br i1 %i.eu, label %.lr.ph.i320, label %opj_int_floorlog2.exit323
end_hunk_1
begin_hunk_2_@opj_t2_encode_packet:bb.a
opj_int_floorlog2.exit323:                        ; preds = %opj_int_floorlog2.exit323.loopexit, %opj_int_floorlog2.exit
  %.0.lcssa.i319.neg444 = phi i32 [ 0, %opj_int_floorlog2.exit ], [ %.neg443, %opj_int_floorlog2.exit323.loopexit ]
  %i.ey = sub i32 %.0.lcssa.i, %i.et
  %10 = add i32 %i.ey, %.0.lcssa.i319.neg444
  %i.ez = add i32 %10, 1
  %i.fa = tail call noundef i32 @llvm.smax.i32(i32 %.0265371, i32 %i.ez)
  br label %bb.al

end_hunk_2
begin_hunk_3_@opj_t2_encode_packet:bb.a
bb.am:                                            ; preds = %.lr.ph383
  %i.fv = load i32, ptr %i.de, align 4, !tbaa !90
  %i.fw = load i32, ptr %i.dd, align 8, !tbaa !99
  %i.fx = add i32 %i.fv, %i.fw
  %i.fy = add i32 %i.fx, -1
  %i.fz = icmp eq i32 %.1256382, %i.fy
  br i1 %i.fz, label %bb.an, label %bb.ao

end_hunk_3
begin_hunk_4_@opj_t2_read_packet_header:bb.a
  %i.ey = load i32, ptr %i.el, align 4, !tbaa !94 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.127350, i64 32
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !171
  %7 = sub i32 %i.ey, %.0247
  %.sink = add i32 %7, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.127350, i64 36
  store i32 %.sink, ptr %i.fa, align 4, !tbaa !172
  %i.fb = getelementptr inbounds nuw i8, ptr %.127350, i64 40
end_hunk_4
