begin_hunk_0_@crcspeed64big_init:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc i64 %indvars.iv.i to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !13
  %i.c = call i64 %0(i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #7
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
end_hunk_0
begin_hunk_1_@crcspeed64big_init:bb.a
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, 256
  br i1 %i.at, label %crcspeed64little_init.exit, label %vector.body, !llvm.loop !23

crcspeed64little_init.exit:                       ; preds = %vector.body
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2048
end_hunk_1
begin_hunk_2_@crcspeed64big_init:bb.a
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !tbaa !14
  %index.next25 = add nuw i64 %index22, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next25, 256
  br i1 %i.az, label %crcspeed64little_init.exit.1, label %vector.body21, !llvm.loop !26

crcspeed64little_init.exit.1:                     ; preds = %vector.body21
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4096
end_hunk_2
begin_hunk_3_@crcspeed64big_init:bb.a
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !14
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next32, 256
  br i1 %i.bf, label %crcspeed64little_init.exit.2, label %vector.body28, !llvm.loop !27

crcspeed64little_init.exit.2:                     ; preds = %vector.body28
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 6144
end_hunk_3
begin_hunk_4_@crcspeed64big_init:bb.a
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !14
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next39, 256
  br i1 %i.bl, label %crcspeed64little_init.exit.3, label %vector.body35, !llvm.loop !28

crcspeed64little_init.exit.3:                     ; preds = %vector.body35
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8192
end_hunk_4
begin_hunk_5_@crcspeed64big_init:bb.a
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !tbaa !14
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next46, 256
  br i1 %i.br, label %crcspeed64little_init.exit.4, label %vector.body42, !llvm.loop !29

crcspeed64little_init.exit.4:                     ; preds = %vector.body42
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 10240
end_hunk_5
begin_hunk_6_@crcspeed64big_init:bb.a
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !14
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next53, 256
  br i1 %i.bx, label %crcspeed64little_init.exit.5, label %vector.body49, !llvm.loop !30

crcspeed64little_init.exit.5:                     ; preds = %vector.body49
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12288
end_hunk_6
begin_hunk_7_@crcspeed64big_init:bb.a
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !14
  %index.next60 = add nuw i64 %index57, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next60, 256
  br i1 %i.cd, label %crcspeed64little_init.exit.6, label %vector.body56, !llvm.loop !31

crcspeed64little_init.exit.6:                     ; preds = %vector.body56
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 14336
end_hunk_7
begin_hunk_8_@crcspeed64big_init:bb.a
  store <2 x i64> %i.ci, ptr %i.cg, align 8, !tbaa !14
  %index.next67 = add nuw i64 %index64, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next67, 256
  br i1 %i.cj, label %crcspeed64little_init.exit.7, label %vector.body63, !llvm.loop !32

crcspeed64little_init.exit.7:                     ; preds = %vector.body63
  ret void
end_hunk_8
begin_hunk_9_@crcspeed64little:bb.a
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !14
  %i.if = xor i64 %i.ib, %i.ie                    ; 2 uses
  %.not188 = icmp eq i64 %i.dp, 0
  br i1 %.not188, label %._crit_edge219.loopexit, label %bb.c, !llvm.loop !33

._crit_edge219.loopexit:                          ; preds = %bb.c
  %i.ig = urem i64 %.0172.lcssa, 24
end_hunk_9
begin_hunk_10_@crcspeed64little:bb.a
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !14
  %i.mb = xor i64 %i.lx, %i.ma                    ; 2 uses
  %.not = icmp eq i64 %i.iz, 0
  br i1 %.not, label %._crit_edge204.loopexit, label %bb.f, !llvm.loop !34

._crit_edge204.loopexit:                          ; preds = %bb.f
  %i.mc = and i64 %.0172.lcssa, -16
end_hunk_10
begin_hunk_11_@crcspeed64little:bb.a
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !14
  %i.of = xor i64 %i.ob, %i.oe                    ; 2 uses
  %i.og = icmp ugt i64 %i.mr, 7
  br i1 %i.og, label %bb.h, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.a
  %.5186 = phi ptr [ %2, %bb.a ], [ %.3184, %bb.g ], [ %i.mu, %bb.h ] ; 3 uses
end_hunk_11
begin_hunk_12_@crcspeed64little:bb.a
  %i.pd = xor i64 %i.pb, %i.pc                    ; 2 uses
  %i.pe = add i64 %.6178236, -2                   ; 2 uses
  %.not189.1 = icmp eq i64 %i.pe, 0
  br i1 %.not189.1, label %._crit_edge240, label %.lr.ph239, !llvm.loop !36

._crit_edge240:                                   ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %.loopexit
  %.6.lcssa = phi i64 [ %.5, %.loopexit ], [ %.lcssa.unr, %.lr.ph239.prol.loopexit ], [ %i.pd, %.lr.ph239 ]
end_hunk_12
begin_hunk_13_@crcspeed16little:bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %.13749, i64 8 ; 2 uses
  %i.ga = add i64 %.14048, -8                     ; 3 uses
  %i.gb = icmp ugt i64 %i.ga, 7
  br i1 %i.gb, label %bb.b, label %.preheader, !llvm.loop !37

.lr.ph59:                                         ; preds = %.preheader
  %i.gc = lshr i16 %.1.lcssa, 8
end_hunk_13
begin_hunk_14_@crcspeed64big:bb.a
  %i.fx = getelementptr inbounds nuw i8, ptr %.150, i64 8 ; 2 uses
  %i.fy = add i64 %.13749, -8                     ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, 7
  br i1 %i.fz, label %bb.b, label %.preheader, !llvm.loop !38

.lr.ph59:                                         ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59
  %.258 = phi ptr [ %i.gk, %.lr.ph59 ], [ %.258.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
end_hunk_14
begin_hunk_15_@crcspeed64big:bb.a
  %i.gr = xor i64 %i.gp, %i.gq                    ; 2 uses
  %i.gs = add nsw i64 %.23857, -2                 ; 2 uses
  %.not.1 = icmp eq i64 %i.gs, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph59, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59, %.preheader
  %.241.lcssa = phi i64 [ %.140.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph59.prol.loopexit ], [ %i.gr, %.lr.ph59 ]
end_hunk_15
begin_hunk_16_@crcspeed16big:bb.a
  %i.dv = add nsw i64 %.262.prol, -1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.1.lcssa
  br i1 %prol.iter.cmp.not, label %.lr.ph63.prol.loopexit, label %.lr.ph63.prol, !llvm.loop !40

.lr.ph63.prol.loopexit:                           ; preds = %.lr.ph63.prol
  %i.dw = icmp ult i64 %.1.lcssa, 8
end_hunk_16
begin_hunk_17_@crcspeed16big:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %.14252, i64 8
  %i.fo = add i64 %.154, -8                       ; 3 uses
  %i.fp = icmp ugt i64 %i.fo, 7
  br i1 %i.fp, label %bb.b, label %.preheader, !llvm.loop !42

.lr.ph63:                                         ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63
  %.262 = phi i64 [ %i.fq, %.lr.ph63 ], [ %i.dv, %.lr.ph63.prol.loopexit ]
  %i.fq = add nsw i64 %.262, -8                   ; 2 uses
  %.not.7 = icmp eq i64 %i.fq, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph63, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63, %.preheader
  %.240.lcssa = phi i64 [ %.139.lcssa, %.preheader ], [ %i.du, %.lr.ph63.prol.loopexit ], [ 0, %.lr.ph63 ]
end_hunk_17
begin_hunk_18_@crcspeed64native_init:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc i64 %indvars.iv.i to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !13
  %i.c = call i64 %0(i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #7
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
end_hunk_18
begin_hunk_19_@llvm.bswap.v2i64
!20 = !{!"short", !11, i64 0}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !17, !24, !25}
!27 = distinct !{!27, !17, !24, !25}
!28 = distinct !{!28, !17, !24, !25}
!29 = distinct !{!29, !17, !24, !25}
!30 = distinct !{!30, !17, !24, !25}
!31 = distinct !{!31, !17, !24, !25}
!32 = distinct !{!32, !17, !24, !25}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
end_hunk_19
