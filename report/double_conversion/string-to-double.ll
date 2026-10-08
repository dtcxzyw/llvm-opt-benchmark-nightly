Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.mq, %i.h
  br i1 %.not219, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !23  ; 2 uses
  %i.ms = add i8 %i.mr, -48
  %or.cond231 = icmp ult i8 %i.ms, 10
  br i1 %or.cond231, label %bb.cr, label %bb.cw, !llvm.loop !47

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %.lcssa505 = phi ptr [ %scevgep542, %bb.cu ], [ %i.mq, %bb.cv ] ; 2 uses
  store ptr %.lcssa505, ptr %i.b, align 8, !tbaa !16
  %i.mt = icmp eq i8 %.0184, 45
  %i.mu = sub nsw i32 0, %.1183
  %i.mv = select i1 %i.mt, i32 %i.mu, i32 %.1183
  %i.mw = add nsw i32 %i.mv, %.4161
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cc
  %.promoted490 = phi ptr [ %.lcssa505, %bb.cw ], [ %i.lf, %bb.cc ] ; 6 uses
  %.7164 = phi i32 [ %i.mw, %bb.cw ], [ %.4161, %bb.cc ] ; 4 uses
  %i.mx = and i32 %i.i, 20
  %or.cond25.not = icmp ne i32 %i.mx, 0
  %.not220 = icmp eq ptr %.promoted490, %i.h      ; 2 uses
  %or.cond405 = or i1 %or.cond25.not, %.not220
  br i1 %or.cond405, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mz = load double, ptr %i.my, align 8, !tbaa !25
  br label %.thread370

bb.cz:                                            ; preds = %bb.cx
  %.promoted.i300543 = ptrtoaddr ptr %.promoted490 to i64 ; 2 uses
  %or.cond406 = or i1 %i.k, %.not220
  br i1 %or.cond406, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.cz
  %i.na = load i8, ptr %.promoted490, align 1, !tbaa !23
  %i.nb = sext i8 %i.na to i32
  %i.nc = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nb)
  br i1 %i.nc, label %.lr.ph493.preheader, label %.lr.ph.i302._crit_edge

.lr.ph493.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.nd = add i64 %i.a, %i.g                      ; 2 uses
  %i.ne = sub i64 %i.nd, %.promoted.i300543
  %scevgep544 = getelementptr i8, ptr %.promoted490, i64 %i.ne ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.promoted490, i64 1 ; 2 uses
  %.not.not.i306688 = icmp eq ptr %i.nf, %i.h
  br i1 %.not.not.i306688, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !0

.lr.ph.i302.lr.ph:                                ; preds = %.lr.ph493.preheader
  br label %.lr.ph.i302, !llvm.loop !0

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.lr.ph, %.lr.ph493
  %i.ng = phi ptr [ %i.nf, %.lr.ph.i302.lr.ph ], [ %i.nk, %.lr.ph493 ] ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !23
  %i.ni = sext i8 %i.nh to i32
  %i.nj = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ni)
  br i1 %i.nj, label %.lr.ph493, label %.lr.ph.i302._crit_edge, !llvm.loop !0

.lr.ph493:                                        ; preds = %.lr.ph.i302
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 1 ; 2 uses
  %.not.not.i306 = icmp eq ptr %i.nk, %i.h
  br i1 %.not.not.i306, label %.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !0

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !25
  br label %.thread370

.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge: ; preds = %.lr.ph493
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit: ; preds = %.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge, %.lr.ph493.preheader
  store ptr %scevgep544, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, %bb.cz
  %.promoted.i308545.pre-phi = phi i64 [ %i.nd, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted.i300543, %bb.cz ]
  %.promoted495 = phi ptr [ %scevgep544, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted490, %bb.cz ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted495, %i.h
  %or.cond407 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond407, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.nn = load i8, ptr %.promoted495, align 1, !tbaa !23
  %i.no = sext i8 %i.nn to i32
  %i.np = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.no)
  br i1 %i.np, label %.lr.ph496.preheader, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split

.lr.ph496.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.nq = add i64 %i.a, %i.g
  %i.nr = sub i64 %i.nq, %.promoted.i308545.pre-phi
  %scevgep546 = getelementptr i8, ptr %.promoted495, i64 %i.nr
  %i.ns = getelementptr inbounds nuw i8, ptr %.promoted495, i64 1 ; 2 uses
  %.not.not.i314689 = icmp eq ptr %i.ns, %i.h
  br i1 %.not.not.i314689, label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !0

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph496.preheader
  br label %.lr.ph.i310, !llvm.loop !0

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph496
  %i.nt = phi ptr [ %i.ns, %.lr.ph.i310.lr.ph ], [ %i.nx, %.lr.ph496 ] ; 3 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !23
  %i.nv = sext i8 %i.nu to i32
  %i.nw = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nv)
  br i1 %i.nw, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

.lr.ph496:                                        ; preds = %.lr.ph.i310
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.nx, %i.h
  br i1 %.not.not.i314, label %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390: ; preds = %bb.bo
  br i1 %.0174.lcssa, label %bb.db, label %bb.dc

.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph496
  br label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, !llvm.loop !0

._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge: ; preds = %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph496.preheader
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.ny = phi ptr [ %i.kl, %.split367 ], [ %i.ku, %.split368 ], [ %i.ku, %_ZN17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.ny, ptr %i.b, align 8
  %i.nz = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.db, label %bb.dc

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.nt, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ], [ %scevgep546, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.iq, %.split365 ], [ %i.ih, %.split364 ], [ %i.iq, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.ig, %.split364 ], [ %i.ig, %.split365 ], [ %i.ig, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.oa = phi ptr [ %.promoted495, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.sink, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2194.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5190.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5179.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2173.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.8165.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %i.ob = trunc i8 %.2194 to i1
  br i1 %i.ob, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.da

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread: ; preds = %bb.cf, %bb.bm, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.oc = phi ptr [ %i.oa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %i.lf, %bb.cf ], [ %.lcssa456, %bb.bm ]
  %.5190387 = phi i32 [ %.5190, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %.4189, %bb.cf ], [ %.0185.lcssa, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !16
  %i.od = sext i32 %.5190387 to i64
  %i.oe = getelementptr inbounds i8, ptr %i.d, i64 %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.og = load i16, ptr %i.of, align 8, !tbaa !35
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !25
  %i.oj = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr noundef %i.f, ptr noundef %i.oe, i1 noundef zeroext %.0180, i16 noundef zeroext %i.og, i1 noundef zeroext %i.k, double noundef %i.oi, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.ok = ptrtoint ptr %i.oc to i64
  %i.ol = ptrtoint ptr %1 to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = trunc i64 %i.om to i32
  store i32 %i.on, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread370

bb.da:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.oo = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.split614, %.split613, %.split612, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.da
  %.5190396611 = phi i32 [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.5190, %bb.da ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ] ; 2 uses
  %i.op = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.oo, %bb.da ], [ %i.nz, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %i.lq, %.split612 ], [ %i.lw, %.split613 ], [ %i.me, %.split614 ]
  %i.oq = add nsw i32 %.5190396611, 1
  %i.or = sext i32 %.5190396611 to i64
  %i.os = getelementptr inbounds i8, ptr %i.d, i64 %i.or
  store i8 49, ptr %i.os, align 1, !tbaa !23
  %i.ot = add nsw i32 %i.op, -1
  br label %bb.dc

bb.dc:                                            ; preds = %.split614, %.split613, %.split612, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.db, %bb.da
  %.6191 = phi i32 [ %i.oq, %bb.db ], [ %.5190, %bb.da ], [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ] ; 5 uses
  %.9 = phi i32 [ %i.ot, %bb.db ], [ %i.oo, %bb.da ], [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.nz, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %i.lq, %.split612 ], [ %i.lw, %.split613 ], [ %i.me, %.split614 ]
  %i.ou = sext i32 %.6191 to i64
  %i.ov = getelementptr inbounds i8, ptr %i.d, i64 %i.ou
  store i8 0, ptr %i.ov, align 1, !tbaa !23
  %i.ow = icmp sgt i32 %.6191, 0
  br i1 %i.ow, label %.lr.ph692, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit

.lr.ph692:                                        ; preds = %bb.dc
  %i.ox = zext nneg i32 %.6191 to i64
  br label %bb.de

bb.dd:                                            ; preds = %bb.de
  %5 = add nsw i64 %indvars.iv.i690, -1           ; 2 uses
  %i.oy = trunc nuw i64 %5 to i32                 ; 2 uses
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %bb.de, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

bb.de:                                            ; preds = %.lr.ph692, %bb.dd
  %i.pa = phi i32 [ %.6191, %.lr.ph692 ], [ %i.oy, %bb.dd ]
  %indvars.iv.i690 = phi i64 [ %i.ox, %.lr.ph692 ], [ %5, %bb.dd ] ; 2 uses
  %6 = getelementptr i8, ptr %i.d, i64 %indvars.iv.i690
  %i.pb = getelementptr i8, ptr %6, i64 -1
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.pc, 48
  br i1 %.not.i, label %bb.dd, label %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693, !llvm.loop !2

._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693: ; preds = %bb.de
  br label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit: ; preds = %bb.dd, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693, %bb.dc
  %.sroa.3.1.i = phi i32 [ 0, %bb.dc ], [ %i.pa, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693 ], [ 0, %bb.dd ] ; 3 uses
  %i.pd = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.pe = add nsw i32 %i.pd, %.9                  ; 2 uses
  br i1 %3, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.pf = call noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pe)
  br label %bb.dh

bb.dg:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.pg = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pe)
  %i.ph = fpext float %i.pg to double
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0153 = phi double [ %i.pf, %bb.df ], [ %i.ph, %bb.dg ] ; 2 uses
  %i.pi = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %1 to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = trunc i64 %i.pl to i32
  store i32 %i.pm, ptr %4, align 4, !tbaa !17
  %i.pn = fneg double %.0153
  %i.po = select i1 %.0180, double %i.pn, double %.0153
  br label %.thread370

.thread370:                                       ; preds = %bb.cq, %bb.cm, %bb.ci, %bb.dh, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.cy, %bb.ce, %bb.cb, %bb.br, %bb.bp, %bb.bl
  %.5 = phi double [ %i.oj, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread ], [ %i.po, %bb.dh ], [ %i.jk, %bb.bp ], [ %i.js, %bb.br ], [ %i.lj, %bb.cb ], [ %i.jf, %bb.bl ], [ %i.nm, %.lr.ph.i302._crit_edge ], [ %i.mz, %bb.cy ], [ %i.ln, %bb.ce ], [ %i.mg, %bb.cq ], [ %i.ly, %bb.cm ], [ %i.ls, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

.thread:                                          ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, %bb.h, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.ag, %bb.ai, %.lr.ph.i259._crit_edge, %bb.w, %bb.ak, %_ZN17double_conversionL7isDigitEii.exit.thread359, %bb.aw, %.thread370, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, %bb.as, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, %bb.d, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, %bb.b
  %.8 = phi double [ %i.s, %bb.b ], [ %i.ad, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit ], [ %i.ag, %bb.d ], [ -qnan, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264 ], [ %i.ce, %.lr.ph.i247._crit_edge ], [ %i.br, %bb.u ], [ %i.bn, %bb.s ], [ +inf, %bb.w ], [ %i.du, %.lr.ph.i259._crit_edge ], [ %i.dh, %bb.ai ], [ %i.dd, %bb.ag ], [ +qnan, %bb.ak ], [ %i.fi, %_ZN17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252 ], [ %i.es, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356 ], [ %i.ez, %bb.as ], [ %.5, %.thread370 ], [ %i.hi, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread ], [ %i.fn, %bb.aw ], [ %i.aq, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244 ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret double %.8
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 31 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [782 x i8], align 16              ; 11 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  %i.f = sext i32 %2 to i64
  %.idx = shl nsw i64 %i.f, 1
  %i.g = getelementptr i8, ptr %1, i64 %.idx      ; 37 uses
  store i32 0, ptr %4, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 8, !tbaa !21     ; 9 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp ne i32 %i.i, 0                      ; 11 uses
  %i.k = and i32 %i.h, 8
  %.not212.not = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.h, 16
  %.not223 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.m = and i32 %i.h, 32
  %.not211 = icmp ne i32 %i.m, 0
  %i.n = and i32 %i.h, 64
  %i.o = icmp ne i32 %i.n, 0                      ; 4 uses
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !22
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.s = and i32 %i.h, 24
  %or.cond.not = icmp eq i32 %i.s, 0
  %.pre = load i16, ptr %1, align 2, !tbaa !41    ; 3 uses
  br i1 %or.cond.not, label %._crit_edge535, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = zext i16 %.pre to i32
  %i.u = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.t)
  br i1 %i.u, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i687 = icmp eq i32 %2, 1
  br i1 %.not.not.i687, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !3

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.lr.ph.i, !llvm.loop !3

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %._crit_edge535

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.w = phi ptr [ %i.v, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !41   ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aa, %i.g
  br i1 %.not.not.i, label %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !3

.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit: ; preds = %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.a, align 8
  br i1 %.not212.not, label %bb.d, label %._crit_edge535

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !25
  br label %.thread

._crit_edge535:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %i.af = phi i16 [ %i.x, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %i.w, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 3 uses
  switch i16 %i.af, label %bb.j [
    i16 43, label %bb.e
    i16 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge535, %._crit_edge535
  %i.ah = icmp eq i16 %i.af, 45
  %.ptr408 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.not6.not.i238 = icmp eq ptr %.ptr408, %i.g
  br i1 %.not6.not.i238, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.e, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 2, %bb.e ] ; 3 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx ; 4 uses
  %i.ai = load i16, ptr %.0338.ptr, align 2, !tbaa !41 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.aj)
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw nsw i64 %.0338.idx, 2
  %.ptr = getelementptr inbounds nuw i8, ptr %.0338.ptr, i64 2
  %.not.not.i243 = icmp eq ptr %.ptr, %i.g
  br i1 %.not.not.i243, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244, label %.lr.ph.i239, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244: ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !25
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 2
  %or.cond398 = or i1 %.not211, %.not214
  br i1 %or.cond398, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !25
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store ptr %.0338.ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge535
  %i.ap = phi i16 [ %i.ai, %bb.i ], [ %i.af, %._crit_edge535 ]
  %i.aq = phi ptr [ %.0338.ptr, %bb.i ], [ %i.ag, %._crit_edge535 ]
  %.0180 = phi i1 [ %i.ah, %bb.i ], [ false, %._crit_edge535 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = trunc i16 %i.ap to i8                   ; 2 uses
  br i1 %i.o, label %bb.l, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.au = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.m, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ay, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

common.resume:                                    ; preds = %bb.ae, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.co, %bb.ae ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.ba = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext %i.at), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.be, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.at, %bb.k ]
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !23
  %i.bg = icmp eq i8 %.sink.i, %i.bf
  br i1 %i.bg, label %bb.r, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre537.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.x

bb.r:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.bi = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bh, i1 noundef zeroext %i.o)
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !25
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bl = and i32 %i.h, 20
  %or.cond3.not = icmp ne i32 %i.bl, 0
  %i.bm = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not224 = icmp eq ptr %i.bm, %i.g              ; 2 uses
  %or.cond399 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond399, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !25
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %or.cond400 = select i1 %i.j, i1 true, i1 %.not224
  br i1 %or.cond400, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.v
  %i.bp = load i16, ptr %i.bm, align 2, !tbaa !41
  %i.bq = zext i16 %i.bp to i32
  %i.br = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bq)
  br i1 %i.br, label %.lr.ph437, label %.lr.ph.i247._crit_edge

.lr.ph.i247:                                      ; preds = %.lr.ph437
  %i.bs = load i16, ptr %i.bw, align 2, !tbaa !41
  %i.bt = zext i16 %i.bs to i32
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bt)
  br i1 %i.bu, label %.lr.ph437, label %.lr.ph.i247._crit_edge, !llvm.loop !3

.lr.ph437:                                        ; preds = %.lr.ph.i247.preheader, %.lr.ph.i247
  %i.bv = phi ptr [ %i.bw, %.lr.ph.i247 ], [ %i.bm, %.lr.ph.i247.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 3 uses
  %.not.not.i251 = icmp eq ptr %i.bw, %i.g
  br i1 %.not.not.i251, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252, label %.lr.ph.i247, !llvm.loop !3

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !25
  br label %.thread

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252: ; preds = %.lr.ph437, %bb.v
  %i.bz = phi ptr [ %i.bm, %bb.v ], [ %i.g, %.lr.ph437 ]
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %1 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 1
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.w

bb.w:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252
  br label %.thread

bb.x:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre537 = phi ptr [ %.pre537.pre, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.aq, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.cg, null
  br i1 %.not216, label %bb.al, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = load i16, ptr %.pre537, align 2, !tbaa !41
  %i.ci = trunc i16 %i.ch to i8                   ; 2 uses
  br i1 %i.o, label %bb.z, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.z:                                             ; preds = %bb.y
  %i.cj = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.cl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i255, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cn = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.cn, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ad, %bb.aa, %bb.z
  %i.cp = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef signext i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(570) %i.cp, i8 noundef signext %i.ci), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.y, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.ct, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ci, %bb.y ]
  %i.cu = load i8, ptr %i.cg, align 1, !tbaa !23
  %i.cv = icmp eq i8 %.sink.i253, %i.cu
  br i1 %i.cv, label %bb.af, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre536 = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.al

bb.af:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !34
  %i.cx = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.cw, i1 noundef zeroext %i.o)
  br i1 %i.cx, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !25
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.da = and i32 %i.h, 20
  %or.cond5.not = icmp ne i32 %i.da, 0
  %i.db = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not222 = icmp eq ptr %i.db, %i.g              ; 2 uses
  %or.cond401 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond401, label %bb.aj, label %bb.ai

end_hunk_0
begin_hunk_1_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
  br i1 %.4178, label %bb.da, label %bb.db

bb.cq:                                            ; preds = %bb.cp
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lb = load double, ptr %i.la, align 8, !tbaa !25
  br label %.thread370

.preheader:                                       ; preds = %bb.co, %bb.cu
  %i.lc = phi i16 [ %i.lm, %bb.cu ], [ %i.kx, %bb.co ] ; 2 uses
  %i.ld = phi ptr [ %i.ll, %bb.cu ], [ %.promoted488, %bb.co ]
  %.0182 = phi i32 [ %.1183, %bb.cu ], [ 0, %bb.co ] ; 3 uses
  %i.le = zext nneg i16 %i.lc to i32
  %i.lf = icmp sgt i32 %.0182, 107374181
  br i1 %i.lf, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.preheader
  %i.lg = icmp eq i32 %.0182, 107374182
  %i.lh = icmp samesign ult i16 %i.lc, 52
  %or.cond21 = and i1 %i.lg, %i.lh
  br i1 %or.cond21, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %.preheader
  %i.li = mul nsw i32 %.0182, 10
  %i.lj = add i32 %i.li, -48
  %i.lk = add i32 %i.lj, %i.le
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %.1183 = phi i32 [ %i.lk, %bb.cs ], [ 1073741823, %bb.cr ] ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 2 ; 5 uses
  %.not219 = icmp eq ptr %i.ll, %i.g
  br i1 %.not219, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !41 ; 2 uses
  %i.ln = add i16 %i.lm, -48
  %or.cond231 = icmp ult i16 %i.ln, 10
  br i1 %or.cond231, label %.preheader, label %bb.cv, !llvm.loop !52

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  store ptr %i.ll, ptr %i.a, align 8, !tbaa !40
  %sext.mask = and i32 %.0184, 255
  %i.lo = icmp eq i32 %sext.mask, 45
  %i.lp = sub nsw i32 0, %.1183
  %i.lq = select i1 %i.lo, i32 %i.lp, i32 %.1183
  %i.lr = add nsw i32 %i.lq, %.4161
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cc
  %.promoted490 = phi ptr [ %i.ll, %bb.cv ], [ %i.kb, %bb.cc ] ; 4 uses
  %.7164 = phi i32 [ %i.lr, %bb.cv ], [ %.4161, %bb.cc ] ; 4 uses
  %i.ls = and i32 %i.h, 20
  %or.cond25.not = icmp ne i32 %i.ls, 0
  %.not220 = icmp eq ptr %.promoted490, %i.g      ; 2 uses
  %or.cond405 = select i1 %or.cond25.not, i1 true, i1 %.not220
  br i1 %or.cond405, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !25
  br label %.thread370

bb.cy:                                            ; preds = %bb.cw
  %or.cond406 = select i1 %i.j, i1 true, i1 %.not220
  br i1 %or.cond406, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.cy
  %i.lv = load i16, ptr %.promoted490, align 2, !tbaa !41
  %i.lw = zext i16 %i.lv to i32
  %i.lx = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.lw)
  br i1 %i.lx, label %.lr.ph493, label %.lr.ph.i302._crit_edge

.lr.ph.i302:                                      ; preds = %.lr.ph493
  %i.ly = load i16, ptr %i.mc, align 2, !tbaa !41
  %i.lz = zext i16 %i.ly to i32
  %i.ma = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.lz)
  br i1 %i.ma, label %.lr.ph493, label %.lr.ph.i302._crit_edge, !llvm.loop !3

.lr.ph493:                                        ; preds = %.lr.ph.i302.preheader, %.lr.ph.i302
  %i.mb = phi ptr [ %i.mc, %.lr.ph.i302 ], [ %.promoted490, %.lr.ph.i302.preheader ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 2 ; 5 uses
  %.not.not.i306 = icmp eq ptr %i.mc, %i.g
  br i1 %.not.not.i306, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit, label %.lr.ph.i302, !llvm.loop !3

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.me = load double, ptr %i.md, align 8, !tbaa !25
  br label %.thread370

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit: ; preds = %.lr.ph493
  store ptr %i.mc, ptr %i.a, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit, %bb.cy
  %.promoted495 = phi ptr [ %i.mc, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit ], [ %.promoted490, %bb.cy ] ; 5 uses
  %.not6.not.i309 = icmp eq ptr %.promoted495, %i.g
  %or.cond407 = select i1 %.not223, i1 true, i1 %.not6.not.i309
  br i1 %or.cond407, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307
  %i.mf = load i16, ptr %.promoted495, align 2, !tbaa !41
  %i.mg = zext i16 %i.mf to i32
  %i.mh = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.mg)
  br i1 %i.mh, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split

.lr.ph.i310:                                      ; preds = %.lr.ph496
  %i.mi = load i16, ptr %i.mm, align 2, !tbaa !41
  %i.mj = zext i16 %i.mi to i32
  %i.mk = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.mj)
  br i1 %i.mk, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, !llvm.loop !3

.lr.ph496:                                        ; preds = %.lr.ph.i310.preheader, %.lr.ph.i310
  %i.ml = phi ptr [ %i.mm, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ]
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2 ; 5 uses
  %.not.not.i314 = icmp eq ptr %i.mm, %i.g
  br i1 %.not.not.i314, label %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge, label %.lr.ph.i310, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390: ; preds = %bb.bo
  br i1 %.0174.lcssa, label %bb.da, label %bb.db

._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge: ; preds = %.lr.ph496
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.mn = phi ptr [ %i.jm, %.split367 ], [ %i.jt, %.split368 ], [ %i.jt, %_ZN17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.mn, ptr %i.a, align 8
  %i.mo = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.da, label %bb.db

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.mm, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ], [ %i.mm, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.ht, %.split365 ], [ %i.hm, %.split364 ], [ %i.ht, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.hl, %.split364 ], [ %i.hl, %.split365 ], [ %i.hl, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.a, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307
  %i.mp = phi ptr [ %.promoted495, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.sink, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.2194.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.5190.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.5179.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.2173.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.8165.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %i.mq = trunc i8 %.2194 to i1
  br i1 %i.mq, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, label %bb.cz

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread: ; preds = %bb.cf, %bb.bm, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315
  %i.mr = phi ptr [ %i.mp, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315 ], [ %i.kb, %bb.cf ], [ %.lcssa456, %bb.bm ]
  %.5190387 = phi i32 [ %.5190, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315 ], [ %.4189, %bb.cf ], [ %.0185.lcssa, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %i.ms = sext i32 %.5190387 to i64
  %i.mt = getelementptr inbounds i8, ptr %i.c, i64 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mv = load i16, ptr %i.mu, align 8, !tbaa !35
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !25
  %i.my = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr noundef %i.e, ptr noundef %i.mt, i1 noundef zeroext %.0180, i16 noundef zeroext %i.mv, i1 noundef zeroext %i.j, double noundef %i.mx, i1 noundef zeroext %3, ptr noundef %i.d)
  %i.mz = ptrtoint ptr %i.mr to i64
  %i.na = ptrtoint ptr %1 to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = lshr exact i64 %i.nb, 1
  %i.nd = trunc i64 %i.nc to i32
  store i32 %i.nd, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread370

bb.cz:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315
  %i.ne = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.split608, %.split607, %.split606, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, %bb.cz
  %.5190396605 = phi i32 [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %.5190, %bb.cz ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %.4189, %.split606 ], [ %.4189, %.split607 ], [ %.4189, %.split608 ] ; 2 uses
  %i.nf = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %i.ne, %bb.cz ], [ %i.mo, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %i.km, %.split606 ], [ %i.kt, %.split607 ], [ %i.kz, %.split608 ]
  %i.ng = add nsw i32 %.5190396605, 1
  %i.nh = sext i32 %.5190396605 to i64
  %i.ni = getelementptr inbounds i8, ptr %i.c, i64 %i.nh
  store i8 49, ptr %i.ni, align 1, !tbaa !23
  %i.nj = add nsw i32 %i.nf, -1
  br label %bb.db

bb.db:                                            ; preds = %.split608, %.split607, %.split606, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, %bb.da, %bb.cz
  %.6191 = phi i32 [ %i.ng, %bb.da ], [ %.5190, %bb.cz ], [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %.4189, %.split606 ], [ %.4189, %.split607 ], [ %.4189, %.split608 ] ; 5 uses
  %.9 = phi i32 [ %i.nj, %bb.da ], [ %i.ne, %bb.cz ], [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %i.mo, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %i.km, %.split606 ], [ %i.kt, %.split607 ], [ %i.kz, %.split608 ]
  %i.nk = sext i32 %.6191 to i64
  %i.nl = getelementptr inbounds i8, ptr %i.c, i64 %i.nk
  store i8 0, ptr %i.nl, align 1, !tbaa !23
  %i.nm = icmp sgt i32 %.6191, 0
  br i1 %i.nm, label %.lr.ph690, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit

.lr.ph690:                                        ; preds = %bb.db
  %i.nn = zext nneg i32 %.6191 to i64
  br label %bb.dd

bb.dc:                                            ; preds = %bb.dd
  %5 = add nsw i64 %indvars.iv.i688, -1           ; 2 uses
  %i.no = trunc nuw i64 %5 to i32                 ; 2 uses
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %bb.dd, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

bb.dd:                                            ; preds = %.lr.ph690, %bb.dc
  %i.nq = phi i32 [ %.6191, %.lr.ph690 ], [ %i.no, %bb.dc ]
  %indvars.iv.i688 = phi i64 [ %i.nn, %.lr.ph690 ], [ %5, %bb.dc ] ; 2 uses
  %6 = getelementptr i8, ptr %i.c, i64 %indvars.iv.i688
  %i.nr = getelementptr i8, ptr %6, i64 -1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.ns, 48
  br i1 %.not.i, label %bb.dc, label %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691, !llvm.loop !2

._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691: ; preds = %bb.dd
  br label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit: ; preds = %bb.dc, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691, %bb.db
  %.sroa.3.1.i = phi i32 [ 0, %bb.db ], [ %i.nq, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691 ], [ 0, %bb.dc ] ; 3 uses
  %i.nt = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.nu = add nsw i32 %i.nt, %.9                  ; 2 uses
  br i1 %3, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.nv = call noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nu)
  br label %bb.dg

bb.df:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.nw = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nu)
  %i.nx = fpext float %i.nw to double
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0153 = phi double [ %i.nv, %bb.de ], [ %i.nx, %bb.df ] ; 2 uses
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %1 to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = lshr exact i64 %i.ob, 1
  %i.od = trunc i64 %i.oc to i32
  store i32 %i.od, ptr %4, align 4, !tbaa !17
  %i.oe = fneg double %.0153
  %i.of = select i1 %.0180, double %i.oe, double %.0153
  br label %.thread370

.thread370:                                       ; preds = %bb.cq, %bb.cm, %bb.ci, %bb.dg, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.cx, %bb.ce, %bb.cb, %bb.br, %bb.bp, %bb.bl
  %.5 = phi double [ %i.my, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread ], [ %i.of, %bb.dg ], [ %i.ik, %bb.bp ], [ %i.it, %bb.br ], [ %i.kf, %bb.cb ], [ %i.if, %bb.bl ], [ %i.me, %.lr.ph.i302._crit_edge ], [ %i.lu, %bb.cx ], [ %i.kj, %bb.ce ], [ %i.lb, %bb.cq ], [ %i.kv, %bb.cm ], [ %i.ko, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

.thread:                                          ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244, %bb.h, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.ag, %bb.ai, %.lr.ph.i259._crit_edge, %bb.w, %bb.ak, %_ZN17double_conversionL7isDigitEii.exit.thread359, %bb.aw, %.thread370, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread, %bb.as, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356, %bb.d, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, %bb.b
  %.8 = phi double [ %i.r, %bb.b ], [ %i.ac, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit ], [ %i.ae, %bb.d ], [ -qnan, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264 ], [ %i.by, %.lr.ph.i247._crit_edge ], [ %i.bo, %bb.u ], [ %i.bk, %bb.s ], [ +inf, %bb.w ], [ %i.dn, %.lr.ph.i259._crit_edge ], [ %i.dd, %bb.ai ], [ %i.cz, %bb.ag ], [ +qnan, %bb.ak ], [ %i.ev, %_ZN17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252 ], [ %i.ei, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356 ], [ %i.ep, %bb.as ], [ %.5, %.thread370 ], [ %i.gn, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread ], [ %i.fa, %bb.aw ], [ %i.am, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244 ], [ %i.ao, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret double %.8
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK17double_conversion23StringToDoubleConverter13StringToFloatEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK17double_conversion23StringToDoubleConverter13StringToFloatEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK17double_conversion23StringToDoubleConverter8StringToIdEET_PKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK17double_conversion23StringToDoubleConverter8StringToIfEET_PKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK17double_conversion23StringToDoubleConverter8StringToIdEET_PKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK17double_conversion23StringToDoubleConverter8StringToIfEET_PKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8, !tbaa !16
  br label %.preheader13

.preheader:                                       ; preds = %bb.a, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit
  %.pn.i = phi ptr [ %.011.i, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %2, %bb.a ]
  %.011.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.a = load i8, ptr %.011.i, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.a, 0                    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = icmp eq ptr %i.c, %1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %or.cond, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = load i8, ptr %i.c, align 1, !tbaa !23
  %i.f = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i12 = icmp eq i32 %i.h, 0
  br i1 %.not.i12, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.k

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit: ; preds = %bb.b, %bb.c, %bb.f
  %i.l = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext %i.e), !inline_history !53
  %i.q = load i8, ptr %.011.i, align 1, !tbaa !23
  %.not13.i = icmp eq i8 %i.p, %i.q
  br i1 %.not13.i, label %.preheader, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, !llvm.loop !54

.preheader13:                                     ; preds = %.preheader13.preheader, %bb.h
  %i.r = phi ptr [ %i.t, %bb.h ], [ %.promoted, %.preheader13.preheader ]
  %.pn.i7 = phi ptr [ %.011.i8, %bb.h ], [ %2, %.preheader13.preheader ]
  %.011.i8 = getelementptr inbounds nuw i8, ptr %.pn.i7, i64 1 ; 3 uses
  %i.s = load i8, ptr %.011.i8, align 1, !tbaa !23
  %.not.i9 = icmp eq i8 %i.s, 0                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %i.u = icmp eq ptr %i.t, %1
  %or.cond21 = select i1 %.not.i9, i1 true, i1 %i.u
  br i1 %or.cond21, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader13
  %i.v = load i8, ptr %i.t, align 1, !tbaa !23
  %i.w = load i8, ptr %.011.i8, align 1, !tbaa !23
  %.not13.i10 = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i10, label %.preheader13, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, !llvm.loop !54

_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit: ; preds = %bb.h, %.preheader13, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, %.preheader
  %.0 = phi i1 [ %.not.i, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %.not.i, %.preheader ], [ %.not.i9, %.preheader13 ], [ %.not.i9, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1, i32 noundef range(i32 10, 17) %2, ptr nofree readnone captures(address) %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = zext i16 %1 to i32
  %i.b = icmp eq i16 %1, 0
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !16
  %i.e = icmp eq ptr %i.d, %.0.val
  br label %_ZN17double_conversionL7isDigitEii.exit30.thread2

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 1, !tbaa !23    ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 4 uses
  %i.h = add nsw i32 %i.g, -48
end_hunk_1
