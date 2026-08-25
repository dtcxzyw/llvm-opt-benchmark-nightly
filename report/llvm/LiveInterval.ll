Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveInterval?download=true
inline.NumInlined: 1942
inline.NumDeleted: 899
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm9LiveRange12overlapsFromERKS0_PKNS0_7SegmentE:bb.a
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i.i28, -8
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !12
  %i.bl = trunc i64 %.sroa.0.0.copyload.i.i.i.i28 to i32
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = and i32 %i.bm, 3
  %i.bo = or i32 %i.bn, %i.bk
  %i.bp = icmp ult i32 %i.r, %i.bo                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.br = xor i64 %i.bf, -1
  %i.bs = add nsw i64 %.017.i.i24, %i.br
  %.112.i.i29 = select i1 %i.bp, ptr %.01116.i.i25, ptr %i.bq ; 2 uses
  %.1.i.i30 = select i1 %i.bp, i64 %i.bf, i64 %i.bs ; 2 uses
  %i.bt = icmp sgt i64 %.1.i.i30, 0
  br i1 %i.bt, label %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i23, label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit31, !llvm.loop !60

_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit31: ; preds = %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i23, %bb.f
  %.011.lcssa.i.i20 = phi ptr [ %2, %bb.f ], [ %.112.i.i29, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i23 ] ; 2 uses
  %.not15 = icmp eq ptr %.011.lcssa.i.i20, %i.f
  %spec.select68.idx = select i1 %.not15, i64 0, i64 -24
  %spec.select68 = getelementptr inbounds i8, ptr %.011.lcssa.i.i20, i64 %spec.select68.idx
  br label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread

_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread: ; preds = %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit31, %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit, %bb.b, %bb.e, %bb.d
  %.063 = phi ptr [ %i.a, %bb.e ], [ %i.a, %bb.b ], [ %i.a, %bb.d ], [ %i.a, %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit31 ], [ %spec.select, %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit ] ; 2 uses
  %.059 = phi ptr [ %2, %bb.e ], [ %2, %bb.b ], [ %2, %bb.d ], [ %spec.select68, %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit31 ], [ %2, %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit ] ; 3 uses
  %i.bu = icmp eq ptr %.059, %i.j
  %.not1771 = icmp eq ptr %.063, %i.e
  %or.cond = select i1 %i.bu, i1 true, i1 %.not1771
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread
  %.sroa.01.0.copyload.pre = load i64, ptr %.059, align 8, !tbaa !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph.preheader
  %.sroa.0.0.copyload79 = phi i64 [ %.sroa.0.0.copyload, %bb.h ], [ %.sroa.01.0.copyload.pre, %.lr.ph.preheader ] ; 3 uses
  %.05875 = phi ptr [ %.1, %bb.h ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.16074 = phi ptr [ %.2, %bb.h ], [ %.059, %.lr.ph.preheader ] ; 2 uses
  %.06173 = phi ptr [ %.162, %bb.h ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.16472 = phi ptr [ %i.cz, %bb.h ], [ %.063, %.lr.ph.preheader ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i32 = load i64, ptr %.16472, align 8 ; 3 uses
  %i.bv = and i64 %.0.copyload.i.i.i.i.i.i32, -8
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !12
  %i.bz = trunc i64 %.0.copyload.i.i.i.i.i.i32 to i32
  %i.ca = lshr i32 %i.bz, 1
  %i.cb = and i32 %i.ca, 3                        ; 2 uses
  %i.cc = or i32 %i.cb, %i.by
  %i.cd = and i64 %.sroa.0.0.copyload79, -8
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !12
  %i.ch = trunc i64 %.sroa.0.0.copyload79 to i32
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = and i32 %i.ci, 3                        ; 2 uses
  %i.ck = or i32 %i.cg, %i.cj
  %i.cl = icmp ugt i32 %i.cc, %i.ck
  br i1 %i.cl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.pre-phi84 = phi i32 [ %i.cb, %bb.g ], [ %i.cj, %.lr.ph ]
  %.pre-phi81 = phi ptr [ %i.bw, %bb.g ], [ %i.ce, %.lr.ph ]
  %.sroa.0.0.copyload = phi i64 [ %.0.copyload.i.i.i.i.i.i32, %bb.g ], [ %.sroa.0.0.copyload79, %.lr.ph ]
  %.265 = phi ptr [ %.16074, %bb.g ], [ %.16472, %.lr.ph ] ; 2 uses
  %.162 = phi ptr [ %.05875, %bb.g ], [ %.06173, %.lr.ph ] ; 2 uses
  %.2 = phi ptr [ %.16472, %bb.g ], [ %.16074, %.lr.ph ]
  %.1 = phi ptr [ %.06173, %bb.g ], [ %.05875, %.lr.ph ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.265, i64 8
  %.0.copyload.i.i.i.i.i.i33 = load i64, ptr %i.cm, align 8 ; 2 uses
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i33, -8
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !12
  %i.cr = trunc i64 %.0.copyload.i.i.i.i.i.i33 to i32
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = and i32 %i.cs, 3
  %i.cu = or i32 %i.ct, %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre-phi81, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !12
  %i.cx = or i32 %i.cw, %.pre-phi84
  %i.cy = icmp ugt i32 %i.cu, %i.cx               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.265, i64 24 ; 2 uses
  %.not17 = icmp eq ptr %i.cz, %.162
  %or.cond94 = select i1 %i.cy, i1 true, i1 %.not17
  br i1 %or.cond94, label %.loopexit, label %.lr.ph, !llvm.loop !61

.loopexit:                                        ; preds = %bb.h, %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread ], [ %i.cy, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm9LiveRange8overlapsERKS0_RKNS_13CoalescerPairERKNS_11SlotIndexesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(416) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i32, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val1.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit, label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !31 ; 2 uses
  %i.e = zext i32 %.val1.i.i to i64               ; 2 uses
  %i.f = and i64 %.sroa.0.0.copyload.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !12
  %i.j = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.k = lshr i32 %i.j, 1
  %i.l = and i32 %i.k, 3
  %i.m = or i32 %i.l, %i.i
  br label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.e, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01016.i.i.i.i = phi ptr [ %.val.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.111.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.n = lshr i64 %.017.i.i.i.i, 1                ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.01016.i.i.i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val12.i.i.i.i = load i64, ptr %i.p, align 8   ; 2 uses
  %i.q = and i64 %.val12.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !12
  %i.u = trunc i64 %.val12.i.i.i.i to i32
  %i.v = lshr i32 %i.u, 1
  %i.w = and i32 %i.v, 3
  %i.x = or i32 %i.w, %i.t
  %.not.i.i.i.i = icmp ugt i32 %i.x, %i.m         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.z = xor i64 %i.n, -1
  %i.aa = add nsw i64 %.017.i.i.i.i, %i.z
  %.111.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.01016.i.i.i.i, ptr %i.y ; 2 uses
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.n, i64 %i.aa ; 2 uses
  %i.ab = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.ab, label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit, !llvm.loop !20

_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit:     ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.b
  %.pre-phi70 = phi i64 [ 0, %bb.b ], [ %i.e, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %.010.lcssa.i.i.i.i = phi ptr [ %.val.i.i, %bb.b ], [ %.111.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.pre-phi70 ; 2 uses
  %i.ad = icmp eq ptr %.010.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.loopexit, label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i18

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i18: ; preds = %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit
  %.sroa.04.0.copyload = load i64, ptr %.010.lcssa.i.i.i.i, align 8, !tbaa !31 ; 3 uses
  %i.ae = zext i32 %i.b to i64                    ; 2 uses
  %i.af = and i64 %.sroa.04.0.copyload, -8
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !12
  %i.aj = trunc i64 %.sroa.04.0.copyload to i32
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.ak, 3
  %i.am = or i32 %i.al, %i.ai
  br label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i19

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i19: ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i19, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i18
  %.017.i.i.i.i20 = phi i64 [ %i.ae, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i18 ], [ %.1.i.i.i.i27, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i19 ] ; 2 uses
  %.01016.i.i.i.i21 = phi ptr [ %i.c, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i18 ], [ %.111.i.i.i.i26, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i19 ] ; 2 uses
  %i.an = lshr i64 %.017.i.i.i.i20, 1             ; 3 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.01016.i.i.i.i21, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val12.i.i.i.i24 = load i64, ptr %i.ap, align 8 ; 2 uses
  %i.aq = and i64 %.val12.i.i.i.i24, -8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !12
  %i.au = trunc i64 %.val12.i.i.i.i24 to i32
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 3
  %i.ax = or i32 %i.aw, %i.at
  %.not.i.i.i.i25 = icmp ugt i32 %i.ax, %i.am     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.az = xor i64 %i.an, -1
  %i.ba = add nsw i64 %.017.i.i.i.i20, %i.az
  %.111.i.i.i.i26 = select i1 %.not.i.i.i.i25, ptr %.01016.i.i.i.i21, ptr %i.ay ; 3 uses
  %.1.i.i.i.i27 = select i1 %.not.i.i.i.i25, i64 %i.an, i64 %i.ba ; 2 uses
  %i.bb = icmp sgt i64 %.1.i.i.i.i27, 0
  br i1 %i.bb, label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i19, label %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29, !llvm.loop !20

_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29:   ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i19
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.bd = icmp eq ptr %.111.i.i.i.i26, %i.bc
  br i1 %i.bd, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29, %bb.i
  %.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload, %bb.i ], [ %.sroa.04.0.copyload, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29 ] ; 2 uses
  %.053 = phi ptr [ %.154, %bb.i ], [ %.010.lcssa.i.i.i.i, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29 ] ; 4 uses
  %.051 = phi ptr [ %.152, %bb.i ], [ %i.ac, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29 ] ; 2 uses
  %.049 = phi ptr [ %i.cz, %bb.i ], [ %.111.i.i.i.i26, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29 ] ; 5 uses
  %.0 = phi ptr [ %.1, %bb.i ], [ %i.bc, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.053, i64 8 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.049, align 8 ; 2 uses
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !12
  %i.bj = trunc i64 %.0.copyload.i.i.i.i.i.i to i32
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = and i32 %i.bk, 3
  %i.bm = or i32 %i.bl, %i.bi                     ; 2 uses
  %i.bn = and i64 %.sroa.03.0.copyload, -8
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !12
  %i.br = trunc i64 %.sroa.03.0.copyload to i32
  %i.bs = lshr i32 %i.br, 1
  %i.bt = and i32 %i.bs, 3                        ; 2 uses
  %i.bu = or i32 %i.bq, %i.bt
  %i.bv = icmp ult i32 %i.bm, %i.bu
  br i1 %i.bv, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %i.bw = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !12
  %i.ca = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  %i.cb = lshr i32 %i.ca, 1
  %i.cc = and i32 %i.cb, 3
  %i.cd = or i32 %i.cc, %i.bz
  %i.ce = icmp ult i32 %i.cd, %i.bm
  %..i = select i1 %i.ce, ptr %.049, ptr %.053
  %4 = load i64, ptr %..i, align 8, !tbaa !31     ; 2 uses
  %i.cf = and i64 %4, 6
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ch = and i64 %4, -8
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !62
  %i.cl = tail call noundef zeroext i1 @_ZNK4llvm13CoalescerPair13isCoalescableEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ck) #19
  br i1 %i.cl, label %..critedge_crit_edge, label %.loopexit

..critedge_crit_edge:                             ; preds = %bb.d
  %.sroa.01.0.copyload.pre = load i64, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %.pre = and i64 %.sroa.01.0.copyload.pre, -8
  %.pre61 = inttoptr i64 %.pre to ptr
  %.pre63 = trunc i64 %.sroa.01.0.copyload.pre to i32
  %.pre65 = lshr i32 %.pre63, 1
  %.pre67 = and i32 %.pre65, 3
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.preheader
  %.pre-phi68 = phi i32 [ %.pre67, %..critedge_crit_edge ], [ %i.bt, %.preheader ]
  %.pre-phi62 = phi ptr [ %.pre61, %..critedge_crit_edge ], [ %i.bo, %.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %.0.copyload.i.i.i.i.i.i31 = load i64, ptr %i.cm, align 8 ; 2 uses
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i31, -8
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !12
  %i.cr = trunc i64 %.0.copyload.i.i.i.i.i.i31 to i32
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = and i32 %i.cs, 3
  %i.cu = or i32 %i.ct, %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre-phi62, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !12
  %i.cx = or i32 %i.cw, %.pre-phi68
  %i.cy = icmp ugt i32 %i.cu, %i.cx
  br i1 %i.cy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.154 = phi ptr [ %.049, %bb.e ], [ %.053, %.critedge ] ; 2 uses
  %.152 = phi ptr [ %.0, %bb.e ], [ %.051, %.critedge ]
  %.150 = phi ptr [ %.053, %bb.e ], [ %.049, %.critedge ]
  %.1 = phi ptr [ %.051, %bb.e ], [ %.0, %.critedge ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.2 = phi ptr [ %.150, %bb.f ], [ %i.cz, %bb.h ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2, i64 24 ; 3 uses
  %i.da = icmp eq ptr %i.cz, %.1
  br i1 %i.da, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %.sroa.0.0.copyload = load i64, ptr %.154, align 8, !tbaa !31 ; 3 uses
  %.0.copyload.i.i.i.i.i.i32 = load i64, ptr %i.db, align 8 ; 2 uses
  %i.dc = and i64 %.0.copyload.i.i.i.i.i.i32, -8
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !12
  %i.dg = trunc i64 %.0.copyload.i.i.i.i.i.i32 to i32
  %i.dh = lshr i32 %i.dg, 1
  %i.di = and i32 %i.dh, 3
  %i.dj = or i32 %i.di, %i.df
  %i.dk = and i64 %.sroa.0.0.copyload, -8
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !12
  %i.do = trunc i64 %.sroa.0.0.copyload to i32
  %i.dp = lshr i32 %i.do, 1
  %i.dq = and i32 %i.dp, 3
  %i.dr = or i32 %i.dn, %i.dq
  %.not = icmp ugt i32 %i.dj, %i.dr
  br i1 %.not, label %bb.i, label %bb.g, !llvm.loop !63

bb.i:                                             ; preds = %bb.h
  br label %.preheader, !llvm.loop !64

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.g, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit ], [ false, %bb.g ], [ false, %_ZNK4llvm9LiveRange4findENS_9SlotIndexE.exit29 ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.5
}

declare noundef zeroext i1 @_ZNK4llvm13CoalescerPair13isCoalescableEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm9LiveRange8overlapsENS_9SlotIndexES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit.thread, label %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %bb.a
  %i.d = zext i32 %i.c to i64
  %i.e = and i64 %2, -8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12
  %i.i = trunc i64 %2 to i32
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 3
  %i.l = or i32 %i.h, %i.k
  br label %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.d, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %i.a, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.01116.i.i.i, i64 %i.m ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 2 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !12
  %i.s = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.t, 3
  %i.v = or i32 %i.u, %i.r
  %i.w = icmp ult i32 %i.v, %i.l                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.y = xor i64 %i.m, -1
  %i.z = add nsw i64 %.017.i.i.i, %i.y
  %.112.i.i.i = select i1 %i.w, ptr %i.x, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.w, i64 %i.z, i64 %i.m  ; 2 uses
  %i.aa = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.aa, label %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit, !llvm.loop !65

_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit: ; preds = %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not = icmp eq ptr %.112.i.i.i, %i.a
  br i1 %.not, label %_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit
  %i.ab = getelementptr inbounds i8, ptr %.112.i.i.i, i64 -16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ab, align 8 ; 2 uses
  %i.ac = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !12
  %i.ag = trunc i64 %.0.copyload.i.i.i.i.i.i to i32
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = and i32 %i.ah, 3
  %i.aj = or i32 %i.ai, %i.af
  %i.ak = and i64 %1, -8
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !12
  %i.ao = trunc i64 %1 to i32
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = and i32 %i.ap, 3
  %i.ar = or i32 %i.an, %i.aq
  %i.as = icmp ugt i32 %i.aj, %i.ar
  br label %_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit.thread

_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit
  %i.at = phi i1 [ false, %_ZN4llvm11lower_boundIRKNS_9LiveRangeERNS_9SlotIndexEEEDaOT_OT0_.exit ], [ %i.as, %bb.b ], [ false, %bb.a ]
  ret i1 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm9LiveRange6coversERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11
  %.not.i.i41 = icmp eq i32 %i.d, 0
  br label %.critedge39

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = mul nuw nsw i64 %i.h, 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not47 = icmp eq i32 %i.g, 0
  br i1 %.not47, label %.critedge39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.k = zext i32 %i.b to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !31 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !12
  %i.r = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.s = lshr i32 %i.r, 1
end_hunk_0
