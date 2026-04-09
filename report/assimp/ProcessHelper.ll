inline.NumInlined: 318
inline.NumDeleted: 153
begin_hunk_0_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %i.q = load ptr, ptr %1, align 8                ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 2                   ; 5 uses
  %.not322 = icmp eq ptr %i.p, %i.q               ; 2 uses
  br i1 %.not322, label %._crit_edge287, label %.lr.ph286
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a

bb.aw:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split
  store i64 %i.u, ptr %i.fr, align 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 5 uses
  br i1 %.not322, label %.loopexit275.thread, label %bb.ax

.loopexit275.thread:                              ; preds = %bb.aw
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a

bb.ax:                                            ; preds = %bb.aw
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %i.u
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %i.gz = phi ptr [ %i.gw, %bb.ax ], [ %i.hb, %bb.ay ] ; 3 uses
  store i32 0, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr null, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gy
  br i1 %i.hc, label %.lr.ph298, label %bb.ay

.lr.ph298:                                        ; preds = %bb.ay
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.gw, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 208
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %i.io = add i32 %.0187296, 1                    ; 2 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = icmp ugt i64 %i.u, %i.ip
  br i1 %i.iq, label %bb.az, label %.preheader274.loopexit, !llvm.loop !28

bb.bb:                                            ; preds = %bb.az
  %i.ir = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %i.jb = load i32, ptr %i.ih, align 8
  %i.jc = zext i32 %i.jb to i64
  %i.jd = icmp samesign ult i64 %i.ja, %i.jc
  br i1 %i.jd, label %bb.bc, label %._crit_edge295, !llvm.loop !29

._crit_edge306:                                   ; preds = %.loopexit273, %.preheader274
  %i.je = and i32 %2, 1
end_hunk_4
begin_hunk_5_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %i.ls = add nuw nsw i64 %.0186299, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge301.loopexit.unr-lcssa, label %.lr.ph300, !llvm.loop !30

.lr.ph303:                                        ; preds = %.lr.ph303, %.lr.ph303.preheader.new
  %.0184302 = phi i64 [ 0, %.lr.ph303.preheader.new ], [ %i.mg, %.lr.ph303 ] ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %i.mg = add nuw nsw i64 %.0184302, 2            ; 2 uses
  %niter407.next.1 = add i64 %niter407, 2         ; 2 uses
  %niter407.ncmp.1 = icmp eq i64 %niter407.next.1, %unroll_iter406
  br i1 %niter407.ncmp.1, label %.loopexit273.loopexit.unr-lcssa, label %.lr.ph303, !llvm.loop !31

.loopexit273.loopexit.unr-lcssa:                  ; preds = %.lr.ph303
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
end_hunk_6
begin_hunk_7_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %i.mn = load i32, ptr %i.h, align 4
  %i.mo = zext i32 %i.mn to i64
  %i.mp = icmp samesign ult i64 %indvars.iv.next341, %i.mo
  br i1 %i.mp, label %bb.bd, label %._crit_edge306, !llvm.loop !32

bb.bp:                                            ; preds = %._crit_edge306
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
._crit_edge310:                                   ; preds = %._crit_edge310.loopexit.unr-lcssa, %bb.bt, %.epil.preheader, %bb.bs
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %exitcond352.not = icmp eq i64 %indvars.iv.next349, %i.ms
  br i1 %exitcond352.not, label %.lr.ph314, label %bb.bs, !llvm.loop !33

bb.bu:                                            ; preds = %bb.by, %.lr.ph309.new
  %indvars.iv344 = phi i64 [ 0, %.lr.ph309.new ], [ %indvars.iv.next345.1, %bb.by ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %indvars.iv.next345.1 = add nuw nsw i64 %indvars.iv344, 2 ; 2 uses
  %niter412.next.1 = add i64 %niter412, 2         ; 2 uses
  %niter412.ncmp.1.not = icmp eq i64 %niter412.next.1, %unroll_iter411
  br i1 %niter412.ncmp.1.not, label %._crit_edge310.loopexit.unr-lcssa, label %bb.bu, !llvm.loop !34

._crit_edge315.loopexit.unr-lcssa:                ; preds = %bb.ce
  %lcmp.mod415.not = icmp eq i64 %xtraiter414, 0
end_hunk_9
begin_hunk_10_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2 ; 2 uses
  %niter418.next.1 = add i64 %niter418, 2         ; 2 uses
  %niter418.ncmp.1 = icmp eq i64 %niter418.next.1, %unroll_iter417
  br i1 %niter418.ncmp.1, label %._crit_edge315.loopexit.unr-lcssa, label %bb.ca, !llvm.loop !35

bb.cf:                                            ; preds = %._crit_edge315
  %i.ov = zext i32 %i.ol to i64
end_hunk_10
begin_hunk_11_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %i.ra = zext i32 %i.qz to i64
  %i.rb = icmp samesign ult i64 %indvars.iv.next360, %i.ra
  br i1 %i.rb, label %bb.co, label %.loopexit.loopexit, !llvm.loop !36

.loopexit.loopexit:                               ; preds = %bb.cq
  %.pre370 = load i32, ptr %i.mq, align 8
end_hunk_11
begin_hunk_12_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %i.rd = zext i32 %i.rc to i64
  %i.re = icmp samesign ult i64 %indvars.iv.next364, %i.rd
  br i1 %i.re, label %bb.ch, label %.loopexit272, !llvm.loop !37

.loopexit272:                                     ; preds = %.loopexit, %bb.cg, %._crit_edge315
  %.not.i.i.i = icmp eq ptr %.sroa.0243.0397400, null
end_hunk_12
begin_hunk_13_@llvm.ctpop.i8
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
end_hunk_13
begin_hunk_14_@llvm.ctpop.i8
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
end_hunk_14
