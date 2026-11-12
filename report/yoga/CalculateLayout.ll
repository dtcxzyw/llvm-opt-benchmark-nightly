Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1645
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a

.lr.ph.i.i.i1747:                                 ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1755.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.i.i.i1747
  %.013.i.i.i1748 = phi ptr [ %i.te, %.lr.ph.i.i.i1747 ], [ %i.td, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1755.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.te = load ptr, ptr %.013.i.i.i1748, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1748, i64 noundef 24) #16
  %.not.i.i.i1749 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i1749, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1750, label %.lr.ph.i.i.i1747, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1750: ; preds = %.lr.ph.i.i.i1747, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1755.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %common.resume

.thread2348:                                      ; preds = %bb.am, %bb.ai
  %.260.i = phi ptr [ %.058.i2941, %bb.ai ], [ %i.sv, %bb.am ] ; 2 uses
  %i.tf = load i64, ptr %i.sg, align 8, !tbaa !95
  %i.tg = add i64 %i.tf, 1                        ; 2 uses
  %i.th = load ptr, ptr %13, align 8, !tbaa !92   ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 696
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 704
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !84
  %i.tl = load ptr, ptr %i.ti, align 8, !tbaa !85 ; 2 uses
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = ashr exact i64 %i.to, 3
  %.not11.i.i1736 = icmp ult i64 %i.tg, %i.tp
  br i1 %.not11.i.i1736, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i1740, label %.lr.ph.i.i1737

.lr.ph.i.i1737:                                   ; preds = %.thread2348, %tailrecurse.i.i1738
  %i.tq = load ptr, ptr %i.sj, align 8, !tbaa !96 ; 5 uses
  %i.tr = icmp eq ptr %i.tq, null
  br i1 %i.tr, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i1743, label %tailrecurse.i.i1738, !prof !74

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i1743: ; preds = %.lr.ph.i.i1737
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745

tailrecurse.i.i1738:                              ; preds = %.lr.ph.i.i1737
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !98
  store ptr %i.tt, ptr %13, align 8, !tbaa !92
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !99
  store i64 %i.tv, ptr %i.sg, align 8, !tbaa !95
  %i.tw = load ptr, ptr %i.tq, align 8, !tbaa !94
  store ptr %i.tw, ptr %i.sj, align 8, !tbaa !94
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef 24) #16, !inline_history !100
  %i.tx = load i64, ptr %i.sg, align 8, !tbaa !95
  %i.ty = add i64 %i.tx, 1                        ; 2 uses
  %i.tz = load ptr, ptr %13, align 8, !tbaa !92   ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 696
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 704
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !84
  %i.ud = load ptr, ptr %i.ua, align 8, !tbaa !85 ; 2 uses
  %i.ue = ptrtoint ptr %i.uc to i64
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = sub i64 %i.ue, %i.uf
  %i.uh = ashr exact i64 %i.ug, 3
  %.not.i.i1739 = icmp ult i64 %i.ty, %i.uh
  br i1 %.not.i.i1739, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i1740, label %.lr.ph.i.i1737

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i1740:  ; preds = %tailrecurse.i.i1738, %.thread2348
  %i.ui = phi ptr [ %i.th, %.thread2348 ], [ %i.tz, %tailrecurse.i.i1738 ]
  %.lcssa6.i.i1741 = phi i64 [ %i.tg, %.thread2348 ], [ %i.ty, %tailrecurse.i.i1738 ] ; 3 uses
  %.lcssa.i.i1742 = phi ptr [ %i.tl, %.thread2348 ], [ %i.ud, %tailrecurse.i.i1738 ]
  store i64 %.lcssa6.i.i1741, ptr %i.sg, align 8, !tbaa !95
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.i.i1742, i64 %.lcssa6.i.i1741
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !23
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 60
  %i.um = load i8, ptr %i.ul, align 4
  %i.un = and i8 %i.um, 12
  %i.uo = icmp eq i8 %i.un, 8
  br i1 %i.uo, label %bb.an, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745, !prof !93

bb.an:                                            ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i1740
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #17
          to label %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745_crit_edge unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1755.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745_crit_edge: ; preds = %bb.an
  %.pre3208 = load ptr, ptr %13, align 8, !tbaa !92
  %.pre3209 = load i64, ptr %i.sg, align 8
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745: ; preds = %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745_crit_edge, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i1743, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i1740
  %i.up = phi i64 [ %.pre3209, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745_crit_edge ], [ 0, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i1743 ], [ %.lcssa6.i.i1741, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i1740 ] ; 2 uses
  %i.uq = phi ptr [ %.pre3208, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745_crit_edge ], [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i1743 ], [ %i.ui, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i1740 ] ; 2 uses
  %.not.i1767 = icmp ne ptr %i.uq, null
  %i.ur = icmp ne i64 %i.up, 0
  %i.us = select i1 %.not.i1767, i1 true, i1 %i.ur
  br i1 %i.us, label %bb.af, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1735

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1735: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745, %bb.aj, %bb.al, %bb.am, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1774
  %.361.i = phi ptr [ null, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1774 ], [ %.260.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1745 ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.aj ]
  %i.ut = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i1726 = icmp eq ptr %i.uu, null
  br i1 %.not12.i.i.i1726, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1730, label %.lr.ph.i.i.i1727

.lr.ph.i.i.i1727:                                 ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1735, %.lr.ph.i.i.i1727
  %.013.i.i.i1728 = phi ptr [ %i.uv, %.lr.ph.i.i.i1727 ], [ %i.uu, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1735 ] ; 2 uses
  %i.uv = load ptr, ptr %.013.i.i.i1728, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1728, i64 noundef 24) #16
  %.not.i.i.i1729 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i1729, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1730, label %.lr.ph.i.i.i1727, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1730: ; preds = %.lr.ph.i.i.i1727, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1735
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1730, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit908
  %.4.i = phi ptr [ %.361.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1730 ], [ null, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit908 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 5 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 5 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !84, !noalias !160
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !85, !noalias !160 ; 2 uses
  %.not.i1719 = icmp eq ptr %i.uy, %i.uz
  br i1 %.not.i1719, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %0, ptr %14, align 8, !tbaa !92, !alias.scope !160
  %i.va = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.va, i8 0, i64 16, i1 false), !alias.scope !160
  %i.vc = load ptr, ptr %i.uz, align 8, !tbaa !23, !noalias !160
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 60
  %i.ve = load i8, ptr %i.vd, align 4, !noalias !160
  %i.vf = and i8 %i.ve, 12
  %i.vg = icmp eq i8 %i.vf, 8
  br i1 %i.vg, label %bb.aq, label %.lr.ph2950, !prof !93

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725_crit_edge unwind label %bb.ar

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725_crit_edge: ; preds = %bb.aq
  %.pre3210 = load ptr, ptr %14, align 8, !tbaa !92
  %.pre3212 = load i64, ptr %i.va, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725

bb.ar:                                            ; preds = %bb.aq
  %i.vh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vi = load ptr, ptr %i.vb, align 8, !tbaa !94, !alias.scope !160 ; 2 uses
  %.not12.i.i.i.i1720 = icmp eq ptr %i.vi, null
  br i1 %.not12.i.i.i.i1720, label %common.resume, label %.lr.ph.i.i.i.i1721

.lr.ph.i.i.i.i1721:                               ; preds = %bb.ar, %.lr.ph.i.i.i.i1721
  %.013.i.i.i.i1722 = phi ptr [ %i.vj, %.lr.ph.i.i.i.i1721 ], [ %i.vi, %bb.ar ] ; 2 uses
  %i.vj = load ptr, ptr %.013.i.i.i.i1722, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i1722, i64 noundef 24) #16
  %.not.i.i.i3.i1723 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i.i3.i1723, label %common.resume, label %.lr.ph.i.i.i.i1721, !llvm.loop !0

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !160
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725_crit_edge, %bb.as
  %i.vk = phi i64 [ %.pre3212, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725_crit_edge ], [ 0, %bb.as ] ; 2 uses
  %i.vl = phi ptr [ %.pre3210, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725_crit_edge ], [ null, %bb.as ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.not.i17182948 = icmp ne ptr %i.vl, null
  %i.vn = icmp ne i64 %i.vk, 0
  %i.vo = select i1 %.not.i17182948, i1 true, i1 %i.vn
  br i1 %i.vo, label %.lr.ph2950, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1717

.lr.ph2950:                                       ; preds = %bb.ap, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725
  %i.vp = phi ptr [ %i.vm, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725 ], [ %i.va, %bb.ap ] ; 5 uses
  %i.vq = phi ptr [ %i.vl, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725 ], [ %0, %bb.ap ]
  %i.vr = phi i64 [ %i.vk, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725 ], [ 0, %bb.ap ]
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.old2494 = fcmp ord float %i.rh, 0.000000e+00  ; 3 uses
  %i.vt = fcmp ord float %i.rj, 0.000000e+00      ; 3 uses
  %i.vu = icmp eq i32 %4, 0
  %i.vv = icmp eq i32 %5, 0
  %.not3213 = xor i1 %i.pj, true
  %.0.i.i.i1596 = zext i1 %.not3213 to i32
  %.0.i.i4.i1598 = select i1 %i.pj, i32 2, i32 3
  %i.vw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph2950, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1595
  %i.vx = phi i64 [ %i.vr, %.lr.ph2950 ], [ %i.aoi, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1595 ] ; 3 uses
  %i.vy = phi ptr [ %i.vq, %.lr.ph2950 ], [ %i.aoj, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1595 ] ; 2 uses
  %.062.i2949 = phi float [ 0.000000e+00, %.lr.ph2950 ], [ %.163.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1595 ] ; 4 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 696
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 704
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !84
  %i.wc = load ptr, ptr %i.vz, align 8, !tbaa !85 ; 2 uses
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = sub i64 %i.wd, %i.we
  %i.wg = ashr exact i64 %i.wf, 3                 ; 2 uses
  %.not.i.i.i.i1705 = icmp ult i64 %i.vx, %i.wg
  br i1 %.not.i.i.i.i1705, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %i.vx
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !23 ; 62 uses
  invoke void @_ZN8facebook4yoga4Node17processDimensionsEv(ptr noundef nonnull align 8 dereferenceable(744) %i.wi)
          to label %bb.av unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

bb.av:                                            ; preds = %bb.au
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 56 ; 41 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 60 ; 5 uses
  %i.wl = load i8, ptr %i.wk, align 4
  %i.wm = and i8 %i.wl, 12
  %i.wn = icmp eq i8 %i.wm, 4
  br i1 %i.wn, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  br i1 %8, label %bb.ax, label %bb.eh

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN8facebook4yoga24zeroOutLayoutRecursivelyEPNS0_4NodeE(ptr noundef nonnull %i.wi)
          to label %bb.ay unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

bb.ay:                                            ; preds = %bb.ax
  %i.wo = load i8, ptr %i.wi, align 8
  %i.wp = or i8 %i.wo, 1
  store i8 %i.wp, ptr %i.wi, align 8
  invoke void @_ZN8facebook4yoga4Node8setDirtyEb(ptr noundef nonnull align 8 dereferenceable(744) %i.wi, i1 noundef zeroext false)
          to label %bb.eh unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

bb.az:                                            ; preds = %bb.av
  br i1 %8, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.wq = invoke noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744) %i.wi, i8 noundef zeroext %i.t)
          to label %bb.bb unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN8facebook4yoga4Node11setPositionENS0_9DirectionEff(ptr noundef nonnull align 8 dereferenceable(744) %i.wi, i8 noundef zeroext %i.wq, float noundef %i.rh, float noundef %i.rj)
          to label %bb.bc unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.be, %bb.bf, %bb.ei, %bb.ef, %.noexc1600, %.noexc1601, %.noexc1602, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i, %bb.bn, %bb.bp, %.noexc1631, %.noexc1632, %.noexc1633, %.noexc1634, %.noexc1635, %.noexc1636, %.noexc1637, %bb.bq, %.noexc1640, %.noexc1641, %.noexc1642, %.noexc1643, %.noexc1644, %.noexc1645, %.noexc1646, %bb.bt, %.noexc1650, %.noexc1652, %.noexc1654, %.noexc1656, %bb.bx, %.noexc1660, %.noexc1662, %.noexc1664, %.noexc1666, %bb.cg, %bb.cl, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread2364, %.noexc1681, %.noexc1682, %.noexc1683, %.noexc1685, %.noexc1686, %.noexc1687, %.noexc1688, %.noexc1689, %.noexc1690, %.noexc1691, %.noexc1639, %.noexc1692.invoke, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.wr = load ptr, ptr %i.vw, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i1695 = icmp eq ptr %i.wr, null
  br i1 %.not12.i.i.i1695, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1699, label %.lr.ph.i.i.i1696

.lr.ph.i.i.i1696:                                 ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.i.i.i1696
  %.013.i.i.i1697 = phi ptr [ %i.ws, %.lr.ph.i.i.i1696 ], [ %i.wr, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ws = load ptr, ptr %.013.i.i.i1697, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1697, i64 noundef 24) #16
  %.not.i.i.i1698 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i1698, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1699, label %.lr.ph.i.i.i1696, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1699: ; preds = %.lr.ph.i.i.i1696, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %common.resume

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.wt = load i32, ptr %i.wj, align 8
  %i.wu = and i32 %i.wt, 805306368
  %i.wv = icmp eq i32 %i.wu, 536870912
  br i1 %i.wv, label %bb.eh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ww = icmp eq ptr %i.wi, %.4.i
  br i1 %i.ww, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN8facebook4yoga4Node36setLayoutComputedFlexBasisGenerationEj(ptr noundef nonnull align 8 dereferenceable(744) %i.wi, i32 noundef %12)
          to label %bb.bf unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN8facebook4yoga4Node26setLayoutComputedFlexBasisENS0_13FloatOptionalE(ptr noundef nonnull align 8 dereferenceable(744) %i.wi, float 0.000000e+00)
          to label %bb.ef unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

bb.bg:                                            ; preds = %bb.bd
  %i.wx = load i32, ptr %i.ab, align 8
  %i.wy = trunc i32 %i.wx to i8
  %i.wz = lshr i8 %i.wy, 2
  %i.xa = and i8 %i.wz, 3                         ; 2 uses
  br i1 %i.x, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  switch i8 %i.xa, label %bb.bj [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i
    i8 3, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %.0.i.i1605 = phi i8 [ %i.xa, %bb.bj ], [ 2, %bb.bi ], [ 3, %bb.bh ] ; 3 uses
  %i.xb = icmp samesign ugt i8 %.0.i.i1605, 1     ; 15 uses
  %i.xc = select i1 %i.xb, float %i.rh, float %i.rj ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store float +qnan, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store float +qnan, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.xd = invoke float @_ZNK8facebook4yoga4Node16resolveFlexBasisENS0_9DirectionENS0_13FlexDirectionEff(ptr noundef nonnull align 8 dereferenceable(744) %i.wi, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i.i1605, float noundef %i.xc, float noundef %i.rh)
          to label %.noexc1628 unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134 ; 5 uses

.noexc1628:                                       ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wi, i64 728 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.xe, align 8 ; 2 uses
  %i.xf = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.xg = trunc i64 %i.xf to i8
  %i.xh = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.xi = bitcast i32 %i.xh to float              ; 2 uses
  switch i8 %i.xg, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i [
    i8 1, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i
    i8 2, label %bb.bk
  ]

bb.bk:                                            ; preds = %.noexc1628
  %i.xj = fmul float %i.rh, %i.xi
  %i.xk = fmul float %i.xj, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i: ; preds = %bb.bk, %.noexc1628
  %.sroa.0.0.i.i.i = phi float [ %i.xk, %bb.bk ], [ %i.xi, %.noexc1628 ]
  %i.xl = fcmp oge float %.sroa.0.0.i.i.i, 0.000000e+00
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i, %.noexc1628
  %i.xm = phi i1 [ %i.xl, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i ], [ false, %.noexc1628 ] ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wi, i64 736 ; 3 uses
  %.sroa.0.0.copyload.i.i193.i = load i64, ptr %i.xn, align 8 ; 2 uses
  %i.xo = lshr i64 %.sroa.0.0.copyload.i.i193.i, 32
  %i.xp = trunc i64 %i.xo to i8
  %i.xq = trunc i64 %.sroa.0.0.copyload.i.i193.i to i32
  %i.xr = bitcast i32 %i.xq to float              ; 2 uses
  switch i8 %i.xp, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i [
    i8 1, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i
    i8 2, label %bb.bl
  ]

bb.bl:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i
  %i.xs = fmul float %i.rj, %i.xr
  %i.xt = fmul float %i.xs, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i: ; preds = %bb.bl, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i
  %.sroa.0.0.i.i195.i = phi float [ %i.xt, %bb.bl ], [ %i.xr, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i ]
  %i.xu = fcmp oge float %.sroa.0.0.i.i195.i, 0.000000e+00
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i
  %i.xv = phi i1 [ %i.xu, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i ], [ false, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i ] ; 3 uses
  %i.xw = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.xx = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config28isExperimentalFeatureEnabledENS0_19ExperimentalFeatureE(ptr noundef nonnull align 8 dereferenceable(48) %i.xw, i8 noundef zeroext 1)
          to label %.noexc1629 unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134

.noexc1629:                                       ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i
  %or.cond2491 = fcmp ord float %i.xd, %i.xc
  br i1 %or.cond2491, label %bb.bm, label %.critedge.i

bb.bm:                                            ; preds = %.noexc1629
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wi, i64 336
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wi, i64 340
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !161
  %i.yb = fcmp uno float %i.ya, 0.000000e+00
  br i1 %i.yb, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wi, i64 720
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !75
  %i.ye = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config28isExperimentalFeatureEnabledENS0_19ExperimentalFeatureE(ptr noundef nonnull align 8 dereferenceable(48) %i.yd, i8 noundef zeroext 0)
          to label %.noexc1630 unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134

.noexc1630:                                       ; preds = %bb.bn
  br i1 %i.ye, label %bb.bo, label %.noexc1639

bb.bo:                                            ; preds = %.noexc1630
  %i.yf = load i32, ptr %i.xy, align 8, !tbaa !162
  %.not192.i = icmp eq i32 %i.yf, %12
  br i1 %.not192.i, label %.noexc1639, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %.0.i.i.i.i.i1620 = select i1 %i.xb, i32 %i.ac, i32 1 ; 2 uses
  %i.yg = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.wj, i32 noundef %.0.i.i.i.i.i1620, i8 noundef zeroext %i.t)
          to label %.noexc1631 unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134

.noexc1631:                                       ; preds = %bb.bp
  %i.yh = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.wj, i16 %i.yg, float noundef %i.rh)
          to label %.noexc1632 unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134 ; 2 uses

.noexc1632:                                       ; preds = %.noexc1631
  %.sink.i.inv.i.i.i.i1621 = fcmp oge float %i.yh, 0.000000e+00
  %i.yi = select i1 %.sink.i.inv.i.i.i.i1621, float %i.yh, float 0.000000e+00
  %i.yj = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.wj, i32 noundef %.0.i.i.i.i.i1620, i8 noundef zeroext %i.t)
          to label %.noexc1633 unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134

.noexc1633:                                       ; preds = %.noexc1632
  %i.yk = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.wj, i16 %i.yj, float noundef 0.000000e+00)
          to label %.noexc1634 unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134 ; 2 uses

.noexc1634:                                       ; preds = %.noexc1633
  %.sink.i.inv.i6.i.i.i1622 = fcmp oge float %i.yk, 0.000000e+00
  %i.yl = select i1 %.sink.i.inv.i6.i.i.i1622, float %i.yk, float 0.000000e+00
  %i.ym = fadd float %i.yi, %i.yl
  %.0.i.i.i7.i.i1623 = select i1 %i.xb, i32 %i.ag, i32 3 ; 2 uses
  %i.yn = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.wj, i32 noundef %.0.i.i.i7.i.i1623, i8 noundef zeroext %i.t)
end_hunk_0
begin_hunk_1_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  %.not2502 = xor i1 %i.aez, true
  %brmerge = or i1 %i.afk, %.not2502
  br i1 %brmerge, label %.thread2355, label %bb.cy

bb.cx:                                            ; preds = %bb.cp
  br i1 %i.aez, label %bb.cy, label %.thread2355

bb.cy:                                            ; preds = %.noexc1673, %.noexc1673.thread, %bb.cx
  %i.afl = fcmp uno float %i.aet, 0.000000e+00
  %or.cond2504 = and i1 %i.vt, %i.afl
  br i1 %or.cond2504, label %bb.cz, label %.thread2355

bb.cz:                                            ; preds = %bb.cy
  store float %i.rj, ptr %i.d, align 4, !tbaa !16
  store i32 2, ptr %i.f, align 4, !tbaa !14
  br label %.thread2355

.thread2355:                                      ; preds = %.noexc1673, %.noexc1673.thread, %bb.cz, %bb.cy, %bb.cx
  %i.afm = phi float [ %i.aet, %.noexc1673 ], [ %i.aet, %.noexc1673.thread ], [ %i.rj, %bb.cz ], [ %i.aet, %bb.cy ], [ %i.aet, %bb.cx ]
  %i.afn = phi i32 [ %i.aes, %.noexc1673 ], [ %i.aes, %.noexc1673.thread ], [ 2, %bb.cz ], [ %i.aes, %bb.cy ], [ %i.aes, %bb.cx ] ; 6 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.wi, i64 159
  %.sroa.0.0.copyload.i.i1612 = load i16, ptr %i.afo, align 1, !tbaa !12 ; 16 uses
  %i.afp = and i16 %.sroa.0.0.copyload.i.i1612, 7
  %i.afq = icmp eq i16 %i.afp, 0                  ; 3 uses
  br i1 %i.afq, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358, label %bb.da

bb.da:                                            ; preds = %.thread2355
  %i.afr = and i16 %.sroa.0.0.copyload.i.i1612, 8
  %.not.i.i.i1613 = icmp eq i16 %i.afr, 0
  br i1 %.not.i.i.i1613, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.afs = lshr i16 %.sroa.0.0.copyload.i.i1612, 4
  %i.aft = zext nneg i16 %i.afs to i64            ; 6 uses
  %i.afu = icmp ult i16 %.sroa.0.0.copyload.i.i1612, 64 ; 3 uses
  br i1 %i.afu, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.afv = getelementptr inbounds nuw i8, ptr %i.wi, i64 300
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.aft
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i

bb.dd:                                            ; preds = %bb.db
  %i.afx = getelementptr inbounds nuw i8, ptr %i.wi, i64 328
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !101 ; 2 uses
  %i.afz = add nsw i64 %i.aft, -4                 ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !104
  %i.agc = load ptr, ptr %i.afy, align 8, !tbaa !105 ; 2 uses
  %i.agd = ptrtoint ptr %i.agb to i64
  %i.age = ptrtoint ptr %i.agc to i64
  %i.agf = sub i64 %i.agd, %i.age
  %i.agg = ashr exact i64 %i.agf, 2               ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.afz, %i.agg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i, label %.invoke

.invoke:                                          ; preds = %bb.at, %bb.ed, %bb.du, %bb.dl, %bb.dg, %bb.dd
  %.ph4103.ph = phi i64 [ %i.afz, %bb.dd ], [ %i.agp, %bb.dg ], [ %i.ahn, %bb.dl ], [ %i.ajd, %bb.du ], [ %i.akr, %bb.ed ], [ %i.vx, %bb.at ]
  %.ph4104.ph = phi i64 [ %i.agg, %bb.dd ], [ %i.agw, %bb.dg ], [ %i.ahu, %bb.dl ], [ %i.ajk, %bb.du ], [ %i.aky, %bb.ed ], [ %i.wg, %bb.at ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %.ph4103.ph, i64 noundef %.ph4104.ph) #14
          to label %.cont unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i:           ; preds = %bb.dd
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.afz
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i:   ; preds = %bb.dc, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i
  %.0.in.i.i.i.i = phi ptr [ %i.afw, %bb.dc ], [ %i.agh, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i ]
  %.0.i7.i.i.i = load float, ptr %.0.in.i.i.i.i, align 4, !tbaa !17
  %i.agi = fcmp ord float %.0.i7.i.i.i, 0.000000e+00
  br i1 %i.agi, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread.thread, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread: ; preds = %bb.da
  %i.agj = icmp ne i32 %i.aex, 0
  %or.cond14.not.i = or i1 %i.xb, %i.agj
  br i1 %or.cond14.not.i, label %bb.di, label %bb.dh

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread.thread: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i
  %i.agk = icmp ne i32 %i.aex, 0
  %or.cond14.not.i3463 = or i1 %i.xb, %i.agk
  br i1 %or.cond14.not.i3463, label %.thread3465, label %bb.de

bb.de:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread.thread
  br i1 %i.afu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.agl = getelementptr inbounds nuw i8, ptr %i.wi, i64 300
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.aft
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i240.i

bb.dg:                                            ; preds = %bb.de
  %i.agn = getelementptr inbounds nuw i8, ptr %i.wi, i64 328
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !101 ; 2 uses
  %i.agp = add nsw i64 %i.aft, -4                 ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !104
  %i.ags = load ptr, ptr %i.ago, align 8, !tbaa !105 ; 2 uses
  %i.agt = ptrtoint ptr %i.agr to i64
  %i.agu = ptrtoint ptr %i.ags to i64
  %i.agv = sub i64 %i.agt, %i.agu
  %i.agw = ashr exact i64 %i.agv, 2               ; 2 uses
  %.not.i.i.i.i.i238.i = icmp ult i64 %i.agp, %i.agw
  br i1 %.not.i.i.i.i.i238.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i239.i, label %.invoke

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i239.i:        ; preds = %bb.dg
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.agp
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i240.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i240.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i239.i, %bb.df
  %.0.in.i.i.i241.i = phi ptr [ %i.agm, %bb.df ], [ %i.agx, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i239.i ]
  %.0.i7.i.i242.i = load float, ptr %.0.in.i.i.i241.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit245.i

bb.dh:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread
  %i.agy = lshr i16 %.sroa.0.0.copyload.i.i1612, 4
  %i.agz = and i16 %i.agy, 2047
  %i.aha = zext nneg i16 %i.agz to i32            ; 2 uses
  %i.ahb = sub nsw i32 0, %i.aha
  %.not.i6.i.i244.i = icmp slt i16 %.sroa.0.0.copyload.i.i1612, 0
  %i.ahc = select i1 %.not.i6.i.i244.i, i32 %i.ahb, i32 %i.aha
  %i.ahd = sitofp i32 %i.ahc to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit245.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit245.i: ; preds = %bb.dh, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i240.i
  %.sroa.05.0.i.i243.i = phi float [ %i.ahd, %bb.dh ], [ %.0.i7.i.i242.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i240.i ]
  %i.ahe = fsub float %i.aew, %i.acy
  %i.ahf = fdiv float %i.ahe, %.sroa.05.0.i.i243.i
  %i.ahg = fadd float %i.adp, %i.ahf
  store float %i.ahg, ptr %i.d, align 4, !tbaa !16
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358.sink.split

bb.di:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread
  %i.ahh = icmp eq i32 %i.afn, 0
  %or.cond16.i = and i1 %i.xb, %i.ahh
  br i1 %or.cond16.i, label %bb.dm, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358

.thread3465:                                      ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread.thread
  %i.ahi = icmp eq i32 %i.afn, 0
  %or.cond16.i3466 = and i1 %i.xb, %i.ahi
  br i1 %or.cond16.i3466, label %bb.dj, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358

bb.dj:                                            ; preds = %.thread3465
  br i1 %i.afu, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.wi, i64 300
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %i.aft
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i250.i

bb.dl:                                            ; preds = %bb.dj
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.wi, i64 328
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !101 ; 2 uses
  %i.ahn = add nsw i64 %i.aft, -4                 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !104
  %i.ahq = load ptr, ptr %i.ahm, align 8, !tbaa !105 ; 2 uses
  %i.ahr = ptrtoint ptr %i.ahp to i64
  %i.ahs = ptrtoint ptr %i.ahq to i64
  %i.aht = sub i64 %i.ahr, %i.ahs
  %i.ahu = ashr exact i64 %i.aht, 2               ; 2 uses
  %.not.i.i.i.i.i248.i = icmp ult i64 %i.ahn, %i.ahu
  br i1 %.not.i.i.i.i.i248.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i249.i, label %.invoke

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i249.i:        ; preds = %bb.dl
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.ahn
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i250.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i250.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i249.i, %bb.dk
  %.0.in.i.i.i251.i = phi ptr [ %i.ahk, %bb.dk ], [ %i.ahv, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i249.i ]
  %.0.i7.i.i252.i = load float, ptr %.0.in.i.i.i251.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit255.i

bb.dm:                                            ; preds = %bb.di
  %i.ahw = lshr i16 %.sroa.0.0.copyload.i.i1612, 4
  %i.ahx = and i16 %i.ahw, 2047
  %i.ahy = zext nneg i16 %i.ahx to i32            ; 2 uses
  %i.ahz = sub nsw i32 0, %i.ahy
  %.not.i6.i.i254.i = icmp slt i16 %.sroa.0.0.copyload.i.i1612, 0
  %i.aia = select i1 %.not.i6.i.i254.i, i32 %i.ahz, i32 %i.ahy
  %i.aib = sitofp i32 %i.aia to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit255.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit255.i: ; preds = %bb.dm, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i250.i
  %.sroa.05.0.i.i253.i = phi float [ %i.aib, %bb.dm ], [ %.0.i7.i.i252.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i250.i ]
  %i.aic = fsub float %i.afm, %i.adp
  %i.aid = call float @llvm.fmuladd.f32(float %i.aic, float %.sroa.05.0.i.i253.i, float %i.acy)
  store float %i.aid, ptr %i.c, align 4, !tbaa !16
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358.sink.split

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358.sink.split: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit245.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit255.i
  %.sink = phi ptr [ %i.e, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit255.i ], [ %i.f, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit245.i ]
  store i32 0, ptr %.sink, align 4, !tbaa !14
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358.sink.split, %.thread3465, %.thread2355, %bb.di, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i
  %i.aie = phi i32 [ %i.afn, %.thread2355 ], [ %i.afn, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i ], [ %i.afn, %bb.di ], [ %i.afn, %.thread3465 ], [ 0, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358.sink.split ] ; 4 uses
  %i.aif = phi i32 [ %i.aex, %.thread2355 ], [ %i.aex, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i ], [ %i.aex, %bb.di ], [ %i.aex, %.thread3465 ], [ 0, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358.sink.split ]
  %26 = getelementptr i8, ptr %i.wi, i64 59
  %27 = load i8, ptr %26, align 1
  %i.aig = and i8 %27, 15                         ; 3 uses
  %i.aih = icmp eq i8 %i.aig, 0                   ; 2 uses
  br i1 %i.aih, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358
  %i.aii = load i32, ptr %i.ab, align 8
  %i.aij = lshr i32 %i.aii, 20
  %i.aik = trunc i32 %i.aij to i8
  %i.ail = and i8 %i.aik, 15
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358
  %i.aim = phi i8 [ %i.ail, %bb.dn ], [ %i.aig, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i.thread2358 ] ; 2 uses
  %i.ain = load i8, ptr %i.vs, align 4
  %i.aio = and i8 %i.ain, 12
  %i.aip = icmp eq i8 %i.aio, 0                   ; 2 uses
  %i.aiq = icmp eq i8 %i.aim, 5
  %or.cond.i.i1614 = and i1 %i.aiq, %i.aip
  br i1 %or.cond.i.i1614, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.air = load i32, ptr %i.ab, align 8
  %i.ais = and i32 %i.air, 8
  %.not.not.i.i = icmp eq i32 %i.ais, 0
  br i1 %.not.not.i.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ait = icmp eq i8 %i.aim, 4
  br label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i: ; preds = %bb.dq, %bb.dp
  %.0.i256.i = phi i1 [ %i.ait, %bb.dq ], [ false, %bb.dp ]
  %i.aiu = icmp ne i32 %i.aif, 0
  %or.cond18.i = or i1 %i.xb, %i.xm
  %or.cond18.not.i = xor i1 %or.cond18.i, true
  %i.aiv = and i1 %i.vu, %or.cond18.not.i
  %i.aiw = and i1 %i.aiv, %.0.i256.i
  %i.aix = and i1 %i.aiu, %i.aiw
  %or.cond22.i = and i1 %.old2494, %i.aix
  br i1 %or.cond22.i, label %bb.dr, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361

bb.dr:                                            ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  store float %i.rh, ptr %i.c, align 4, !tbaa !16
  store i32 0, ptr %i.e, align 4, !tbaa !14
  br i1 %i.afq, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aiy = and i16 %.sroa.0.0.copyload.i.i1612, 8
  %.not.i.i258.i = icmp eq i16 %i.aiy, 0
  %.pre3268 = lshr i16 %.sroa.0.0.copyload.i.i1612, 4 ; 2 uses
  br i1 %.not.i.i258.i, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aiz = zext nneg i16 %.pre3268 to i64         ; 2 uses
  %i.aja = icmp ult i16 %.sroa.0.0.copyload.i.i1612, 64
  br i1 %i.aja, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.wi, i64 328
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !101 ; 2 uses
  %i.ajd = add nsw i64 %i.aiz, -4                 ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !104
  %i.ajg = load ptr, ptr %i.ajc, align 8, !tbaa !105 ; 2 uses
  %i.ajh = ptrtoint ptr %i.ajf to i64
  %i.aji = ptrtoint ptr %i.ajg to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  %i.ajk = ashr exact i64 %i.ajj, 2               ; 2 uses
  %.not.i.i.i.i.i259.i = icmp ult i64 %i.ajd, %i.ajk
  br i1 %.not.i.i.i.i.i259.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread, label %.invoke

_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i: ; preds = %bb.dt
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.wi, i64 300
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.aiz
  %.0.i7.i.i263.i = load float, ptr %i.ajm, align 4, !tbaa !17 ; 2 uses
  %i.ajn = fcmp ord float %.0.i7.i.i263.i, 0.000000e+00
  br i1 %i.ajn, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit276.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361

_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread: ; preds = %bb.du
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajd
  %.0.i7.i.i263.i3756 = load float, ptr %i.ajo, align 4, !tbaa !17 ; 2 uses
  %i.ajp = fcmp ord float %.0.i7.i.i263.i3756, 0.000000e+00
  br i1 %i.ajp, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit276.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361

bb.dv:                                            ; preds = %bb.ds
  %i.ajq = and i16 %.pre3268, 2047
  %i.ajr = zext nneg i16 %i.ajq to i32            ; 2 uses
  %i.ajs = sub nsw i32 0, %i.ajr
  %.not.i6.i.i275.i = icmp slt i16 %.sroa.0.0.copyload.i.i1612, 0
  %i.ajt = select i1 %.not.i6.i.i275.i, i32 %i.ajs, i32 %i.ajr
  %i.aju = sitofp i32 %i.ajt to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit276.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit276.i: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread, %bb.dv
  %.sroa.05.0.i.i274.i = phi float [ %i.aju, %bb.dv ], [ %.0.i7.i.i263.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i ], [ %.0.i7.i.i263.i3756, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread ]
  %i.ajv = fsub float %i.rh, %i.acy
  %i.ajw = fdiv float %i.ajv, %.sroa.05.0.i.i274.i
  store float %i.ajw, ptr %i.d, align 4, !tbaa !16
  store i32 0, ptr %i.f, align 4, !tbaa !14
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361

_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread, %bb.dr, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit276.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  %i.ajx = phi i32 [ %i.aie, %bb.dr ], [ 0, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit276.i ], [ %i.aie, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i ], [ %i.aie, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i ], [ %i.aie, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread ]
  br i1 %i.aih, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361
  %i.ajy = load i32, ptr %i.ab, align 8
  %i.ajz = lshr i32 %i.ajy, 20
  %i.aka = trunc i32 %i.ajz to i8
  %i.akb = and i8 %i.aka, 15
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361
  %i.akc = phi i8 [ %i.akb, %bb.dw ], [ %i.aig, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit266.i.thread2361 ] ; 2 uses
  %i.akd = icmp eq i8 %i.akc, 5
  %or.cond.i277.i = and i1 %i.aip, %i.akd
  br i1 %or.cond.i277.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.ake = load i32, ptr %i.ab, align 8
  %i.akf = and i32 %i.ake, 8
  %.not.not.i279.i = icmp eq i32 %i.akf, 0
  br i1 %.not.not.i279.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit280.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.akg = icmp eq i8 %i.akc, 4
  br label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit280.i

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit280.i: ; preds = %bb.dz, %bb.dy
  %.0.i278.i = phi i1 [ %i.akg, %bb.dz ], [ false, %bb.dy ]
  %i.akh = icmp ne i32 %i.ajx, 0
  %.not191.i = xor i1 %i.xv, true
  %i.aki = and i1 %i.vv, %.not191.i
  %i.akj = and i1 %i.aki, %.0.i278.i
  %i.akk = and i1 %i.akh, %i.akj
  %i.akl = and i1 %i.vt, %i.akk
  %or.cond29.i = and i1 %i.xb, %i.akl
  br i1 %or.cond29.i, label %bb.ea, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread2364

bb.ea:                                            ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit280.i
  store float %i.rj, ptr %i.d, align 4, !tbaa !16
  store i32 0, ptr %i.f, align 4, !tbaa !14
  br i1 %i.afq, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread2364, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.akm = and i16 %.sroa.0.0.copyload.i.i1612, 8
  %.not.i.i282.i = icmp eq i16 %i.akm, 0
  %.pre3266 = lshr i16 %.sroa.0.0.copyload.i.i1612, 4 ; 2 uses
  br i1 %.not.i.i282.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.akn = zext nneg i16 %.pre3266 to i64         ; 2 uses
  %i.ako = icmp ult i16 %.sroa.0.0.copyload.i.i1612, 64
  br i1 %i.ako, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.akp = getelementptr inbounds nuw i8, ptr %i.wi, i64 328
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !101 ; 2 uses
  %i.akr = add nsw i64 %i.akn, -4                 ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !104
  %i.aku = load ptr, ptr %i.akq, align 8, !tbaa !105 ; 2 uses
  %i.akv = ptrtoint ptr %i.akt to i64
  %i.akw = ptrtoint ptr %i.aku to i64
  %i.akx = sub i64 %i.akv, %i.akw
  %i.aky = ashr exact i64 %i.akx, 2               ; 2 uses
  %.not.i.i.i.i.i283.i = icmp ult i64 %i.akr, %i.aky
  br i1 %.not.i.i.i.i.i283.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread, label %.invoke

_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i: ; preds = %bb.ec
  %i.akz = getelementptr inbounds nuw i8, ptr %i.wi, i64 300
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.akz, i64 %i.akn
  %.0.i7.i.i287.i = load float, ptr %i.ala, align 4, !tbaa !17 ; 2 uses
  %i.alb = fcmp ord float %.0.i7.i.i287.i, 0.000000e+00
  br i1 %i.alb, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit300.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread2364

_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread: ; preds = %bb.ed
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.akr
  %.0.i7.i.i287.i3759 = load float, ptr %i.alc, align 4, !tbaa !17 ; 2 uses
  %i.ald = fcmp ord float %.0.i7.i.i287.i3759, 0.000000e+00
  br i1 %i.ald, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit300.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread2364

bb.ee:                                            ; preds = %bb.eb
  %i.ale = and i16 %.pre3266, 2047
  %i.alf = zext nneg i16 %i.ale to i32            ; 2 uses
  %i.alg = sub nsw i32 0, %i.alf
  %.not.i6.i.i299.i = icmp slt i16 %.sroa.0.0.copyload.i.i1612, 0
  %i.alh = select i1 %.not.i6.i.i299.i, i32 %i.alg, i32 %i.alf
  %i.ali = sitofp i32 %i.alh to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit300.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit300.i: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread, %bb.ee
  %.sroa.05.0.i.i298.i = phi float [ %i.ali, %bb.ee ], [ %.0.i7.i.i287.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i ], [ %.0.i7.i.i287.i3759, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread ]
  %i.alj = fsub float %i.rj, %i.adp
  %i.alk = fmul float %i.alj, %.sroa.05.0.i.i298.i
  store float %i.alk, ptr %i.c, align 4, !tbaa !16
  store i32 0, ptr %i.e, align 4, !tbaa !14
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread2364

_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread2364: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i.thread, %bb.ea, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit300.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit290.i, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit280.i
  invoke void @_ZN8facebook4yoga23constrainMaxSizeForModeEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionEffPNS0_10SizingModeEPf(ptr noundef nonnull %i.wi, i8 noundef zeroext %i.t, i8 noundef zeroext 2, float noundef %i.rh, float noundef %i.rh, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c)
end_hunk_1
begin_hunk_2_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  %i.bes = getelementptr inbounds nuw i8, ptr %.sroa.02312.02952, i64 8 ; 2 uses
  %i.bet = icmp eq ptr %i.bes, %i.azy
  br i1 %i.bet, label %.loopexit2624.loopexit3022, label %.lr.ph2953

bb.hw:                                            ; preds = %.noexc944
  br i1 %i.azz, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph2955

.lr.ph2955:                                       ; preds = %bb.hw, %.lr.ph2955
  %.sroa.02308.02954 = phi ptr [ %i.bew, %.lr.ph2955 ], [ %i.azx, %bb.hw ] ; 2 uses
  %i.beu = load ptr, ptr %.sroa.02308.02954, align 8, !tbaa !23
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 344
  store i32 2143289344, ptr %i.bev, align 4, !tbaa !16
  %i.bew = getelementptr inbounds nuw i8, ptr %.sroa.02308.02954, i64 8 ; 2 uses
  %i.bex = icmp eq ptr %i.bew, %i.azy
  br i1 %i.bex, label %.loopexit2624, label %.lr.ph2955

.loopexit2624.loopexit3022:                       ; preds = %.noexc945
  %.pre3223 = load ptr, ptr %20, align 8, !tbaa !21
  %.pre3224 = load ptr, ptr %i.aqo, align 8, !tbaa !21
  br label %.loopexit2624

.loopexit2624:                                    ; preds = %.lr.ph2955, %.loopexit2624.loopexit3022
  %i.bey = phi ptr [ %.pre3224, %.loopexit2624.loopexit3022 ], [ %i.azy, %.lr.ph2955 ] ; 3 uses
  %i.bez = phi ptr [ %.pre3223, %.loopexit2624.loopexit3022 ], [ %i.azx, %.lr.ph2955 ] ; 3 uses
  %i.bfa = icmp eq ptr %i.bez, %i.bey
  br i1 %i.bfa, label %.noexc946, label %.lr.ph.i1895

.lr.ph.i1895:                                     ; preds = %.loopexit2624, %bb.ig
  %.075.i = phi float [ %.1.i1897, %bb.ig ], [ 0.000000e+00, %.loopexit2624 ] ; 9 uses
  %.sroa.070.074.i = phi ptr [ %i.bhe, %bb.ig ], [ %i.bez, %.loopexit2624 ] ; 2 uses
  %i.bfb = load ptr, ptr %.sroa.070.074.i, align 8, !tbaa !23 ; 8 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 340 ; 2 uses
  %.sroa.0.0.copyload.i1896 = load float, ptr %i.bfc, align 4, !tbaa !16
  %i.bfd = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bfb, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i907, float %.sroa.0.0.copyload.i1896, float noundef %i.pl, float noundef %6)
          to label %.noexc1907 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc1907:                                       ; preds = %.lr.ph.i1895
  %i.bfe = load float, ptr %i.aqn, align 8, !tbaa !168 ; 2 uses
  %i.bff = fcmp olt float %i.bfe, 0.000000e+00
  br i1 %i.bff, label %bb.hx, label %bb.ib

bb.hx:                                            ; preds = %.noexc1907
  %i.bfg = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bfb)
          to label %.noexc1908 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1908:                                       ; preds = %bb.hx
  %i.bfh = fneg float %i.bfg
  %i.bfi = fmul float %i.bfd, %i.bfh              ; 2 uses
  %or.cond.i1906 = fcmp ueq float %i.bfi, 0.000000e+00
  br i1 %or.cond.i1906, label %bb.ig, label %bb.hy

bb.hy:                                            ; preds = %.noexc1908
  %i.bfj = load float, ptr %i.aqn, align 8, !tbaa !168
  %i.bfk = load float, ptr %i.aqq, align 4, !tbaa !169
  %i.bfl = fdiv float %i.bfj, %i.bfk
  %i.bfm = call float @llvm.fmuladd.f32(float %i.bfl, float %i.bfi, float %i.bfd) ; 3 uses
  %i.bfn = invoke fastcc noundef float @_ZN8facebook4yogaL20boundAxisWithAutoMinEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %i.bfb, i8 noundef zeroext %.0.i907, i8 noundef zeroext %i.t, float noundef %i.bfm, float noundef %.37872370, float noundef %i.rh)
          to label %.noexc1909 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc1909:                                       ; preds = %bb.hy
  %i.bfo = fcmp ord float %i.bfm, 0.000000e+00
  br i1 %i.bfo, label %bb.hz, label %bb.ig

bb.hz:                                            ; preds = %.noexc1909
  %i.bfp = fcmp ord float %i.bfn, 0.000000e+00
  %i.bfq = fcmp une float %i.bfm, %i.bfn
  %or.cond67.i = and i1 %i.bfp, %i.bfq
  br i1 %or.cond67.i, label %bb.ia, label %bb.ig

bb.ia:                                            ; preds = %bb.hz
  %i.bfr = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bfb)
          to label %.noexc1910 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1910:                                       ; preds = %bb.ia
  %i.bfs = fsub float %i.bfn, %i.bfd
  %i.bft = fadd float %.075.i, %i.bfs
  %i.bfu = load float, ptr %i.bfc, align 4, !tbaa !161
  %i.bfv = load float, ptr %i.aqq, align 4, !tbaa !169
  %i.bfw = call float @llvm.fmuladd.f32(float %i.bfr, float %i.bfu, float %i.bfv)
  store float %i.bfw, ptr %i.aqq, align 4, !tbaa !169
  br label %bb.ig

bb.ib:                                            ; preds = %.noexc1907
  %i.bfx = fcmp ogt float %i.bfe, 0.000000e+00
  br i1 %i.bfx, label %bb.ic, label %bb.ig

bb.ic:                                            ; preds = %bb.ib
  %i.bfy = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bfb)
          to label %.noexc1911 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc1911:                                       ; preds = %bb.ic
  %or.cond3.i1899 = fcmp ueq float %i.bfy, 0.000000e+00
  br i1 %or.cond3.i1899, label %bb.ig, label %bb.id

bb.id:                                            ; preds = %.noexc1911
  %i.bfz = load float, ptr %i.aqn, align 8, !tbaa !168
  %i.bga = load float, ptr %i.aqm, align 8, !tbaa !166
  %i.bgb = fdiv float %i.bfz, %i.bga
  %i.bgc = call float @llvm.fmuladd.f32(float %i.bgb, float %i.bfy, float %i.bfd) ; 3 uses
  %i.bgd = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bfb, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i907, float %i.bgc, float noundef %.37872370, float noundef %i.rh)
          to label %.noexc1912 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1912:                                       ; preds = %bb.id
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfb, i64 56 ; 8 uses
  %i.bgf = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1913 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1913:                                       ; preds = %.noexc1912
  %i.bgg = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i16 %i.bgf, float noundef %i.rh)
          to label %.noexc1914 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1914:                                       ; preds = %.noexc1913
  %.sink.i.inv.i.i.i.i.i1900 = fcmp oge float %i.bgg, 0.000000e+00
  %i.bgh = select i1 %.sink.i.inv.i.i.i.i.i1900, float %i.bgg, float 0.000000e+00
  %i.bgi = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1915 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1915:                                       ; preds = %.noexc1914
  %i.bgj = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i16 %i.bgi, float noundef 0.000000e+00)
          to label %.noexc1916 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1916:                                       ; preds = %.noexc1915
  %.sink.i.inv.i6.i.i.i.i1901 = fcmp oge float %i.bgj, 0.000000e+00
  %i.bgk = select i1 %.sink.i.inv.i6.i.i.i.i1901, float %i.bgj, float 0.000000e+00
  %i.bgl = fadd float %i.bgh, %i.bgk
  %i.bgm = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %i.t)
          to label %.noexc1917 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1917:                                       ; preds = %.noexc1916
  %i.bgn = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i16 %i.bgm, float noundef %i.rh)
          to label %.noexc1918 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1918:                                       ; preds = %.noexc1917
  %.sink.i.inv.i.i8.i.i.i1902 = fcmp oge float %i.bgn, 0.000000e+00
  %i.bgo = select i1 %.sink.i.inv.i.i8.i.i.i1902, float %i.bgn, float 0.000000e+00
  %i.bgp = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %i.t)
          to label %.noexc1919 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1919:                                       ; preds = %.noexc1918
  %i.bgq = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bge, i16 %i.bgp, float noundef 0.000000e+00)
          to label %.noexc1920 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1920:                                       ; preds = %.noexc1919
  %.sink.i.inv.i6.i9.i.i.i1903 = fcmp oge float %i.bgq, 0.000000e+00
  %i.bgr = select i1 %.sink.i.inv.i6.i9.i.i.i1903, float %i.bgq, float 0.000000e+00
  %i.bgs = fadd float %i.bgo, %i.bgr
  %i.bgt = fadd float %i.bgl, %i.bgs              ; 3 uses
  %or.cond.i.i.i1904 = fcmp ord float %i.bgd, %i.bgt
  %i.bgu = fcmp uno float %i.bgd, 0.000000e+00
  %i.bgv = fcmp olt float %i.bgd, %i.bgt
  %.sink.i.i.i1905 = select i1 %or.cond.i.i.i1904, i1 %i.bgv, i1 %i.bgu
  %i.bgw = select i1 %.sink.i.i.i1905, float %i.bgt, float %i.bgd ; 3 uses
  %i.bgx = fcmp ord float %i.bgc, 0.000000e+00
  br i1 %i.bgx, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %.noexc1920
  %i.bgy = fcmp ord float %i.bgw, 0.000000e+00
  %i.bgz = fcmp une float %i.bgc, %i.bgw
  %or.cond68.i = and i1 %i.bgy, %i.bgz
  br i1 %or.cond68.i, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.bha = fsub float %i.bgw, %i.bfd
  %i.bhb = fadd float %.075.i, %i.bha
  %i.bhc = load float, ptr %i.aqm, align 8, !tbaa !166
  %i.bhd = fsub float %i.bhc, %i.bfy
  store float %i.bhd, ptr %i.aqm, align 8, !tbaa !166
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie, %.noexc1920, %.noexc1911, %bb.ib, %.noexc1910, %bb.hz, %.noexc1909, %.noexc1908
  %.1.i1897 = phi float [ %i.bft, %.noexc1910 ], [ %.075.i, %bb.ib ], [ %.075.i, %bb.hz ], [ %.075.i, %.noexc1909 ], [ %.075.i, %.noexc1908 ], [ %i.bhb, %bb.if ], [ %.075.i, %.noexc1911 ], [ %.075.i, %bb.ie ], [ %.075.i, %.noexc1920 ] ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %.sroa.070.074.i, i64 8 ; 2 uses
  %i.bhf = icmp eq ptr %i.bhe, %i.bey
  br i1 %i.bhf, label %.noexc946.loopexit, label %.lr.ph.i1895

.noexc946.loopexit:                               ; preds = %bb.ig
  %.pre3225 = load ptr, ptr %20, align 8, !tbaa !21
  %.pre3226 = load ptr, ptr %i.aqo, align 8, !tbaa !21
  br label %.noexc946

.noexc946:                                        ; preds = %.noexc946.loopexit, %.loopexit2624
  %i.bhg = phi ptr [ %i.bey, %.loopexit2624 ], [ %.pre3226, %.noexc946.loopexit ] ; 2 uses
  %i.bhh = phi ptr [ %i.bez, %.loopexit2624 ], [ %.pre3225, %.noexc946.loopexit ] ; 2 uses
  %.0.lcssa.i = phi float [ 0.000000e+00, %.loopexit2624 ], [ %.1.i1897, %.noexc946.loopexit ]
  %i.bhi = load float, ptr %i.aqn, align 8, !tbaa !168
  %i.bhj = fsub float %i.bhi, %.0.lcssa.i
  store float %i.bhj, ptr %i.aqn, align 8, !tbaa !168
  %i.bhk = icmp eq ptr %i.bhh, %i.bhg
  br i1 %i.bhk, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph2958

.lr.ph2958:                                       ; preds = %.noexc946
  %i.bhl = load i32, ptr %i.ab, align 8
  %i.bhm = icmp ugt i32 %i.bhl, 1073741823
  %or.cond8.i.reass.reass.reass.reass.reass = and i1 %i.bhm, %invariant.op4916
  %invariant.op = or i1 %or.cond8.i.reass.reass.reass.reass.reass, %.not3219 ; 2 uses
  br label %bb.ih

bb.ih:                                            ; preds = %.lr.ph2958, %.noexc1894
  %.0147.i2957 = phi float [ 0.000000e+00, %.lr.ph2958 ], [ %i.bin, %.noexc1894 ]
  %.sroa.02339.02956 = phi ptr [ %i.bhh, %.lr.ph2958 ], [ %i.brg, %.noexc1894 ] ; 2 uses
  %i.bhn = load ptr, ptr %.sroa.02339.02956, align 8, !tbaa !23 ; 38 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 340
  %.sroa.0.0.copyload.i1829 = load float, ptr %i.bho, align 4, !tbaa !16
  %i.bhp = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bhn, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i907, float %.sroa.0.0.copyload.i1829, float noundef %i.pl, float noundef %6)
          to label %.noexc1861 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 9 uses

.noexc1861:                                       ; preds = %bb.ih
  %i.bhq = load float, ptr %i.aqn, align 8, !tbaa !168 ; 3 uses
  %i.bhr = fcmp ord float %i.bhq, 0.000000e+00
  br i1 %i.bhr, label %bb.ii, label %.noexc1863

bb.ii:                                            ; preds = %.noexc1861
  %i.bhs = fcmp olt float %i.bhq, 0.000000e+00
  br i1 %i.bhs, label %bb.ij, label %bb.in

bb.ij:                                            ; preds = %bb.ii
  %i.bht = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bhn)
          to label %.noexc1862 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1862:                                       ; preds = %bb.ij
  %i.bhu = fneg float %i.bht
  %i.bhv = fmul float %i.bhp, %i.bhu              ; 3 uses
  %i.bhw = fcmp une float %i.bhv, 0.000000e+00
  br i1 %i.bhw, label %bb.ik, label %.noexc1863

bb.ik:                                            ; preds = %.noexc1862
  %i.bhx = load float, ptr %i.aqq, align 4, !tbaa !169 ; 2 uses
  %i.bhy = call noundef float @llvm.fabs.f32(float %i.bhx)
  %i.bhz = fcmp olt float %i.bhy, f0x358637BD
  br i1 %i.bhz, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.bia = fadd float %i.bhp, %i.bhv
  br label %.invoke3675

bb.im:                                            ; preds = %bb.ik
  %i.bib = load float, ptr %i.aqn, align 8, !tbaa !168
  %i.bic = fdiv float %i.bib, %i.bhx
  %i.bid = call float @llvm.fmuladd.f32(float %i.bic, float %i.bhv, float %i.bhp)
  br label %.invoke3675

bb.in:                                            ; preds = %bb.ii
  %i.bie = fcmp ogt float %i.bhq, 0.000000e+00
  br i1 %i.bie, label %bb.io, label %.noexc1863

bb.io:                                            ; preds = %bb.in
  %i.bif = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bhn)
          to label %.noexc1864 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 2 uses

.noexc1864:                                       ; preds = %bb.io
  %or.cond3.not.i = fcmp ueq float %i.bif, 0.000000e+00
  br i1 %or.cond3.not.i, label %.noexc1863, label %bb.ip

bb.ip:                                            ; preds = %.noexc1864
  %i.big = load float, ptr %i.aqn, align 8, !tbaa !168
  %i.bih = load float, ptr %i.aqm, align 8, !tbaa !166
  %i.bii = fdiv float %i.big, %i.bih
  %i.bij = call float @llvm.fmuladd.f32(float %i.bii, float %i.bif, float %i.bhp)
  br label %.invoke3675

.invoke3675:                                      ; preds = %bb.il, %bb.im, %bb.ip
  %i.bik = phi float [ %i.bij, %bb.ip ], [ %i.bia, %bb.il ], [ %i.bid, %bb.im ]
  %i.bil = invoke fastcc noundef float @_ZN8facebook4yogaL20boundAxisWithAutoMinEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %i.bhn, i8 noundef zeroext %.0.i907, i8 noundef zeroext %i.t, float noundef %i.bik, float noundef %.37872370, float noundef %i.rh)
          to label %.noexc1863 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1863:                                       ; preds = %.invoke3675, %.noexc1861, %.noexc1864, %bb.in, %.noexc1862
  %.0146.i = phi float [ %i.bil, %.invoke3675 ], [ %i.bhp, %.noexc1862 ], [ %i.bhp, %.noexc1861 ], [ %i.bhp, %.noexc1864 ], [ %i.bhp, %bb.in ] ; 2 uses
  %i.bim = fsub float %.0146.i, %i.bhp
  %i.bin = fadd float %.0147.i2957, %i.bim        ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bhn, i64 56 ; 17 uses
  br i1 %i.pj, label %bb.iq, label %bb.it

bb.iq:                                            ; preds = %.noexc1863
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bhn, i64 77
  %i.biq = load i16, ptr %i.bip, align 1, !tbaa !77 ; 2 uses
  %i.bir = and i16 %i.biq, 7
  %.not14.i.i2223 = icmp eq i16 %i.bir, 0
  br i1 %.not14.i.i2223, label %bb.ir, label %.noexc1866

bb.ir:                                            ; preds = %bb.iq
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bhn, i64 69
  %i.bit = load i16, ptr %i.bis, align 1, !tbaa !77 ; 2 uses
  %i.biu = and i16 %i.bit, 7
  %.not15.i.i2224 = icmp eq i16 %i.biu, 0
  br i1 %.not15.i.i2224, label %bb.is, label %.noexc1866

bb.is:                                            ; preds = %bb.ir
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bhn, i64 81
  %i.biw = load i16, ptr %i.biv, align 1, !tbaa !77 ; 2 uses
  %i.bix = and i16 %i.biw, 7
  %.not16.i.i2225 = icmp eq i16 %i.bix, 0
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bhn, i64 85
  %.val.i.i2226 = load i16, ptr %i.biy, align 1
  %.sroa.0.0.pre.i.i2227 = select i1 %.not16.i.i2225, i16 %.val.i.i2226, i16 %i.biw
  br label %.noexc1866

bb.it:                                            ; preds = %.noexc1863
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bhn, i64 71 ; 2 uses
  %i.bja = load i16, ptr %i.biz, align 1, !tbaa !77
  %i.bjb = and i16 %i.bja, 7
  %.not.i3.i2218 = icmp eq i16 %i.bjb, 0
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bhn, i64 83 ; 2 uses
  %i.bjd = load i16, ptr %i.bjc, align 1
  %i.bje = and i16 %i.bjd, 7
  %.not7.i.i2219 = icmp eq i16 %i.bje, 0
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bhn, i64 85
  %spec.select.i.i2220 = select i1 %.not7.i.i2219, ptr %i.bjf, ptr %i.bjc
  %.sroa.0.0.in.i.i2221 = select i1 %.not.i3.i2218, ptr %spec.select.i.i2220, ptr %i.biz
  %.sroa.0.0.i4.i2222 = load i16, ptr %.sroa.0.0.in.i.i2221, align 1, !tbaa !12
  br label %.noexc1866

.noexc1866:                                       ; preds = %bb.it, %bb.is, %bb.ir, %bb.iq
  %.sroa.0.0.i2212 = phi i16 [ %i.biq, %bb.iq ], [ %.sroa.0.0.i4.i2222, %bb.it ], [ %i.bit, %bb.ir ], [ %.sroa.0.0.pre.i.i2227, %bb.is ]
  %i.bjg = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i16 %.sroa.0.0.i2212, float noundef %i.rh)
          to label %.noexc1867 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 2 uses

.noexc1867:                                       ; preds = %.noexc1866
  %.inv.i.i.i1831 = fcmp ord float %i.bjg, 0.000000e+00
  %i.bjh = select i1 %.inv.i.i.i1831, float %i.bjg, float 0.000000e+00
  %i.bji = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %.0.i.i4.i.i1832, i8 noundef zeroext 1)
          to label %.noexc1868 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1868:                                       ; preds = %.noexc1867
  %i.bjj = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i16 %i.bji, float noundef %i.rh)
          to label %.noexc1869 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 2 uses

.noexc1869:                                       ; preds = %.noexc1868
  %.inv.i5.i.i1833 = fcmp ord float %i.bjj, 0.000000e+00
  %i.bjk = select i1 %.inv.i5.i.i1833, float %i.bjj, float 0.000000e+00
  %i.bjl = fadd float %i.bjh, %i.bjk              ; 3 uses
  %i.bjm = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %.0.i.i.i152.i, i8 noundef zeroext 1)
          to label %.noexc1870 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1870:                                       ; preds = %.noexc1869
  %i.bjn = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i16 %i.bjm, float noundef %i.rh)
          to label %.noexc1871 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 2 uses

.noexc1871:                                       ; preds = %.noexc1870
  %.inv.i.i153.i = fcmp ord float %i.bjn, 0.000000e+00
  %i.bjo = select i1 %.inv.i.i153.i, float %i.bjn, float 0.000000e+00
  %i.bjp = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %.0.i.i4.i154.i, i8 noundef zeroext 1)
          to label %.noexc1872 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1872:                                       ; preds = %.noexc1871
  %i.bjq = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i16 %i.bjp, float noundef %i.rh)
          to label %.noexc1873 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 2 uses

.noexc1873:                                       ; preds = %.noexc1872
  %.inv.i5.i155.i = fcmp ord float %i.bjq, 0.000000e+00
  %i.bjr = select i1 %.inv.i5.i155.i, float %i.bjq, float 0.000000e+00
  %i.bjs = fadd float %i.bjo, %i.bjr              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bjt = fadd float %.0146.i, %i.bjl            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bhn, i64 159
  %.sroa.0.0.copyload.i.i1834 = load i16, ptr %i.bju, align 1, !tbaa !12 ; 6 uses
  %i.bjv = and i16 %.sroa.0.0.copyload.i.i1834, 7
  %i.bjw = icmp eq i16 %i.bjv, 0
  br i1 %i.bjw, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread2378, label %bb.iu

bb.iu:                                            ; preds = %.noexc1873
  %i.bjx = and i16 %.sroa.0.0.copyload.i.i1834, 8
  %.not.i.i.i1835 = icmp eq i16 %i.bjx, 0
  br i1 %.not.i.i.i1835, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bjy = lshr i16 %.sroa.0.0.copyload.i.i1834, 4
  %i.bjz = zext nneg i16 %i.bjy to i64            ; 6 uses
  %i.bka = icmp ult i16 %.sroa.0.0.copyload.i.i1834, 64 ; 3 uses
  br i1 %i.bka, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bhn, i64 300
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.bkb, i64 %i.bjz
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841

bb.ix:                                            ; preds = %bb.iv
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bhn, i64 328
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !101 ; 2 uses
  %i.bkf = add nsw i64 %i.bjz, -4                 ; 3 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bke, i64 8
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !104
  %i.bki = load ptr, ptr %i.bke, align 8, !tbaa !105 ; 2 uses
  %i.bkj = ptrtoint ptr %i.bkh to i64
  %i.bkk = ptrtoint ptr %i.bki to i64
  %i.bkl = sub i64 %i.bkj, %i.bkk
  %i.bkm = ashr exact i64 %i.bkl, 2               ; 2 uses
  %.not.i.i.i.i.i.i1836 = icmp ult i64 %i.bkf, %i.bkm
  br i1 %.not.i.i.i.i.i.i1836, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837, label %.invoke3676

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837:       ; preds = %bb.ix
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.bkf
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841: ; preds = %bb.iw, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837
  %.0.in.i.i.i.i1839 = phi ptr [ %i.bkc, %bb.iw ], [ %i.bkn, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837 ]
  %.0.i7.i.i.i1840 = load float, ptr %.0.in.i.i.i.i1839, align 4, !tbaa !17
  %i.bko = fcmp ord float %.0.i7.i.i.i1840, 0.000000e+00
  br i1 %i.bko, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread.thread, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread2378

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread: ; preds = %bb.iu
  %i.bkp = fsub float %i.bjt, %i.bjl              ; 2 uses
  %i.bkq = lshr i16 %.sroa.0.0.copyload.i.i1834, 4
  %i.bkr = and i16 %i.bkq, 2047
  %i.bks = zext nneg i16 %i.bkr to i32            ; 2 uses
  %i.bkt = sub nsw i32 0, %i.bks
  %.not.i6.i.i164.i = icmp slt i16 %.sroa.0.0.copyload.i.i1834, 0
  %i.bku = select i1 %.not.i6.i.i164.i, i32 %i.bkt, i32 %i.bks
  %i.bkv = sitofp i32 %i.bku to float             ; 2 uses
  br i1 %i.pj, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit165.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit175.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread.thread: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841
  %i.bkw = fsub float %i.bjt, %i.bjl              ; 2 uses
  br i1 %i.pj, label %bb.iy, label %bb.jb

bb.iy:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread.thread
  br i1 %i.bka, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bhn, i64 300
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.bjz
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i160.i

bb.ja:                                            ; preds = %bb.iy
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bhn, i64 328
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !101 ; 2 uses
  %i.blb = add nsw i64 %i.bjz, -4                 ; 3 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bla, i64 8
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !104
  %i.ble = load ptr, ptr %i.bla, align 8, !tbaa !105 ; 2 uses
  %i.blf = ptrtoint ptr %i.bld to i64
  %i.blg = ptrtoint ptr %i.ble to i64
  %i.blh = sub i64 %i.blf, %i.blg
  %i.bli = ashr exact i64 %i.blh, 2               ; 2 uses
  %.not.i.i.i.i.i158.i = icmp ult i64 %i.blb, %i.bli
  br i1 %.not.i.i.i.i.i158.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i159.i, label %.invoke3676

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i159.i:        ; preds = %bb.ja
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.blb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i160.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i160.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i159.i, %bb.iz
  %.0.in.i.i.i161.i = phi ptr [ %i.bky, %bb.iz ], [ %i.blj, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i159.i ]
  %.0.i7.i.i162.i = load float, ptr %.0.in.i.i.i161.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit165.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit165.i: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i160.i
  %i.blk = phi float [ %i.bkw, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i160.i ], [ %i.bkp, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread ]
  %.sroa.05.0.i.i163.i = phi float [ %.0.i7.i.i162.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i160.i ], [ %i.bkv, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread ]
  %i.bll = fdiv float %i.blk, %.sroa.05.0.i.i163.i
  br label %bb.je

bb.jb:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread.thread
  br i1 %i.bka, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bhn, i64 300
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %i.blm, i64 %i.bjz
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i170.i

bb.jd:                                            ; preds = %bb.jb
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bhn, i64 328
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !101 ; 2 uses
  %i.blq = add nsw i64 %i.bjz, -4                 ; 3 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blp, i64 8
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !104
  %i.blt = load ptr, ptr %i.blp, align 8, !tbaa !105 ; 2 uses
  %i.blu = ptrtoint ptr %i.bls to i64
  %i.blv = ptrtoint ptr %i.blt to i64
  %i.blw = sub i64 %i.blu, %i.blv
  %i.blx = ashr exact i64 %i.blw, 2               ; 2 uses
  %.not.i.i.i.i.i168.i = icmp ult i64 %i.blq, %i.blx
  br i1 %.not.i.i.i.i.i168.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i169.i, label %.invoke3676

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i169.i:        ; preds = %bb.jd
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.blt, i64 %i.blq
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i170.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i170.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i169.i, %bb.jc
  %.0.in.i.i.i171.i = phi ptr [ %i.bln, %bb.jc ], [ %i.bly, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i169.i ]
  %.0.i7.i.i172.i = load float, ptr %.0.in.i.i.i171.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit175.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit175.i: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i170.i
  %i.blz = phi float [ %i.bkw, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i170.i ], [ %i.bkp, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread ]
  %.sroa.05.0.i.i173.i = phi float [ %.0.i7.i.i172.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i170.i ], [ %i.bkv, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread ]
  %i.bma = fmul float %i.blz, %.sroa.05.0.i.i173.i
  br label %bb.je

bb.je:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit175.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit165.i
  %i.bmb = phi float [ %i.bll, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit165.i ], [ %i.bma, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit175.i ]
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.bmc = fadd float %i.bjs, %i.bmb
  store float %i.bmc, ptr %i.a, align 4, !tbaa !16
  br label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread2378: ; preds = %.noexc1873, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841
  br i1 %i.aqr, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1843

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1843: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread2378
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bhn, i64 728
  %i.bme = getelementptr inbounds nuw [8 x i8], ptr %i.bmd, i64 %i.aqs
  %.sroa.0.0.copyload.i.i.i1845 = load i64, ptr %i.bme, align 4 ; 2 uses
  %i.bmf = lshr i64 %.sroa.0.0.copyload.i.i.i1845, 32
  %i.bmg = trunc i64 %i.bmf to i8
  %i.bmh = trunc i64 %.sroa.0.0.copyload.i.i.i1845 to i32
  %i.bmi = bitcast i32 %i.bmh to float            ; 2 uses
  switch i8 %i.bmg, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i1848 [
    i8 1, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1846
    i8 2, label %bb.jf
  ]

bb.jf:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1843
  %i.bmj = fmul float %i.rl, %i.bmi
  %i.bmk = fmul float %i.bmj, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1846

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1846: ; preds = %bb.jf, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1843
  %.sroa.0.0.i.i.i1847 = phi float [ %i.bmk, %bb.jf ], [ %i.bmi, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1843 ]
  %i.bml = fcmp oge float %.sroa.0.0.i.i.i1847, 0.000000e+00
  %i.bmm = or i1 %invariant.op, %i.bml
  br i1 %i.bmm, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381, label %bb.jg

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i1848: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1843
  br i1 %invariant.op, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381, label %bb.jg

bb.jg:                                            ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1846, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i1848
  %28 = getelementptr i8, ptr %i.bhn, i64 59
  %29 = load i8, ptr %28, align 1
  %i.bmn = and i8 %29, 15                         ; 2 uses
  %i.bmo = icmp eq i8 %i.bmn, 0
  br i1 %i.bmo, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.bmp = load i32, ptr %i.ab, align 8
  %i.bmq = lshr i32 %i.bmp, 20
  %i.bmr = trunc i32 %i.bmq to i8
  %i.bms = and i8 %i.bmr, 15
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.bmt = phi i8 [ %i.bms, %bb.jh ], [ %i.bmn, %bb.jg ]
  %i.bmu = icmp eq i8 %i.bmt, 4
  br i1 %i.bmu, label %switch.lookup4589, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381

switch.lookup4589:                                ; preds = %bb.ji
  %switch.load4591 = load i8, ptr %switch.gep4590, align 1
  %switch.ext4592 = zext i8 %switch.load4591 to i32
  %i.bmv = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %switch.ext4592, i8 noundef zeroext %i.t)
          to label %.noexc1879 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1879:                                       ; preds = %switch.lookup4589
  %i.bmw = and i16 %i.bmv, 7
  %i.bmx = icmp eq i16 %i.bmw, 4
  br i1 %i.bmx, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381, label %switch.lookup4593

switch.lookup4593:                                ; preds = %.noexc1879
  %switch.load4595 = load i8, ptr %switch.gep4594, align 1
  %switch.ext4596 = zext i8 %switch.load4595 to i32
  %i.bmy = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %switch.ext4596, i8 noundef zeroext %i.t)
          to label %.noexc1881 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1881:                                       ; preds = %switch.lookup4593
  %i.bmz = and i16 %i.bmy, 7
  %i.bna = icmp eq i16 %i.bmz, 4
  br i1 %i.bna, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381, label %bb.jj

bb.jj:                                            ; preds = %.noexc1881
  store float %i.rl, ptr %i.a, align 4, !tbaa !16
  store i32 0, ptr %i.b, align 4, !tbaa !14
  br label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1846, %bb.ji, %.noexc1881, %.noexc1879, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i1848, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread2378
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bhn, i64 728
  %i.bnc = getelementptr inbounds nuw [8 x i8], ptr %i.bnb, i64 %i.aqs ; 2 uses
  %.sroa.0.0.copyload.i.i180.i = load i64, ptr %i.bnc, align 4 ; 3 uses
  %i.bnd = lshr i64 %.sroa.0.0.copyload.i.i180.i, 32
  %i.bne = trunc i64 %i.bnd to i8                 ; 2 uses
  %i.bnf = trunc i64 %.sroa.0.0.copyload.i.i180.i to i32
  %i.bng = bitcast i32 %i.bnf to float            ; 4 uses
  switch i8 %i.bne, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i.thread [
    i8 1, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i
    i8 2, label %bb.jk
  ]

bb.jk:                                            ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381
  %i.bnh = fmul float %i.rl, %i.bng
  %i.bni = fmul float %i.bnh, f0x3C23D70A
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i: ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381, %bb.jk
  %.sroa.0.0.i.i182.i = phi float [ %i.bni, %bb.jk ], [ %i.bng, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381 ]
  %i.bnj = fcmp ult float %.sroa.0.0.i.i182.i, 0.000000e+00
  br i1 %i.bnj, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i.thread, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit185.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i.thread: ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i1850.thread2381, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i
  store float %i.rl, ptr %i.a, align 4, !tbaa !16
  store i32 %i.aqt, ptr %i.b, align 4, !tbaa !14
  br label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit185.i: ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i
  %i.bnk = icmp eq i8 %i.bne, 1
  %i.bnl = fmul float %i.rl, %i.bng
  %i.bnm = fmul float %i.bnl, f0x3C23D70A
  %.sroa.0.0.i.i188.i = select i1 %i.bnk, float %i.bng, float %i.bnm ; 2 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bhn, i64 60
  %i.bno = load i8, ptr %i.bnn, align 4
  %i.bnp = and i8 %i.bno, 16
  %i.bnq = icmp eq i8 %i.bnp, 0
  br i1 %i.bnq, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1852, label %bb.jl

bb.jl:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit185.i
  %i.bnr = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i8 noundef zeroext %i.t, i8 noundef zeroext %spec.select2512, float noundef %i.rh)
          to label %.noexc1884 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 2 uses

.noexc1884:                                       ; preds = %bb.jl
  %i.bns = fcmp ord float %i.bnr, 0.000000e+00
  %.sroa.0.0.i.i1851 = select i1 %i.bns, float %i.bnr, float 0.000000e+00
  %i.bnt = fadd float %.sroa.0.0.i.i188.i, %.sroa.0.0.i.i1851
  %.sroa.0.0.copyload.i191.i.pre = load i64, ptr %i.bnc, align 4
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1852

_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1852: ; preds = %.noexc1884, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit185.i
  %.sroa.0.0.copyload.i191.i = phi i64 [ %.sroa.0.0.copyload.i191.i.pre, %.noexc1884 ], [ %.sroa.0.0.copyload.i.i180.i, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit185.i ]
  %.sroa.06.0.i.i1853 = phi float [ %i.bnt, %.noexc1884 ], [ %.sroa.0.0.i.i188.i, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit185.i ]
  %i.bnu = fadd float %i.bjs, %.sroa.06.0.i.i1853 ; 2 uses
  store float %i.bnu, ptr %i.a, align 4, !tbaa !16
  %i.bnv = and i64 %.sroa.0.0.copyload.i191.i, 1095216660480
  %i.bnw = icmp eq i64 %i.bnv, 8589934592
  %i.bnx = and i1 %i.bnw, %.not3219
  %i.bny = fcmp uno float %i.bnu, 0.000000e+00
  %i.bnz = or i1 %i.bny, %i.bnx
  %i.boa = zext i1 %i.bnz to i32
  store i32 %i.boa, ptr %i.b, align 4, !tbaa !14
  br label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188: ; preds = %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1852, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit183.i.thread, %bb.jj, %bb.je
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bhn, i64 155
  %i.boc = getelementptr inbounds nuw [2 x i8], ptr %i.bob, i64 %spec.select2506
  %i.bod = load i16, ptr %i.boc, align 1, !tbaa !12 ; 2 uses
  %i.boe = and i16 %i.bod, 7
  %i.bof = icmp eq i16 %i.boe, 0
  br i1 %i.bof, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191, label %bb.jm

bb.jm:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188
  %i.bog = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i16 %i.bod, float noundef %.37872370)
          to label %.noexc2201 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2201:                                       ; preds = %bb.jm
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bhn, i64 60
  %i.boi = load i8, ptr %i.boh, align 4
  %i.boj = and i8 %i.boi, 16
  %i.bok = icmp ne i8 %i.boj, 0
  %i.bol = fcmp ord float %i.bog, 0.000000e+00
  %or.cond.i.i2190 = select i1 %i.bok, i1 %i.bol, i1 false
  br i1 %or.cond.i.i2190, label %bb.jn, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191

bb.jn:                                            ; preds = %.noexc2201
  %i.bom = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i8 noundef zeroext %i.t, i8 noundef zeroext %spec.select.i1927, float noundef %i.rh)
          to label %.noexc2202 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2202:                                       ; preds = %bb.jn
  %i.bon = fcmp ord float %i.bom, 0.000000e+00
  %.sroa.0.0.i.i2199 = select i1 %i.bon, float %i.bom, float 0.000000e+00
  %i.boo = fadd float %i.bog, %.sroa.0.0.i.i2199
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191: ; preds = %.noexc2202, %.noexc2201, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188
  %.sroa.010.1.i.i2192 = phi float [ +qnan, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188 ], [ %i.boo, %.noexc2202 ], [ %i.bog, %.noexc2201 ]
  br i1 %i.pj, label %bb.jo, label %bb.jr

bb.jo:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bhn, i64 77
  %i.boq = load i16, ptr %i.bop, align 1, !tbaa !77 ; 2 uses
  %i.bor = and i16 %i.boq, 7
  %.not14.i.i2246 = icmp eq i16 %i.bor, 0
  br i1 %.not14.i.i2246, label %bb.jp, label %.noexc2203

bb.jp:                                            ; preds = %bb.jo
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bhn, i64 69
  %i.bot = load i16, ptr %i.bos, align 1, !tbaa !77 ; 2 uses
  %i.bou = and i16 %i.bot, 7
  %.not15.i.i2247 = icmp eq i16 %i.bou, 0
  br i1 %.not15.i.i2247, label %bb.jq, label %.noexc2203

bb.jq:                                            ; preds = %bb.jp
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bhn, i64 81
  %i.bow = load i16, ptr %i.bov, align 1, !tbaa !77 ; 2 uses
  %i.box = and i16 %i.bow, 7
  %.not16.i.i2248 = icmp eq i16 %i.box, 0
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bhn, i64 85
  %.val.i.i2249 = load i16, ptr %i.boy, align 1
  %.sroa.0.0.pre.i.i2250 = select i1 %.not16.i.i2248, i16 %.val.i.i2249, i16 %i.bow
  br label %.noexc2203

bb.jr:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bhn, i64 71 ; 2 uses
  %i.bpa = load i16, ptr %i.boz, align 1, !tbaa !77
  %i.bpb = and i16 %i.bpa, 7
  %.not.i3.i2241 = icmp eq i16 %i.bpb, 0
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bhn, i64 83 ; 2 uses
  %i.bpd = load i16, ptr %i.bpc, align 1
  %i.bpe = and i16 %i.bpd, 7
  %.not7.i.i2242 = icmp eq i16 %i.bpe, 0
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bhn, i64 85
  %spec.select.i.i2243 = select i1 %.not7.i.i2242, ptr %i.bpf, ptr %i.bpc
  %.sroa.0.0.in.i.i2244 = select i1 %.not.i3.i2241, ptr %spec.select.i.i2243, ptr %i.boz
  %.sroa.0.0.i4.i2245 = load i16, ptr %.sroa.0.0.in.i.i2244, align 1, !tbaa !12
  br label %.noexc2203

.noexc2203:                                       ; preds = %bb.jr, %bb.jq, %bb.jp, %bb.jo
  %.sroa.0.0.i2235 = phi i16 [ %i.boq, %bb.jo ], [ %.sroa.0.0.i4.i2245, %bb.jr ], [ %i.bot, %bb.jp ], [ %.sroa.0.0.pre.i.i2250, %bb.jq ]
  %i.bpg = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i16 %.sroa.0.0.i2235, float noundef %i.rh)
          to label %.noexc2204 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2204:                                       ; preds = %.noexc2203
  %.inv.i.i.i2194 = fcmp ord float %i.bpg, 0.000000e+00
  %i.bph = select i1 %.inv.i.i.i2194, float %i.bpg, float 0.000000e+00
  %i.bpi = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %.0.i.i4.i.i1832, i8 noundef zeroext 1)
          to label %.noexc2205 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2205:                                       ; preds = %.noexc2204
  %i.bpj = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i16 %i.bpi, float noundef %i.rh)
          to label %.noexc1886 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1886:                                       ; preds = %.noexc2205
  %.inv.i5.i.i2196 = fcmp ord float %i.bpj, 0.000000e+00
  %i.bpk = select i1 %.inv.i5.i.i2196, float %i.bpj, float 0.000000e+00
  %i.bpl = fadd float %i.bph, %i.bpk
  %i.bpm = fadd float %.sroa.010.1.i.i2192, %i.bpl ; 3 uses
  %i.bpn = fcmp uno float %i.bpm, 0.000000e+00
  %i.bpo = fcmp olt float %i.bjt, %i.bpm
  %or.cond.i2198 = select i1 %i.bpn, i1 true, i1 %i.bpo
  %i.bpp = select i1 %or.cond.i2198, float %i.bjt, float %i.bpm ; 2 uses
  invoke void @_ZN8facebook4yoga23constrainMaxSizeForModeEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionEffPNS0_10SizingModeEPf(ptr noundef nonnull %i.bhn, i8 noundef zeroext %i.t, i8 noundef zeroext %i.pi, float noundef %i.rl, float noundef %i.rh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc1887 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1887:                                       ; preds = %.noexc1886
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bhn, i64 728
  %i.bpr = getelementptr inbounds nuw [8 x i8], ptr %i.bpq, i64 %i.aqs
  %.sroa.0.0.copyload.i.i194.i = load i64, ptr %i.bpr, align 4 ; 2 uses
  %i.bps = lshr i64 %.sroa.0.0.copyload.i.i194.i, 32
  %i.bpt = trunc i64 %i.bps to i8
  %i.bpu = trunc i64 %.sroa.0.0.copyload.i.i194.i to i32
  %i.bpv = bitcast i32 %i.bpu to float            ; 2 uses
  switch i8 %i.bpt, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread [
    i8 1, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i
    i8 2, label %bb.js
  ]

bb.js:                                            ; preds = %.noexc1887
  %i.bpw = fmul float %i.rl, %i.bpv
  %i.bpx = fmul float %i.bpw, f0x3C23D70A
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i: ; preds = %.noexc1887, %bb.js
  %.sroa.0.0.i.i196.i = phi float [ %i.bpx, %bb.js ], [ %i.bpv, %.noexc1887 ]
  %i.bpy = fcmp ult float %.sroa.0.0.i.i196.i, 0.000000e+00
  br i1 %i.bpy, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread: ; preds = %.noexc1887, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i
  %30 = getelementptr i8, ptr %i.bhn, i64 59
  %31 = load i8, ptr %30, align 1
  %i.bpz = and i8 %31, 15                         ; 2 uses
  %i.bqa = icmp eq i8 %i.bpz, 0
  br i1 %i.bqa, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread
  %i.bqb = load i32, ptr %i.ab, align 8
  %i.bqc = lshr i32 %i.bqb, 20
  %i.bqd = trunc i32 %i.bqc to i8
  %i.bqe = and i8 %i.bqd, 15
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread
  %i.bqf = phi i8 [ %i.bqe, %bb.jt ], [ %i.bpz, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread ]
  %i.bqg = icmp eq i8 %i.bqf, 4
  br i1 %i.bqg, label %switch.lookup4597, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383

switch.lookup4597:                                ; preds = %bb.ju
  %switch.load4599 = load i8, ptr %switch.gep4598, align 1
  %switch.ext4600 = zext i8 %switch.load4599 to i32
  %i.bqh = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %switch.ext4600, i8 noundef zeroext %i.t)
          to label %.noexc1890 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1890:                                       ; preds = %switch.lookup4597
  %i.bqi = and i16 %i.bqh, 7
  %i.bqj = icmp eq i16 %i.bqi, 4
  br i1 %i.bqj, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383, label %switch.lookup4601

switch.lookup4601:                                ; preds = %.noexc1890
  %switch.load4603 = load i8, ptr %switch.gep4602, align 1
  %switch.ext4604 = zext i8 %switch.load4603 to i32
  %i.bqk = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bio, i32 noundef %switch.ext4604, i8 noundef zeroext %i.t)
          to label %.noexc1892 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1892:                                       ; preds = %switch.lookup4601
  %i.bql = and i16 %i.bqk, 7
  %i.bqm = icmp eq i16 %i.bql, 4
  %i.bqn = and i1 %8, %i.bqm
  br label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383: ; preds = %bb.ju, %.noexc1892, %.noexc1890, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i
  %i.bqo = phi i1 [ %8, %.noexc1890 ], [ %8, %bb.ju ], [ %8, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i ], [ %i.bqn, %.noexc1892 ] ; 2 uses
  %i.bqp = load float, ptr %i.a, align 4          ; 2 uses
  %i.bqq = select i1 %i.pj, float %i.bpp, float %i.bqp
  %i.bqr = select i1 %i.pj, float %i.bqp, float %i.bpp
  %i.bqs = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bqt = select i1 %i.pj, i32 0, i32 %i.bqs
  %i.bqu = select i1 %i.pj, i32 %i.bqs, i32 0
  %i.bqv = load i8, ptr %i.aqu, align 4
  %i.bqw = and i8 %i.bqv, 3
  %i.bqx = select i1 %i.bqo, i32 4, i32 7
  %i.bqy = invoke noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %i.bhn, float noundef %i.bqq, float noundef %i.bqr, i8 noundef zeroext %i.bqw, i32 noundef %i.bqt, i32 noundef %i.bqu, float noundef %i.rh, float noundef %i.rj, i1 noundef zeroext %i.bqo, i32 noundef %i.bqx, ptr noundef nonnull align 4 dereferenceable(60) %10, i32 noundef %11, i32 noundef %12)
          to label %.noexc1893 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137 ; 0 uses

.noexc1893:                                       ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383
  %i.bqz = load i8, ptr %i.aqu, align 4
  %i.bra = and i8 %i.bqz, 4
  %.not2581 = icmp eq i8 %i.bra, 0
  br i1 %.not2581, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %.noexc1893
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bhn, i64 580
  %i.brc = load i8, ptr %i.brb, align 4
  %i.brd = and i8 %i.brc, 4
  %i.bre = icmp ne i8 %i.brd, 0
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %.noexc1893
  %i.brf = phi i1 [ true, %.noexc1893 ], [ %i.bre, %bb.jv ]
  invoke void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext %i.brf)
          to label %.noexc1894 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !137

.noexc1894:                                       ; preds = %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.brg = getelementptr inbounds nuw i8, ptr %.sroa.02339.02956, i64 8 ; 2 uses
  %i.brh = icmp eq ptr %i.brg, %i.bhg
  br i1 %i.brh, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %bb.ih

_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit: ; preds = %.noexc1894, %bb.hw, %bb.gs, %.noexc946
  %.0147.i.lcssa = phi float [ 0.000000e+00, %.noexc946 ], [ 0.000000e+00, %bb.hw ], [ 0.000000e+00, %bb.gs ], [ %i.bin, %.noexc1894 ]
  %i.bri = fsub float %.pre3228, %.0147.i.lcssa   ; 2 uses
  store float %i.bri, ptr %i.aqn, align 8, !tbaa !168
  br label %bb.jx

bb.jx:                                            ; preds = %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, %bb.gq
  %i.brj = phi float [ %i.bri, %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit ], [ %.pre3228, %bb.gq ]
  %i.brk = load i8, ptr %i.aqu, align 4
  %i.brl = and i8 %i.brk, 4
  %i.brm = icmp ne i8 %i.brl, 0
  %i.brn = fcmp olt float %i.brj, 0.000000e+00
  %i.bro = select i1 %i.brm, i1 true, i1 %i.brn
  invoke void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext %i.bro)
          to label %switch.lookup4605 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

default.unreachable4288:                          ; preds = %bb.lh, %.lr.ph.i
  unreachable

switch.lookup4605:                                ; preds = %bb.jx
  %switch.load4607 = load i8, ptr %switch.gep4606, align 1
  %switch.ext4608 = zext i8 %switch.load4607 to i32 ; 2 uses
  %i.brp = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4608, i8 noundef zeroext %i.t)
          to label %.noexc966 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc966:                                        ; preds = %switch.lookup4605
  %i.brq = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.brp, float noundef %6)
          to label %.noexc967 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc967:                                        ; preds = %.noexc966
  %.sink.i.inv.i8.i.i = fcmp oge float %i.brq, 0.000000e+00
  %i.brr = select i1 %.sink.i.inv.i8.i.i, float %i.brq, float 0.000000e+00
  %i.brs = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4608, i8 noundef zeroext %i.t)
          to label %.noexc968 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc968:                                        ; preds = %.noexc967
  %i.brt = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.brs, float noundef 0.000000e+00)
          to label %.noexc969 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc969:                                        ; preds = %.noexc968
  %.sink.i.inv.i6.i.i948 = fcmp oge float %i.brt, 0.000000e+00
  %i.bru = select i1 %.sink.i.inv.i6.i.i948, float %i.brt, float 0.000000e+00
  %i.brv = fadd float %i.brr, %i.bru              ; 2 uses
  %switch.load4611 = load i8, ptr %switch.gep4610, align 1
  %switch.ext4612 = zext i8 %switch.load4611 to i32 ; 2 uses
  %i.brw = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4612, i8 noundef zeroext %i.t)
          to label %.noexc970 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc970:                                        ; preds = %.noexc969
  %i.brx = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.brw, float noundef %6)
          to label %.noexc971 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc971:                                        ; preds = %.noexc970
  %.sink.i.inv.i8.i138.i = fcmp oge float %i.brx, 0.000000e+00
  %i.bry = select i1 %.sink.i.inv.i8.i138.i, float %i.brx, float 0.000000e+00
  %i.brz = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4612, i8 noundef zeroext %i.t)
          to label %.noexc972 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc972:                                        ; preds = %.noexc971
  %i.bsa = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.brz, float noundef 0.000000e+00)
          to label %.noexc973 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc973:                                        ; preds = %.noexc972
  %.sink.i.inv.i6.i139.i = fcmp oge float %i.bsa, 0.000000e+00
  %i.bsb = select i1 %.sink.i.inv.i6.i139.i, float %i.bsa, float 0.000000e+00
  %i.bsc = fadd float %i.bry, %i.bsb              ; 2 uses
  %.val.i.i.i = load i16, ptr %i.app, align 1
  %i.bsd = load i16, ptr %i.aqv, align 1, !tbaa !77 ; 2 uses
  %i.bse = and i16 %i.bsd, 7
  %.not.i3.i.i949 = icmp eq i16 %i.bse, 0
  %.sroa.0.0.i5.i.i = select i1 %.not.i3.i.i949, i16 %.val.i.i.i, i16 %i.bsd
  %i.bsf = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i5.i.i, float noundef %.37872370)
          to label %.noexc974 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc974:                                        ; preds = %.noexc973
  %.sink.i.inv.i.i = fcmp oge float %i.bsf, 0.000000e+00
  %i.bsg = select i1 %.sink.i.inv.i.i, float %i.bsf, float 0.000000e+00 ; 8 uses
  %i.bsh = load float, ptr %i.aqn, align 8, !tbaa !168 ; 2 uses
  %i.bsi = fcmp ogt float %i.bsh, 0.000000e+00
  %or.cond232.i = select i1 %i.aqw, i1 %i.bsi, i1 false
  br i1 %or.cond232.i, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i, label %_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf.exit._crit_edge.i

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i: ; preds = %.noexc974
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.aqx, align 1, !tbaa !12 ; 7 uses
  %i.bsj = and i16 %.sroa.0.0.copyload.i.i, 7     ; 3 uses
  switch i16 %i.bsj, label %bb.jy [
    i16 0, label %.thread.i
    i16 4, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i
  ]

bb.jy:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
  %i.bsk = icmp eq i16 %i.bsj, 5
  %i.bsl = lshr i16 %.sroa.0.0.copyload.i.i, 4    ; 3 uses
  %i.bsm = and i16 %.sroa.0.0.copyload.i.i, -25
  %or.cond.i962 = icmp eq i16 %i.bsm, 5
  %i.bsn = icmp eq i16 %i.bsl, 2
  %i.bso = and i1 %i.bsk, %i.bsn
  %or.cond201.i = or i1 %or.cond.i962, %i.bso
  br i1 %or.cond201.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.bsp = and i16 %.sroa.0.0.copyload.i.i, 8
  %.not.i.i.i963 = icmp eq i16 %i.bsp, 0
  br i1 %.not.i.i.i963, label %bb.kd, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bsq = zext nneg i16 %i.bsl to i64            ; 2 uses
  %i.bsr = icmp ult i16 %.sroa.0.0.copyload.i.i, 64
  br i1 %i.bsr, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bsq
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

bb.kc:                                            ; preds = %bb.ka
  %i.bst = load ptr, ptr %i.aqy, align 8, !tbaa !101 ; 2 uses
  %i.bsu = add nsw i64 %i.bsq, -4                 ; 3 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bst, i64 8
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !104
  %i.bsx = load ptr, ptr %i.bst, align 8, !tbaa !105 ; 2 uses
  %i.bsy = ptrtoint ptr %i.bsw to i64
  %i.bsz = ptrtoint ptr %i.bsx to i64
  %i.bta = sub i64 %i.bsy, %i.bsz
end_hunk_2
begin_hunk_3_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  %i.ccc = and i16 %i.ccb, 7
  %.not.i12.i.i956 = icmp eq i16 %i.ccc, 0
  %i.ccd = load i16, ptr %i.cbm, align 1
  %i.cce = and i16 %i.ccd, 7
  %.not7.i13.i.i957 = icmp eq i16 %i.cce, 0
  %spec.select.i14.i.i958 = select i1 %.not7.i13.i.i957, ptr %i.cbp, ptr %i.cbm
  %.sroa.0.0.in.i15.i.i959 = select i1 %.not.i12.i.i956, ptr %spec.select.i14.i.i958, ptr %i.cca
  %.sroa.0.0.i16.i.i960 = load i16, ptr %.sroa.0.0.in.i15.i.i959, align 1, !tbaa !12
  %i.ccf = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bwp, i16 %.sroa.0.0.i16.i.i960, float noundef %i.rh)
          to label %.noexc993 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc993:                                        ; preds = %.noexc992
  %.inv.i.i156.i = fcmp ord float %i.cbz, 0.000000e+00
  %i.ccg = select i1 %.inv.i.i156.i, float %i.cbz, float 0.000000e+00
  %.inv.i5.i157.i = fcmp ord float %i.ccf, 0.000000e+00
  %i.cch = select i1 %.inv.i5.i157.i, float %i.ccf, float 0.000000e+00
  %i.cci = fadd float %i.ccg, %i.cch
  %i.ccj = fadd float %i.cbu, %i.cci
  %i.cck = fsub float %i.ccj, %i.cbs
  %i.ccl = fcmp uno <2 x float> %i.bwn, zeroinitializer
  %i.ccm = insertelement <2 x float> poison, float %i.cbs, i64 0
  %i.ccn = insertelement <2 x float> %i.ccm, float %i.cck, i64 1 ; 3 uses
  %i.cco = fcmp ord <2 x float> %i.bwn, %i.ccn
  %i.ccp = fcmp olt <2 x float> %i.bwn, %i.ccn
  %i.ccq = select <2 x i1> %i.cco, <2 x i1> %i.ccp, <2 x i1> %i.ccl
  %i.ccr = select <2 x i1> %i.ccq, <2 x float> %i.ccn, <2 x float> %i.bwn
  br label %bb.ma

bb.lz:                                            ; preds = %.noexc989
  %i.ccs = load float, ptr %i.arc, align 8, !tbaa !172 ; 4 uses
  %i.cct = invoke noundef float @_ZN8facebook4yoga4Node19dimensionWithMarginENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(744) %i.bwo, i8 noundef zeroext %i.pi, float noundef %i.rh)
          to label %.noexc994 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc994:                                        ; preds = %bb.lz
  %or.cond.i162.i = fcmp ord float %i.ccs, %i.cct
  %i.ccu = fcmp uno float %i.ccs, 0.000000e+00
  %i.ccv = fcmp olt float %i.ccs, %i.cct
  %.sink.i163.i = select i1 %or.cond.i162.i, i1 %i.ccv, i1 %i.ccu
  %i.ccw = select i1 %.sink.i163.i, float %i.cct, float %i.ccs
  store float %i.ccw, ptr %i.arc, align 8, !tbaa !172
  br label %bb.ma

bb.ma:                                            ; preds = %.noexc994, %.noexc993, %.noexc988
  %i.ccx = phi <2 x float> [ %i.bwn, %.noexc988 ], [ %i.ccr, %.noexc993 ], [ %i.bwn, %.noexc994 ] ; 3 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %.sroa.0174.0214.i, i64 8 ; 2 uses
  %i.ccz = icmp eq ptr %i.ccy, %i.bwi
  br i1 %i.ccz, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.mb:                                            ; preds = %._crit_edge.i
  store float %.0129.lcssa.i, ptr %i.arc, align 8, !tbaa !172
  br label %_ZN8facebook4yogaL15justifyMainAxisEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionENS0_10SizingModeES7_fffffb.exit

_ZN8facebook4yogaL15justifyMainAxisEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionENS0_10SizingModeES7_fffffb.exit: ; preds = %bb.mb, %._crit_edge.i
  br i1 %or.cond13, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook4yogaL15justifyMainAxisEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionENS0_10SizingModeES7_fffffb.exit
  %i.cda = load float, ptr %i.arc, align 8, !tbaa !172
  %i.cdb = fadd float %i.qt, %i.cda
  %i.cdc = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %0, i8 noundef zeroext %i.t, i8 noundef zeroext %i.pi, float %i.cdb, float noundef %i.pm, float noundef %6)
          to label %.noexc997 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc997:                                        ; preds = %bb.mc
  %i.cdd = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i909, i8 noundef zeroext %i.t)
          to label %.noexc998 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc998:                                        ; preds = %.noexc997
  %i.cde = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.cdd, float noundef %6)
          to label %.noexc999 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc999:                                        ; preds = %.noexc998
  %.sink.i.inv.i.i.i.i = fcmp oge float %i.cde, 0.000000e+00
  %i.cdf = select i1 %.sink.i.inv.i.i.i.i, float %i.cde, float 0.000000e+00
  %i.cdg = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i909, i8 noundef zeroext %i.t)
          to label %.noexc1000 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1000:                                       ; preds = %.noexc999
  %i.cdh = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.cdg, float noundef 0.000000e+00)
          to label %.noexc1001 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1001:                                       ; preds = %.noexc1000
  %.sink.i.inv.i6.i.i.i = fcmp oge float %i.cdh, 0.000000e+00
  %i.cdi = select i1 %.sink.i.inv.i6.i.i.i, float %i.cdh, float 0.000000e+00
  %i.cdj = fadd float %i.cdf, %i.cdi
  %i.cdk = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i912, i8 noundef zeroext %i.t)
          to label %.noexc1002 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1002:                                       ; preds = %.noexc1001
  %i.cdl = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.cdk, float noundef %6)
          to label %.noexc1003 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1003:                                       ; preds = %.noexc1002
  %.sink.i.inv.i.i8.i.i = fcmp oge float %i.cdl, 0.000000e+00
  %i.cdm = select i1 %.sink.i.inv.i.i8.i.i, float %i.cdl, float 0.000000e+00
  %i.cdn = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i912, i8 noundef zeroext %i.t)
          to label %.noexc1004 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1004:                                       ; preds = %.noexc1003
  %i.cdo = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.cdn, float noundef 0.000000e+00)
          to label %.thread2394 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.thread2394:                                      ; preds = %.noexc1004
  %.sink.i.inv.i6.i9.i.i = fcmp oge float %i.cdo, 0.000000e+00
  %i.cdp = select i1 %.sink.i.inv.i6.i9.i.i, float %i.cdo, float 0.000000e+00
  %i.cdq = fadd float %i.cdm, %i.cdp
  %i.cdr = fadd float %i.cdj, %i.cdq              ; 3 uses
  %or.cond.i.i995 = fcmp ord float %i.cdc, %i.cdr
  %i.cds = fcmp uno float %i.cdc, 0.000000e+00
  %i.cdt = fcmp olt float %i.cdc, %i.cdr
  %.sink.i.i996 = select i1 %or.cond.i.i995, i1 %i.cdt, i1 %i.cds
  %i.cdu = select i1 %.sink.i.i996, float %i.cdr, float %i.cdc
  %i.cdv = fsub float %i.cdu, %i.qt
  br label %bb.me

bb.md:                                            ; preds = %_ZN8facebook4yogaL15justifyMainAxisEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionENS0_10SizingModeES7_fffffb.exit
  br i1 %or.cond15, label %.thread2399, label %bb.me

.thread2399:                                      ; preds = %bb.md
  store float %i.rl, ptr %i.arc, align 8, !tbaa !172
  br label %bb.mf

bb.me:                                            ; preds = %.thread2394, %bb.md
  %.07392398 = phi float [ %i.cdv, %.thread2394 ], [ %i.rl, %bb.md ] ; 2 uses
  br i1 %i.pk, label %bb.mh, label %._crit_edge3229

._crit_edge3229:                                  ; preds = %bb.me
  %.pre3230 = load float, ptr %i.arc, align 8, !tbaa !172
  br label %bb.mf

bb.mf:                                            ; preds = %._crit_edge3229, %.thread2399
  %i.cdw = phi float [ %i.rl, %.thread2399 ], [ %.pre3230, %._crit_edge3229 ]
  %.073923982401 = phi float [ %i.rl, %.thread2399 ], [ %.07392398, %._crit_edge3229 ]
  %i.cdx = fadd float %i.qt, %i.cdw
  %i.cdy = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %0, i8 noundef zeroext %i.t, i8 noundef zeroext %i.pi, float %i.cdx, float noundef %i.pm, float noundef %6)
          to label %.noexc1014 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1014:                                       ; preds = %bb.mf
  %i.cdz = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i909, i8 noundef zeroext %i.t)
          to label %.noexc1015 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1015:                                       ; preds = %.noexc1014
  %i.cea = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.cdz, float noundef %6)
          to label %.noexc1016 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1016:                                       ; preds = %.noexc1015
  %.sink.i.inv.i.i.i.i1007 = fcmp oge float %i.cea, 0.000000e+00
  %i.ceb = select i1 %.sink.i.inv.i.i.i.i1007, float %i.cea, float 0.000000e+00
  %i.cec = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i909, i8 noundef zeroext %i.t)
          to label %.noexc1017 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1017:                                       ; preds = %.noexc1016
  %i.ced = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.cec, float noundef 0.000000e+00)
          to label %.noexc1018 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1018:                                       ; preds = %.noexc1017
  %.sink.i.inv.i6.i.i.i1008 = fcmp oge float %i.ced, 0.000000e+00
  %i.cee = select i1 %.sink.i.inv.i6.i.i.i1008, float %i.ced, float 0.000000e+00
  %i.cef = fadd float %i.ceb, %i.cee
  %i.ceg = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i912, i8 noundef zeroext %i.t)
          to label %.noexc1019 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1019:                                       ; preds = %.noexc1018
  %i.ceh = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.ceg, float noundef %6)
          to label %.noexc1020 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1020:                                       ; preds = %.noexc1019
  %.sink.i.inv.i.i8.i.i1010 = fcmp oge float %i.ceh, 0.000000e+00
  %i.cei = select i1 %.sink.i.inv.i.i8.i.i1010, float %i.ceh, float 0.000000e+00
  %i.cej = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i912, i8 noundef zeroext %i.t)
          to label %.noexc1021 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1021:                                       ; preds = %.noexc1020
  %i.cek = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.cej, float noundef 0.000000e+00)
          to label %bb.mg unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.mg:                                            ; preds = %.noexc1021
  %.sink.i.inv.i6.i9.i.i1011 = fcmp oge float %i.cek, 0.000000e+00
  %i.cel = select i1 %.sink.i.inv.i6.i9.i.i1011, float %i.cek, float 0.000000e+00
  %i.cem = fadd float %i.cei, %i.cel
  %i.cen = fadd float %i.cef, %i.cem              ; 3 uses
  %or.cond.i.i1012 = fcmp ord float %i.cdy, %i.cen
  %i.ceo = fcmp uno float %i.cdy, 0.000000e+00
  %i.cep = fcmp olt float %i.cdy, %i.cen
  %.sink.i.i1013 = select i1 %or.cond.i.i1012, i1 %i.cep, i1 %i.ceo
  %i.ceq = select i1 %.sink.i.i1013, float %i.cen, float %i.cdy
  %i.cer = fsub float %i.ceq, %i.qt
  store float %i.cer, ptr %i.arc, align 8, !tbaa !172
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.me
  %.073923982402 = phi float [ %.073923982401, %bb.mg ], [ %.07392398, %bb.me ]
  %.pre3232 = load ptr, ptr %20, align 8, !tbaa !21 ; 4 uses
  br i1 %8, label %bb.mi, label %.loopexit2604

bb.mi:                                            ; preds = %bb.mh
  %i.ces = load ptr, ptr %i.aqo, align 8, !tbaa !21 ; 2 uses
  %i.cet = icmp eq ptr %.pre3232, %i.ces
  br i1 %i.cet, label %.loopexit2604, label %.lr.ph2961

.lr.ph2961:                                       ; preds = %bb.mi, %bb.oj
  %.sroa.02283.02960 = phi ptr [ %i.cmo, %bb.oj ], [ %.pre3232, %bb.mi ] ; 2 uses
  %i.ceu = load ptr, ptr %.sroa.02283.02960, align 8, !tbaa !23 ; 31 uses
  %i.cev = getelementptr i8, ptr %i.ceu, i64 59
  %32 = load i8, ptr %i.cev, align 1
  %i.cew = and i8 %32, 15                         ; 2 uses
  %i.cex = icmp eq i8 %i.cew, 0
  br i1 %i.cex, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %.lr.ph2961
  %i.cey = load i32, ptr %i.ab, align 8
  %i.cez = lshr i32 %i.cey, 20
  %i.cfa = trunc i32 %i.cez to i8
  %i.cfb = and i8 %i.cfa, 15
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %.lr.ph2961
  %i.cfc = phi i8 [ %i.cfb, %bb.mj ], [ %i.cew, %.lr.ph2961 ] ; 3 uses
  %i.cfd = load i8, ptr %i.aqd, align 4
  %i.cfe = and i8 %i.cfd, 12
  %i.cff = icmp eq i8 %i.cfe, 0
  %i.cfg = icmp eq i8 %i.cfc, 5
  %or.cond.i1024 = and i1 %i.cfg, %i.cff
  br i1 %or.cond.i1024, label %bb.ml, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit

bb.ml:                                            ; preds = %bb.mk
  %i.cfh = load i32, ptr %i.ab, align 8
  %i.cfi = and i32 %i.cfh, 8
  %.not.not.i = icmp eq i32 %i.cfi, 0
  %spec.select2520 = select i1 %.not.not.i, i8 1, i8 5
  br label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread2405

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit: ; preds = %bb.mk
  %i.cfj = icmp eq i8 %i.cfc, 4
  br i1 %i.cfj, label %switch.lookup4620, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread2405

switch.lookup4620:                                ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit
  %33 = getelementptr inbounds nuw i8, ptr %i.ceu, i64 56 ; 10 uses
  %switch.load4622 = load i8, ptr %switch.gep4621, align 1
  %switch.ext4623 = zext i8 %switch.load4622 to i32
  %i.cfk = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %33, i32 noundef %switch.ext4623, i8 noundef zeroext %i.t)
          to label %bb.mm unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mm:                                            ; preds = %switch.lookup4620
  %i.cfl = and i16 %i.cfk, 7
  %i.cfm = icmp eq i16 %i.cfl, 4
  br i1 %i.cfm, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread2405, label %switch.lookup4624

switch.lookup4624:                                ; preds = %bb.mm
  %switch.load4626 = load i8, ptr %switch.gep4625, align 1
  %switch.ext4627 = zext i8 %switch.load4626 to i32
  %i.cfn = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %33, i32 noundef %switch.ext4627, i8 noundef zeroext %i.t)
          to label %bb.mn unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mn:                                            ; preds = %switch.lookup4624
  %i.cfo = and i16 %i.cfn, 7
  %i.cfp = icmp eq i16 %i.cfo, 4
  br i1 %i.cfp, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread2405, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit: ; preds = %bb.mn
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.ceu, i64 728
  %i.cfr = getelementptr inbounds nuw [8 x i8], ptr %i.cfq, i64 %i.aqs
  %.sroa.0.0.copyload.i.i1034 = load i64, ptr %i.cfr, align 4 ; 2 uses
  %i.cfs = lshr i64 %.sroa.0.0.copyload.i.i1034, 32
  %i.cft = trunc i64 %i.cfs to i8
  %i.cfu = trunc i64 %.sroa.0.0.copyload.i.i1034 to i32
  %i.cfv = bitcast i32 %i.cfu to float            ; 2 uses
  switch i8 %i.cft, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread [
    i8 1, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit
    i8 2, label %bb.mo
  ]

bb.mo:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit
  %i.cfw = fmul float %i.rl, %i.cfv
  %i.cfx = fmul float %i.cfw, f0x3C23D70A
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit, %bb.mo
  %.sroa.0.0.i.i1035 = phi float [ %i.cfx, %bb.mo ], [ %i.cfv, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit ]
  %i.cfy = fcmp ult float %.sroa.0.0.i.i1035, 0.000000e+00
  br i1 %i.cfy, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread, label %switch.lookup4640

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.ceu, i64 592
  %i.cga = getelementptr inbounds nuw [4 x i8], ptr %i.cfz, i64 %spec.select2506
  %i.cgb = load float, ptr %i.cga, align 4, !tbaa !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.ceu, i64 159 ; 2 uses
  %.sroa.0.0.copyload.i1039 = load i16, ptr %i.cgc, align 1, !tbaa !12 ; 4 uses
  %i.cgd = and i16 %.sroa.0.0.copyload.i1039, 7
  %i.cge = icmp eq i16 %i.cgd, 0
  br i1 %i.cge, label %.thread2408, label %bb.mp

bb.mp:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread
  %i.cgf = and i16 %.sroa.0.0.copyload.i1039, 8
  %.not.i.i = icmp eq i16 %i.cgf, 0
  br i1 %.not.i.i, label %.thread2406, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.cgg = lshr i16 %.sroa.0.0.copyload.i1039, 4
  %i.cgh = zext nneg i16 %i.cgg to i64            ; 2 uses
  %i.cgi = icmp ult i16 %.sroa.0.0.copyload.i1039, 64
  br i1 %i.cgi, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.ceu, i64 300
  %i.cgk = getelementptr inbounds nuw [4 x i8], ptr %i.cgj, i64 %i.cgh
  br label %bb.mt

bb.ms:                                            ; preds = %bb.mq
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.ceu, i64 328
  %i.cgm = load ptr, ptr %i.cgl, align 8, !tbaa !101 ; 2 uses
  %i.cgn = add nsw i64 %i.cgh, -4                 ; 3 uses
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgm, i64 8
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !104
  %i.cgq = load ptr, ptr %i.cgm, align 8, !tbaa !105 ; 2 uses
  %i.cgr = ptrtoint ptr %i.cgp to i64
  %i.cgs = ptrtoint ptr %i.cgq to i64
  %i.cgt = sub i64 %i.cgr, %i.cgs
  %i.cgu = ashr exact i64 %i.cgt, 2               ; 2 uses
  %.not.i.i.i.i.i1040 = icmp ult i64 %i.cgn, %i.cgu
  br i1 %.not.i.i.i.i.i1040, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1041, label %.invoke3672

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1041:         ; preds = %bb.ms
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %i.cgq, i64 %i.cgn
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mr, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1041
  %.0.in.i.i.i1043 = phi ptr [ %i.cgk, %bb.mr ], [ %i.cgv, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1041 ]
  %.0.i7.i.i = load float, ptr %.0.in.i.i.i1043, align 4, !tbaa !17
  %i.cgw = fcmp ord float %.0.i7.i.i, 0.000000e+00
  br i1 %i.cgw, label %.thread2406, label %.thread2408

.thread2406:                                      ; preds = %bb.mp, %bb.mt
  %i.cgx = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %33, i32 noundef %.0.i.i.i152.i, i8 noundef zeroext 1)
          to label %.noexc1047 unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1047:                                       ; preds = %.thread2406
  %i.cgy = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %33, i16 %i.cgx, float noundef %i.rh)
          to label %.noexc1048 unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1048:                                       ; preds = %.noexc1047
  %.inv.i.i1046 = fcmp ord float %i.cgy, 0.000000e+00
  %i.cgz = select i1 %.inv.i.i1046, float %i.cgy, float 0.000000e+00
  %i.cha = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %33, i32 noundef %.0.i.i4.i154.i, i8 noundef zeroext 1)
          to label %.noexc1049 unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1049:                                       ; preds = %.noexc1048
  %i.chb = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %33, i16 %i.cha, float noundef %i.rh)
          to label %bb.mu unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.mu:                                            ; preds = %.noexc1049
  %.inv.i5.i = fcmp ord float %i.chb, 0.000000e+00
  %i.chc = select i1 %.inv.i5.i, float %i.chb, float 0.000000e+00
  %i.chd = fadd float %i.cgz, %i.chc
  %.sroa.0.0.copyload.i1051 = load i16, ptr %i.cgc, align 1, !tbaa !12 ; 9 uses
  %i.che = and i16 %.sroa.0.0.copyload.i1051, 7
  %i.chf = icmp eq i16 %i.che, 0                  ; 2 uses
  br i1 %i.pj, label %bb.mv, label %bb.nb

bb.mv:                                            ; preds = %bb.mu
  br i1 %i.chf, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1061, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.chg = and i16 %.sroa.0.0.copyload.i1051, 8
  %.not.i.i1052 = icmp eq i16 %i.chg, 0
  %i.chh = lshr i16 %.sroa.0.0.copyload.i1051, 4  ; 2 uses
  br i1 %.not.i.i1052, label %bb.na, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.chi = zext nneg i16 %i.chh to i64            ; 2 uses
  %i.chj = icmp ult i16 %.sroa.0.0.copyload.i1051, 64
  br i1 %i.chj, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.chk = getelementptr inbounds nuw i8, ptr %i.ceu, i64 300
  %i.chl = getelementptr inbounds nuw [4 x i8], ptr %i.chk, i64 %i.chi
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1055

bb.mz:                                            ; preds = %bb.mx
  %i.chm = getelementptr inbounds nuw i8, ptr %i.ceu, i64 328
  %i.chn = load ptr, ptr %i.chm, align 8, !tbaa !101 ; 2 uses
  %i.cho = add nsw i64 %i.chi, -4                 ; 3 uses
  %i.chp = getelementptr inbounds nuw i8, ptr %i.chn, i64 8
  %i.chq = load ptr, ptr %i.chp, align 8, !tbaa !104
  %i.chr = load ptr, ptr %i.chn, align 8, !tbaa !105 ; 2 uses
  %i.chs = ptrtoint ptr %i.chq to i64
  %i.cht = ptrtoint ptr %i.chr to i64
  %i.chu = sub i64 %i.chs, %i.cht
  %i.chv = ashr exact i64 %i.chu, 2               ; 2 uses
  %.not.i.i.i.i.i1053 = icmp ult i64 %i.cho, %i.chv
  br i1 %.not.i.i.i.i.i1053, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1054, label %.invoke3672

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1054:         ; preds = %bb.mz
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.chr, i64 %i.cho
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1055

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1055: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1054, %bb.my
  %.0.in.i.i.i1056 = phi ptr [ %i.chl, %bb.my ], [ %i.chw, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1054 ]
  %.0.i7.i.i1057 = load float, ptr %.0.in.i.i.i1056, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1061

bb.na:                                            ; preds = %bb.mw
  %i.chx = and i16 %i.chh, 2047
  %i.chy = zext nneg i16 %i.chx to i32            ; 2 uses
  %i.chz = sub nsw i32 0, %i.chy
  %.not.i6.i.i1059 = icmp slt i16 %.sroa.0.0.copyload.i1051, 0
  %i.cia = select i1 %.not.i6.i.i1059, i32 %i.chz, i32 %i.chy
  %i.cib = sitofp i32 %i.cia to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1061

_ZNK8facebook4yoga5Style11aspectRatioEv.exit1061: ; preds = %bb.na, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1055, %bb.mv
  %.sroa.05.0.i.i1058 = phi float [ +qnan, %bb.mv ], [ %.0.i7.i.i1057, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1055 ], [ %i.cib, %bb.na ]
  %i.cic = fdiv float %i.cgb, %.sroa.05.0.i.i1058
  br label %bb.nh

bb.nb:                                            ; preds = %bb.mu
  br i1 %i.chf, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1072, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.cid = and i16 %.sroa.0.0.copyload.i1051, 8
  %.not.i.i1063 = icmp eq i16 %i.cid, 0
  %i.cie = lshr i16 %.sroa.0.0.copyload.i1051, 4  ; 2 uses
  br i1 %.not.i.i1063, label %bb.ng, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.cif = zext nneg i16 %i.cie to i64            ; 2 uses
  %i.cig = icmp ult i16 %.sroa.0.0.copyload.i1051, 64
  br i1 %i.cig, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.cih = getelementptr inbounds nuw i8, ptr %i.ceu, i64 300
  %i.cii = getelementptr inbounds nuw [4 x i8], ptr %i.cih, i64 %i.cif
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1066

bb.nf:                                            ; preds = %bb.nd
  %i.cij = getelementptr inbounds nuw i8, ptr %i.ceu, i64 328
  %i.cik = load ptr, ptr %i.cij, align 8, !tbaa !101 ; 2 uses
  %i.cil = add nsw i64 %i.cif, -4                 ; 3 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cik, i64 8
  %i.cin = load ptr, ptr %i.cim, align 8, !tbaa !104
  %i.cio = load ptr, ptr %i.cik, align 8, !tbaa !105 ; 2 uses
  %i.cip = ptrtoint ptr %i.cin to i64
  %i.ciq = ptrtoint ptr %i.cio to i64
  %i.cir = sub i64 %i.cip, %i.ciq
  %i.cis = ashr exact i64 %i.cir, 2               ; 2 uses
  %.not.i.i.i.i.i1064 = icmp ult i64 %i.cil, %i.cis
  br i1 %.not.i.i.i.i.i1064, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1065, label %.invoke3672

.invoke3672:                                      ; preds = %bb.nf, %bb.mz, %bb.ms
  %i.cit = phi i64 [ %i.cho, %bb.mz ], [ %i.cgn, %bb.ms ], [ %i.cil, %bb.nf ]
  %i.ciu = phi i64 [ %i.chv, %bb.mz ], [ %i.cgu, %bb.ms ], [ %i.cis, %bb.nf ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.cit, i64 noundef %i.ciu) #14
          to label %.cont3673 unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont3673:                                        ; preds = %.invoke3672
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1065:         ; preds = %bb.nf
  %i.civ = getelementptr inbounds nuw [4 x i8], ptr %i.cio, i64 %i.cil
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1066

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1066: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1065, %bb.ne
  %.0.in.i.i.i1067 = phi ptr [ %i.cii, %bb.ne ], [ %i.civ, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1065 ]
  %.0.i7.i.i1068 = load float, ptr %.0.in.i.i.i1067, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1072

bb.ng:                                            ; preds = %bb.nc
  %i.ciw = and i16 %i.cie, 2047
  %i.cix = zext nneg i16 %i.ciw to i32            ; 2 uses
  %i.ciy = sub nsw i32 0, %i.cix
  %.not.i6.i.i1070 = icmp slt i16 %.sroa.0.0.copyload.i1051, 0
  %i.ciz = select i1 %.not.i6.i.i1070, i32 %i.ciy, i32 %i.cix
  %i.cja = sitofp i32 %i.ciz to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1072

_ZNK8facebook4yoga5Style11aspectRatioEv.exit1072: ; preds = %bb.ng, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1066, %bb.nb
  %.sroa.05.0.i.i1069 = phi float [ +qnan, %bb.nb ], [ %.0.i7.i.i1068, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1066 ], [ %i.cja, %bb.ng ]
  %i.cjb = fmul float %i.cgb, %.sroa.05.0.i.i1069
  br label %bb.nh

bb.nh:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1072, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1061
  %i.cjc = phi float [ %i.cic, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1061 ], [ %i.cjb, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit1072 ]
  %i.cjd = fadd float %i.chd, %i.cjc
  br label %bb.ni

.thread2408:                                      ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread, %bb.mt
  %i.cje = load float, ptr %i.arc, align 8, !tbaa !172
  br label %bb.ni

bb.ni:                                            ; preds = %.thread2408, %bb.nh
  %i.cjf = phi float [ %i.cjd, %bb.nh ], [ %i.cje, %.thread2408 ]
  store float %i.cjf, ptr %i.h, align 4, !tbaa !16
  %i.cjg = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %33, i32 noundef %.0.i.i.i.i950, i8 noundef zeroext 1)
          to label %.noexc1077 unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1077:                                       ; preds = %bb.ni
  %i.cjh = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %33, i16 %i.cjg, float noundef %i.rh)
          to label %.noexc1078 unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1078:                                       ; preds = %.noexc1077
  %.inv.i.i1074 = fcmp ord float %i.cjh, 0.000000e+00
  %i.cji = select i1 %.inv.i.i1074, float %i.cjh, float 0.000000e+00
  %i.cjj = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %33, i32 noundef %.0.i.i4.i.i1832, i8 noundef zeroext 1)
          to label %.noexc1079 unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1079:                                       ; preds = %.noexc1078
  %i.cjk = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %33, i16 %i.cjj, float noundef %i.rh)
          to label %bb.nj unwind label %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.nj:                                            ; preds = %.noexc1079
  %.inv.i5.i1076 = fcmp ord float %i.cjk, 0.000000e+00
  %i.cjl = select i1 %.inv.i5.i1076, float %i.cjk, float 0.000000e+00
  %i.cjm = fadd float %i.cji, %i.cjl
  %i.cjn = fadd float %i.cgb, %i.cjm
  store float %i.cjn, ptr %i.g, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  store i32 0, ptr %i.i, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  store i32 0, ptr %i.j, align 4, !tbaa !14
  invoke void @_ZN8facebook4yoga23constrainMaxSizeForModeEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionEffPNS0_10SizingModeEPf(ptr noundef nonnull %i.ceu, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i907, float noundef %.37872370, float noundef %i.rh, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g)
          to label %bb.nk unwind label %bb.nn

bb.nk:                                            ; preds = %bb.nj
  invoke void @_ZN8facebook4yoga23constrainMaxSizeForModeEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionEffPNS0_10SizingModeEPf(ptr noundef nonnull %i.ceu, i8 noundef zeroext %i.t, i8 noundef zeroext %i.pi, float noundef %i.rl, float noundef %i.rh, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.nl unwind label %bb.nn

bb.nl:                                            ; preds = %bb.nk
  %i.cjo = load float, ptr %i.g, align 4          ; 2 uses
  %i.cjp = load float, ptr %i.h, align 4          ; 2 uses
  %i.cjq = select i1 %i.pj, float %i.cjo, float %i.cjp ; 2 uses
  %i.cjr = select i1 %i.pj, float %i.cjp, float %i.cjo ; 2 uses
  %i.cjs = load i32, ptr %i.ab, align 8
  %i.cjt = and i32 %i.cjs, 983040
  %i.cju = icmp ne i32 %i.cjt, 262144
  %i.cjv = and i1 %i.pk, %i.cju                   ; 2 uses
  %i.cjw = fcmp uno float %i.cjq, 0.000000e+00
  %i.cjx = and i1 %i.cjv, %.not3218
  %i.cjy = or i1 %i.cjw, %i.cjx
  %i.cjz = zext i1 %i.cjy to i32
  %i.cka = fcmp uno float %i.cjr, 0.000000e+00
  %i.ckb = and i1 %i.pj, %i.cjv
  %i.ckc = or i1 %i.cka, %i.ckb
  %i.ckd = zext i1 %i.ckc to i32
  %i.cke = invoke noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %i.ceu, float noundef %i.cjq, float noundef %i.cjr, i8 noundef zeroext %i.t, i32 noundef %i.cjz, i32 noundef %i.ckd, float noundef %i.rh, float noundef %i.rj, i1 noundef zeroext true, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(60) %10, i32 noundef %11, i32 noundef %12)
          to label %bb.nm unwind label %bb.nn     ; 0 uses

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %switch.lookup4640

.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc1049, %.noexc1048, %.noexc1047, %.thread2406, %.noexc1079, %.noexc1078, %.noexc1077, %bb.ni, %.invoke3672
  %lpad.loopexit.split-lp4774 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2611

bb.nn:                                            ; preds = %bb.nj, %bb.nk, %bb.nl
  %i.ckf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  br label %.loopexit.split-lp2611

.loopexit.split-lp2611:                           ; preds = %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.nn
  %.pn839.pn = phi { ptr, i32 } [ %i.ckf, %bb.nn ], [ %lpad.loopexit.split-lp4774, %.loopexit.split-lp2611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %.loopexit.split-lp2606

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread2405: ; preds = %bb.ml, %bb.mn, %bb.mm, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit
  %.0.i10252404 = phi i8 [ %spec.select2520, %bb.ml ], [ 4, %bb.mn ], [ 4, %bb.mm ], [ %i.cfc, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit ]
  %i.ckg = invoke noundef float @_ZN8facebook4yoga4Node19dimensionWithMarginENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(744) %i.ceu, i8 noundef zeroext %i.pi, float noundef %i.rh)
          to label %bb.no unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.no:                                            ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread2405
  %i.ckh = fsub float %.073923982402, %i.ckg      ; 5 uses
  %34 = getelementptr inbounds nuw i8, ptr %i.ceu, i64 56 ; 3 uses
  switch i8 %i.pi, label %.unreachabledefault2526 [
    i8 0, label %bb.nu
    i8 3, label %bb.nv
    i8 2, label %bb.np
  ]

.unreachabledefault2526:                          ; preds = %bb.no
  unreachable

bb.np:                                            ; preds = %bb.no
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ceu, i64 69
  switch i8 %i.t, label %bb.ns [
    i8 1, label %bb.nq
    i8 2, label %bb.nr
  ]

bb.nq:                                            ; preds = %bb.np
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.ceu, i64 77
  %i.ckk = load i16, ptr %i.ckj, align 1, !tbaa !77 ; 2 uses
  %i.ckl = and i16 %i.ckk, 7
  %.not14.i.i2024 = icmp eq i16 %i.ckl, 0
  br i1 %.not14.i.i2024, label %bb.ns, label %bb.oa

bb.nr:                                            ; preds = %bb.np
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ceu, i64 79
  %i.ckn = load i16, ptr %i.ckm, align 1, !tbaa !77 ; 2 uses
  %i.cko = and i16 %i.ckn, 7
  %.not.i.i2019 = icmp eq i16 %i.cko, 0
  br i1 %.not.i.i2019, label %bb.ns, label %bb.oa

bb.ns:                                            ; preds = %bb.nr, %bb.nq, %bb.np
  %i.ckp = load i16, ptr %i.cki, align 1, !tbaa !77 ; 2 uses
  %i.ckq = and i16 %i.ckp, 7
  %.not15.i.i2020 = icmp eq i16 %i.ckq, 0
  br i1 %.not15.i.i2020, label %bb.nt, label %bb.oa

bb.nt:                                            ; preds = %bb.ns
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ceu, i64 81
  %i.cks = load i16, ptr %i.ckr, align 1, !tbaa !77 ; 2 uses
  %i.ckt = and i16 %i.cks, 7
  %.not16.i.i2021 = icmp eq i16 %i.ckt, 0
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ceu, i64 85
  %.val.i.i2022 = load i16, ptr %i.cku, align 1
  %.sroa.0.0.pre.i.i2023 = select i1 %.not16.i.i2021, i16 %.val.i.i2022, i16 %i.cks
  br label %bb.oa

bb.nu:                                            ; preds = %bb.no
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.ceu, i64 71 ; 2 uses
  %i.ckw = load i16, ptr %i.ckv, align 1, !tbaa !77
  %i.ckx = and i16 %i.ckw, 7
  %.not.i3.i2014 = icmp eq i16 %i.ckx, 0
  %i.cky = getelementptr inbounds nuw i8, ptr %i.ceu, i64 83 ; 2 uses
  %i.ckz = load i16, ptr %i.cky, align 1
  %i.cla = and i16 %i.ckz, 7
  %.not7.i.i2015 = icmp eq i16 %i.cla, 0
  %i.clb = getelementptr inbounds nuw i8, ptr %i.ceu, i64 85
  %spec.select.i.i2016 = select i1 %.not7.i.i2015, ptr %i.clb, ptr %i.cky
  %.sroa.0.0.in.i.i2017 = select i1 %.not.i3.i2014, ptr %spec.select.i.i2016, ptr %i.ckv
  %.sroa.0.0.i4.i2018 = load i16, ptr %.sroa.0.0.in.i.i2017, align 1, !tbaa !12
  br label %bb.oa

bb.nv:                                            ; preds = %bb.no
  switch i8 %i.t, label %bb.ny [
    i8 1, label %bb.nw
    i8 2, label %bb.nx
  ]

bb.nw:                                            ; preds = %bb.nv
  %i.clc = getelementptr inbounds nuw i8, ptr %i.ceu, i64 79
  %i.cld = load i16, ptr %i.clc, align 1, !tbaa !77 ; 2 uses
  %i.cle = and i16 %i.cld, 7
  %.not14.i11.i2013 = icmp eq i16 %i.cle, 0
  br i1 %.not14.i11.i2013, label %bb.ny, label %bb.oa

bb.nx:                                            ; preds = %bb.nv
  %i.clf = getelementptr inbounds nuw i8, ptr %i.ceu, i64 77
  %i.clg = load i16, ptr %i.clf, align 1, !tbaa !77 ; 2 uses
  %i.clh = and i16 %i.clg, 7
  %.not.i5.i2008 = icmp eq i16 %i.clh, 0
  br i1 %.not.i5.i2008, label %bb.ny, label %bb.oa

bb.ny:                                            ; preds = %bb.nx, %bb.nw, %bb.nv
  %i.cli = getelementptr inbounds nuw i8, ptr %i.ceu, i64 73
  %i.clj = load i16, ptr %i.cli, align 1, !tbaa !77 ; 2 uses
  %i.clk = and i16 %i.clj, 7
  %.not15.i7.i2009 = icmp eq i16 %i.clk, 0
  br i1 %.not15.i7.i2009, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.cll = getelementptr inbounds nuw i8, ptr %i.ceu, i64 81
  %i.clm = load i16, ptr %i.cll, align 1, !tbaa !77 ; 2 uses
  %i.cln = and i16 %i.clm, 7
  %.not16.i8.i2010 = icmp eq i16 %i.cln, 0
  %i.clo = getelementptr inbounds nuw i8, ptr %i.ceu, i64 85
  %.val.i9.i2011 = load i16, ptr %i.clo, align 1
  %.sroa.0.0.pre.i10.i2012 = select i1 %.not16.i8.i2010, i16 %.val.i9.i2011, i16 %i.clm
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nq, %bb.nr, %bb.ns, %bb.nt, %bb.nu, %bb.nw, %bb.nx, %bb.ny, %bb.nz
  %.sroa.0.0.i2007 = phi i16 [ %i.clj, %bb.ny ], [ %.sroa.0.0.i4.i2018, %bb.nu ], [ %i.ckp, %bb.ns ], [ %.sroa.0.0.pre.i.i2023, %bb.nt ], [ %i.ckk, %bb.nq ], [ %i.ckn, %bb.nr ], [ %.sroa.0.0.pre.i10.i2012, %bb.nz ], [ %i.cld, %bb.nw ], [ %i.clg, %bb.nx ]
  %i.clp = and i16 %.sroa.0.0.i2007, 7
  %i.clq = icmp eq i16 %i.clp, 4
  br i1 %i.clq, label %switch.lookup4628, label %switch.lookup4632

switch.lookup4628:                                ; preds = %bb.oa
  %switch.load4630 = load i8, ptr %switch.gep4629, align 1
  %switch.ext4631 = zext i8 %switch.load4630 to i32
  %i.clr = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %34, i32 noundef %switch.ext4631, i8 noundef zeroext %i.t)
          to label %bb.ob unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ob:                                            ; preds = %switch.lookup4628
  %i.cls = and i16 %i.clr, 7
  %i.clt = icmp eq i16 %i.cls, 4
  br i1 %i.clt, label %bb.oc, label %switch.lookup4632

bb.oc:                                            ; preds = %bb.ob
  %i.clu = fmul float %i.ckh, 5.000000e-01        ; 2 uses
  %i.clv = fcmp ogt float %i.clu, 0.000000e+00
  %i.clw = select i1 %i.clv, float %i.clu, float 0.000000e+00
  %i.clx = fadd float %i.rb, %i.clw
  br label %switch.lookup4640

switch.lookup4632:                                ; preds = %bb.oa, %bb.ob
  %switch.load4634 = load i8, ptr %switch.gep4633, align 1
  %switch.ext4635 = zext i8 %switch.load4634 to i32
  %i.cly = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %34, i32 noundef %switch.ext4635, i8 noundef zeroext %i.t)
          to label %bb.od unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.od:                                            ; preds = %switch.lookup4632
  %i.clz = and i16 %i.cly, 7
  %i.cma = icmp eq i16 %i.clz, 4
  br i1 %i.cma, label %switch.lookup4640, label %switch.lookup4636

switch.lookup4636:                                ; preds = %bb.od
  %switch.load4638 = load i8, ptr %switch.gep4637, align 1
  %switch.ext4639 = zext i8 %switch.load4638 to i32
  %i.cmb = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %34, i32 noundef %switch.ext4639, i8 noundef zeroext %i.t)
          to label %bb.oe unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oe:                                            ; preds = %switch.lookup4636
  %i.cmc = and i16 %i.cmb, 7
  %i.cmd = icmp eq i16 %i.cmc, 4
  br i1 %i.cmd, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.cme = fcmp ogt float %i.ckh, 0.000000e+00
  %i.cmf = select i1 %i.cme, float %i.ckh, float 0.000000e+00
  %i.cmg = fadd float %i.rb, %i.cmf
  br label %switch.lookup4640

bb.og:                                            ; preds = %bb.oe
  switch i8 %.0.i10252404, label %bb.oi [
    i8 1, label %switch.lookup4640
    i8 2, label %bb.oh
  ]

bb.oh:                                            ; preds = %bb.og
  %i.cmh = fmul float %i.ckh, 5.000000e-01
  %i.cmi = fadd float %i.rb, %i.cmh
  br label %switch.lookup4640

bb.oi:                                            ; preds = %bb.og
  %i.cmj = fadd float %i.rb, %i.ckh
  br label %switch.lookup4640

switch.lookup4640:                                ; preds = %bb.nm, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit, %bb.og, %bb.od, %bb.oi, %bb.oh, %bb.of, %bb.oc
  %.1738 = phi float [ %i.rb, %bb.nm ], [ %i.rb, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit ], [ %i.clx, %bb.oc ], [ %i.rb, %bb.od ], [ %i.cmg, %bb.of ], [ %i.rb, %bb.og ], [ %i.cmi, %bb.oh ], [ %i.cmj, %bb.oi ]
  %switch.load4642 = load i16, ptr %switch.gep4641, align 2
  %switch.ext4643 = zext i16 %switch.load4642 to i64
  %switch.load4645 = load i8, ptr %switch.gep4644, align 1
  %switch.ext4646 = zext i8 %switch.load4645 to i32
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.ceu, i64 %switch.ext4643
  %i.cml = load float, ptr %i.cmk, align 4, !tbaa !16
  %i.cmm = fadd float %.07812966, %i.cml
  %i.cmn = fadd float %.1738, %i.cmm
  invoke void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %i.ceu, float noundef %i.cmn, i32 noundef %switch.ext4646)
          to label %bb.oj unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oj:                                            ; preds = %switch.lookup4640
  %i.cmo = getelementptr inbounds nuw i8, ptr %.sroa.02283.02960, i64 8 ; 2 uses
  %i.cmp = icmp eq ptr %i.cmo, %i.ces
  br i1 %i.cmp, label %.loopexit2604.loopexit, label %.lr.ph2961

.loopexit2604.loopexit:                           ; preds = %bb.oj
  %.pre3231 = load ptr, ptr %20, align 8, !tbaa !85
  br label %.loopexit2604

.loopexit2604:                                    ; preds = %.loopexit2604.loopexit, %bb.mi, %bb.mh
  %i.cmq = phi ptr [ %.pre3231, %.loopexit2604.loopexit ], [ %.pre3232, %bb.mi ], [ %.pre3232, %bb.mh ] ; 3 uses
  %i.cmr = load float, ptr %i.arc, align 8, !tbaa !172
  %i.cms = load float, ptr %i.arb, align 4, !tbaa !171 ; 3 uses
  %or.cond.i1111 = fcmp ord float %.07422967, %i.cms
  %i.cmt = fcmp uno float %.07422967, 0.000000e+00
  %i.cmu = fcmp olt float %.07422967, %i.cms
  %.sink.i1112 = select i1 %or.cond.i1111, i1 %i.cmu, i1 %i.cmt
  %i.cmv = select i1 %.sink.i1112, float %i.cms, float %.07422967 ; 2 uses
  %.not834 = icmp eq i64 %.07822965, 0
  %i.cmw = select i1 %.not834, float 0.000000e+00, float %i.apu
  %i.cmx = fadd float %i.cmw, %i.cmr
  %i.cmy = fadd float %.07812966, %i.cmx          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cmq, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook4yoga8FlexLineD2Ev.exit, label %bb.ok

bb.ok:                                            ; preds = %.loopexit2604
  %i.cmz = load ptr, ptr %i.are, align 8, !tbaa !173
  %i.cna = ptrtoint ptr %i.cmz to i64
  %i.cnb = ptrtoint ptr %i.cmq to i64
  %i.cnc = sub i64 %i.cna, %i.cnb
  call void @_ZdlPvm(ptr noundef nonnull %i.cmq, i64 noundef %i.cnc) #16
  br label %_ZN8facebook4yoga8FlexLineD2Ev.exit

_ZN8facebook4yoga8FlexLineD2Ev.exit:              ; preds = %.loopexit2604, %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %i.cnd = add i64 %.07822965, 1                  ; 2 uses
  %i.cne = load ptr, ptr %19, align 8, !tbaa !92
  %.not.i923 = icmp ne ptr %i.cne, null
  %i.cnf = load i64, ptr %i.apv, align 8
  %i.cng = icmp ne i64 %i.cnf, 0
  %i.cnh = select i1 %.not.i923, i1 true, i1 %i.cng
  br i1 %i.cnh, label %bb.ep, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge, !llvm.loop !138

.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i, %.lr.ph2953, %bb.hc, %bb.hk, %bb.hs, %bb.ht, %switch.lookup4613, %bb.lw, %.noexc984, %.noexc985, %.noexc986, %.noexc987, %bb.lx, %bb.ly, %.noexc990, %.noexc991, %.noexc992, %bb.lz, %switch.lookup4636, %switch.lookup4632, %switch.lookup4628, %switch.lookup4624, %switch.lookup4620, %switch.lookup4640, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread2405, %bb.ih, %bb.ij, %bb.io, %.noexc1866, %.noexc1867, %.noexc1868, %.noexc1869, %.noexc1870, %.noexc1871, %.noexc1872, %switch.lookup4589, %switch.lookup4593, %bb.jl, %.noexc1886, %switch.lookup4597, %switch.lookup4601, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383, %bb.jw, %bb.jm, %bb.jn, %.noexc2203, %.noexc2204, %.noexc2205, %.invoke3675, %.noexc1919, %.noexc1918, %.noexc1917, %.noexc1916, %.noexc1915, %.noexc1914, %.noexc1913, %.noexc1912, %bb.id, %bb.ic, %bb.ia, %bb.hy, %bb.hx, %.lr.ph.i1895, %bb.jx, %bb.gl, %bb.gj, %bb.gh, %switch.lookup4605, %.noexc966, %.noexc967, %.noexc968, %.noexc969, %.noexc970, %.noexc971, %.noexc972, %.noexc973, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i, %bb.ke, %bb.kf, %bb.kg, %bb.kr, %bb.mc, %.noexc997, %.noexc998, %.noexc999, %.noexc1000, %.noexc1001, %.noexc1002, %.noexc1003, %.noexc1004, %bb.mf, %.noexc1014, %.noexc1015, %.noexc1016, %.noexc1017, %.noexc1018, %.noexc1019, %.noexc1020, %.noexc1021, %bb.gr, %bb.gd, %.noexc1820, %.noexc1822, %.noexc1824, %.noexc1826, %bb.gc, %.noexc1806, %.noexc1808, %.noexc1810, %.noexc1812, %bb.fk, %.noexc1792, %.noexc1794, %.noexc1796, %.noexc1798, %bb.es, %.noexc1779, %.noexc1781, %.noexc1783, %.noexc1785, %.invoke3676
  %lpad.loopexit.split-lp4791 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2606

.loopexit.split-lp2606:                           ; preds = %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp2611
  %.pn843.pn.pn = phi { ptr, i32 } [ %.pn839.pn, %.loopexit.split-lp2611 ], [ %lpad.loopexit.split-lp4791, %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cni = load ptr, ptr %20, align 8, !tbaa !85  ; 3 uses
  %.not.i.i.i.i1113 = icmp eq ptr %i.cni, null
  br i1 %.not.i.i.i.i1113, label %_ZN8facebook4yoga8FlexLineD2Ev.exit1114, label %bb.ol

bb.ol:                                            ; preds = %.loopexit.split-lp2606
  %i.cnj = load ptr, ptr %i.are, align 8, !tbaa !173
  %i.cnk = ptrtoint ptr %i.cnj to i64
  %i.cnl = ptrtoint ptr %i.cni to i64
  %i.cnm = sub i64 %i.cnk, %i.cnl
  call void @_ZdlPvm(ptr noundef nonnull %i.cni, i64 noundef %i.cnm) #16
  br label %_ZN8facebook4yoga8FlexLineD2Ev.exit1114

_ZN8facebook4yoga8FlexLineD2Ev.exit1114:          ; preds = %bb.ol, %.loopexit.split-lp2606, %bb.gf
  %.pn843.pn.pn.pn = phi { ptr, i32 } [ %i.azc, %bb.gf ], [ %.pn843.pn.pn, %.loopexit.split-lp2606 ], [ %.pn843.pn.pn, %bb.ol ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.so

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge: ; preds = %_ZN8facebook4yoga8FlexLineD2Ev.exit, %_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit
  %.0784.lcssa = phi float [ %i.rk, %_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit ], [ %.37872370, %_ZN8facebook4yoga8FlexLineD2Ev.exit ]
  %.0782.lcssa = phi i64 [ 0, %_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit ], [ %i.cnd, %_ZN8facebook4yoga8FlexLineD2Ev.exit ] ; 7 uses
  %.0781.lcssa = phi float [ 0.000000e+00, %_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit ], [ %i.cmy, %_ZN8facebook4yoga8FlexLineD2Ev.exit ] ; 4 uses
  %.0742.lcssa = phi float [ 0.000000e+00, %_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit ], [ %i.cmv, %_ZN8facebook4yoga8FlexLineD2Ev.exit ] ; 2 uses
  br i1 %8, label %bb.om, label %bb.qv

bb.om:                                            ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge
  br i1 %i.pk, label %bb.op, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.cnn = invoke noundef zeroext i1 @_ZN8facebook4yoga16isBaselineLayoutEPKNS0_4NodeE(ptr noundef nonnull %0)
          to label %bb.oo unwind label %bb.sa

bb.oo:                                            ; preds = %bb.on
  br i1 %i.cnn, label %bb.op, label %bb.qv

bb.op:                                            ; preds = %bb.oo, %bb.om
  %i.cno = icmp eq i32 %i.rd, 0
  br i1 %i.cno, label %bb.oq, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1117

bb.oq:                                            ; preds = %bb.op
  %i.cnp = fadd float %i.qt, %i.rl
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1117: ; preds = %bb.op
  %i.cnq = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.cnr = zext i1 %not.3460 to i64
  %i.cns = getelementptr inbounds nuw [8 x i8], ptr %i.cnq, i64 %i.cnr
  %.sroa.0.0.copyload.i.i1118 = load i64, ptr %i.cns, align 4 ; 2 uses
  %i.cnt = lshr i64 %.sroa.0.0.copyload.i.i1118, 32
  %i.cnu = trunc i64 %i.cnt to i8                 ; 2 uses
  %i.cnv = trunc i64 %.sroa.0.0.copyload.i.i1118 to i32
  %i.cnw = bitcast i32 %i.cnv to float            ; 4 uses
  switch i8 %i.cnu, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121.thread [
    i8 1, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121
    i8 2, label %bb.or
  ]

bb.or:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1117
  %i.cnx = fmul float %i.pm, %i.cnw
  %i.cny = fmul float %i.cnx, f0x3C23D70A
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1117, %bb.or
  %.sroa.0.0.i.i1120 = phi float [ %i.cny, %bb.or ], [ %i.cnw, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1117 ]
  %i.cnz = fcmp ult float %.sroa.0.0.i.i1120, 0.000000e+00
  br i1 %i.cnz, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121.thread, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1124

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1124: ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121
  %i.coa = icmp eq i8 %i.cnu, 1
  %i.cob = fmul float %i.pm, %i.cnw
  %i.coc = fmul float %i.cob, f0x3C23D70A
  %.sroa.0.0.i.i1127 = select i1 %i.coa, float %i.cnw, float %i.coc ; 2 uses
  %i.cod = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.coe = load i8, ptr %i.cod, align 4
  %i.cof = and i8 %i.coe, 16
  %i.cog = icmp eq i8 %i.cof, 0
  br i1 %i.cog, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit, label %bb.os

bb.os:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1124
  %spec.select2530 = zext i1 %not.3460 to i8
  %i.coh = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.t, i8 noundef zeroext %spec.select2530, float noundef %6)
          to label %.noexc1129 unwind label %bb.sa ; 2 uses

.noexc1129:                                       ; preds = %bb.os
  %i.coi = fcmp ord float %i.coh, 0.000000e+00
  %.sroa.0.0.i1128 = select i1 %i.coi, float %i.coh, float 0.000000e+00
  %i.coj = fadd float %.sroa.0.0.i.i1127, %.sroa.0.0.i1128
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121.thread: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1117, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121
  %i.cok = fadd float %i.qt, %.0781.lcssa
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1124, %.noexc1129, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121.thread, %bb.oq
  %i.col = phi float [ %i.cnp, %bb.oq ], [ %i.cok, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit1121.thread ], [ %i.coj, %.noexc1129 ], [ %.sroa.0.0.i.i1127, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1124 ]
  %i.com = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %0, i8 noundef zeroext %i.t, i8 noundef zeroext %i.pi, float %i.col, float noundef %i.pm, float noundef %6)
          to label %.noexc1138 unwind label %bb.sa ; 4 uses

.noexc1138:                                       ; preds = %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit
  %i.con = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i909, i8 noundef zeroext %i.t)
          to label %.noexc1139 unwind label %bb.sa

.noexc1139:                                       ; preds = %.noexc1138
  %i.coo = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.con, float noundef %6)
          to label %.noexc1140 unwind label %bb.sa ; 2 uses

.noexc1140:                                       ; preds = %.noexc1139
  %.sink.i.inv.i.i.i.i1131 = fcmp oge float %i.coo, 0.000000e+00
  %i.cop = select i1 %.sink.i.inv.i.i.i.i1131, float %i.coo, float 0.000000e+00
  %i.coq = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i909, i8 noundef zeroext %i.t)
end_hunk_3
begin_hunk_4_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  %i.cqj = load ptr, ptr %i.ux, align 8, !tbaa !84, !noalias !174
  %i.cqk = load ptr, ptr %i.uw, align 8, !tbaa !85, !noalias !174 ; 2 uses
  %.not.i1149 = icmp eq ptr %i.cqj, %i.cqk
  br i1 %.not.i1149, label %bb.pf, label %bb.pc

bb.pc:                                            ; preds = %_ZN8facebook4yoga17fallbackAlignmentENS0_5AlignE.exit.thread
  store ptr %0, ptr %21, align 8, !tbaa !92, !alias.scope !174
  %i.cql = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cqm = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cql, i8 0, i64 16, i1 false), !alias.scope !174
  %i.cqn = load ptr, ptr %i.cqk, align 8, !tbaa !23, !noalias !174
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqn, i64 60
  %i.cqp = load i8, ptr %i.cqo, align 4, !noalias !174
  %i.cqq = and i8 %i.cqp, 12
  %i.cqr = icmp eq i8 %i.cqq, 8
  br i1 %i.cqr, label %bb.pd, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1155, !prof !93

bb.pd:                                            ; preds = %bb.pc
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1155 unwind label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.cqs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cqt = load ptr, ptr %i.cqm, align 8, !tbaa !94, !alias.scope !174 ; 2 uses
  %.not12.i.i.i.i1150 = icmp eq ptr %i.cqt, null
  br i1 %.not12.i.i.i.i1150, label %.body, label %.lr.ph.i.i.i.i1151

.lr.ph.i.i.i.i1151:                               ; preds = %bb.pe, %.lr.ph.i.i.i.i1151
  %.013.i.i.i.i1152 = phi ptr [ %i.cqu, %.lr.ph.i.i.i.i1151 ], [ %i.cqt, %bb.pe ] ; 2 uses
  %i.cqu = load ptr, ptr %.013.i.i.i.i1152, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i1152, i64 noundef 24) #16
  %.not.i.i.i3.i1153 = icmp eq ptr %i.cqu, null
  br i1 %.not.i.i.i3.i1153, label %.body, label %.lr.ph.i.i.i.i1151, !llvm.loop !0

bb.pf:                                            ; preds = %_ZN8facebook4yoga17fallbackAlignmentENS0_5AlignE.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !174
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1155

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1155: ; preds = %bb.pf, %bb.pd, %bb.pc
  %.not2994 = icmp eq i64 %.0782.lcssa, 0
  br i1 %.not2994, label %._crit_edge2989, label %.lr.ph2988

.lr.ph2988:                                       ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1155
  %i.cqv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.cqw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 11 uses
  %i.cqx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 8 uses
  %i.cqy = zext i1 %not.3460 to i64               ; 4 uses
  %.0.i.i.i1191 = zext i1 %not.3460 to i32        ; 2 uses
  %.0.i.i4.i1193 = select i1 %i.ph, i32 2, i32 3
  %i.cqz = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cra = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.crb = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.crc = zext nneg i8 %i.pi to i64
  %switch.gep4664 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.crc
  %i.crd = zext nneg i8 %i.pi to i64
  %switch.gep4656 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.33, i64 %i.crd
  %i.cre = zext nneg i8 %i.pi to i64
  %switch.gep4660 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.cre
  %i.crf = zext nneg i8 %i.pi to i64
  %switch.gep4668 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.crf
  %i.crg = zext nneg i8 %i.pi to i64
  %switch.gep4672 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.crg
  %i.crh = zext nneg i8 %i.pi to i64
  %switch.gep4648 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.crh
  %i.cri = zext nneg i8 %i.pi to i64
  %switch.gep4652 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.cri
  br label %bb.pg

._crit_edge2989:                                  ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1340, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1155
  %i.crj = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.crk = load ptr, ptr %i.crj, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i1156 = icmp eq ptr %i.crk, null
  br i1 %.not12.i.i.i1156, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1160, label %.lr.ph.i.i.i1157

.lr.ph.i.i.i1157:                                 ; preds = %._crit_edge2989, %.lr.ph.i.i.i1157
  %.013.i.i.i1158 = phi ptr [ %i.crl, %.lr.ph.i.i.i1157 ], [ %i.crk, %._crit_edge2989 ] ; 2 uses
  %i.crl = load ptr, ptr %.013.i.i.i1158, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1158, i64 noundef 24) #16
  %.not.i.i.i1159 = icmp eq ptr %i.crl, null
  br i1 %.not.i.i.i1159, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1160, label %.lr.ph.i.i.i1157, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1160: ; preds = %.lr.ph.i.i.i1157, %._crit_edge2989
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.qv

bb.pg:                                            ; preds = %.lr.ph2988, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1340
  %.07322987 = phi i64 [ 0, %.lr.ph2988 ], [ %i.deh, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1340 ] ; 3 uses
  %.17352986 = phi float [ %.0734, %.lr.ph2988 ], [ %i.ded, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1340 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02271)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.62272)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02271, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false)
  store ptr null, ptr %.sroa.62272, align 8, !tbaa !94
  %i.crm = load ptr, ptr %i.cqv, align 8, !tbaa !96 ; 2 uses
  %i.crn = icmp eq ptr %i.crm, null
  br i1 %i.crn, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit.thread, label %.lr.ph.i.i.i1161

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit.thread: ; preds = %bb.pg
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false)
  store ptr null, ptr %i.cqw, align 8, !tbaa !94
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179

.lr.ph.i.i.i1161:                                 ; preds = %bb.pg, %.noexc.i.i
  %.07.i.i.i = phi ptr [ %i.cro, %.noexc.i.i ], [ %.sroa.62272, %bb.pg ]
  %.sroa.03.06.i.i.i = phi ptr [ %i.crr, %.noexc.i.i ], [ %i.crm, %bb.pg ] ; 2 uses
  %i.cro = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i.i unwind label %bb.ph ; 4 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i1161
  %i.crp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  store ptr null, ptr %i.cro, align 8, !tbaa !94
  %i.crq = getelementptr inbounds nuw i8, ptr %i.cro, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.crq, ptr noundef nonnull align 8 dereferenceable(16) %i.crp, i64 16, i1 false)
  store ptr %i.cro, ptr %.07.i.i.i, align 8, !tbaa !94
  %i.crr = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.crs = icmp eq ptr %i.crr, null
  br i1 %i.crs, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i1161, !llvm.loop !1

bb.ph:                                            ; preds = %.lr.ph.i.i.i1161
  %i.crt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.16. = load ptr, ptr %.sroa.62272, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i1162 = icmp eq ptr %.sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.16., null
  br i1 %.not12.i.i.i.i1162, label %.body1166, label %.lr.ph.i.i.i.i1163

.lr.ph.i.i.i.i1163:                               ; preds = %bb.ph, %.lr.ph.i.i.i.i1163
  %.013.i.i.i.i1164 = phi ptr [ %i.cru, %.lr.ph.i.i.i.i1163 ], [ %.sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.16., %bb.ph ] ; 2 uses
  %i.cru = load ptr, ptr %.013.i.i.i.i1164, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i1164, i64 noundef 24) #16
  %.not.i.i.i.i1165 = icmp eq ptr %i.cru, null
  br i1 %.not.i.i.i.i1165, label %.body1166, label %.lr.ph.i.i.i.i1163, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit: ; preds = %.noexc.i.i
  %.sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.16.2273.pr = load ptr, ptr %.sroa.62272, align 8, !tbaa !96 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02271, i64 16, i1 false)
  store ptr null, ptr %i.cqw, align 8, !tbaa !94
  %i.crv = icmp eq ptr %.sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.16.2273.pr, null
  br i1 %i.crv, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179, label %.lr.ph.i.i.i1168

.lr.ph.i.i.i1168:                                 ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, %.noexc.i.i1176
  %.07.i.i.i1169 = phi ptr [ %i.crw, %.noexc.i.i1176 ], [ %i.cqw, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ]
  %.sroa.03.06.i.i.i1170 = phi ptr [ %i.crz, %.noexc.i.i1176 ], [ %.sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.16.2273.pr, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ] ; 2 uses
  %i.crw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i.i1176 unwind label %bb.pi ; 4 uses

.noexc.i.i1176:                                   ; preds = %.lr.ph.i.i.i1168
  %i.crx = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i1170, i64 8
  store ptr null, ptr %i.crw, align 8, !tbaa !94
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cry, ptr noundef nonnull align 8 dereferenceable(16) %i.crx, i64 16, i1 false)
  store ptr %i.crw, ptr %.07.i.i.i1169, align 8, !tbaa !94
  %i.crz = load ptr, ptr %.sroa.03.06.i.i.i1170, align 8, !tbaa !94 ; 2 uses
  %i.csa = icmp eq ptr %i.crz, null
  br i1 %i.csa, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179, label %.lr.ph.i.i.i1168, !llvm.loop !1

bb.pi:                                            ; preds = %.lr.ph.i.i.i1168
  %i.csb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.csc = load ptr, ptr %i.cqw, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i1171 = icmp eq ptr %i.csc, null
  br i1 %.not12.i.i.i.i1171, label %.body1177, label %.lr.ph.i.i.i.i1172

.lr.ph.i.i.i.i1172:                               ; preds = %bb.pi, %.lr.ph.i.i.i.i1172
  %.013.i.i.i.i1173 = phi ptr [ %i.csd, %.lr.ph.i.i.i.i1172 ], [ %i.csc, %bb.pi ] ; 2 uses
  %i.csd = load ptr, ptr %.013.i.i.i.i1173, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i1173, i64 noundef 24) #16
  %.not.i.i.i.i1174 = icmp eq ptr %i.csd, null
  br i1 %.not.i.i.i.i1174, label %.body1177, label %.lr.ph.i.i.i.i1172, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179: ; preds = %.noexc.i.i1176, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit.thread, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit
  %.sroa.62272.0..sroa.62272.0..sroa.62272.16.22763234 = phi ptr [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit.thread ], [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ], [ %.sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.0..sroa.62272.16.2273.pr, %.noexc.i.i1176 ] ; 4 uses
  %i.cse = phi i1 [ true, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit.thread ], [ true, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ], [ false, %.noexc.i.i1176 ]
  %i.csf = load ptr, ptr %22, align 8, !tbaa !92  ; 2 uses
  %.not.i11802973 = icmp ne ptr %i.csf, null
  %i.csg = load i64, ptr %i.cqx, align 8          ; 2 uses
  %i.csh = icmp ne i64 %i.csg, 0
  %i.csi = select i1 %.not.i11802973, i1 true, i1 %i.csh
  br i1 %i.csi, label %.lr.ph2977, label %._crit_edge

.lr.ph2977:                                       ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228
  %i.csj = phi i64 [ %i.cvw, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228 ], [ %i.csg, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179 ] ; 3 uses
  %i.csk = phi ptr [ %i.cvv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228 ], [ %i.csf, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179 ] ; 2 uses
  %.02976 = phi float [ %.2.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228 ], [ 0.000000e+00, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179 ] ; 8 uses
  %.07252975 = phi float [ %.2727.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228 ], [ 0.000000e+00, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179 ] ; 9 uses
  %.07282974 = phi float [ %.3731.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228 ], [ 0.000000e+00, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179 ] ; 8 uses
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csk, i64 696
  %i.csm = getelementptr inbounds nuw i8, ptr %i.csk, i64 704
  %i.csn = load ptr, ptr %i.csm, align 8, !tbaa !84
  %i.cso = load ptr, ptr %i.csl, align 8, !tbaa !85 ; 2 uses
  %i.csp = ptrtoint ptr %i.csn to i64
  %i.csq = ptrtoint ptr %i.cso to i64
  %i.csr = sub i64 %i.csp, %i.csq
  %i.css = ashr exact i64 %i.csr, 3               ; 2 uses
  %.not.i.i.i.i1186 = icmp ult i64 %i.csj, %i.css
  br i1 %.not.i.i.i.i1186, label %bb.pj, label %.invoke4675

bb.pj:                                            ; preds = %.lr.ph2977
  %i.cst = getelementptr inbounds nuw [8 x i8], ptr %i.cso, i64 %i.csj
  %i.csu = load ptr, ptr %i.cst, align 8, !tbaa !23 ; 12 uses
  %i.csv = getelementptr inbounds nuw i8, ptr %i.csu, i64 56 ; 8 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csu, i64 60
  %i.csx = load i8, ptr %i.csw, align 4
  %i.csy = and i8 %i.csx, 12
  %i.csz = icmp eq i8 %i.csy, 4
  br i1 %i.csz, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.cta = load i32, ptr %i.csv, align 8
  %i.ctb = and i32 %i.cta, 805306368
  %.not807 = icmp eq i32 %i.ctb, 536870912
  br i1 %.not807, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.csu, i64 672
  %i.ctd = load i64, ptr %i.ctc, align 8, !tbaa !175
  %.not808 = icmp eq i64 %i.ctd, %.07322987
  br i1 %.not808, label %bb.pm, label %._crit_edge

bb.pm:                                            ; preds = %bb.pl
  %i.cte = invoke noundef zeroext i1 @_ZN8facebook4yoga4Node24isLayoutDimensionDefinedENS0_13FlexDirectionE(ptr noundef nonnull align 8 dereferenceable(744) %i.csu, i8 noundef zeroext %i.pi)
          to label %bb.pn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pn:                                            ; preds = %bb.pm
  br i1 %i.cte, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1190, label %bb.pp

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1190: ; preds = %bb.pn
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.csu, i64 592
  %i.ctg = getelementptr inbounds nuw [4 x i8], ptr %i.ctf, i64 %i.cqy
  %i.cth = load float, ptr %i.ctg, align 4, !tbaa !16
  %i.cti = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.csv, i32 noundef %.0.i.i.i1191, i8 noundef zeroext 1)
          to label %.noexc1195 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1195:                                       ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit1190
  %i.ctj = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.csv, i16 %i.cti, float noundef %i.rh)
          to label %.noexc1196 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1196:                                       ; preds = %.noexc1195
  %.inv.i.i1192 = fcmp ord float %i.ctj, 0.000000e+00
  %i.ctk = select i1 %.inv.i.i1192, float %i.ctj, float 0.000000e+00
  %i.ctl = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.csv, i32 noundef %.0.i.i4.i1193, i8 noundef zeroext 1)
          to label %.noexc1197 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1197:                                       ; preds = %.noexc1196
  %i.ctm = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.csv, i16 %i.ctl, float noundef %i.rh)
          to label %bb.po unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.po:                                            ; preds = %.noexc1197
  %.inv.i5.i1194 = fcmp ord float %i.ctm, 0.000000e+00
  %i.ctn = select i1 %.inv.i5.i1194, float %i.ctm, float 0.000000e+00
  %i.cto = fadd float %i.ctk, %i.ctn
  %i.ctp = fadd float %i.cth, %i.cto              ; 3 uses
  %or.cond.i1200 = fcmp ord float %.07282974, %i.ctp
  %i.ctq = fcmp uno float %.07282974, 0.000000e+00
  %i.ctr = fcmp olt float %.07282974, %i.ctp
  %.sink.i1201 = select i1 %or.cond.i1200, i1 %i.ctr, i1 %i.ctq
  %i.cts = select i1 %.sink.i1201, float %i.ctp, float %.07282974
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn
  %.1729 = phi float [ %.07282974, %bb.pn ], [ %i.cts, %bb.po ] ; 6 uses
  %35 = getelementptr i8, ptr %i.csu, i64 59
  %36 = load i8, ptr %35, align 1
  %i.ctt = and i8 %36, 15                         ; 2 uses
  %i.ctu = icmp eq i8 %i.ctt, 0
  br i1 %i.ctu, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  %i.ctv = load i32, ptr %i.ab, align 8
  %i.ctw = lshr i32 %i.ctv, 20
  %i.ctx = trunc i32 %i.ctw to i8
  %i.cty = and i8 %i.ctx, 15
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pp
  %i.ctz = phi i8 [ %i.cty, %bb.pq ], [ %i.ctt, %bb.pp ]
  %i.cua = load i8, ptr %i.cqz, align 4
  %i.cub = and i8 %i.cua, 12
  %i.cuc = icmp eq i8 %i.cub, 0
  %i.cud = icmp eq i8 %i.ctz, 5                   ; 2 uses
  %or.cond.i1202 = and i1 %i.cud, %i.cuc
  br i1 %or.cond.i1202, label %bb.ps, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205

bb.ps:                                            ; preds = %bb.pr
  %i.cue = load i32, ptr %i.ab, align 8
  %i.cuf = and i32 %i.cue, 8
  %.not.not.i1204 = icmp eq i32 %i.cuf, 0
  br i1 %.not.not.i1204, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread2423

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205: ; preds = %bb.pr
  br i1 %i.cud, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread2423, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread2423: ; preds = %bb.ps, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205
  %i.cug = invoke noundef float @_ZN8facebook4yoga17calculateBaselineEPKNS0_4NodeE(ptr noundef nonnull %i.csu)
          to label %.noexc1209 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1209:                                       ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread2423
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.csu, i64 71 ; 4 uses
  %i.cui = load i16, ptr %i.cuh, align 1, !tbaa !77
  %i.cuj = and i16 %i.cui, 7
  %.not.i3.i2027 = icmp eq i16 %i.cuj, 0
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.csu, i64 83 ; 6 uses
  %i.cul = load i16, ptr %i.cuk, align 1
  %i.cum = and i16 %i.cul, 7
  %.not7.i.i2028 = icmp eq i16 %i.cum, 0
  %i.cun = getelementptr inbounds nuw i8, ptr %i.csu, i64 85 ; 3 uses
  %spec.select.i.i2029 = select i1 %.not7.i.i2028, ptr %i.cun, ptr %i.cuk
  %.sroa.0.0.in.i.i2030 = select i1 %.not.i3.i2027, ptr %spec.select.i.i2029, ptr %i.cuh
  %.sroa.0.0.i4.i2031 = load i16, ptr %.sroa.0.0.in.i.i2030, align 1, !tbaa !12
  %i.cuo = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.csv, i16 %.sroa.0.0.i4.i2031, float noundef %i.rh)
          to label %.noexc1213 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1213:                                       ; preds = %.noexc1209
  %.inv.i1208 = fcmp ord float %i.cuo, 0.000000e+00
  %i.cup = select i1 %.inv.i1208, float %i.cuo, float 0.000000e+00
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.csu, i64 596
  %i.cur = load float, ptr %i.cuq, align 4, !tbaa !16
  %i.cus = load i16, ptr %i.cuh, align 1, !tbaa !77
  %i.cut = and i16 %i.cus, 7
  %.not.i3.i2039 = icmp eq i16 %i.cut, 0
  %i.cuu = load i16, ptr %i.cuk, align 1
  %i.cuv = and i16 %i.cuu, 7
  %.not7.i.i2040 = icmp eq i16 %i.cuv, 0
  %spec.select.i.i2041 = select i1 %.not7.i.i2040, ptr %i.cun, ptr %i.cuk
  %.sroa.0.0.in.i.i2042 = select i1 %.not.i3.i2039, ptr %spec.select.i.i2041, ptr %i.cuh
  %.sroa.0.0.i4.i2043 = load i16, ptr %.sroa.0.0.in.i.i2042, align 1, !tbaa !12
  %i.cuw = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.csv, i16 %.sroa.0.0.i4.i2043, float noundef %i.rh)
          to label %.noexc1215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1215:                                       ; preds = %.noexc1213
  %i.cux = getelementptr inbounds nuw i8, ptr %i.csu, i64 75 ; 2 uses
  %i.cuy = load i16, ptr %i.cux, align 1, !tbaa !77
  %i.cuz = and i16 %i.cuy, 7
  %.not.i12.i2033 = icmp eq i16 %i.cuz, 0
  %i.cva = load i16, ptr %i.cuk, align 1
  %i.cvb = and i16 %i.cva, 7
  %.not7.i13.i2034 = icmp eq i16 %i.cvb, 0
  %spec.select.i14.i2035 = select i1 %.not7.i13.i2034, ptr %i.cun, ptr %i.cuk
  %.sroa.0.0.in.i15.i2036 = select i1 %.not.i12.i2033, ptr %spec.select.i14.i2035, ptr %i.cux
  %.sroa.0.0.i16.i2037 = load i16, ptr %.sroa.0.0.in.i15.i2036, align 1, !tbaa !12
  %i.cvc = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.csv, i16 %.sroa.0.0.i16.i2037, float noundef %i.rh)
          to label %bb.pt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.pt:                                            ; preds = %.noexc1215
  %.inv.i.i1211 = fcmp ord float %i.cuw, 0.000000e+00
  %i.cvd = select i1 %.inv.i.i1211, float %i.cuw, float 0.000000e+00
  %.inv.i5.i1212 = fcmp ord float %i.cvc, 0.000000e+00
  %i.cve = select i1 %.inv.i5.i1212, float %i.cvc, float 0.000000e+00
  %i.cvf = fadd float %i.cvd, %i.cve
  %i.cvg = fadd float %i.cug, %i.cup              ; 4 uses
  %or.cond.i1218 = fcmp ord float %.07252975, %i.cvg
  %i.cvh = fcmp uno float %.07252975, 0.000000e+00
  %i.cvi = fcmp olt float %.07252975, %i.cvg
  %.sink.i1219 = select i1 %or.cond.i1218, i1 %i.cvi, i1 %i.cvh
  %i.cvj = select i1 %.sink.i1219, float %i.cvg, float %.07252975 ; 2 uses
  %i.cvk = fadd float %i.cur, %i.cvf
  %i.cvl = fsub float %i.cvk, %i.cvg              ; 3 uses
  %or.cond.i1220 = fcmp ord float %.02976, %i.cvl
  %i.cvm = fcmp uno float %.02976, 0.000000e+00
  %i.cvn = fcmp olt float %.02976, %i.cvl
  %.sink.i1221 = select i1 %or.cond.i1220, i1 %i.cvn, i1 %i.cvm
  %i.cvo = select i1 %.sink.i1221, float %i.cvl, float %.02976 ; 2 uses
  %i.cvp = fadd float %i.cvj, %i.cvo              ; 3 uses
  %or.cond.i1222 = fcmp ord float %.1729, %i.cvp
  %i.cvq = fcmp uno float %.1729, 0.000000e+00
  %i.cvr = fcmp olt float %.1729, %i.cvp
  %.sink.i1223 = select i1 %or.cond.i1222, i1 %i.cvr, i1 %i.cvq
  %i.cvs = select i1 %.sink.i1223, float %i.cvp, float %.1729
  br label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread: ; preds = %bb.ps, %bb.pj, %bb.pt, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205, %bb.pk
  %.3731.ph = phi float [ %.07282974, %bb.pj ], [ %i.cvs, %bb.pt ], [ %.1729, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205 ], [ %.07282974, %bb.pk ], [ %.1729, %bb.ps ] ; 2 uses
  %.2727.ph = phi float [ %.07252975, %bb.pj ], [ %i.cvj, %bb.pt ], [ %.07252975, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205 ], [ %.07252975, %bb.pk ], [ %.07252975, %bb.ps ] ; 2 uses
  %.2.ph = phi float [ %.02976, %bb.pj ], [ %i.cvo, %bb.pt ], [ %.02976, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205 ], [ %.02976, %bb.pk ], [ %.02976, %bb.ps ]
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 0)
          to label %bb.pu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pu:                                            ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit1205.thread
  %i.cvt = load ptr, ptr %i.cra, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i1224 = icmp eq ptr %i.cvt, null
  br i1 %.not12.i.i.i1224, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228, label %.lr.ph.i.i.i1225

.lr.ph.i.i.i1225:                                 ; preds = %bb.pu, %.lr.ph.i.i.i1225
  %.013.i.i.i1226 = phi ptr [ %i.cvu, %.lr.ph.i.i.i1225 ], [ %i.cvt, %bb.pu ] ; 2 uses
  %i.cvu = load ptr, ptr %.013.i.i.i1226, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1226, i64 noundef 24) #16
  %.not.i.i.i1227 = icmp eq ptr %i.cvu, null
  br i1 %.not.i.i.i1227, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228, label %.lr.ph.i.i.i1225, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228: ; preds = %.lr.ph.i.i.i1225, %bb.pu
  %i.cvv = load ptr, ptr %22, align 8, !tbaa !92  ; 2 uses
  %.not.i1180 = icmp ne ptr %i.cvv, null
  %i.cvw = load i64, ptr %i.cqx, align 8          ; 2 uses
  %i.cvx = icmp ne i64 %i.cvw, 0
  %i.cvy = select i1 %.not.i1180, i1 true, i1 %i.cvx
  br i1 %i.cvy, label %.lr.ph2977, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228, %bb.pl, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179
  %.0728.lcssa = phi float [ 0.000000e+00, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179 ], [ %.3731.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228 ], [ %.07282974, %bb.pl ]
  %.0725.lcssa = phi float [ 0.000000e+00, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit1179 ], [ %.2727.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1228 ], [ %.07252975, %bb.pl ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 16, i1 false)
  %i.cvz = load ptr, ptr %i.cqw, align 8, !tbaa !96
  invoke void @_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE9_M_assignISt24_Fwd_list_const_iteratorIS6_EEEvT_SC_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(8) %i.cqv, ptr %i.cvz, ptr null)
          to label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratoraSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratoraSERKS4_.exit: ; preds = %._crit_edge
  %.not812 = icmp eq i64 %.07322987, 0
  %i.cwa = select i1 %.not812, float 0.000000e+00, float %i.apu
  %i.cwb = fadd float %.17352986, %i.cwa          ; 6 uses
  %i.cwc = fadd float %.0733, %.0728.lcssa        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02271, i64 16, i1 false)
  invoke void @_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE9_M_assignISt24_Fwd_list_const_iteratorIS6_EEEvT_SC_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(8) %i.cqw, ptr %.sroa.62272.0..sroa.62272.0..sroa.62272.16.22763234, ptr null)
          to label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratoraSERKS4_.exit1233.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratoraSERKS4_.exit1233.preheader: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratoraSERKS4_.exit
  %i.cwd = load ptr, ptr %22, align 8, !tbaa !92  ; 2 uses
  %i.cwe = load ptr, ptr %21, align 8, !tbaa !92
  %.not.i12342984 = icmp ne ptr %i.cwd, %i.cwe
  %i.cwf = load i64, ptr %i.cqx, align 8          ; 2 uses
  %i.cwg = load i64, ptr %i.crb, align 8
  %i.cwh = icmp ne i64 %i.cwf, %i.cwg
  %i.cwi = select i1 %.not.i12342984, i1 true, i1 %i.cwh
  br i1 %i.cwi, label %.lr.ph2985, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratoraSERKS4_.exit1233._crit_edge

.lr.ph2985:                                       ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratoraSERKS4_.exit1233.preheader
  %i.cwj = fadd float %i.cwb, %i.cwc
  %i.cwk = fadd float %.0736, %i.cwc              ; 2 uses
  %i.cwl = fadd float %i.cwb, %.0725.lcssa
  br label %bb.pv

bb.pv:                                            ; preds = %.lr.ph2985, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1330
  %i.cwm = phi i64 [ %i.cwf, %.lr.ph2985 ], [ %i.ddy, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1330 ] ; 3 uses
  %i.cwn = phi ptr [ %i.cwd, %.lr.ph2985 ], [ %i.ddw, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1330 ] ; 2 uses
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwn, i64 696
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwn, i64 704
  %i.cwq = load ptr, ptr %i.cwp, align 8, !tbaa !84
  %i.cwr = load ptr, ptr %i.cwo, align 8, !tbaa !85 ; 2 uses
  %i.cws = ptrtoint ptr %i.cwq to i64
  %i.cwt = ptrtoint ptr %i.cwr to i64
  %i.cwu = sub i64 %i.cws, %i.cwt
  %i.cwv = ashr exact i64 %i.cwu, 3               ; 2 uses
  %.not.i.i.i.i1235 = icmp ult i64 %i.cwm, %i.cwv
  br i1 %.not.i.i.i.i1235, label %bb.pw, label %.invoke4675

.invoke4675:                                      ; preds = %.lr.ph2977, %bb.pv
  %i.cww = phi i64 [ %i.cwm, %bb.pv ], [ %i.csj, %.lr.ph2977 ]
  %i.cwx = phi i64 [ %i.cwv, %bb.pv ], [ %i.css, %.lr.ph2977 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.cww, i64 noundef %i.cwx) #14
          to label %.cont4676 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont4676:                                        ; preds = %.invoke4675
  unreachable

bb.pw:                                            ; preds = %bb.pv
  %i.cwy = getelementptr inbounds nuw [8 x i8], ptr %i.cwr, i64 %i.cwm
  %i.cwz = load ptr, ptr %i.cwy, align 8, !tbaa !23 ; 28 uses
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cwz, i64 56 ; 13 uses
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwz, i64 60
  %i.cxc = load i8, ptr %i.cxb, align 4
  %i.cxd = and i8 %i.cxc, 12
  %i.cxe = icmp eq i8 %i.cxd, 4
  br i1 %i.cxe, label %bb.qr, label %bb.px

bb.px:                                            ; preds = %bb.pw
end_hunk_4
begin_hunk_5_@_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE:bb.a
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = and i16 %i.al, 7
  %.not7.i13 = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i14 = select i1 %.not7.i13, ptr %i.an, ptr %i.ak
  %.sroa.0.0.in.i15 = select i1 %.not.i12, ptr %spec.select.i14, ptr %i.ah
  %.sroa.0.0.i16 = load i16, ptr %.sroa.0.0.in.i15, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.m, %bb.g
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.i16, %bb.m ], [ %.sroa.0.0.i4, %bb.g ], [ %i.h, %bb.e ], [ %.sroa.0.0.pre.i, %bb.f ], [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.0.0.pre.i10, %bb.l ], [ %i.v, %bb.i ], [ %i.y, %bb.j ], [ %i.ab, %bb.k ]
  ret i16 %.sroa.0.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare void @_ZN8facebook4yoga19assertFatalWithNodeEPKNS0_4NodeEbPKc(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node18setLayoutDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node15setLayoutMarginEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node15setLayoutBorderEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node16setLayoutPaddingEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook4yoga4Node19getLayoutChildCountEv(ptr noundef nonnull align 8 dereferenceable(744) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 15 uses
  %2 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84, !noalias !185
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !85, !noalias !185 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %1, align 8, !tbaa !92, !alias.scope !185
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !185
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !23, !noalias !185
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.t = load i8, ptr %i.s, align 4, !noalias !185
  %i.u = and i8 %i.t, 12
  %i.v = icmp eq i8 %i.u, 8
  br i1 %i.v, label %bb.e, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, !prof !93

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !94, !alias.scope !185 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i3.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.f, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24 ], [ %i.x, %bb.f ], [ %i.x, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36: ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !185
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !92
  %.pre30 = load i64, ptr %i.p, align 8
  %i.aa = icmp ne ptr %.pre, null
  %i.ab = icmp ne i64 %.pre30, 0
  %i.ac = select i1 %i.aa, i1 true, i1 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.ac, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.ae = phi ptr [ %i.w, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.ad, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.06.lcssa = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36 ], [ %i.aj, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not12.i.i.i10, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge, %.lr.ph.i.i.i11
  %.013.i.i.i12 = phi ptr [ %i.ai, %.lr.ph.i.i.i11 ], [ %i.ah, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge ] ; 2 uses
  %i.ai = load ptr, ptr %.013.i.i.i12, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i12, i64 noundef 24) #16
  %.not.i.i.i13 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i13, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14, label %.lr.ph.i.i.i11, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14: ; preds = %.lr.ph.i.i.i11, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19
  %.0629 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19 ]
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = add i64 %.0629, 1                       ; 2 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i15 = icmp eq ptr %i.ak, null
  br i1 %.not12.i.i.i15, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.h, %.lr.ph.i.i.i16
  %.013.i.i.i17 = phi ptr [ %i.al, %.lr.ph.i.i.i16 ], [ %i.ak, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %.013.i.i.i17, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i17, i64 noundef 24) #16
  %.not.i.i.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i18, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19, label %.lr.ph.i.i.i16, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19: ; preds = %.lr.ph.i.i.i16, %bb.h
  %i.am = load ptr, ptr %1, align 8, !tbaa !92
  %.not.i9 = icmp ne ptr %i.am, null
  %i.an = load i64, ptr %i.ae, align 8
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = select i1 %.not.i9, i1 true, i1 %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge, !llvm.loop !184

bb.i:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not12.i.i.i20, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %bb.i, %.lr.ph.i.i.i21
  %.013.i.i.i22 = phi ptr [ %i.at, %.lr.ph.i.i.i21 ], [ %i.as, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %.013.i.i.i22, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i22, i64 noundef 24) #16
  %.not.i.i.i23 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i23, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24, label %.lr.ph.i.i.i21, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24: ; preds = %.lr.ph.i.i.i21, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %common.resume

bb.j:                                             ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14, %bb.b
  %.07 = phi i64 [ %i.k, %bb.b ], [ %.06.lcssa, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14 ]
  ret i64 %.07
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare i32 @__gxx_personality_v0(...)

declare void @_ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm(ptr dead_on_unwind writable sret(%"struct.facebook::yoga::FlexLine") align 8, ptr noundef, i8 noundef zeroext, float noundef, float noundef, float noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

declare noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 59
  %2 = load i8, ptr %i.a, align 1
  %i.b = and i8 %2, 15                            ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8
  %i.f = lshr i32 %i.e, 20
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i8 [ %i.h, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, 12
  %i.m = icmp eq i8 %i.l, 0
  %i.n = icmp eq i8 %i.i, 5
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 8
  %.not.not = icmp eq i32 %i.q, 0
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i8 [ %i.i, %bb.e ], [ 1, %bb.d ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr float @_ZNK8facebook4yoga5Style11aspectRatioEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1, !tbaa !12 ; 5 uses
  %i.b = and i16 %.sroa.0.0.copyload, 7
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %.sroa.0.0.copyload, 8
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = lshr i16 %.sroa.0.0.copyload, 4          ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i16 %i.e to i64                ; 2 uses
  %i.g = icmp ult i16 %.sroa.0.0.copyload, 64
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 2 uses
  %i.l = add nsw i64 %i.f, -4                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.l, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.l, i64 noundef %i.s) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i:               ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, %bb.d
  %.0.in.i.i = phi ptr [ %i.i, %bb.d ], [ %i.t, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i ]
  %.0.i7.i = load float, ptr %.0.in.i.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit

bb.g:                                             ; preds = %bb.b
  %i.u = and i16 %i.e, 2047
  %i.v = zext nneg i16 %i.u to i32                ; 2 uses
  %i.w = sub nsw i32 0, %i.v
  %.not.i6.i = icmp slt i16 %.sroa.0.0.copyload, 0
  %i.x = select i1 %.not.i6.i, i32 %i.w, i32 %i.v
  %i.y = sitofp i32 %i.x to float
  br label %_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit

_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit: ; preds = %bb.a, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i, %bb.g
  %.sroa.05.0.i = phi float [ +qnan, %bb.a ], [ %.0.i7.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i ], [ %i.y, %bb.g ]
  ret float %.sroa.05.0.i
}

declare noundef float @_ZN8facebook4yoga4Node19dimensionWithMarginENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext, float noundef) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN8facebook4yoga16isBaselineLayoutEPKNS0_4NodeE(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN8facebook4yoga4Node24isLayoutDimensionDefinedENS0_13FlexDirectionE(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext) local_unnamed_addr #3

declare noundef float @_ZN8facebook4yoga17calculateBaselineEPKNS0_4NodeE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind noalias writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !94
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc.i.i
  %.07.i.i.i = phi ptr [ %i.e, %.noexc.i.i ], [ %i.a, %bb.a ]
  %.sroa.03.06.i.i.i = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i.i unwind label %bb.b ; 4 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store ptr %i.e, ptr %.07.i.i.i, align 8, !tbaa !94
  %i.h = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i3, %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.aw, %.lr.ph.i.i.i3 ], [ %i.aw, %bb.d ], [ %i.j, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit: ; preds = %.noexc.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !95
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 696
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 704
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !85   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not11.i.i = icmp ult i64 %i.o, %i.x
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, %tailrecurse.i.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !96   ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !74

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !98
  store ptr %i.ab, ptr %1, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !99
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !95
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !94
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !94
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 24) #16, !inline_history !100
  %i.af = load i64, ptr %i.m, align 8, !tbaa !95
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 696
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 704
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
end_hunk_5
