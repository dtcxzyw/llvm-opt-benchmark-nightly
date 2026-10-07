Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/register-allocator?download=true
inline.NumInlined: 5702
inline.NumDeleted: 2184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS1_16InstructionBlockENS1_16LifetimePositionE:bb.a
  %i.cw = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.4.0.i197, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #36 ; 0 uses
  %i.cx = load i64, ptr %i.am, align 8
  %i.cy = add i64 %i.cx, -1
  store i64 %i.cy, ptr %i.am, align 8
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE5eraseERKNSJ_8iteratorE.exit

.thread142:                                       ; preds = %bb.m
  %i.cz = ptrtoint ptr %.sroa.02.0.i101 to i64
  %i.da = sub i64 %i.cz, %i.al                    ; 2 uses
  %i.db = ashr exact i64 %i.da, 4                 ; 2 uses
  %.not2.i = icmp ugt i64 %i.db, %.val8.i
  br i1 %.not2.i, label %bb.n, label %bb.o, !prof !51

bb.n:                                             ; preds = %.thread142
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.143) #35
  unreachable

bb.o:                                             ; preds = %.thread142
  %i.dc = add i64 %.val8.i, -1                    ; 2 uses
  store i64 %i.dc, ptr %4, align 8
  %.not.i114 = icmp eq i64 %i.db, %i.dc
  br i1 %.not.i114, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE5eraseERKNSJ_8iteratorE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.da
  %i.de = getelementptr [16 x i8], ptr %4, i64 %.val8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false)
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE5eraseERKNSJ_8iteratorE.exit

_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratoreqERKSK_.exit79.thread: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE3mapEv.exit.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_ZNS2_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS2_16InstructionBlockENS2_16LifetimePositionEE5DummyESt10_Select1stISC_ESt4lessIS4_ENS1_13ZoneAllocatorISC_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, %.split, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratoreqERKSK_.exit79
  %i.df = call noundef ptr @_ZN2v88internal8compiler17TopLevelLiveRange14GetChildCoversENS1_16LifetimePositionE(ptr noundef nonnull align 8 dereferenceable(208) %i.cg, i32 %2) ; 2 uses
  %.not76 = icmp eq ptr %i.df, null
  br i1 %.not76, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE5eraseERKNSJ_8iteratorE.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratoreqERKSK_.exit79.thread
  %i.dg = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.dh = load ptr, ptr %i.ac, align 8
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.r, label %_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit, !prof !51

bb.r:                                             ; preds = %bb.q
  call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(288) %5)
  %.pre.i.i = load ptr, ptr %i.ab, align 8
  br label %_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit

_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit: ; preds = %bb.q, %bb.r
  %i.dj = phi ptr [ %.pre.i.i, %bb.r ], [ %i.dg, %bb.q ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.dk, ptr %i.ab, align 8
  store ptr %i.df, ptr %i.dj, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 -1, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE5eraseERKNSJ_8iteratorE.exit

_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE5eraseERKNSJ_8iteratorE.exit: ; preds = %bb.p, %.thread, %bb.o, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratoreqERKSK_.exit79.thread, %_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %.067155, i64 8 ; 2 uses
  %.not70 = icmp eq ptr %i.dl, %i.ah
  br i1 %.not70, label %._crit_edge158, label %bb.k

_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratorppEv.exit: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratorppEv.exit.outer, %bb.x
  %.sroa.0130.0 = phi ptr [ %i.du, %bb.x ], [ %.sroa.0130.0.ph, %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratorppEv.exit.outer ] ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0130.0, null       ; 2 uses
  br i1 %.not.i, label %bb.s, label %.split144

.split144:                                        ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratorppEv.exit
  %i.dm = icmp eq ptr %.sroa.0130.0, %.sroa.01.0.i
  br i1 %i.dm, label %bb.t, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratordeEv.exit

bb.s:                                             ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratorppEv.exit
  br i1 %or.cond, label %bb.t, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratordeEv.exit

bb.t:                                             ; preds = %bb.s, %.split144
  %.val90 = load ptr, ptr %i.z, align 8           ; 3 uses
  %.val92 = load ptr, ptr %i.ab, align 8          ; 3 uses
  %.not71159 = icmp eq ptr %.val90, %.val92
  br i1 %.not71159, label %.loopexit.thread, label %.lr.ph163

_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratordeEv.exit: ; preds = %bb.s, %.split144
  %i.dn = phi ptr [ %.sroa.0130.0, %.split144 ], [ %i.cd, %bb.s ]
  %.sroa.0126.0.copyload = load ptr, ptr %i.dn, align 8
  %i.do = call noundef ptr @_ZN2v88internal8compiler17TopLevelLiveRange14GetChildCoversENS1_16LifetimePositionE(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.0126.0.copyload, i32 %2) ; 2 uses
  %.not75 = icmp eq ptr %i.do, null
  br i1 %.not75, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratordeEv.exit
  %i.dp = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.dq = load ptr, ptr %i.ac, align 8
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit121, !prof !51

bb.v:                                             ; preds = %bb.u
  call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(288) %5)
  %.pre.i.i120 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit121

_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit121: ; preds = %bb.u, %bb.v
  %i.ds = phi ptr [ %.pre.i.i120, %bb.v ], [ %i.dp, %bb.u ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.dt, ptr %i.ab, align 8
  store ptr %i.do, ptr %i.ds, align 8
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 1, ptr %.sroa.2.0..sroa_idx.i119, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v84base11SmallVectorIZNS_8internal8compiler19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS3_16InstructionBlockENS3_16LifetimePositionEE13RangeUseCountLm16ENS2_13ZoneAllocatorIS8_EEE9push_backES8_.exit121, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratordeEv.exit
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0130.0, i64 16
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratorppEv.exit

bb.y:                                             ; preds = %bb.w
  %i.dv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.7.0.ph) #38
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator31ChooseOneOfTwoPredecessorStatesEPNS4_16InstructionBlockENS4_16LifetimePositionEE5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISE_EEE8iteratorppEv.exit.outer

._crit_edge164:                                   ; preds = %.lr.ph163
  %i.dw = icmp eq i32 %.1, 0
  br i1 %i.dw, label %.lr.ph169, label %.loopexit

.lr.ph163:                                        ; preds = %bb.t, %.lr.ph163
  %.064161 = phi ptr [ %i.dz, %.lr.ph163 ], [ %.val90, %bb.t ] ; 3 uses
  %.065160 = phi i32 [ %.1, %.lr.ph163 ], [ 0, %bb.t ]
  %.sroa.09.0.copyload = load ptr, ptr %.064161, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.064161, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.dx = call noundef ptr @_ZNK2v88internal8compiler9LiveRange35NextUsePositionRegisterIsBeneficialENS1_16LifetimePositionE(ptr noundef nonnull align 8 dereferenceable(100) %.sroa.09.0.copyload, i32 %2)
  %.not74 = icmp eq ptr %i.dx, null
  %i.dy = select i1 %.not74, i32 0, i32 %.sroa.4.0.copyload
  %.1 = add nsw i32 %i.dy, %.065160               ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.064161, i64 16 ; 2 uses
  %.not71 = icmp eq ptr %i.dz, %.val92
  br i1 %.not71, label %._crit_edge164, label %.lr.ph163

.lr.ph169:                                        ; preds = %._crit_edge164, %_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit
  %.0167 = phi ptr [ %i.ep, %_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit ], [ %.val90, %._crit_edge164 ] ; 3 uses
  %.2166 = phi i32 [ %.3, %_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit ], [ 0, %._crit_edge164 ]
  %.sroa.01.0.copyload = load ptr, ptr %.0167, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0167, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 48
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, 0
  br i1 %i.ee, label %_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit

_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.lr.ph169, %_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.05.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ed, %.lr.ph169 ] ; 2 uses
  %.0114.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.eb, %.lr.ph169 ] ; 2 uses
  %i.ef = lshr i64 %.05.i.i.i, 1                  ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i, i64 %i.ef ; 2 uses
  %.val.i.i.i122 = load ptr, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %.val.i.i.i122, i64 16
  %.val.val.i.i.i = load i32, ptr %i.eh, align 8
  %i.ei = icmp slt i32 %.val.val.i.i.i, %2        ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = xor i64 %i.ef, -1
  %i.el = add nsw i64 %.05.i.i.i, %i.ek
  %.112.i.i.i = select i1 %i.ei, ptr %i.ej, ptr %.0114.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ei, i64 %i.el, i64 %i.ef ; 2 uses
  %i.em = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.em, label %_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit, !llvm.loop !2

_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit: ; preds = %_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %.lr.ph169
  %.011.lcssa.i.i.i = phi ptr [ %i.eb, %.lr.ph169 ], [ %.112.i.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler11UsePositionElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  %.not73 = icmp eq ptr %.011.lcssa.i.i.i, %i.en
  %i.eo = select i1 %.not73, i32 0, i32 %.sroa.5.0.copyload
  %.3 = add nsw i32 %i.eo, %.2166                 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0167, i64 16 ; 2 uses
  %.not72 = icmp eq ptr %i.ep, %.val92
  br i1 %.not72, label %.loopexit, label %.lr.ph169

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit, %._crit_edge164
  %.4 = phi i32 [ %.1, %._crit_edge164 ], [ %.3, %_ZNK2v88internal8compiler9LiveRange15NextUsePositionENS1_16LifetimePositionE.exit ]
  %i.eq = icmp sgt i32 %.4, 0
  br i1 %i.eq, label %bb.z, label %.loopexit.thread

bb.z:                                             ; preds = %.loopexit
  %i.er = load ptr, ptr %i.b, align 8
  br label %bb.aa

.loopexit.thread:                                 ; preds = %bb.t, %.loopexit
  %i.es = load ptr, ptr %i.b, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.thread, %bb.z
  %i.eu = phi ptr [ %i.er, %bb.z ], [ %i.et, %.loopexit.thread ]
  %.sroa.063.0.copyload = load i32, ptr %i.eu, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %.sroa.063.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler19LinearScanAllocator13CheckConflictENS0_21MachineRepresentationEiRKNS0_12SmallZoneMapIPNS1_17TopLevelLiveRangeEiLm16ESt4lessIS6_ESt8equal_toIS6_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i8 noundef zeroext %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(272) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %.fr33 = freeze i64 %i.a                        ; 2 uses
  %4 = icmp eq i64 %.fr33, -1                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.fr33
  %.sroa.01.0.i15 = select i1 %4, ptr null, ptr %5
  br i1 %4, label %.split30.preheader, label %.split30.us.outer

.split30.preheader:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  br label %.split30.outer

.split30.outer:                                   ; preds = %bb.b, %.split30.preheader
  %.sroa.7.0.ph = phi ptr [ %i.x, %bb.b ], [ %i.e, %.split30.preheader ] ; 3 uses
  %6 = icmp eq ptr %.sroa.7.0.ph, %i.c
  br i1 %6, label %.split32.us, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratoreqERKSF_.exit.thread

.split30.us:                                      ; preds = %.split30.us.outer, %9
  %.sroa.021.0.us = phi ptr [ %10, %9 ], [ %.sroa.021.0.us.ph, %.split30.us.outer ] ; 4 uses
  %.not.i.us = icmp eq ptr %.sroa.021.0.us, null  ; 2 uses
  br i1 %.not.i.us, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratordeEv.exit.us, label %.split.us

.split.us:                                        ; preds = %.split30.us
  %7 = icmp eq ptr %.sroa.021.0.us, %.sroa.01.0.i15
  br i1 %7, label %.split32.us, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratordeEv.exit.us

_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratordeEv.exit.us: ; preds = %.split30.us, %.split.us
  %i.f = phi ptr [ %.sroa.021.0.us, %.split.us ], [ %13, %.split30.us ] ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload.us = load i32, ptr %.sroa.4.0..sroa_idx.us, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.us, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = lshr i32 %i.k, 13
  %i.m = trunc i32 %i.l to i8
  %i.n = tail call noundef zeroext i1 @_ZNK2v88internal21RegisterConfiguration10AreAliasesENS0_21MachineRepresentationEiS2_i(ptr noundef nonnull align 8 dereferenceable(476) %i.i, i8 noundef zeroext %i.m, i32 noundef %.sroa.4.0.copyload.us, i8 noundef zeroext %1, i32 noundef %2) #36
  br i1 %i.n, label %.split32.us, label %8

8:                                                ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratordeEv.exit.us
  br i1 %.not.i.us, label %11, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.021.0.us, i64 16
  br label %.split30.us

11:                                               ; preds = %8
  %12 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.7.0.us.ph) #38
  br label %.split30.us.outer

.split30.us.outer:                                ; preds = %bb.a, %11
  %.sroa.7.0.us.ph = phi ptr [ %12, %11 ], [ null, %bb.a ] ; 2 uses
  %.sroa.021.0.us.ph = phi ptr [ null, %11 ], [ %i.b, %bb.a ]
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us.ph, i64 32
  br label %.split30.us

_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratoreqERKSF_.exit.thread: ; preds = %.split30.outer
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.7.0.ph, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = lshr i32 %i.t, 13
  %i.v = trunc i32 %i.u to i8
  %i.w = tail call noundef zeroext i1 @_ZNK2v88internal21RegisterConfiguration10AreAliasesENS0_21MachineRepresentationEiS2_i(ptr noundef nonnull align 8 dereferenceable(476) %i.r, i8 noundef zeroext %i.v, i32 noundef %.sroa.4.0.copyload, i8 noundef zeroext %1, i32 noundef %2) #36
  br i1 %i.w, label %.split32.us, label %bb.b

bb.b:                                             ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratoreqERKSF_.exit.thread
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.7.0.ph) #38
  br label %.split30.outer

.split32.us:                                      ; preds = %.split.us, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratordeEv.exit.us, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratoreqERKSF_.exit.thread, %.split30.outer
  %.us-phi = phi i1 [ true, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratoreqERKSF_.exit.thread ], [ false, %.split30.outer ], [ true, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE14const_iteratordeEv.exit.us ], [ false, %.split.us ]
  ret i1 %.us-phi
}

declare noundef zeroext i1 @_ZNK2v88internal21RegisterConfiguration10AreAliasesENS0_21MachineRepresentationEiS2_i(ptr noundef nonnull align 8 dereferenceable(476), i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS1_16InstructionBlockERNS0_12SmallZoneMapIPNS1_17TopLevelLiveRangeEiLm16ESt4lessIS7_ESt8equal_toIS7_EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::SmallZoneMap.122", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %4 = alloca %class.anon.137, align 8            ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 6 uses
  %6 = alloca %"class.std::function", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.d = load ptr, ptr %0, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  store i64 0, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not72 = icmp eq ptr %i.i, %i.k
  br i1 %.not72, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre77 = load ptr, ptr %i.j, align 8
  %.pre78 = load ptr, ptr %i.h, align 8
  %i.o = sext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi ptr [ %i.i, %bb.a ], [ %.pre78, %._crit_edge.loopexit ]
  %i.q = phi ptr [ %i.i, %bb.a ], [ %.pre77, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %reass.sub = sub nsw i64 %i.u, %.0.lcssa
  %i.v = add nsw i64 %reass.sub, 2
  %i.w = lshr i64 %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %0, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbPN2v88internal8compiler17TopLevelLiveRangeEEZNS2_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS2_16InstructionBlockERNS1_12SmallZoneMapIS4_iLm16ESt4lessIS4_ESt8equal_toIS4_EEEE3$_0E9_M_invokeERKSt9_Any_dataOS4_", ptr %i.aa, align 8
  store ptr @"_ZNSt17_Function_handlerIFbPN2v88internal8compiler17TopLevelLiveRangeEEZNS2_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS2_16InstructionBlockERNS1_12SmallZoneMapIS4_iLm16ESt4lessIS4_ESt8equal_toIS4_EEEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.z, align 8
  call fastcc void @"_ZZN2v88internal8compiler19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS1_16InstructionBlockERNS0_12SmallZoneMapIPNS1_17TopLevelLiveRangeEiLm16ESt4lessIS7_ESt8equal_toIS7_EEEENK3$_2clESt8functionIFbS7_EESD_Pb"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef %i.c)
  %i.ab = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #36, !inline_history !32 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %._crit_edge, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbPN2v88internal8compiler17TopLevelLiveRangeEEZNS2_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS2_16InstructionBlockERNS1_12SmallZoneMapIS4_iLm16ESt4lessIS4_ESt8equal_toIS4_EEEE3$_1E9_M_invokeERKSt9_Any_dataOS4_", ptr %i.ae, align 8
  store ptr @"_ZNSt17_Function_handlerIFbPN2v88internal8compiler17TopLevelLiveRangeEEZNS2_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS2_16InstructionBlockERNS1_12SmallZoneMapIS4_iLm16ESt4lessIS4_ESt8equal_toIS4_EEEE3$_1E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.ad, align 8
  call fastcc void @"_ZZN2v88internal8compiler19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS1_16InstructionBlockERNS0_12SmallZoneMapIPNS1_17TopLevelLiveRangeEiLm16ESt4lessIS7_ESt8equal_toIS7_EEEENK3$_2clESt8functionIFbS7_EESD_Pb"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef %i.c)
  %i.af = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i39 = icmp eq ptr %i.af, null
  br i1 %.not.i39, label %_ZNSt14_Function_baseD2Ev.exit40, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #36, !inline_history !32 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit40

_ZNSt14_Function_baseD2Ev.exit40:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void

bb.d:                                             ; preds = %.lr.ph75, %.loopexit
  %.074 = phi i32 [ 0, %.lr.ph75 ], [ %.1, %.loopexit ] ; 3 uses
  %.03273 = phi ptr [ %i.i, %.lr.ph75 ], [ %i.cq, %.loopexit ] ; 2 uses
  %.sroa.015.0.copyload = load i32, ptr %.03273, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.l, align 4
  %i.ah = icmp slt i32 %.sroa.015.0.copyload, %.sroa.0.0.copyload.i.i
  br i1 %i.ah, label %bb.e, label %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread44

bb.e:                                             ; preds = %bb.d
  %i.ai = load i16, ptr %i.m, align 4
  %i.aj = trunc i16 %i.ai to i1
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.aj, label %._ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread_crit_edge, label %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit

._ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread_crit_edge: ; preds = %bb.e
  %.pre79 = sext i32 %.sroa.015.0.copyload to i64
  br label %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread

_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = sext i32 %.sroa.015.0.copyload to i64   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 124
  %i.au = load i16, ptr %i.at, align 4
  %i.av = trunc i16 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread44, label %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread

_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread44: ; preds = %bb.d, %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit
  %i.aw = add nsw i32 %.074, 1
  br label %.loopexit

_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread: ; preds = %._ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread_crit_edge, %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit
  %.pre-phi = phi i64 [ %.pre79, %._ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread_crit_edge ], [ %i.ao, %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 448
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.pre-phi ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not3370 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not3370, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread, %bb.k
  %.03171 = phi ptr [ %i.cp, %bb.k ], [ %i.bb, %_ZN2v88internal8compiler19LinearScanAllocator27ConsiderBlockForControlFlowEPNS1_16InstructionBlockENS1_9RpoNumberE.exit.thread ] ; 2 uses
  %i.be = load ptr, ptr %.03171, align 8          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = and i32 %i.bg, 8064
  %.not67 = icmp eq i32 %i.bh, 4096
  br i1 %.not67, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  store ptr %i.bj, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.bk = lshr i32 %i.bg, 7
  %i.bl = and i32 %i.bk, 63                       ; 2 uses
  store i32 %i.bl, ptr %i.b, align 4
  %.val.i = load i64, ptr %3, align 8, !noalias !168 ; 5 uses
  switch i64 %.val.i, label %.lr.ph.i [
    i64 -1, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS4_16InstructionBlockERNS2_12SmallZoneMapIS6_iLm16ESt4lessIS6_ESt8equal_toIS6_EEEE4VoteZNS7_32ComputeStateFromManyPredecessorsES9_SG_E27TopLevelLiveRangeComparatorEELm16ESE_NS2_11ZoneMapInitISJ_EEE11try_emplaceIJiEEESt4pairINSM_8iteratorEbERKS6_DpOT_.exit
    i64 0, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS4_16InstructionBlockERNS2_12SmallZoneMapIS6_iLm16ESt4lessIS6_ESt8equal_toIS6_EEEE4VoteZNS7_32ComputeStateFromManyPredecessorsES9_SG_E27TopLevelLiveRangeComparatorEELm16ESE_NS2_11ZoneMapInitISJ_EEE11try_emplaceIJiEEESt4pairINSM_8iteratorEbERKS6_DpOT_.exit.thread
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %i.bm = add nuw nsw i64 %.01634.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bm, %.val.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !167

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.01634.i = phi i64 [ %i.bm, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.01634.i ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !168
  %i.bp = icmp eq ptr %i.bo, %i.bj
  br i1 %i.bp, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS4_16InstructionBlockERNS2_12SmallZoneMapIS6_iLm16ESt4lessIS6_ESt8equal_toIS6_EEEE4VoteZNS7_32ComputeStateFromManyPredecessorsES9_SG_E27TopLevelLiveRangeComparatorEELm16ESE_NS2_11ZoneMapInitISJ_EEE8iteratorptEv.exit35, label %bb.g

.critedge.i:                                      ; preds = %bb.g
  %i.bq = icmp eq i64 %.val.i, 16
  br i1 %i.bq, label %bb.h, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS4_16InstructionBlockERNS2_12SmallZoneMapIS6_iLm16ESt4lessIS6_ESt8equal_toIS6_EEEE4VoteZNS7_32ComputeStateFromManyPredecessorsES9_SG_E27TopLevelLiveRangeComparatorEELm16ESE_NS2_11ZoneMapInitISJ_EEE11try_emplaceIJiEEESt4pairINSM_8iteratorEbERKS6_DpOT_.exit.thread, !prof !56

bb.h:                                             ; preds = %.critedge.i
  call preserve_mostcc void @_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS4_16InstructionBlockERNS2_12SmallZoneMapIS6_iLm16ESt4lessIS6_ESt8equal_toIS6_EEEE4VoteZNS7_32ComputeStateFromManyPredecessorsES9_SG_E27TopLevelLiveRangeComparatorEELm16ESE_NS2_11ZoneMapInitISJ_EEE16ConvertToRealMapEv(ptr noundef nonnull align 8 dereferenceable(2320) %3), !noalias !168
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS4_16InstructionBlockERNS2_12SmallZoneMapIS6_iLm16ESt4lessIS6_ESt8equal_toIS6_EEEE4VoteZNS7_32ComputeStateFromManyPredecessorsES9_SG_E27TopLevelLiveRangeComparatorEELm16ESE_NS2_11ZoneMapInitISJ_EEE11try_emplaceIJiEEESt4pairINSM_8iteratorEbERKS6_DpOT_.exit

_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEZNS4_19LinearScanAllocator32ComputeStateFromManyPredecessorsEPNS4_16InstructionBlockERNS2_12SmallZoneMapIS6_iLm16ESt4lessIS6_ESt8equal_toIS6_EEEE4VoteZNS7_32ComputeStateFromManyPredecessorsES9_SG_E27TopLevelLiveRangeComparatorEELm16ESE_NS2_11ZoneMapInitISJ_EEE11try_emplaceIJiEEESt4pairINSM_8iteratorEbERKS6_DpOT_.exit.thread: ; preds = %bb.f, %.critedge.i
  %i.br = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.val.i ; 3 uses
  store ptr %i.bj, ptr %i.br, align 8, !noalias !168
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 1, ptr %i.bs, align 8, !noalias !168
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bt, i8 0, i64 128, i1 false), !noalias !168
  %i.bu = zext nneg i32 %i.bl to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  store i32 1, ptr %i.bv, align 4, !noalias !168
  %i.bw = add nuw nsw i64 %.val.i, 1
  store i64 %i.bw, ptr %3, align 8, !noalias !168
end_hunk_0
