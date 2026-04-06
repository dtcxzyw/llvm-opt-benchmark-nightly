begin_hunk_0_@decode_mcu:bb.a
  store i32 0, ptr %i.h, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0) #6
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %process_restart.exit, label %.preheader.i

end_hunk_0
begin_hunk_1_@decode_mcu:bb.a
  %i.x = load i32, ptr %i.s, align 8, !tbaa !94
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !106
end_hunk_1
begin_hunk_2_@decode_mcu:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre86, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !103 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre86, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !113
  %i.az = icmp sgt i32 %i.ak, 0
  br i1 %i.az, label %.lr.ph848.i, label %decode_mcu_fast.exit

end_hunk_2
begin_hunk_3_@decode_mcu:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv876.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !114
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_3
begin_hunk_4_@decode_mcu:bb.a
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i28
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !46
  %i.fc = icmp slt i64 %i.fb, %i.ez
  br i1 %i.fc, label %.lr.ph.i26, label %._crit_edge.loopexit.i, !llvm.loop !116

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i26
  %i.fd = trunc nuw i64 %indvars.iv.next.i28 to i32
end_hunk_4
begin_hunk_5_@decode_mcu:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.iw = trunc i32 %i.iv to i16
  store i16 %i.iw, ptr %i.bi, align 2, !tbaa !117
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.thread.i
end_hunk_5
begin_hunk_6_@decode_mcu:bb.a
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next874.i
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !46
  %i.mw = icmp slt i64 %i.mv, %i.mt
  br i1 %i.mw, label %.lr.ph833.i, label %._crit_edge834.loopexit.i, !llvm.loop !118

._crit_edge834.loopexit.i:                        ; preds = %.lr.ph833.i
  %i.mx = trunc nuw i64 %indvars.iv.next874.i to i32
end_hunk_6
begin_hunk_7_@decode_mcu:bb.a
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.qm
  store i16 %i.qi, ptr %i.qn, align 2, !tbaa !117
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cb
end_hunk_7
begin_hunk_8_@decode_mcu:bb.a
  %.31.i = phi i64 [ %.30.i, %bb.cv ], [ %.23.i, %bb.cx ] ; 2 uses
  %i.qq = add nsw i32 %.1678.i, 1
  %i.qr = icmp slt i32 %.1678.i, 63
  br i1 %i.qr, label %bb.bf, label %.thread790.i, !llvm.loop !119

bb.cz:                                            ; preds = %bb.er, %.preheader802.i
  %i.qs = phi i32 [ %i.in, %.preheader802.i ], [ %i.xi, %bb.er ] ; 3 uses
end_hunk_8
begin_hunk_9_@decode_mcu:bb.a
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next871.i
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !46
  %i.uh = icmp slt i64 %i.ug, %i.ue
  br i1 %i.uh, label %.lr.ph819.i, label %._crit_edge820.loopexit.i, !llvm.loop !120

._crit_edge820.loopexit.i:                        ; preds = %.lr.ph819.i
  %i.ui = trunc nuw i64 %indvars.iv.next871.i to i32
end_hunk_9
begin_hunk_10_@decode_mcu:bb.a
  %.3680.i = add nsw i32 %.2679825.i, 1
  %i.xj = add nsw i32 %.3680.i, %i.uv             ; 2 uses
  %i.xk = icmp slt i32 %i.xj, 64
  br i1 %i.xk, label %bb.cz, label %.thread790.i, !llvm.loop !121

.thread790.i:                                     ; preds = %bb.er, %bb.eq, %._crit_edge820.i, %bb.cy, %bb.cw, %._crit_edge834.i
  %i.xl = phi i32 [ %i.lr, %bb.cw ], [ %i.qp, %bb.cy ], [ %i.lr, %._crit_edge834.i ], [ %i.xi, %bb.er ], [ %i.tc, %._crit_edge820.i ], [ %i.tc, %bb.eq ] ; 2 uses
end_hunk_10
begin_hunk_11_@decode_mcu:bb.a
  %.48.i = phi i64 [ %.23.i, %bb.cw ], [ %.31.i, %bb.cy ], [ %.23.i, %._crit_edge834.i ], [ %.47.i, %bb.er ], [ %.39.i, %._crit_edge820.i ], [ %.39.i, %bb.eq ] ; 2 uses
  %indvars.iv.next877.i = add nuw nsw i64 %indvars.iv876.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next877.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge849.i, label %bb.j, !llvm.loop !122

._crit_edge849.i:                                 ; preds = %.thread790.i
  %i.xm = icmp eq i32 %i.xl, 0
end_hunk_11
begin_hunk_12_@decode_mcu:bb.a
  store i64 %i.xp, ptr %i.ah, align 8, !tbaa !75
  store i64 %.0600.lcssa.i125, ptr %i.au, align 8, !tbaa !104
  store i32 %.0601.lcssa.i124, ptr %i.aw, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.gn

end_hunk_12
begin_hunk_13_@decode_mcu:bb.a
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xr, i64 48 ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !103 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xr, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.xy, i64 16, i1 false), !tbaa.struct !113
  %i.xz = icmp sgt i32 %i.ak, 0
  br i1 %i.xz, label %.lr.ph.i31, label %decode_mcu_slow.exit

end_hunk_13
begin_hunk_14_@decode_mcu:bb.a

bb.et:                                            ; preds = %bb.es
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i33
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !114
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
end_hunk_14
begin_hunk_15_@decode_mcu:bb.a

bb.fi:                                            ; preds = %bb.fh
  %i.aaf = trunc i32 %i.aae to i16
  store i16 %i.aaf, ptr %i.yj, align 2, !tbaa !117
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fg
end_hunk_15
begin_hunk_16_@decode_mcu:bb.a
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !3
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [2 x i8], ptr %i.yj, i64 %i.acb
  store i16 %i.abx, ptr %i.acc, align 2, !tbaa !117
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fr
end_hunk_16
begin_hunk_17_@decode_mcu:bb.a
  %.13.i = phi i64 [ %.12.i45, %bb.fv ], [ %.11.ph.i, %bb.fx ] ; 2 uses
  %i.ace = add nsw i32 %.1190.i, 1
  %i.acf = icmp slt i32 %.1190.i, 63
  br i1 %i.acf, label %bb.fk, label %.loopexit.i, !llvm.loop !123

bb.fz:                                            ; preds = %bb.gm, %.preheader279.i
  %.14293.i = phi i64 [ %.6156.i, %.preheader279.i ], [ %.20.i40, %bb.gm ] ; 2 uses
end_hunk_17
begin_hunk_18_@decode_mcu:bb.a
  %.3192.i = add nsw i32 %.2191291.i, 1
  %i.adg = add nsw i32 %.3192.i, %i.acz           ; 2 uses
  %i.adh = icmp slt i32 %i.adg, 64
  br i1 %i.adh, label %bb.fz, label %.loopexit.i, !llvm.loop !124

.loopexit.i:                                      ; preds = %bb.gm, %bb.gl, %bb.fy, %bb.fw
  %.22182.i = phi i32 [ %.11171.ph.i, %bb.fw ], [ %.13173.i, %bb.fy ], [ %.18178.ph.i, %bb.gl ], [ %.20180.i, %bb.gm ] ; 2 uses
end_hunk_18
begin_hunk_19_@decode_mcu:bb.a
  %i.adi = load i32, ptr %i.aj, align 8, !tbaa !95
  %i.adj = sext i32 %i.adi to i64
  %i.adk = icmp slt i64 %indvars.iv.next.i41, %i.adj
  br i1 %i.adk, label %bb.es, label %._crit_edge.loopexit.i42, !llvm.loop !125

._crit_edge.loopexit.i42:                         ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !65
end_hunk_19
begin_hunk_20_@decode_mcu:bb.a
  store i64 %i.adl, ptr %i.ado, align 8, !tbaa !75
  store i64 %.0150.lcssa.i, ptr %i.xu, align 8, !tbaa !104
  store i32 %.0160.lcssa.i, ptr %i.xw, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xy, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.gn
end_hunk_20
begin_hunk_21_@add_huff_table:bb.a
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !126   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 9, ptr %i.af, align 8, !tbaa !32
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !36
end_hunk_21
begin_hunk_22_@add_huff_table:bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.ao, i1 false)
  %i.ap = load ptr, ptr %1, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 276
  store i32 0, ptr %i.aq, align 4, !tbaa !127
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
end_hunk_22
begin_hunk_23_@llvm.vector.reduce.add.v8i32
!109 = !{!110, !4, i64 36}
!110 = !{!"jpeg_marker_reader", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36}
!111 = !{!110, !10, i64 16}
!112 = distinct !{!112, !44}
!113 = !{i64 0, i64 16, !35}
!114 = !{!115, !115, i64 0}
!115 = !{!"p1 short", !10, i64 0}
!116 = distinct !{!116, !44}
!117 = !{!18, !18, i64 0}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !44}
end_hunk_23
begin_hunk_24_@llvm.vector.reduce.add.v8i32
!123 = distinct !{!123, !44}
!124 = distinct !{!124, !44}
!125 = distinct !{!125, !44}
!126 = !{!84, !9, i64 0}
!127 = !{!128, !4, i64 276}
!128 = !{!"", !5, i64 0, !5, i64 17, !4, i64 276}
end_hunk_24
