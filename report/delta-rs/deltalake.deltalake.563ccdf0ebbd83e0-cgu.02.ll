inline.NumInlined: 6368
inline.NumDeleted: 3022
begin_hunk_0_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted40 = load i64, ptr %i.h, align 8
  %invariant.op = sub i64 1, %i.g
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
end_hunk_0
begin_hunk_1_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted40, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !3
  %i.q = and i8 %i.p, 63
end_hunk_1
begin_hunk_2_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph76 = phi i64 [ %i.aq, %bb.o ], [ %i.aw, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.d ], [ %i.l, %bb.o ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.aw, %bb.r ], [ %i.v, %bb.d ], [ %i.aq, %bb.o ], [ %.ph76, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge
end_hunk_2
begin_hunk_3_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.ab, label %.lr.ph98, label %._crit_edge99

.lr.ph94:                                         ; preds = %bb.e, %bb.g
  %.sroa.04.092 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.03.0, %bb.e ] ; 3 uses
  %i.ac = add i64 %.sroa.04.092, %i.n             ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

end_hunk_3
begin_hunk_4_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.ac, %invariant.op            ; 3 uses
  store i64 %i.aw, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

end_hunk_4
begin_hunk_5_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !15155 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
end_hunk_5
begin_hunk_6_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a

.peel.next.i:                                     ; preds = %bb.w
  call void @llvm.assume(i1 %i.bl)
  %invariant.op1475 = add nuw i64 %i.bk, 2
  br label %bb.dc

.body118.i:                                       ; preds = %bb.do, %bb.dl, %bb.dj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
end_hunk_6
begin_hunk_7_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i256.i
  %i.eo = phi i64 [ %i.dt, %.lr.ph.i256.i ], [ %i.ez, %bb.as ]
  %i.ep = phi i64 [ %.sroa.78.2.i.lcssa, %.lr.ph.i256.i ], [ %i.ey, %bb.as ] ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.9523.2.i.lcssa, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !15181, !noalias !15186, !noundef !3
  %i.es = and i8 %i.er, 63
end_hunk_7
begin_hunk_8_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br i1 %.not259.i.us1798, label %.split786.us, label %.invoke.i

.lr.ph1797:                                       ; preds = %.preheader961.i.preheader, %.preheader961.i
  %.sroa.04.0.i260.i1796 = phi i64 [ %i.fb, %.preheader961.i ], [ %.sroa.63.2.i.lcssa302, %.preheader961.i.preheader ] ; 3 uses
  %i.fk = add i64 %.sroa.04.0.i260.i1796, %i.ep   ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %.sroa.99.2.i.lcssa
  br i1 %i.fl, label %bb.au, label %bb.av

end_hunk_8
begin_hunk_9_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br label %.invoke.i

bb.aw:                                            ; preds = %bb.au
  %i.fs = add i64 %i.fk, %invariant.op2410.a
  br label %bb.as

bb.ax:                                            ; preds = %bb.aj
end_hunk_9
begin_hunk_10_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
bb.ay:                                            ; preds = %.sink.split.i244.i, %.lr.ph.i236.i
  %i.fu = phi i64 [ %.sroa.9022.2.i.lcssa, %.lr.ph.i236.i ], [ %.sink.i245.i, %.sink.split.i244.i ] ; 3 uses
  %i.fv = phi i64 [ %i.dt, %.lr.ph.i236.i ], [ %i.gf, %.sink.split.i244.i ]
  %i.fw = phi i64 [ %.sroa.78.2.i.lcssa, %.lr.ph.i236.i ], [ %.ph76.i246.i, %.sink.split.i244.i ] ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.9523.2.i.lcssa, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !15190, !noalias !15195, !noundef !3
  %i.fz = and i8 %i.fy, 63
end_hunk_10
begin_hunk_11_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br i1 %i.gi, label %.lr.ph1792, label %.preheader263.i.preheader._crit_edge

.lr.ph1790:                                       ; preds = %bb.ba, %bb.bb
  %.sroa.04.0.i240.i1788 = phi i64 [ %i.gh, %bb.bb ], [ %.sroa.0.0.i.i238.i, %bb.ba ] ; 3 uses
  %i.gj = add i64 %.sroa.04.0.i240.i1788, %i.fw   ; 3 uses
  %i.gk = icmp ult i64 %i.gj, %.sroa.99.2.i.lcssa
  br i1 %i.gk, label %bb.bf, label %bb.bg

end_hunk_11
begin_hunk_12_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br label %.invoke.i

bb.bh:                                            ; preds = %bb.bf
  %i.hb = add i64 %i.gj, %invariant.op2409
  br label %.sink.split.i244.i

.loopexit266.i:                                   ; preds = %.loopexit1603.i
end_hunk_12
begin_hunk_13_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a

bb.bz:                                            ; preds = %bb.cb, %.lr.ph.i219.i
  %i.jz = phi i64 [ %i.ja, %.lr.ph.i219.i ], [ %i.kk, %bb.cb ]
  %i.ka = phi i64 [ %.sroa.19.0.i, %.lr.ph.i219.i ], [ %i.kj, %bb.cb ] ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %i.jz
  %i.kc = load i8, ptr %i.kb, align 1, !alias.scope !15212, !noalias !15217, !noundef !3
  %i.kd = and i8 %i.kc, 63
end_hunk_13
begin_hunk_14_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br i1 %.not260.i.us1782, label %.split.us, label %.invoke.i

.lr.ph1781:                                       ; preds = %.preheader960.i.preheader, %.preheader960.i
  %.sroa.04.0.i223.i1780 = phi i64 [ %i.km, %.preheader960.i ], [ %.sroa.5.0.i, %.preheader960.i.preheader ] ; 3 uses
  %i.kv = add i64 %.sroa.04.0.i223.i1780, %i.ka   ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.kw, label %bb.cd, label %bb.ce

end_hunk_14
begin_hunk_15_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br label %.invoke.i

bb.cf:                                            ; preds = %bb.cd
  %i.ld = add i64 %i.kv, %invariant.op2408
  br label %bb.cb

bb.cg:                                            ; preds = %bb.bs
end_hunk_15
begin_hunk_16_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
bb.ch:                                            ; preds = %.sink.split.i207.i, %.lr.ph.i199.i
  %i.lg = phi i64 [ %.sroa.317.0.i, %.lr.ph.i199.i ], [ %.sink.i208.i, %.sink.split.i207.i ] ; 3 uses
  %i.lh = phi i64 [ %i.ja, %.lr.ph.i199.i ], [ %i.lr, %.sink.split.i207.i ]
  %i.li = phi i64 [ %.sroa.19.0.i, %.lr.ph.i199.i ], [ %.ph76.i209.i, %.sink.split.i207.i ] ; 7 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %i.lh
  %i.lk = load i8, ptr %i.lj, align 1, !alias.scope !15221, !noalias !15226, !noundef !3
  %i.ll = and i8 %i.lk, 63
end_hunk_16
begin_hunk_17_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br i1 %i.lu, label %.lr.ph1777, label %.preheader261.i.preheader._crit_edge

.lr.ph1775:                                       ; preds = %bb.cj, %bb.ck
  %.sroa.04.0.i203.i1773 = phi i64 [ %i.lt, %bb.ck ], [ %.sroa.0.0.i.i201.i, %bb.cj ] ; 3 uses
  %i.lv = add i64 %.sroa.04.0.i203.i1773, %i.li   ; 3 uses
  %i.lw = icmp ult i64 %i.lv, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.lw, label %bb.co, label %bb.cp

end_hunk_17
begin_hunk_18_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  br label %.invoke.i

bb.cq:                                            ; preds = %bb.co
  %i.mq = add i64 %i.lv, %invariant.op2407
  br label %.sink.split.i207.i

bb.cr:                                            ; preds = %.loopexit1634.i
end_hunk_18
begin_hunk_19_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15155
  store ptr %.sroa.089.0948.i, ptr %i.k, align 8, !noalias !15155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15155
  %.reass.i = add i64 %.sroa.8.0949.i, %invariant.op1475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15155
  invoke void @_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSh6repeatCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 1, i64 noundef %.reass.i)
          to label %bb.di unwind label %.loopexit.loopexit.i
end_hunk_19
