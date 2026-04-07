inline.NumInlined: 5
begin_hunk_0_@opj_stream_read_skip:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.aq = load ptr, ptr %0, align 8, !tbaa !48
  %i.ar = tail call i32 %i.ap(i64 noundef %i.aj, ptr noundef %i.aq) #9, !inline_history !49
  %.not.i = icmp eq i32 %i.ar, 0
  %i.as = load i32, ptr %i.j, align 8, !tbaa !38
  br i1 %.not.i, label %opj_stream_read_seek.exit, label %bb.j
end_hunk_0
begin_hunk_1_@opj_stream_read_skip:bb.a
  %i.be = sub nsw i64 %.16479, %i.aw              ; 2 uses
  %i.bf = add nsw i64 %i.aw, %.180                ; 2 uses
  %i.bg = icmp sgt i64 %i.be, 0
  br i1 %i.bg, label %bb.h, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.m, %bb.g
  %.1.lcssa = phi i64 [ %i.b, %bb.g ], [ %i.bf, %bb.m ] ; 2 uses
end_hunk_1
begin_hunk_2_@opj_stream_write_skip:bb.a
  %i.k = phi i64 [ %i.h, %.lr.ph.i ], [ %i.s, %bb.d ]
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.m = load ptr, ptr %0, align 8, !tbaa !48
  %i.n = tail call i64 %i.l(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.m) #9, !inline_history !51 ; 3 uses
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.d

end_hunk_2
begin_hunk_3_@opj_stream_write_skip:bb.a
  %i.s = sub i64 %i.r, %i.n                       ; 3 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !45
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.c, !llvm.loop !52

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !36
end_hunk_3
begin_hunk_4_@opj_stream_write_skip:bb.a
  %i.am = sub nsw i64 %.02532, %i.ad              ; 2 uses
  %i.an = add nsw i64 %i.ad, %.033                ; 2 uses
  %i.ao = icmp sgt i64 %i.am, 0
  br i1 %i.ao, label %bb.f, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.h, %opj_stream_flush.exit
  %.0.lcssa = phi i64 [ 0, %opj_stream_flush.exit ], [ %i.an, %bb.h ] ; 2 uses
end_hunk_4
begin_hunk_5_@opj_stream_write_seek:bb.a
  %i.h = phi i64 [ %i.e, %.lr.ph.i ], [ %i.p, %bb.c ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.j = load ptr, ptr %0, align 8, !tbaa !48
  %i.k = tail call i64 %i.i(ptr noundef %i.g, i64 noundef %i.h, ptr noundef %i.j) #9, !inline_history !51 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.c

end_hunk_5
begin_hunk_6_@opj_stream_write_seek:bb.a
  %i.p = sub i64 %i.o, %i.k                       ; 3 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !45
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !52

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !36
end_hunk_6
begin_hunk_7_@opj_stream_destroy:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.d, label %bb.c

end_hunk_7
begin_hunk_8_@opj_stream_set_user_data:bb.a
bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_8
begin_hunk_9_@opj_stream_write_data:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.036.lcssa
  store ptr %i.p, ptr %i.n, align 8, !tbaa !37
  %i.q = add i64 %.0.lcssa, %.036.lcssa
  %i.r = load <2 x i64>, ptr %i.e, align 8, !tbaa !55
  %i.s = insertelement <2 x i64> poison, i64 %.036.lcssa, i64 0
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.u = add <2 x i64> %i.r, %i.t
  store <2 x i64> %i.u, ptr %i.e, align 8, !tbaa !55
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %opj_stream_flush.exit
end_hunk_9
begin_hunk_10_@opj_stream_write_data:bb.a
  %i.ak = phi i64 [ %i.av, %bb.e ], [ %i.ah, %bb.d ]
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.am = load ptr, ptr %0, align 8, !tbaa !48
  %i.an = tail call i64 %i.al(ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef %i.am) #9, !inline_history !51 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %opj_stream_flush.exit.thread, label %bb.e

end_hunk_10
begin_hunk_11_@opj_stream_write_data:bb.a
  %i.av = sub i64 %i.au, %i.an                    ; 3 uses
  store i64 %i.av, ptr %i.e, align 8, !tbaa !45
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !52

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !36
end_hunk_11
begin_hunk_12_@opj_stream_flush:bb.a
  %i.t = sub i64 %i.s, %i.k                       ; 3 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !45
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
end_hunk_12
begin_hunk_13_@opj_stream_has_seek:bb.a
!46 = !{!32, !34, i64 96}
!47 = !{!32, !34, i64 16}
!48 = !{!32, !33, i64 0}
!49 = !{ptr @opj_stream_read_seek}
!50 = distinct !{!50, !14}
!51 = !{ptr @opj_stream_flush}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = !{!32, !33, i64 8}
!55 = !{!34, !34, i64 0}
end_hunk_13
