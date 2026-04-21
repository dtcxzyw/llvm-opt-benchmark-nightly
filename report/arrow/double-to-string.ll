inline.NumInlined: 75
inline.NumDeleted: 19
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE:bb.a
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bx
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.by, i1 false), !tbaa !20
  %i.bz = sext i32 %.1 to i64                     ; 5 uses
  %i.ca = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.cb = sub nsw i64 6, %i.bz
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 %i.cb)
  %i.cc = add i64 %smax, %i.bz
  %i.cd = add i64 %i.cc, -5                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check, label %.lr.ph37.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.preheader.a
  %n.vec = and i64 %i.cd, -32                     ; 3 uses
  %i.ce = sub i64 %i.bz, %n.vec                   ; 2 uses
  %i.cf = add nsw i64 %i.bz, -15
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE:bb.a
middle.block:                                     ; preds = %vector.body
  %i.cj = sub i64 22, %i.cg
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph37.preheader58

.lr.ph37.preheader58:                             ; preds = %.lr.ph37.preheader.a, %middle.block
  %indvars.iv45.ph.a = phi i64 [ %i.bz, %.lr.ph37.preheader.a ], [ %i.ce, %middle.block ]
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader58, %.lr.ph37
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph37 ], [ %indvars.iv45.ph.a, %.lr.ph37.preheader58 ] ; 2 uses
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1 ; 2 uses
  %i.ck = sub nsw i64 6, %indvars.iv45            ; 2 uses
  %i.cl = icmp slt i64 %i.ck, %i.ca
  br i1 %i.cl, label %.lr.ph37, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph37, %middle.block
  %indvars.iv.next46.lcssa = phi i64 [ %i.ce, %middle.block ], [ %indvars.iv.next46, %.lr.ph37 ]
  %.lcssa57 = phi i64 [ %i.cj, %middle.block ], [ %i.ck, %.lr.ph37 ]
  %i.cm = trunc nsw i64 %.lcssa57 to i32
  %i.cn = trunc nsw i64 %indvars.iv.next46.lcssa to i32
  br label %._crit_edge
end_hunk_1
begin_hunk_2_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE:bb.a
  store i8 48, ptr %i.y, align 1, !tbaa !20
  %niter93.next.1 = add i32 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i32 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !27

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
end_hunk_2
begin_hunk_3_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE:bb.a
  store i8 48, ptr %i.az, align 1, !tbaa !20
  %niter98.next.1 = add i32 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i32 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, label %.lr.ph.i49, !llvm.loop !27

bb.d:                                             ; preds = %bb.a
  %.not = icmp slt i32 %3, %2
end_hunk_3
begin_hunk_4_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE:bb.a
  store i8 48, ptr %i.bu, align 1, !tbaa !20
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, label %.lr.ph.i53, !llvm.loop !27

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa: ; preds = %.lr.ph.i53
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_4
begin_hunk_5_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE:bb.a
  store i8 48, ptr %i.cq, align 1, !tbaa !20
  %niter83.next.1 = add i32 %niter83, 2           ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, label %bb.f, !llvm.loop !27

bb.g:                                             ; preds = %bb.d
  %i.cr = zext nneg i32 %3 to i64                 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE:bb.a
  store i8 48, ptr %i.du, align 1, !tbaa !20
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, label %.lr.ph.i61, !llvm.loop !27

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa: ; preds = %.lr.ph.i61
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
end_hunk_6
begin_hunk_7_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.ae = load i8, ptr %i.b, align 1, !tbaa !28, !range !30, !noundef !31
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.j

end_hunk_7
begin_hunk_8_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE:bb.a
bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !3   ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  %.not.not = icmp sge i32 %i.as, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i32, ptr %i.at, align 8
end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_:bb.a
  %.lobit = lshr i64 %i.a, 63
  %.sink = trunc nuw nsw i64 %.lobit to i8
  %.0 = tail call double @llvm.fabs.f64(double %0) ; 5 uses
  store i8 %.sink, ptr %5, align 1, !tbaa !28
  %i.b = icmp eq i32 %1, 3
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
end_hunk_9
begin_hunk_10_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS0_13StringBuilderE:bb.a
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = sub i32 1, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !33
  %i.bc = icmp sgt i32 %i.az, %i.bb
  %i.bd = load i32, ptr %0, align 8, !tbaa !8     ; 3 uses
  br i1 %i.bc, label %.thread, label %bb.n
end_hunk_10
begin_hunk_11_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS0_13StringBuilderE:bb.a
  %i.bf = sub i32 %i.ax, %2
  %i.bg = add nsw i32 %i.bf, %.lobit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !34
  %i.bj = icmp sgt i32 %i.bg, %i.bi               ; 2 uses
  %i.bk = and i32 %i.bd, 16
  %.not = icmp eq i32 %i.bk, 0
end_hunk_11
begin_hunk_12_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS0_13StringBuilderE:bb.a
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !20
  %i.by = icmp eq i8 %i.bx, 48
  br i1 %i.by, label %.lr.ph78, label %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge, !llvm.loop !35

.lr.ph78:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv77 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bp, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv77, -1 ; 5 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next to i32 ; 4 uses
  %i.ca = icmp sgt i64 %indvars.iv.next, %i.bq
  br i1 %i.ca, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !35

.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge: ; preds = %.lr.ph
  store i32 %i.bz, ptr %i.c, align 4, !tbaa !3
end_hunk_12
begin_hunk_13_@llvm.assume
!23 = distinct !{!23, !22, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !22, !25, !24}
!27 = distinct !{!27, !22}
!28 = !{!29, !29, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!9, !4, i64 28}
!33 = !{!9, !4, i64 36}
!34 = !{!9, !4, i64 40}
!35 = distinct !{!35, !22}
end_hunk_13
