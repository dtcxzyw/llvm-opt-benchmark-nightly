Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/register-allocator?download=true
inline.NumInlined: 5702
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal8compiler10SpillRange8TryMergeEPS2_:bb.a
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %.not46 = icmp eq i32 %i.d, -1
  br i1 %.not46, label %bb.b, label %_ZN2v88internal8compiler27AreUseIntervalsIntersectingINS0_10ZoneVectorINS1_11UseIntervalEEES5_EESt8optionalISt4pairIS4_S4_EERKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8
  %.not47 = icmp eq i32 %i.f, -1
  br i1 %.not47, label %bb.c, label %_ZN2v88internal8compiler27AreUseIntervalsIntersectingINS0_10ZoneVectorINS1_11UseIntervalEEES5_EESt8optionalISt4pairIS4_S4_EERKT_RKT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4
  %.not = icmp eq i32 %i.h, %i.j
  br i1 %.not, label %bb.d, label %_ZN2v88internal8compiler27AreUseIntervalsIntersectingINS0_10ZoneVectorINS1_11UseIntervalEEES5_EESt8optionalISt4pairIS4_S4_EERKT_RKT0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !228 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !228 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !228 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !228 ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 3                  ; 3 uses
  %i.ab = icmp eq ptr %i.o, %i.m
  %i.ac = icmp eq ptr %i.w, %i.u
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.m, i64 %i.r
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ae, align 4, !noalias !229
  %.sroa.0.0.copyload.i15.i.i = load i32, ptr %i.u, align 4, !noalias !229 ; 2 uses
  %.not56.i.i = icmp sgt i32 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i15.i.i
  br i1 %.not56.i.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.u, i64 %i.z
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %.sroa.0.0.copyload.i16.i.i = load i32, ptr %i.ag, align 4, !noalias !229
  %.sroa.0.0.copyload.i17.i.i = load i32, ptr %i.m, align 4, !noalias !229 ; 2 uses
  %.not57.i.i = icmp sgt i32 %.sroa.0.0.copyload.i16.i.i, %.sroa.0.0.copyload.i17.i.i
  br i1 %.not57.i.i, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ugt i64 %i.s, %i.aa
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.copyload.i18.i.i = phi i32 [ %.sroa.0.0.copyload.i15.i.i, %bb.h ], [ %.sroa.0.0.copyload.i17.i.i, %bb.g ]
  %.sroa.032.0.i.i = phi ptr [ %i.m, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %.sroa.8.0.i.i = phi i64 [ %i.s, %bb.h ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.044.0.i.i = phi ptr [ %i.u, %bb.h ], [ %i.m, %bb.g ] ; 2 uses
  %.sroa.849.0.i.i = phi i64 [ %i.z, %bb.h ], [ %i.r, %bb.g ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.8.0.i.i ; 2 uses
  %i.aj = icmp sgt i64 %.sroa.8.0.i.i, 0
  br i1 %i.aj, label %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i"

_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.i, %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %.sroa.8.0.i.i, %bb.i ] ; 2 uses
  %.0114.i.i.i.i = phi ptr [ %.112.i.i.i.i, %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %.sroa.032.0.i.i, %bb.i ] ; 2 uses
  %i.ak = lshr i64 %.05.i.i.i.i, 1                ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val.i.i.i.i = load i32, ptr %i.am, align 4, !noalias !229
  %i.an = icmp slt i32 %.val.i.i.i.i, %.sroa.0.0.copyload.i18.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = xor i64 %i.ak, -1
  %i.aq = add nsw i64 %.05.i.i.i.i, %i.ap
  %.112.i.i.i.i = select i1 %i.an, ptr %i.ao, ptr %.0114.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.an, i64 %i.aq, i64 %i.ak ; 2 uses
  %i.ar = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.ar, label %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i", !llvm.loop !14

"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i": ; preds = %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.i
  %.011.lcssa.i.i.i.i = phi ptr [ %.sroa.032.0.i.i, %bb.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i.i, i64 %.sroa.849.0.i.i
  %.not1463.i.i = icmp eq ptr %.011.lcssa.i.i.i.i, %i.ai
  br i1 %.not1463.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i", %bb.m
  %.066.i.i = phi ptr [ %.1.i.i, %bb.m ], [ %.011.lcssa.i.i.i.i, %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i" ] ; 4 uses
  %.01265.i.i = phi ptr [ %.113.i.i, %bb.m ], [ %.sroa.044.0.i.i, %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i" ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01265.i.i, i64 4
  %.sroa.0.0.copyload.i19.i.i = load i32, ptr %i.at, align 4, !noalias !229
  %.sroa.0.0.copyload.i20.i.i = load i32, ptr %.066.i.i, align 4, !noalias !229
  %.not58.i.i = icmp sgt i32 %.sroa.0.0.copyload.i19.i.i, %.sroa.0.0.copyload.i20.i.i
  br i1 %.not58.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.01265.i.i, i64 8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 4
  %.sroa.0.0.copyload.i21.i.i = load i32, ptr %i.av, align 4, !noalias !229
  %.sroa.0.0.copyload.i22.i.i = load i32, ptr %.01265.i.i, align 4, !noalias !229
  %.not59.i.i = icmp sgt i32 %.sroa.0.0.copyload.i21.i.i, %.sroa.0.0.copyload.i22.i.i
  br i1 %.not59.i.i, label %_ZN2v88internal8compiler27AreUseIntervalsIntersectingINS0_10ZoneVectorINS1_11UseIntervalEEES5_EESt8optionalISt4pairIS4_S4_EERKT_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.113.i.i = phi ptr [ %i.au, %bb.j ], [ %.01265.i.i, %bb.l ] ; 2 uses
  %.1.i.i = phi ptr [ %.066.i.i, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %.not.i.i = icmp eq ptr %.113.i.i, %i.as
  %.not14.i.i = icmp eq ptr %.1.i.i, %i.ai
  %or.cond55.i.i = select i1 %.not.i.i, i1 true, i1 %.not14.i.i
  br i1 %or.cond55.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !15

.loopexit:                                        ; preds = %bb.m, %bb.f, %bb.e, %bb.d, %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i"
  %i.ax = add nsw i64 %i.aa, %i.s                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.q
  %i.bc = ashr exact i64 %i.bb, 3
  %.not.i.i30 = icmp ugt i64 %i.ax, %i.bc
  br i1 %.not.i.i30, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE7reserveEm.exit, !prof !129

bb.n:                                             ; preds = %.loopexit
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.ax)
  %.pre = load ptr, ptr %i.t, align 8
  %.pre55 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE7reserveEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE7reserveEm.exit: ; preds = %.loopexit, %bb.n
  %i.bd = phi ptr [ %i.w, %.loopexit ], [ %.pre55, %bb.n ] ; 2 uses
  %i.be = phi ptr [ %i.u, %.loopexit ], [ %.pre, %bb.n ] ; 3 uses
  %.not2848 = icmp eq ptr %i.be, %i.bd
  br i1 %.not2848, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit
  %.pre56 = load ptr, ptr %i.t, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE7reserveEm.exit
  %i.bf = phi ptr [ %.pre56, %._crit_edge.loopexit ], [ %i.be, %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE7reserveEm.exit ]
  store ptr %i.bf, ptr %i.v, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not2950 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not2950, label %._crit_edge54, label %.lr.ph53

.lr.ph:                                           ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE7reserveEm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit
  %.02749 = phi ptr [ %i.cl, %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit ], [ %i.be, %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE7reserveEm.exit ] ; 2 uses
  %i.bk = load i64, ptr %.02749, align 4          ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.bk to i32
  %i.bl = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.bm = load ptr, ptr %i.n, align 8
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit

_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %.lr.ph, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i31, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.bl, %.lr.ph ] ; 2 uses
  %i.bs = lshr i64 %.017.i.i, 1                   ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp slt i32 %i.bu, %.sroa.0.0.extract.trunc ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = xor i64 %i.bs, -1
  %i.by = add nsw i64 %.017.i.i, %i.bx
  %.112.i.i = select i1 %i.bv, ptr %i.bw, ptr %.01116.i.i ; 2 uses
  %.1.i.i31 = select i1 %i.bv, i64 %i.by, i64 %i.bs ; 2 uses
  %i.bz = icmp sgt i64 %.1.i.i31, 0
  br i1 %i.bz, label %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit, !llvm.loop !16

_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit: ; preds = %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %.lr.ph
  %.011.lcssa.i.i = phi ptr [ %i.bl, %.lr.ph ], [ %.112.i.i, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ca = call noundef ptr @_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE19PrepareForInsertionEPKS3_mPm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef %.011.lcssa.i.i, i64 noundef 1, ptr noundef nonnull %i.b) ; 3 uses
  %i.cb = load i64, ptr %i.b, align 8             ; 2 uses
  %.idx.i = shl i64 %i.cb, 3                      ; 3 uses
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %.lr.ph18.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit
  %i.cc = call i64 @llvm.usub.sat.i64(i64 %.idx.i, i64 8)
  %i.cd = lshr exact i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %.idx.i, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ce, 4611686018427387900     ; 3 uses
  %i.cf = shl i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl nuw i64 %index, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ch, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ci, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit, label %.lr.ph.i.preheader75

.lr.ph.i.preheader75:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.015.i.idx.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader75, %.lr.ph.i
  %.015.i.idx = phi i64 [ %.015.i.add, %.lr.ph.i ], [ %.015.i.idx.ph, %.lr.ph.i.preheader75 ] ; 2 uses
  %.015.i.ptr = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.015.i.idx
  %.015.i.add = add nuw nsw i64 %.015.i.idx, 8    ; 2 uses
  store i64 %i.bk, ptr %.015.i.ptr, align 4
  %i.ck = icmp samesign ult i64 %.015.i.add, %.idx.i
  br i1 %i.ck, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit, !llvm.loop !226

.lr.ph18.i:                                       ; preds = %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit
  store i64 %i.bk, ptr %i.ca, align 4
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit: ; preds = %.lr.ph.i, %middle.block, %.lr.ph18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.cl = getelementptr inbounds nuw i8, ptr %.02749, i64 8 ; 2 uses
  %.not28 = icmp eq ptr %i.cl, %i.bd
  br i1 %.not28, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge54.loopexit:                           ; preds = %.lr.ph53
  %.pre57 = load ptr, ptr %i.bg, align 8
  %.pre58 = load ptr, ptr %i.bi, align 8
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %._crit_edge
  %i.cm = phi ptr [ %.pre58, %._crit_edge54.loopexit ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.cn = phi ptr [ %.pre57, %._crit_edge54.loopexit ], [ %i.bh, %._crit_edge ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = ashr exact i64 %i.cs, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.cu = call noundef ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE19PrepareForInsertionEPKS4_mPm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cp, i64 noundef %i.ct, ptr noundef nonnull %i.a)
  %.not.i32 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i32, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertIPS4_St26random_access_iterator_tagEES7_PKS4_T_SB_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge54
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cu, ptr align 8 %i.cn, i64 %i.cs, i1 false)
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertIPS4_St26random_access_iterator_tagEES7_PKS4_T_SB_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertIPS4_St26random_access_iterator_tagEES7_PKS4_T_SB_.exit: ; preds = %._crit_edge54, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.cv = load ptr, ptr %i.bg, align 8
  store ptr %i.cv, ptr %i.bi, align 8
  br label %_ZN2v88internal8compiler27AreUseIntervalsIntersectingINS0_10ZoneVectorINS1_11UseIntervalEEES5_EESt8optionalISt4pairIS4_S4_EERKT_RKT0_.exit

.lr.ph53:                                         ; preds = %._crit_edge, %.lr.ph53
  %.02651 = phi ptr [ %i.cy, %.lr.ph53 ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.cw = load ptr, ptr %.02651, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  store ptr %0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.02651, i64 8 ; 2 uses
  %.not29 = icmp eq ptr %i.cy, %i.bj
  br i1 %.not29, label %._crit_edge54.loopexit, label %.lr.ph53

_ZN2v88internal8compiler27AreUseIntervalsIntersectingINS0_10ZoneVectorINS1_11UseIntervalEEES5_EESt8optionalISt4pairIS4_S4_EERKT_RKT0_.exit: ; preds = %bb.k, %bb.c, %bb.a, %bb.b, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertIPS4_St26random_access_iterator_tagEES7_PKS4_T_SB_.exit
  %.0 = phi i1 [ true, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertIPS4_St26random_access_iterator_tagEES7_PKS4_T_SB_.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler10SpillRange5PrintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #2 align 2 !guid !230 {
bb.a:
  %1 = alloca %"class.v8::internal::StdoutStream", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #36
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #36
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.h = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #36 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #36
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i64 noundef 1) #36 ; 0 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %.not.i.i.i17 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i17, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8
  %.not.i1.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o) #36
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10) #36, !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.s, %bb.c ], [ %i.w, %bb.d ]
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i) #36
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #36 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not33, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8            ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i18, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

bb.e:                                             ; preds = %._crit_edge
  call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8
  %.not.i1.i.i20 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai) #36
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10) #36, !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22: ; preds = %bb.f, %bb.g
  %.0.i.i.i21 = phi i8 [ %i.am, %bb.f ], [ %i.aq, %bb.g ]
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i21) #36
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #36 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not1635 = icmp eq ptr %i.au, %i.aw
  br i1 %.not1635, label %._crit_edge38, label %.lr.ph37
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler15LiveRangeBundle8TryMergeEPS2_S3_:bb.a
  %i.aa = lshr i64 %.05.i.i.i.i, 1                ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.val.i.i.i.i = load i32, ptr %i.ac, align 4, !noalias !334
  %i.ad = icmp slt i32 %.val.i.i.i.i, %.sroa.0.0.copyload.i18.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = xor i64 %i.aa, -1
  %i.ag = add nsw i64 %.05.i.i.i.i, %i.af
  %.112.i.i.i.i = select i1 %i.ad, ptr %i.ae, ptr %.0114.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ad, i64 %i.ag, i64 %i.aa ; 2 uses
  %i.ah = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.ah, label %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i", !llvm.loop !14

"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i": ; preds = %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.g
  %.011.lcssa.i.i.i.i = phi ptr [ %.sroa.032.0.i.i, %bb.g ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i.i, i64 %.sroa.849.0.i.i
  %.not1463.i.i = icmp eq ptr %.011.lcssa.i.i.i.i, %i.y
  br i1 %.not1463.i.i, label %.loopexit38, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i", %bb.k
  %.066.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %.011.lcssa.i.i.i.i, %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i" ] ; 4 uses
  %.01265.i.i = phi ptr [ %.113.i.i, %bb.k ], [ %.sroa.044.0.i.i, %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i" ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01265.i.i, i64 4
  %.sroa.0.0.copyload.i19.i.i = load i32, ptr %i.aj, align 4, !noalias !334
  %.sroa.0.0.copyload.i20.i.i = load i32, ptr %.066.i.i, align 4, !noalias !334
  %.not58.i.i = icmp sgt i32 %.sroa.0.0.copyload.i19.i.i, %.sroa.0.0.copyload.i20.i.i
  br i1 %.not58.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.01265.i.i, i64 8
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 4
  %.sroa.0.0.copyload.i21.i.i = load i32, ptr %i.al, align 4, !noalias !334
  %.sroa.0.0.copyload.i22.i.i = load i32, ptr %.01265.i.i, align 4, !noalias !334
  %.not59.i.i = icmp sgt i32 %.sroa.0.0.copyload.i21.i.i, %.sroa.0.0.copyload.i22.i.i
  br i1 %.not59.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.113.i.i = phi ptr [ %i.ak, %bb.h ], [ %.01265.i.i, %bb.j ] ; 2 uses
  %.1.i.i = phi ptr [ %.066.i.i, %bb.h ], [ %i.am, %bb.j ] ; 2 uses
  %.not.i.i = icmp eq ptr %.113.i.i, %i.ai
  %.not14.i.i = icmp eq ptr %.1.i.i, %i.y
  %or.cond55.i.i = select i1 %.not.i.i, i1 true, i1 %.not14.i.i
  br i1 %or.cond55.i.i, label %.loopexit38, label %.lr.ph.i.i, !llvm.loop !15

.loopexit38:                                      ; preds = %bb.k, %bb.d, %bb.c, %bb.b, %"_ZSt11lower_boundIPKN2v88internal8compiler11UseIntervalENS2_16LifetimePositionEZNS2_L33AreUseIntervalsIntersectingVectorENS0_4base6VectorIS4_EES9_E3$_0ET_SB_SB_RKT0_T1_.exit.i.i"
  %i.an = icmp ult i64 %i.h, %i.p                 ; 2 uses
  %spec.select = select i1 %i.an, ptr %0, ptr %1  ; 4 uses
  %spec.select37 = select i1 %i.an, ptr %1, ptr %0 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not39, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.ao, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit38
  %i.as = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ap, %.loopexit38 ]
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  store ptr %i.au, ptr %i.av, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.loopexit38, %.lr.ph
  %.01240 = phi ptr [ %i.ax, %.lr.ph ], [ %i.ap, %.loopexit38 ] ; 2 uses
  %i.aw = load ptr, ptr %.01240, align 8
  tail call void @_ZN2v88internal8compiler15LiveRangeBundle8AddRangeEPNS1_17TopLevelLiveRangeE(ptr noundef nonnull align 8 dereferenceable(72) %spec.select37, ptr noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.01240, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.ar
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %bb.a, %._crit_edge
  %.1 = phi ptr [ %0, %bb.a ], [ %spec.select37, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler15LiveRangeBundle8AddRangeEPNS1_17TopLevelLiveRangeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !guid !338 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIPPN2v88internal8compiler17TopLevelLiveRangeES4_NS2_17LiveRangeOrderingEET_S7_S7_RKT0_T1_.exit

_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.0.0.copyload.i2.i.i.i.i = load i32, ptr %i.l, align 4
  br label %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.01116.i.i = phi ptr [ %i.d, %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.112.i.i, %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.p, align 4
  %i.q = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = xor i64 %i.m, -1
  %i.t = add nsw i64 %.017.i.i, %i.s
  %.112.i.i = select i1 %i.q, ptr %i.r, ptr %.01116.i.i ; 2 uses
  %.1.i.i = select i1 %i.q, i64 %i.t, i64 %i.m    ; 2 uses
  %i.u = icmp sgt i64 %.1.i.i, 0
  br i1 %i.u, label %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPPN2v88internal8compiler17TopLevelLiveRangeES4_NS2_17LiveRangeOrderingEET_S7_S7_RKT0_T1_.exit, !llvm.loop !28

_ZSt11lower_boundIPPN2v88internal8compiler17TopLevelLiveRangeES4_NS2_17LiveRangeOrderingEET_S7_S7_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.011.lcssa.i.i = phi ptr [ %i.d, %bb.a ], [ %.112.i.i, %_ZSt9__advanceIPPN2v88internal8compiler17TopLevelLiveRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.v = call noundef ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE19PrepareForInsertionEPKS4_mPm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.011.lcssa.i.i, i64 noundef 1, ptr noundef nonnull %i.b) ; 3 uses
  %i.w = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.lr.ph18.i.preheader, label %.lr.ph.i

.lr.ph18.i.preheader:                             ; preds = %_ZSt11lower_boundIPPN2v88internal8compiler17TopLevelLiveRangeES4_NS2_17LiveRangeOrderingEET_S7_S7_RKT0_T1_.exit
  store ptr %1, ptr %i.v, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertEPKS4_mRS6_.exit

.lr.ph.i:                                         ; preds = %_ZSt11lower_boundIPPN2v88internal8compiler17TopLevelLiveRangeES4_NS2_17LiveRangeOrderingEET_S7_S7_RKT0_T1_.exit, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.v, %_ZSt11lower_boundIPPN2v88internal8compiler17TopLevelLiveRangeES4_NS2_17LiveRangeOrderingEET_S7_S7_RKT0_T1_.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  store ptr %1, ptr %.015.i, align 8
  %i.z = icmp ult ptr %i.y, %i.x
  br i1 %i.z, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertEPKS4_mRS6_.exit, !llvm.loop !335

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertEPKS4_mRS6_.exit: ; preds = %.lr.ph.i, %.lr.ph18.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not38 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertEPKS4_mRS6_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertEPKS4_mRS6_.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit
  %.039 = phi ptr [ %i.ac, %.lr.ph ], [ %i.bj, %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit ] ; 2 uses
  %i.ai = load i64, ptr %.039, align 4            ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ai to i32
  %i.aj = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ak = load ptr, ptr %i.ah, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit

_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i10 = phi i64 [ %.1.i.i15, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ao, %bb.b ] ; 2 uses
  %.01116.i.i11 = phi ptr [ %.112.i.i14, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aj, %bb.b ] ; 2 uses
  %i.aq = lshr i64 %.017.i.i10, 1                 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i11, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp slt i32 %i.as, %.sroa.0.0.extract.trunc ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = xor i64 %i.aq, -1
  %i.aw = add nsw i64 %.017.i.i10, %i.av
  %.112.i.i14 = select i1 %i.at, ptr %i.au, ptr %.01116.i.i11 ; 2 uses
  %.1.i.i15 = select i1 %i.at, i64 %i.aw, i64 %i.aq ; 2 uses
  %i.ax = icmp sgt i64 %.1.i.i15, 0
  br i1 %i.ax, label %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit, !llvm.loop !16

_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit: ; preds = %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.b
  %.011.lcssa.i.i9 = phi ptr [ %i.aj, %bb.b ], [ %.112.i.i14, %_ZSt9__advanceIPN2v88internal8compiler11UseIntervalElEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ay = call noundef ptr @_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE19PrepareForInsertionEPKS3_mPm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef %.011.lcssa.i.i9, i64 noundef 1, ptr noundef nonnull %i.a) ; 3 uses
  %i.az = load i64, ptr %i.a, align 8             ; 2 uses
  %.idx.i16 = shl i64 %i.az, 3                    ; 3 uses
  %.not.i17 = icmp eq i64 %i.az, 0
  br i1 %.not.i17, label %.lr.ph18.i22, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit
  %i.ba = call i64 @llvm.usub.sat.i64(i64 %.idx.i16, i64 8)
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %.idx.i16, 32
  br i1 %min.iters.check, label %.lr.ph.i18.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i18.preheader
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bd = shl i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl nuw i64 %index, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.bf, align 4
  store <2 x i64> %broadcast.splat, ptr %i.bg, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit, label %.lr.ph.i18.preheader47

.lr.ph.i18.preheader47:                           ; preds = %.lr.ph.i18.preheader, %middle.block
  %.015.i19.idx.ph = phi i64 [ 0, %.lr.ph.i18.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader47, %.lr.ph.i18
  %.015.i19.idx = phi i64 [ %.015.i19.add, %.lr.ph.i18 ], [ %.015.i19.idx.ph, %.lr.ph.i18.preheader47 ] ; 2 uses
  %.015.i19.ptr = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.015.i19.idx
  %.015.i19.add = add nuw nsw i64 %.015.i19.idx, 8 ; 2 uses
  store i64 %i.ai, ptr %.015.i19.ptr, align 4
  %i.bi = icmp samesign ult i64 %.015.i19.add, %.idx.i16
  br i1 %i.bi, label %.lr.ph.i18, label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit, !llvm.loop !337

.lr.ph18.i22:                                     ; preds = %_ZSt11lower_boundIPN2v88internal8compiler11UseIntervalES3_ET_S5_S5_RKT0_.exit
  store i64 %i.ai, ptr %i.ay, align 4
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE6insertEPKS3_mRS5_.exit: ; preds = %.lr.ph.i18, %middle.block, %.lr.ph18.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.bj = getelementptr inbounds nuw i8, ptr %.039, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.ae
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler15LiveRangeBundle24MergeSpillRangesAndClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #2 align 2 !guid !339 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.b, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.021 = phi ptr [ %i.s, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.01520 = phi ptr [ %.2, %bb.e ], [ null, %bb.a ] ; 6 uses
  %i.i = load ptr, ptr %.021, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 64
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp eq ptr %.01520, null
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not17 = icmp eq ptr %.01520, %i.p
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef zeroext i1 @_ZN2v88internal8compiler10SpillRange8TryMergeEPS2_(ptr noundef nonnull align 8 dereferenceable(72) %.01520, ptr noundef %i.p) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph
  %.2 = phi ptr [ %.01520, %.lr.ph ], [ %.01520, %bb.c ], [ %.01520, %bb.d ], [ %i.p, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(34) initializes((0, 12)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 align 2 !guid !340 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i32 %2, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.i12 = load i32, ptr %i.f, align 4
  store i32 %.0.i12, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.0.i917 = load i32, ptr %i.h, align 4
  store i32 %.0.i917, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler27GetAllocatableRegisterCodesEPKNS0_21RegisterConfigurationENS1_12RegisterKindE.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0.i15 = load i32, ptr %i.l, align 4
  store i32 %.0.i15, ptr %i.b, align 4
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %.0.i920 = load i32, ptr %i.n, align 4
  store i32 %.0.i920, ptr %i.e, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.q = load ptr, ptr %i.p, align 8
  br label %_ZN2v88internal8compiler27GetAllocatableRegisterCodesEPKNS0_21RegisterConfigurationENS1_12RegisterKindE.exit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0.i = load i32, ptr %i.r, align 4
  store i32 %.0.i, ptr %i.b, align 4
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.0.i9 = load i32, ptr %i.t, align 4
  store i32 %.0.i9, ptr %i.e, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  br label %_ZN2v88internal8compiler27GetAllocatableRegisterCodesEPKNS0_21RegisterConfigurationENS1_12RegisterKindE.exit

_ZN2v88internal8compiler27GetAllocatableRegisterCodesEPKNS0_21RegisterConfigurationENS1_12RegisterKindE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i10 = phi ptr [ %i.k, %bb.c ], [ %i.q, %bb.d ], [ %i.v, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i10, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.x, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 -2147483647, 2147483645) i32 @_ZN2v88internal8compiler17RegisterAllocator30GetSplitPositionForInstructionEPKNS1_9LiveRangeEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(34) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 align 2 !guid !341 {
bb.a:
  %i.a = shl nsw i32 %2, 2                        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 4
  %.not = icmp slt i32 %.sroa.0.0.copyload.i, %i.a
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.c, align 8
  %.not8 = icmp slt i32 %i.a, %.sroa.0.0.copyload.i3
  %spec.select = select i1 %.not8, i32 %i.a, i32 -1
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.02.0 = phi i32 [ %spec.select, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17RegisterAllocator41SplitAndSpillRangesDefinedByMemoryOperandEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(34) %0) local_unnamed_addr #2 align 2 !guid !343 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
end_hunk_1
