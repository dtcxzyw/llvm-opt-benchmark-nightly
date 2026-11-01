Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost7movelib20merge_bufferless_ON2INS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_:bb.a
  %i.ff = shl nsw i64 %i.fe, 5
  %i.fg = load ptr, ptr %i.ek, align 8, !tbaa !299, !noalias !14378
  %i.fh = ptrtoint ptr %i.eh to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 2
  %i.fl = add nsw i64 %i.fk, %i.ff
  %i.fm = load ptr, ptr %i.ej, align 8, !tbaa !299, !noalias !14378 ; 2 uses
  %i.fn = ptrtoint ptr %i.ei to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 2
  %i.fr = sub i64 %i.fl, %i.fq                    ; 2 uses
  %.not12.i8 = icmp eq i64 %i.fr, 0
  br i1 %.not12.i8, label %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i7
  %i.fs = load i32, ptr %.0.i6, align 4, !tbaa !296, !noalias !14378
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.lr.ph.i9
  %i.ft = phi ptr [ %i.fm, %.lr.ph.i9 ], [ %i.gu, %bb.s ] ; 2 uses
  %.sroa.11.218.i11 = phi ptr [ %i.ej, %.lr.ph.i9 ], [ %.sroa.11.217.i23, %bb.s ] ; 4 uses
  %.sroa.0.115.i12 = phi ptr [ %i.ei, %.lr.ph.i9 ], [ %.sroa.0.114.i24, %bb.s ] ; 4 uses
  %.013.i13 = phi i64 [ %i.fr, %.lr.ph.i9 ], [ %.1.i25, %bb.s ] ; 2 uses
  %i.fu = lshr i64 %.013.i13, 1                   ; 5 uses
  %.not.i.i14 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i14, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fv = ptrtoint ptr %.sroa.0.115.i12 to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 2
  %i.fz = add nsw i64 %i.fy, %i.fu                ; 4 uses
  %or.cond.i.i15 = icmp ult i64 %i.fz, 256
  br i1 %or.cond.i.i15, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.115.i12, i64 %i.fu
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16

bb.p:                                             ; preds = %bb.n
  %i.gb = icmp sgt i64 %i.fz, 0
  %i.gc = lshr i64 %i.fz, 8                       ; 2 uses
  %i.gd = or disjoint i64 %i.gc, -72057594037927936
  %i.ge = select i1 %i.gb, i64 %i.gc, i64 %i.gd   ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %.sroa.11.218.i11, i64 %i.ge ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !299, !noalias !14378
  %i.gh = shl nsw i64 %i.ge, 8
  %i.gi = sub nsw i64 %i.fz, %i.gh
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gi
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16: ; preds = %bb.p, %bb.o, %bb.m
  %.sroa.0.0.i17 = phi ptr [ %.sroa.0.115.i12, %bb.m ], [ %i.gj, %bb.p ], [ %i.ga, %bb.o ] ; 2 uses
  %.sroa.11.1.i18 = phi ptr [ %.sroa.11.218.i11, %bb.m ], [ %i.gf, %bb.p ], [ %.sroa.11.218.i11, %bb.o ] ; 3 uses
  %i.gk = load i32, ptr %.sroa.0.0.i17, align 4, !tbaa !296, !noalias !14378
  %i.gl = icmp slt i32 %i.fs, %i.gk
  br i1 %i.gl, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i17, i64 4 ; 2 uses
  %i.gn = load ptr, ptr %.sroa.11.1.i18, align 8, !tbaa !299, !noalias !14378 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1024
  %i.gp = icmp eq ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.r, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19, !prof !316

bb.r:                                             ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i18, i64 8 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !299, !noalias !14378 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19: ; preds = %bb.r, %bb.q
  %i.gs = phi ptr [ %i.gr, %bb.r ], [ %i.gn, %bb.q ]
  %.sroa.0.1.i20 = phi ptr [ %i.gr, %bb.r ], [ %i.gm, %bb.q ]
  %.sroa.11.2.i21 = phi ptr [ %i.gq, %bb.r ], [ %.sroa.11.1.i18, %bb.q ]
  %.neg.i22 = xor i64 %i.fu, -1
  %i.gt = add i64 %.013.i13, %.neg.i22
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16
  %i.gu = phi ptr [ %i.gs, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19 ], [ %i.ft, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16 ]
  %.sroa.11.217.i23 = phi ptr [ %.sroa.11.2.i21, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19 ], [ %.sroa.11.218.i11, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16 ] ; 2 uses
  %.sroa.0.114.i24 = phi ptr [ %.sroa.0.1.i20, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19 ], [ %.sroa.0.115.i12, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16 ] ; 2 uses
  %.1.i25 = phi i64 [ %i.gt, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i19 ], [ %i.fu, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i16 ] ; 2 uses
  %.not.i26 = icmp eq i64 %.1.i25, 0
  br i1 %.not.i26, label %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.m, !llvm.loop !185

_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.s, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i7
  %i.gv = phi ptr [ %i.ej, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit ], [ %i.ej, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i7 ], [ %.sroa.11.217.i23, %bb.s ] ; 4 uses
  %i.gw = phi ptr [ %i.ei, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit ], [ %i.ei, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i7 ], [ %.sroa.0.114.i24, %bb.s ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.gw, ptr %8, align 8, !tbaa !401
  store ptr %i.gv, ptr %i.bb, align 8, !tbaa !491
  store ptr %i.eh, ptr %9, align 8, !tbaa !401
  store ptr %i.ek, ptr %i.bc, align 8, !tbaa !491
  store ptr %i.eg, ptr %10, align 8, !tbaa !401
  store ptr %i.ef, ptr %i.bd, align 8, !tbaa !491
  call void @_ZN5boost7movelib10rotate_gcdINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEET_S6_S6_S6_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator") align 8 %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  %i.gx = load <2 x ptr>, ptr %7, align 16, !tbaa !399
  store <2 x ptr> %i.gx, ptr %2, align 8, !tbaa !399
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store ptr %i.gw, ptr %1, align 8, !tbaa !401
  store ptr %i.gv, ptr %i.az, align 8, !tbaa !491
  %i.gy = load ptr, ptr %0, align 8, !tbaa !401
  %i.gz = icmp eq ptr %i.gw, %i.gy
  br i1 %i.gz, label %.critedge.thread, label %bb.t

bb.t:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit
  %i.ha = load ptr, ptr %i.gv, align 8, !tbaa !299
  %i.hb = icmp eq ptr %i.gw, %i.ha
  br i1 %i.hb, label %bb.u, label %bb.v, !prof !316

bb.u:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !299
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit

bb.v:                                             ; preds = %bb.t
  %i.hf = getelementptr inbounds i8, ptr %i.gw, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit: ; preds = %bb.u, %bb.v
  %storemerge.i = phi ptr [ %i.hf, %bb.v ], [ %i.he, %bb.u ]
  %.pre64 = load ptr, ptr %i.ba, align 8, !tbaa !491 ; 2 uses
  %.pre65 = load ptr, ptr %.pre64, align 8, !tbaa !299
  %.pre66 = load ptr, ptr %2, align 8, !tbaa !401
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit34, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit
  %i.hg = phi ptr [ %i.ho, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit34 ], [ %.pre64, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit ] ; 2 uses
  %i.hh = phi ptr [ %i.hp, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit34 ], [ %.pre66, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit ] ; 2 uses
  %i.hi = phi ptr [ %i.hr, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit34 ], [ %.pre65, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit ]
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %bb.x, label %bb.y, !prof !316

bb.x:                                             ; preds = %bb.w
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 -8 ; 3 uses
  store ptr %i.hk, ptr %i.ba, align 8, !tbaa !491
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !299
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit31

bb.y:                                             ; preds = %bb.w
  %i.hn = getelementptr inbounds i8, ptr %i.hh, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit31

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit31: ; preds = %bb.x, %bb.y
  %i.ho = phi ptr [ %i.hg, %bb.y ], [ %i.hk, %bb.x ] ; 4 uses
  %i.hp = phi ptr [ %i.hn, %bb.y ], [ %i.hm, %bb.x ] ; 6 uses
  store ptr %i.hp, ptr %2, align 8, !tbaa !401
  %i.hq = load ptr, ptr %1, align 8, !tbaa !401   ; 2 uses
  %.not51 = icmp eq ptr %i.hq, %i.hp
  br i1 %.not51, label %.critedge.thread, label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit31
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !299 ; 2 uses
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 2                 ; 2 uses
  %i.hw = add nsw i64 %i.hv, -1                   ; 3 uses
  %or.cond.i32 = icmp ult i64 %i.hw, 256
  br i1 %or.cond.i32, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hx = getelementptr inbounds i8, ptr %i.hp, i64 -4
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit34

bb.ab:                                            ; preds = %bb.z
  %i.hy = icmp sgt i64 %i.hv, 1
  %i.hz = lshr i64 %i.hw, 8                       ; 2 uses
  %i.ia = or disjoint i64 %i.hz, -72057594037927936
  %i.ib = select i1 %i.hy, i64 %i.hz, i64 %i.ia   ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !299
  %i.ie = shl nsw i64 %i.ib, 8
  %i.if = sub nsw i64 %i.hw, %i.ie
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.if
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit34

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit34: ; preds = %bb.aa, %bb.ab
  %.0.i33 = phi ptr [ %i.hx, %bb.aa ], [ %i.ig, %bb.ab ]
  %i.ih = load i32, ptr %.0.i33, align 4, !tbaa !296
  %i.ii = load i32, ptr %storemerge.i, align 4, !tbaa !296
  %i.ij = icmp slt i32 %i.ih, %i.ii
  br i1 %i.ij, label %.critedge2.loopexit, label %bb.w, !llvm.loop !14374

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit31, %_ZN5boost7movelib11lower_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit5, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.thread, %.preheader57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10rotate_gcdINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEET_S6_S6_S6_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !401    ; 10 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !401    ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !401    ; 9 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !401
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !491
  store ptr %6, ptr %4, align 8, !tbaa !491
  br label %_ZN5boost20adl_move_swap_rangesINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_EET0_T_S6_S5_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.e, label %bb.d, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !401
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !491
  store ptr %i.h, ptr %i.g, align 8, !tbaa !491
  br label %_ZN5boost20adl_move_swap_rangesINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_EET0_T_S6_S5_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !491  ; 3 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !491  ; 10 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl nsw i64 %i.n, 5
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !299  ; 2 uses
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.t, %i.o
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !299  ; 2 uses
  %i.w = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14395)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !491, !noalias !14395 ; 8 uses
  %i.ad = sub nsw i64 0, %i.aa
  %.not.i.i.i = icmp eq i64 %i.aa, 0              ; 4 uses
  br i1 %.not.i.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !299, !noalias !14395
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = sub nsw i64 %i.ai, %i.aa                ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.aj, 256
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.al = icmp sgt i64 %i.aj, 0
  %i.am = lshr i64 %i.aj, 8                       ; 2 uses
  %i.an = or disjoint i64 %i.am, -72057594037927936
  %i.ao = select i1 %i.al, i64 %i.am, i64 %i.an   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !299, !noalias !14395
  %i.ar = shl nsw i64 %i.ao, 8
  %i.as = sub nsw i64 %i.aj, %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %bb.f, %bb.g
  %.sroa.6.1.i = phi ptr [ %i.ac, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit ], [ %i.ac, %bb.f ], [ %i.ap, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.d, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit ], [ %i.ak, %bb.f ], [ %i.at, %bb.g ] ; 2 uses
  store ptr %.sroa.0.0.i, ptr %0, align 8, !tbaa !401, !alias.scope !14395
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.1.i, ptr %i.au, align 8, !tbaa !491, !alias.scope !14395
  %i.av = icmp eq ptr %i.b, %.sroa.0.0.i
  br i1 %i.av, label %.lr.ph.i, label %bb.j

.lr.ph.i:                                         ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i
  %i.aw = phi ptr [ %i.bn, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i ], [ %i.p, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit ] ; 2 uses
  %.sroa.567.0 = phi ptr [ %.sroa.567.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i ], [ %i.k, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit ]
  %.sroa.561.0 = phi ptr [ %.sroa.561.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i ], [ %i.j, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit ] ; 2 uses
  %.sroa.060.0 = phi ptr [ %.sroa.060.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i ], [ %i.b, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %i.ax = phi ptr [ %i.bo, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i ], [ %i.k, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %i.ay = phi ptr [ %.sroa.065.0, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i ], [ %i.a, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !296, !noalias !14396
  %i.ba = load i32, ptr %.sroa.060.0, align 4, !tbaa !296, !noalias !14396
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !296, !noalias !14396
  store i32 %i.az, ptr %.sroa.060.0, align 4, !tbaa !296, !noalias !14396
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !299, !noalias !14396
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1024
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.h, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !316

bb.h:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !299, !noalias !14396
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.h, %.lr.ph.i
  %.sroa.065.0 = phi ptr [ %i.bg, %bb.h ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  %.sroa.567.1 = phi ptr [ %i.bf, %bb.h ], [ %.sroa.567.0, %.lr.ph.i ] ; 2 uses
  %i.bh = phi ptr [ %i.bf, %bb.h ], [ %i.ax, %.lr.ph.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.060.0, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 1024
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i, !prof !316

bb.i:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.561.0, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !299, !noalias !14396 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i: ; preds = %bb.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.bn = phi ptr [ %i.bm, %bb.i ], [ %i.aw, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ]
  %.sroa.561.1 = phi ptr [ %i.bl, %bb.i ], [ %.sroa.561.0, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ]
  %.sroa.060.1 = phi ptr [ %i.bm, %bb.i ], [ %i.bi, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ]
  %i.bo = phi ptr [ %.sroa.567.1, %bb.i ], [ %i.bh, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ]
  %.not.i = icmp eq ptr %.sroa.065.0, %i.b
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !190

bb.j:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit
  %i.bp = icmp eq ptr %i.d, %i.a
  br i1 %i.bp, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = ptrtoint ptr %i.ac to i64
  %i.br = sub i64 %i.bq, %i.m
  %i.bs = shl nsw i64 %i.br, 5
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !299
  %i.bu = ptrtoint ptr %i.d to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = add nsw i64 %i.bx, %i.bs
  %i.bz = sub i64 %i.by, %i.z
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit11

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit11: ; preds = %bb.j, %bb.k
  %.0.i10 = phi i64 [ %i.bz, %bb.k ], [ 0, %bb.j ] ; 6 uses
  %i.ca = add i64 %.0.i10, -1
  %i.cb = and i64 %i.ca, %.0.i10
  %i.cc = add i64 %i.aa, -1
  %i.cd = and i64 %i.cc, %i.aa
  %i.ce = or i64 %i.cb, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %.preheader36.i

.preheader36.i:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit11
  %i.cg = or i64 %.0.i10, %i.aa
  %i.ch = and i64 %i.cg, 1
  %.not.not37.i = icmp eq i64 %i.ch, 0
  br i1 %.not.not37.i, label %.lr.ph.i13, label %.preheader.i

bb.l:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit11
  %i.ci = tail call i64 @llvm.umin.i64(i64 %.0.i10, i64 %i.aa)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i13, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %.0.i10, %.preheader36.i ], [ %i.cn, %.lr.ph.i13 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.aa, %.preheader36.i ], [ %i.co, %.lr.ph.i13 ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 1, %.preheader36.i ], [ %i.cm, %.lr.ph.i13 ]
  %i.cj = icmp ne i64 %.030.lcssa.i, 0
  %i.ck = icmp ne i64 %.029.lcssa.i, 0
  %i.cl = and i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i13:                                       ; preds = %.preheader36.i, %.lr.ph.i13
  %.040.i = phi i64 [ %i.cm, %.lr.ph.i13 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.co, %.lr.ph.i13 ], [ %i.aa, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.cn, %.lr.ph.i13 ], [ %.0.i10, %.preheader36.i ]
  %i.cm = shl i64 %.040.i, 1                      ; 2 uses
  %i.cn = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.co = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.cp = or i64 %i.cn, %i.co
  %i.cq = and i64 %i.cp, 1
  %.not.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.not.i, label %.lr.ph.i13, label %.preheader.i, !llvm.loop !50

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.s
  %.144.i = phi i64 [ %.2.i, %bb.s ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.s ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.cr = and i64 %.13143.i, 1
  %.not.i12 = icmp eq i64 %i.cr, 0
  br i1 %.not.i12, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph45.i
  %i.cs = lshr exact i64 %.13143.i, 1
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph45.i
  %i.ct = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.ct, 0
  br i1 %.not34.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cu = lshr exact i64 %.144.i, 1
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
end_hunk_0
