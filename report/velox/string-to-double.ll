inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb:bb.a
    i8 65, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i276
  ]

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i276: ; preds = %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %bb.as
  store ptr %i.gh, ptr %0, align 8, !tbaa !8
  br label %.backedge

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread: ; preds = %.backedge, %.split324, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i271, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250
  %.2113 = phi i32 [ 0, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250 ], [ %.1112, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i271 ], [ %.1112, %.split324 ], [ %.1112, %.backedge ] ; 2 uses
  %i.gr = sub nsw i32 0, %.2113
  %spec.select151 = select i1 %.0115, i32 %i.gr, i32 %.2113
  %i.gs = add nsw i32 %spec.select151, %.7.ph320
  br label %bb.at

bb.at:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread
  %.5.ph321 = phi i64 [ %.5.ph322, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread ], [ %.5.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread ] ; 6 uses
  %.8 = phi i32 [ %i.gs, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread ], [ %.7.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread ] ; 3 uses
  %i.gt = icmp eq i32 %.8, 0
  %i.gu = icmp eq i64 %.5.ph321, 0                ; 2 uses
  %or.cond5 = select i1 %i.gt, i1 true, i1 %i.gu
  br i1 %or.cond5, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %2, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %i.gu, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gv = sub nsw i64 0, %.5.ph321
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.6 = phi i64 [ %i.gv, %bb.aw ], [ %.5.ph321, %bb.au ]
  %i.gw = sitofp i64 %.6 to double
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.ay:                                            ; preds = %bb.at
  %i.gx = icmp ugt i64 %.5.ph321, 9007199254740991
  br i1 %i.gx, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ay, %.lr.ph.i.i
  %.01521.i.i = phi i32 [ %i.gz, %.lr.ph.i.i ], [ %.8, %bb.ay ]
  %.01620.i.i = phi i64 [ %i.gy, %.lr.ph.i.i ], [ %.5.ph321, %bb.ay ] ; 2 uses
  %i.gy = lshr i64 %.01620.i.i, 1                 ; 2 uses
  %i.gz = add nsw i32 %.01521.i.i, 1              ; 2 uses
  %i.ha = icmp ugt i64 %.01620.i.i, 18014398509481983
  br i1 %i.ha, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !61

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ay
  %.016.lcssa.i.i = phi i64 [ %.5.ph321, %bb.ay ], [ %i.gy, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.8, %bb.ay ], [ %i.gz, %.lr.ph.i.i ] ; 5 uses
  %i.hb = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.hb, label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.hc = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.hc, label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.az
  %i.hd = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.he = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.hf = icmp eq i64 %i.he, 0                    ; 2 uses
  %i.hg = and i1 %i.hd, %i.hf
  br i1 %i.hg, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.hi, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.hh, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.hh = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.hi = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.hj = icmp sgt i32 %.124.i.i, -1073
  %i.hk = and i64 %.11723.i.i, 2251799813685248
  %i.hl = icmp eq i64 %i.hk, 0                    ; 2 uses
  %i.hm = select i1 %i.hj, i1 %i.hl, i1 false
  br i1 %i.hm, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !62

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.hh, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.hi, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.hf, %.preheader.i.i ], [ %i.hl, %.lr.ph25.i.i ]
  %i.hn = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.hn, i1 %.lcssa.i.i, i1 false
  %i.ho = add nsw i32 %.1.lcssa.i.i, 1075
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.hq
  %i.hr = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.hs = or disjoint i64 %.0.i.i, %i.hr
  %i.ht = bitcast i64 %i.hs to double
  br label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit

_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit: ; preds = %._crit_edge.i.i, %bb.az, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.ht, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.az ] ; 2 uses
  %i.hu = fneg double %.018.i.i
  %i.hv = select i1 %2, double %i.hu, double %.018.i.i
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311: ; preds = %.lr.ph.i, %.lr.ph.i206, %bb.av, %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, %bb.ax, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %.4 = phi double [ %i.ae, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread ], [ -0.000000e+00, %bb.av ], [ %i.hv, %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit ], [ %i.gw, %bb.ax ], [ %6, %.lr.ph.i206 ], [ %6, %.lr.ph.i ]
  ret double %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, double noundef %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %7) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %7, align 1, !tbaa !32
  %.promoted = load ptr, ptr %0, align 8, !tbaa !8 ; 4 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !17 ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader208

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %3 to i32
  %i.d = icmp eq i16 %3, 0
  br i1 %i.d, label %.split.us.preheader, label %.lr.ph.split

.split.us.preheader:                              ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !8
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit, label %.backedge.us

.split.us:                                        ; preds = %.backedge.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit, label %.backedge.us, !llvm.loop !63

.backedge.us:                                     ; preds = %.split.us.preheader, %.split.us
  %i.i = phi ptr [ %i.g, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %.split.us, label %.preheader208, !llvm.loop !63

.preheader208:                                    ; preds = %.backedge, %.backedge.us, %bb.a
  %i.l = phi i8 [ %i.j, %.backedge.us ], [ %i.a, %bb.a ], [ %i.w, %.backedge ] ; 3 uses
  %.promoted225 = phi ptr [ %i.i, %.backedge.us ], [ %.promoted, %bb.a ], [ %i.x, %.backedge ] ; 2 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48
  %or.cond.i226 = icmp ult i32 %i.n, 10
  %i.o = icmp slt i8 %i.l, 56
  %i.p = and i1 %i.o, %or.cond.i226
  br i1 %i.p, label %.lr.ph228, label %._crit_edge

.lr.ph228:                                        ; preds = %.preheader208
  %i.q = select i1 %6, i64 53, i64 24             ; 2 uses
  %i.r = zext i16 %3 to i32                       ; 2 uses
  %i.s = icmp eq i16 %3, 0                        ; 2 uses
  br label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.t = phi ptr [ %i.x, %.backedge ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 6 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !8
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit, label %bb.b, !llvm.loop !63

.backedgethread-pre-split:                        ; preds = %.split178, %bb.b, %bb.d
  %.ph = phi ptr [ %i.u, %bb.d ], [ %i.u, %bb.b ], [ %i.z, %.split178 ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !17
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %bb.c
  %i.w = phi i8 [ %.pr, %.backedgethread-pre-split ], [ %i.ab, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.ph, %.backedgethread-pre-split ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = icmp eq i8 %i.w, 48
  br i1 %i.y, label %.lr.ph.split, label %.preheader208, !llvm.loop !63

bb.b:                                             ; preds = %.lr.ph.split
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.backedgethread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !17   ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, %i.c
  br i1 %i.ad, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !17   ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48
  %or.cond.i25.i = icmp ult i32 %i.ag, 10
  %i.ah = icmp ult i8 %i.ae, 56
  %or.cond19.i26.i = and i1 %i.ah, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %.split178, label %.backedgethread-pre-split

.split178:                                        ; preds = %bb.d
  store ptr %i.z, ptr %0, align 8, !tbaa !8
  br label %.backedgethread-pre-split

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit: ; preds = %.lr.ph.split, %.split.us, %.split.us.preheader
  store i8 0, ptr %7, align 1, !tbaa !32
  %i.ai = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

._crit_edge:                                      ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit, %.preheader208
  %.0116.lcssa = phi i64 [ 0, %.preheader208 ], [ %i.as, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 2 uses
  %.lcssa214 = phi ptr [ %.promoted225, %.preheader208 ], [ %12, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 2 uses
  %.not6.not.i = icmp eq ptr %.lcssa214, %1
  %or.cond = or i1 %4, %.not6.not.i
  br i1 %or.cond, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.e
  %i.aj = phi ptr [ %i.an, %bb.e ], [ %.lcssa214, %._crit_edge ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.al)
  br i1 %i.am, label %bb.e, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

bb.e:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !8
  %.not.not.i = icmp eq ptr %i.an, %1
  br i1 %.not.not.i, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %.lr.ph.i, !llvm.loop !64

bb.f:                                             ; preds = %.lr.ph228, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit
  %i.ao = phi i8 [ %i.l, %.lr.ph228 ], [ %i.di, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 3 uses
  %.0116227 = phi i64 [ 0, %.lr.ph228 ], [ %i.as, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ]
  %.promoted235 = phi ptr [ %.promoted225, %.lr.ph228 ], [ %12, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 5 uses
  %i.ap = sext i8 %i.ao to i64
  %i.aq = shl nsw i64 %.0116227, 3
  %i.ar = add i64 %i.aq, -48
  %i.as = add i64 %i.ar, %i.ap                    ; 7 uses
  %i.at = ashr i64 %i.as, %i.q
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %8, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %.preheader, %.lr.ph232
  %.0135231 = phi i32 [ %i.aw, %.lr.ph232 ], [ 1, %.preheader ]
  %.0136230 = phi i32 [ %i.ax, %.lr.ph232 ], [ %i.au, %.preheader ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0135231, 1            ; 2 uses
  %i.ax = lshr i32 %.0136230, 1
  %i.ay = icmp samesign ugt i32 %.0136230, 3
  br i1 %i.ay, label %.lr.ph232, label %._crit_edge233, !llvm.loop !65

._crit_edge233:                                   ; preds = %.lr.ph232, %.preheader
  %.0135.lcssa = phi i32 [ 1, %.preheader ], [ %i.aw, %.lr.ph232 ] ; 6 uses
  %notmask = shl nsw i32 -1, %.0135.lcssa
  %i.az = xor i32 %notmask, -1
  %i.ba = trunc i64 %i.as to i32
  %i.bb = and i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = zext nneg i32 %.0135.lcssa to i64
  %i.bd = ashr i64 %i.as, %i.bc                   ; 4 uses
  br i1 %i.s, label %.split.us236, label %.split

.split.us236:                                     ; preds = %._crit_edge233
  %i.be = getelementptr inbounds nuw i8, ptr %.promoted235, i64 1 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !8
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us: ; preds = %.split.us236, %.split183.us
  %i.bg = phi ptr [ %i.bn, %.split183.us ], [ %i.be, %.split.us236 ] ; 3 uses
  %.0121.us239 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ] ; 2 uses
  %.2124.us238 = phi i32 [ %i.bm, %.split183.us ], [ %.0135.lcssa, %.split.us236 ] ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17  ; 3 uses
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48
  %or.cond.i158.us = icmp ult i32 %i.bj, 10
  %i.bk = icmp ult i8 %i.bh, 56
  %or.cond19.i.us = and i1 %i.bk, %or.cond.i158.us
  br i1 %or.cond19.i.us, label %.split183.us, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit

.split183.us:                                     ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us
  %i.bl = icmp eq i8 %i.bh, 48
  %spec.select206.us = and i1 %.0121.us239, %i.bl ; 2 uses
  %i.bm = add nuw nsw i32 %.2124.us238, 3         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 4 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !8
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us, !llvm.loop !66

.split:                                           ; preds = %._crit_edge233, %bb.k
  %i.bp = phi i8 [ %i.ce, %bb.k ], [ %i.ao, %._crit_edge233 ]
  %i.bq = phi ptr [ %i.cd, %bb.k ], [ %.promoted235, %._crit_edge233 ] ; 2 uses
  %.2124 = phi i32 [ %i.cj, %bb.k ], [ %.0135.lcssa, %._crit_edge233 ] ; 3 uses
  %.0121 = phi i1 [ %spec.select206, %bb.k ], [ true, %._crit_edge233 ] ; 3 uses
  %i.br = add i8 %i.bp, -56
  %or.cond19.i.not3.i150 = icmp ult i8 %i.br, -8  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 8 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !8
  %i.bt = icmp eq ptr %i.bs, %1                   ; 2 uses
  %brmerge.i151 = select i1 %or.cond19.i.not3.i150, i1 true, i1 %i.bt
  br i1 %brmerge.i151, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157, label %bb.g

bb.g:                                             ; preds = %.split
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, %1
  br i1 %i.bv, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bx = sext i8 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, %i.r
  br i1 %i.by, label %bb.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

bb.i:                                             ; preds = %bb.h
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !17  ; 2 uses
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48
  %or.cond.i25.i155 = icmp ult i32 %i.cb, 10
  %i.cc = icmp ult i8 %i.bz, 56
  %or.cond19.i26.i156 = and i1 %i.cc, %or.cond.i25.i155
  br i1 %or.cond19.i26.i156, label %bb.j, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.bu, ptr %0, align 8, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157: ; preds = %.split
  %not.or.cond19.i.not3.i152 = xor i1 %or.cond19.i.not3.i150, true
  %.mux.i153 = select i1 %not.or.cond19.i.not3.i152, i1 true, i1 %i.bt
  br i1 %.mux.i153, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread: ; preds = %bb.j, %bb.i, %bb.g, %bb.h, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157
  %i.cd = phi ptr [ %i.bu, %bb.j ], [ %i.bs, %bb.i ], [ %i.bs, %bb.g ], [ %i.bs, %bb.h ], [ %i.bs, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ] ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17  ; 4 uses
  %i.cf = sext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48
  %or.cond.i158 = icmp ult i32 %i.cg, 10
  %i.ch = icmp ult i8 %i.ce, 56
  %or.cond19.i = and i1 %i.ch, %or.cond.i158
  br i1 %or.cond19.i, label %bb.k, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread
  %i.ci = icmp eq i8 %i.ce, 48
  %spec.select206 = and i1 %.0121, %i.ci
  %i.cj = add nuw nsw i32 %.2124, 3
  br label %.split, !llvm.loop !66

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us, %.split183.us, %.split.us236
  %.promoted.i159 = phi ptr [ %i.bn, %.split183.us ], [ %i.be, %.split.us236 ], [ %i.bg, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %i.bs, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ], [ %i.cd, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ] ; 2 uses
  %.us-phi = phi i32 [ %i.bm, %.split183.us ], [ %.0135.lcssa, %.split.us236 ], [ %.2124.us238, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %.2124, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ], [ %.2124, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ]
  %.us-phi237 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ], [ %.0121.us239, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %.0121, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ], [ %.0121, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ]
  %.not6.not.i160 = icmp eq ptr %.promoted.i159, %1
  %or.cond323 = select i1 %4, i1 true, i1 %.not6.not.i160
  br i1 %or.cond323, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit, %bb.l
  %i.ck = phi ptr [ %i.co, %bb.l ], [ %.promoted.i159, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit ] ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = sext i8 %i.cl to i32
  %i.cn = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.cm)
  br i1 %i.cn, label %bb.l, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

bb.l:                                             ; preds = %.lr.ph.i161
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 3 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !8
  %.not.not.i165 = icmp eq ptr %i.co, %1
  br i1 %.not.not.i165, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166, label %.lr.ph.i161, !llvm.loop !64

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166: ; preds = %bb.l, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit
  %i.cp = add nsw i32 %.0135.lcssa, -1
  %i.cq = shl nuw i32 1, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i32 %i.bb, %i.cq
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166
  %i.cs = add nsw i64 %i.bd, 1
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.n:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166
  %i.ct = icmp eq i32 %i.bb, %i.cq
  br i1 %i.ct, label %bb.o, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cu = and i64 %i.bd, 1
  %i.cv = icmp eq i64 %i.cu, 0
  %or.cond3 = select i1 %i.cv, i1 %.us-phi237, i1 false
  %not.or.cond3 = xor i1 %or.cond3, true
  %i.cw = zext i1 %not.or.cond3 to i64
  %spec.select = add nsw i64 %i.bd, %i.cw
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

8:                                                ; preds = %bb.f
  br i1 %i.s, label %.split189.a, label %bb.p

.split189.a:                                      ; preds = %8
  %i.cx = getelementptr i8, ptr %.promoted235, i64 1 ; 3 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !8
  %i.cy = icmp eq ptr %i.cx, %1
  br i1 %i.cy, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.p:                                             ; preds = %8
  %9 = icmp ugt i8 %i.ao, 55                      ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.promoted235, i64 1 ; 7 uses
  store ptr %10, ptr %0, align 8, !tbaa !8
  %11 = icmp eq ptr %10, %1                       ; 2 uses
  %brmerge.i169 = select i1 %9, i1 true, i1 %11
  br i1 %brmerge.i169, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit175, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %.promoted235, i64 2 ; 4 uses
  %i.da = icmp eq ptr %i.cz, %1
  br i1 %i.da, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = load i8, ptr %10, align 1, !tbaa !17
  %i.dc = sext i8 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, %i.r
  br i1 %i.dd, label %bb.s, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cz, align 1, !tbaa !17  ; 2 uses
  %i.df = sext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -48
  %or.cond.i25.i173 = icmp ult i32 %i.dg, 10
  %i.dh = icmp ult i8 %i.de, 56
  %or.cond19.i26.i174 = and i1 %i.dh, %or.cond.i25.i173
  br i1 %or.cond19.i26.i174, label %bb.t, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.t:                                             ; preds = %bb.s
  store ptr %i.cz, ptr %0, align 8, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit175: ; preds = %bb.p
  %not.or.cond19.i.not3.i170 = xor i1 %9, true
  %.mux.i171 = select i1 %not.or.cond19.i.not3.i170, i1 true, i1 %11
  %cond.fr = freeze i1 %.mux.i171
  br i1 %cond.fr, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit: ; preds = %bb.t, %bb.s, %bb.q, %bb.r, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit175, %.split189.a
  %12 = phi ptr [ %i.cz, %bb.t ], [ %10, %bb.s ], [ %10, %bb.q ], [ %10, %bb.r ], [ %10, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit175 ], [ %i.cx, %.split189.a ] ; 3 uses
  %i.di = load i8, ptr %12, align 1, !tbaa !17    ; 3 uses
  %i.dj = sext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48
  %or.cond.i = icmp ult i32 %i.dk, 10
  %i.dl = icmp slt i8 %i.di, 56
  %i.dm = and i1 %i.dl, %or.cond.i
  br i1 %i.dm, label %bb.f, label %._crit_edge

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread: ; preds = %.split189.a, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit175, %bb.e, %._crit_edge
  %.5.ph.ph = phi i64 [ %.0116.lcssa, %._crit_edge ], [ %.0116.lcssa, %bb.e ], [ %i.as, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit175 ], [ %i.as, %.split189.a ] ; 2 uses
  store i8 0, ptr %7, align 1, !tbaa !32
  %i.dn = icmp eq i64 %.5.ph.ph, 0
  br label %bb.u

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread: ; preds = %bb.m, %bb.n, %bb.o
  %.1117 = phi i64 [ %i.cs, %bb.m ], [ %spec.select, %bb.o ], [ %i.bd, %bb.n ] ; 2 uses
  %i.do = shl nuw nsw i64 1, %i.q
  %i.dp = and i64 %.1117, %i.do
  %.not146 = icmp ne i64 %i.dp, 0                 ; 2 uses
  %i.dq = zext i1 %.not146 to i32
  %.4126 = add nuw nsw i32 %.us-phi, %i.dq        ; 3 uses
  %i.dr = zext i1 %.not146 to i64
  %.2118 = ashr i64 %.1117, %i.dr                 ; 5 uses
  store i8 0, ptr %7, align 1, !tbaa !32
  %i.ds = icmp eq i32 %.4126, 0
  %i.dt = icmp eq i64 %.2118, 0                   ; 2 uses
  %or.cond5 = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond5, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread
  %i.du = phi i1 [ %i.dn, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread ], [ %i.dt, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread ]
  %.5.ph294 = phi i64 [ %.5.ph.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread ], [ %.2118, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread ] ; 2 uses
  br i1 %2, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  br i1 %i.du, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dv = sub nsw i64 0, %.5.ph294
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.6 = phi i64 [ %i.dv, %bb.w ], [ %.5.ph294, %bb.u ]
  %i.dw = sitofp i64 %.6 to double
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

bb.y:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread
  %i.dx = icmp ugt i64 %.2118, 9007199254740991
  br i1 %i.dx, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %.01521.i.i = phi i32 [ %i.dz, %.lr.ph.i.i ], [ %.4126, %bb.y ]
  %.01620.i.i = phi i64 [ %i.dy, %.lr.ph.i.i ], [ %.2118, %bb.y ] ; 2 uses
  %i.dy = lshr i64 %.01620.i.i, 1                 ; 2 uses
  %i.dz = add nsw i32 %.01521.i.i, 1              ; 2 uses
  %i.ea = icmp ugt i64 %.01620.i.i, 18014398509481983
  br i1 %i.ea, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !61

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.y
  %.016.lcssa.i.i = phi i64 [ %.2118, %bb.y ], [ %i.dy, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.4126, %bb.y ], [ %i.dz, %.lr.ph.i.i ] ; 5 uses
  %i.eb = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.eb, label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ec = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.ec, label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.z
  %i.ed = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.ee = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.ef = icmp eq i64 %i.ee, 0                    ; 2 uses
  %i.eg = and i1 %i.ed, %i.ef
  br i1 %i.eg, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.ei, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.eh, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.eh = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.ei = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.ej = icmp sgt i32 %.124.i.i, -1073
  %i.ek = and i64 %.11723.i.i, 2251799813685248
  %i.el = icmp eq i64 %i.ek, 0                    ; 2 uses
  %i.em = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %i.em, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !62

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.eh, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.ei, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ef, %.preheader.i.i ], [ %i.el, %.lr.ph25.i.i ]
  %i.en = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.en, i1 %.lcssa.i.i, i1 false
  %i.eo = add nsw i32 %.1.lcssa.i.i, 1075
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.eq
  %i.er = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.es = or disjoint i64 %.0.i.i, %i.er
  %i.et = bitcast i64 %i.es to double
  br label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit

_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit: ; preds = %._crit_edge.i.i, %bb.z, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.et, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.eu = fneg double %.018.i.i
  %i.ev = select i1 %2, double %i.eu, double %.018.i.i
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201: ; preds = %.lr.ph.i161, %.lr.ph.i, %bb.v, %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, %bb.x, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit
  %.4 = phi double [ %i.ai, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit ], [ -0.000000e+00, %bb.v ], [ %i.ev, %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit ], [ %i.dw, %bb.x ], [ %5, %.lr.ph.i ], [ %5, %.lr.ph.i161 ]
  ret double %.4
}

declare noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr, i32, i32 noundef) local_unnamed_addr #4

declare noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr, i32, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef range(i32 -128, 65536) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %0, 128
  br i1 %i.a, label %.preheader.preheader, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %bb.a
  switch i32 %0, label %bb.b [
    i32 160, label %.thread
    i32 8232, label %.thread
    i32 8233, label %.thread
    i32 5760, label %.thread
    i32 6158, label %.thread
    i32 8192, label %.thread
    i32 8193, label %.thread
    i32 8194, label %.thread
    i32 8195, label %.thread
    i32 8196, label %.thread
    i32 8197, label %.thread
    i32 8198, label %.thread
    i32 8199, label %.thread
    i32 8200, label %.thread
    i32 8201, label %.thread
    i32 8202, label %.thread
    i32 8239, label %.thread
    i32 8287, label %.thread
    i32 12288, label %.thread
    i32 65279, label %.thread
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 33
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %.preheader20.preheader
  br label %.thread

switch.lookup:                                    ; preds = %.preheader.preheader
  %switch.cast = zext nneg i32 %0 to i33
  %switch.downshift = lshr i33 -4294951424, %switch.cast
  %switch.masked = trunc i33 %switch.downshift to i1
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %bb.b
  %.2 = phi i1 [ %switch.masked, %switch.lookup ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ false, %bb.b ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ]
  ret i1 %.2
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8, !tbaa !41
  br label %.preheader13

.preheader:                                       ; preds = %bb.a, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit
  %.pn.i = phi ptr [ %.011.i, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %2, %bb.a ]
  %.011.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.a = load i8, ptr %.011.i, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.a, 0                    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !41
  %i.d = icmp eq ptr %i.c, %1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %or.cond, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKtPFccEEEbPT_S7_PKcT0_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = load i16, ptr %i.c, align 2, !tbaa !43
  %i.f = trunc i16 %i.e to i8
  %i.g = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
end_hunk_0
