Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/eslimCirMan?download=true
inline.NumInlined: 2087
inline.NumDeleted: 787
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 100
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !54 ; 2 uses
  %i.dn = icmp ult i32 %i.di, %i.dm               ; 2 uses
  %.in.v.i.i = select i1 %i.dn, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i15 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i15, label %._crit_edge.i.i, label %bb.m, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.m
  br i1 %i.dn, label %._crit_edge.thread.i.i, label %bb.o

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.lr.ph44
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.dh, %.lr.ph44 ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !51
  %i.dq = icmp eq ptr %.019.lcssa29.i.i, %i.dp
  br i1 %i.dq, label %select.unfold.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i
  %i.dr = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  %.phi.trans.insert19.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 100
  %.pre20.i = load i32, ptr %.phi.trans.insert19.i, align 4, !tbaa !54
  %.pre22.i = load i32, ptr %i.v, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %i.ds = phi i32 [ %.pre22.i, %bb.n ], [ %i.di, %._crit_edge.i.i ]
  %i.dt = phi i32 [ %.pre20.i, %bb.n ], [ %i.dm, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.n ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.du = icmp ult i32 %i.dt, %i.ds
  br i1 %i.du, label %select.unfold.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit

select.unfold.i:                                  ; preds = %bb.o, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.o ] ; 3 uses
  %i.dv = icmp eq ptr %.sroa.4.0.i.ph.i, %i.dh
  br i1 %i.dv, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.p

bb.p:                                             ; preds = %select.unfold.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !49
  %i.dy = load i32, ptr %i.v, align 4, !tbaa !54
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 100
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !54
  %i.eb = icmp ult i32 %i.dy, %i.ea
  br label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.p, %select.unfold.i
  %i.ec = phi i1 [ %i.eb, %bb.p ], [ true, %select.unfold.i ]
  %i.ed = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store ptr %i.p, ptr %i.ee, align 8, !tbaa !49
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ec, ptr noundef nonnull %i.ed, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dh) #31
  %i.ef = getelementptr inbounds nuw i8, ptr %i.df, i64 72 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !53
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !53
  br label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit: ; preds = %bb.o, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.018.042, i64 4 ; 2 uses
  %.not34 = icmp eq ptr %i.ei, %i.x
  br i1 %.not34, label %._crit_edge45, label %.lr.ph44
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5eSLIM11eSLIMCirMan5addPoEib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
_ZNSt6vectorIiSaIiEED2Ev.exit:
  %3 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !76
  %i.d = select i1 %2, i64 1, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.e = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !77
  store i32 %1, ptr %i.e, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !71
  %i.i = call noundef i32 @_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.d)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load i32, ptr %i.j, align 8, !tbaa !74
  %i.q = load i32, ptr %i.o, align 4, !tbaa !74
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q)
  store i32 %i.r, ptr %i.j, align 8, !tbaa !79
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirManC2EP10Gia_Man_t_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 44), (48, 56)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %3 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !102
  tail call void @_ZN5eSLIM11eSLIMCirManC2Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.val)
  %i.b = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %.val47 = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %.val47, i64 8
  store i32 0, ptr %i.c, align 4, !tbaa !236
  %i.d = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %.val4879 = load i32, ptr %i.d, align 8, !tbaa !237
  %.val4980 = load ptr, ptr %i.e, align 8, !tbaa !104 ; 2 uses
  %i.f = getelementptr i8, ptr %.val4980, i64 4
  %.val49.val81 = load i32, ptr %i.f, align 4, !tbaa !105
  %i.g = icmp sgt i32 %.val49.val81, %.val4879
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.val4983 = phi ptr [ %.val49, %bb.b ], [ %.val4980, %bb.a ]
  %.val51 = load ptr, ptr %i.b, align 8, !tbaa !103 ; 2 uses
  %.not = icmp eq ptr %.val51, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.val4983, i64 8
  %.val52.val = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val52.val, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !74
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [12 x i8], ptr %.val51, i64 %i.k
  %i.m = tail call noundef i32 @_ZN5eSLIM11eSLIMCirMan5addPiEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.m, ptr %i.n, align 4, !tbaa !236
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val48 = load i32, ptr %i.d, align 8, !tbaa !237
  %.val49 = load ptr, ptr %i.e, align 8, !tbaa !104 ; 2 uses
  %i.o = getelementptr i8, ptr %.val49, i64 4
  %.val49.val = load i32, ptr %i.o, align 4, !tbaa !105
  %i.p = sub nsw i32 %.val49.val, %.val48
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.critedge, !llvm.loop !232

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  tail call void @Gia_ManIncrementTravId(ptr noundef nonnull %1) #31
  %i.s = load i32, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph86, label %.critedge2

.lr.ph86:                                         ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph86, %bb.g
  %i.y = phi i32 [ %i.s, %.lr.ph86 ], [ %i.bg, %bb.g ]
  %indvars.iv96 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next97, %bb.g ] ; 5 uses
  %.val50 = load ptr, ptr %i.b, align 8, !tbaa !103 ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %.val50, i64 %indvars.iv96 ; 5 uses
  %.not44 = icmp eq ptr %.val50, null
  br i1 %.not44, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val53 = load i64, ptr %i.z, align 4           ; 5 uses
  %i.aa = and i64 %.val53, 2147483648
  %.not.i = icmp ne i64 %i.aa, 0
  %i.ab = and i64 %.val53, 536870911              ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ac
  br i1 %narrow.i.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !107 ; 3 uses
  %reass.add = sub nsw i64 %indvars.iv96, %i.ab
  %sext.i.i = shl i64 %reass.add, 32
  %i.ae = ashr exact i64 %sext.i.i, 30
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !74
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !108 ; 3 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  %i.aj = and i64 %.val53, 536870912
  %i.ak = icmp eq i64 %i.aj, 0
  %.not.i59 = xor i1 %i.ak, %i.ai
  %i.al = lshr i64 %.val53, 32
  %i.am = and i64 %i.al, 536870911                ; 2 uses
  %reass.add74 = sub nsw i64 %indvars.iv96, %i.am
  %sext.i17.i = shl i64 %reass.add74, 32
  %i.an = ashr exact i64 %sext.i17.i, 30
  %i.ao = getelementptr inbounds i8, ptr %i.ad, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %4 = icmp eq i32 %i.ap, %i.ah
  %5 = and i64 %.val53, 2305843009213693952
  %6 = icmp eq i64 %5, 0
  %.not9.i = xor i1 %6, %4                        ; 2 uses
  %..i = select i1 %.not9.i, i64 4, i64 1
  %.11.i = select i1 %.not9.i, i64 8, i64 2
  %.0.i = select i1 %.not.i59, i64 %.11.i, i64 %..i ; 3 uses
  %i.aq = and i64 %.0.i, 1
  %.not.i60 = icmp eq i64 %i.aq, 0
  br i1 %.not.i60, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sext.i = shl nuw nsw i64 %indvars.iv96, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %sext.i
  store i32 %i.ah, ptr %i.ar, align 4, !tbaa !74
  %i.as = and i64 %.0.i, 14
  %i.at = xor i64 %i.as, 14
  %.pre = load i64, ptr %i.z, align 4             ; 2 uses
  %.pre103 = and i64 %.pre, 536870911
  %.pre104 = lshr i64 %.pre, 32
  %.pre106 = and i64 %.pre104, 536870911
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  %.pre-phi107 = phi i64 [ %.pre106, %bb.f ], [ %i.am, %bb.e ]
  %.pre-phi = phi i64 [ %.pre103, %bb.f ], [ %i.ab, %bb.e ]
  %.040 = phi i64 [ %i.at, %bb.f ], [ %.0.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.au = sub nsw i64 0, %.pre-phi
  %i.av = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !236
  %i.ay = sub nsw i64 0, %.pre-phi107
  %i.az = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !236
  %i.bc = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 5 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.w, align 8, !tbaa !77
  store i32 %i.ax, ptr %i.bc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bb, ptr %.sroa.4.0..sroa_idx, align 4
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !71
  %i.be = call noundef i32 @_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.040)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !236
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %.pre102 = load i32, ptr %i.a, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %i.bg = phi i32 [ %.pre102, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.y, %bb.d ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next97, %i.bh
  br i1 %i.bi, label %bb.c, label %.critedge2, !llvm.loop !233

.critedge2:                                       ; preds = %bb.c, %bb.g, %.critedge
  %i.bj = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %.val5588 = load i32, ptr %i.d, align 8, !tbaa !237
  %.val5689 = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %i.bk = getelementptr i8, ptr %.val5689, i64 4
  %.val56.val90 = load i32, ptr %i.bk, align 4, !tbaa !105
  %i.bl = icmp sgt i32 %.val56.val90, %.val5588
  br i1 %i.bl, label %.lr.ph93, label %.critedge4

.lr.ph93:                                         ; preds = %.critedge2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph93, %bb.i
  %indvars.iv99 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next100, %bb.i ] ; 2 uses
  %.val5692 = phi ptr [ %.val5689, %.lr.ph93 ], [ %.val56, %bb.i ]
  %.val57 = load ptr, ptr %i.b, align 8, !tbaa !103 ; 2 uses
  %.not45 = icmp eq ptr %.val57, null
  br i1 %.not45, label %.critedge4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr i8, ptr %.val5692, i64 8
  %.val58.val = load ptr, ptr %i.bt, align 8, !tbaa !106
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val58.val, i64 %indvars.iv99
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !74
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %.val57, i64 %i.bw ; 3 uses
  %.val54 = load i64, ptr %i.bx, align 4          ; 2 uses
  %i.by = and i64 %.val54, 536870911              ; 2 uses
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [12 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load ptr, ptr %i.bm, align 8, !tbaa !107
  %reass.add77 = sub nsw i64 %i.bw, %i.by
  %sext.i63 = shl i64 %reass.add77, 32
  %i.cc = ashr exact i64 %sext.i63, 30
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !74
  %i.cf = load i32, ptr %i.bn, align 8, !tbaa !108
  %i.cg = icmp eq i32 %i.ce, %i.cf
  %i.ch = and i64 %.val54, 536870912
  %i.ci = icmp eq i64 %i.ch, 0
  %.not72 = xor i1 %i.ci, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !236
  %i.cl = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.bo, align 4, !tbaa !76
  %i.cn = select i1 %.not72, i64 2, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.co = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29 ; 4 uses
  store ptr %i.co, ptr %2, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  store ptr %i.cp, ptr %i.bp, align 8, !tbaa !77
  store i32 %i.ck, ptr %i.co, align 4, !tbaa !74
  store ptr %i.cp, ptr %i.bq, align 8, !tbaa !71
  %i.cq = call noundef i32 @_ZN5eSLIM11eSLIMCirMan7addNodeERKSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cn)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !78
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.cv = load i32, ptr %i.br, align 8, !tbaa !74
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !74
  %i.cx = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  store i32 %i.cx, ptr %i.br, align 8, !tbaa !79
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.cq, ptr %i.cy, align 4, !tbaa !236
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %.val55 = load i32, ptr %i.d, align 8, !tbaa !237
  %.val56 = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %i.cz = getelementptr i8, ptr %.val56, i64 4
  %.val56.val = load i32, ptr %i.cz, align 4, !tbaa !105
  %i.da = sub nsw i32 %.val56.val, %.val55
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next100, %i.db
  br i1 %i.dc, label %bb.h, label %.critedge4, !llvm.loop !234

.critedge4:                                       ; preds = %bb.h, %bb.i, %.critedge2
  ret void
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 1, 9) i64 @_ZN5eSLIM11eSLIMCirMan12ttFromGiaObjEP10Gia_Man_t_P10Gia_Obj_t_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.val = load i64, ptr %1, align 4               ; 4 uses
  %i.a = and i64 %.val, 536870911
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds [12 x i8], ptr %1, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %sext.i = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i, 30
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load i32, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %i.p = icmp eq i32 %i.m, %i.o
  %i.q = and i64 %.val, 536870912
  %i.r = icmp eq i64 %i.q, 0
  %.not = xor i1 %i.r, %i.p
  %i.s = lshr i64 %.val, 32
  %i.t = and i64 %i.s, 536870911
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [12 x i8], ptr %1, i64 %i.u
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.h
  %i.y = sdiv exact i64 %i.x, 12
  %sext.i17 = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext.i17, 30
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !74
  %2 = icmp eq i32 %i.ab, %i.o
  %3 = and i64 %.val, 2305843009213693952
  %4 = icmp eq i64 %3, 0
  %.not9 = xor i1 %4, %2                          ; 2 uses
  %. = select i1 %.not9, i64 4, i64 1
  %.11 = select i1 %.not9, i64 8, i64 2
  %.0 = select i1 %.not, i64 %.11, i64 %.
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN5eSLIM11eSLIMCirMan10ttisnormalEm(i64 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = and i64 %0, 1
  %.not = icmp eq i64 %i.a, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN5eSLIM11eSLIMCirMan8negateTTEmj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = xor i64 %0, -1
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN5eSLIM11eSLIMCirMan6sop2ttEPc.filters, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !110
  %i.e = and i64 %i.d, %i.a
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirManC2EP10Abc_Ntk_t_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 44), (48, 56)) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %4 = alloca %"class.std::unordered_map.26", align 8 ; 14 uses
  %i.a = getelementptr i8, ptr %1, i64 140
  %.val = load i32, ptr %i.a, align 4, !tbaa !242
  tail call void @_ZN5eSLIM11eSLIMCirManC2Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.val)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZL22Abc_NtkIncrementTravIdP10Abc_Ntk_t_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.f = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.f, align 4, !tbaa !244 ; 2 uses
  %i.g = add nsw i32 %.val.val.i, 500             ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !124
  %.not.i.i.i = icmp slt i32 %i.h, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #33 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !106
  store i32 %i.g, ptr %i.d, align 8, !tbaa !124
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i:          ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  %i.m = icmp sgt i32 %.val.val.i, -500
  br i1 %i.m, label %.lr.ph.i.i, label %_ZL11Vec_IntFillP10Vec_Int_t_ii.exit.i

.lr.ph.i.i:                                       ; preds = %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i
  %i.n = zext nneg i32 %i.g to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.o, i1 false), !tbaa !74
  br label %_ZL11Vec_IntFillP10Vec_Int_t_ii.exit.i

_ZL11Vec_IntFillP10Vec_Int_t_ii.exit.i:           ; preds = %.lr.ph.i.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 228
  store i32 %i.g, ptr %i.p, align 4, !tbaa !105
  br label %_ZL22Abc_NtkIncrementTravIdP10Abc_Ntk_t_.exit

_ZL22Abc_NtkIncrementTravIdP10Abc_Ntk_t_.exit:    ; preds = %bb.a, %_ZL11Vec_IntFillP10Vec_Int_t_ii.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !125
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 1, ptr %i.u, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %.val3775 = load ptr, ptr %i.y, align 8, !tbaa !245 ; 2 uses
  %i.z = getelementptr i8, ptr %.val3775, i64 4
  %.val37.val76 = load i32, ptr %i.z, align 4, !tbaa !244
  %i.aa = icmp sgt i32 %.val37.val76, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %_ZL22Abc_NtkIncrementTravIdP10Abc_Ntk_t_.exit
  %i.ab = getelementptr i8, ptr %1, i64 48        ; 3 uses
  %.val4079 = load ptr, ptr %i.ab, align 8, !tbaa !246 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val4079, i64 4
  %.val40.val80 = load i32, ptr %i.ac, align 4, !tbaa !244
  %i.ad = icmp sgt i32 %.val40.val80, 0
  br i1 %i.ad, label %.lr.ph83, label %.critedge4

.lr.ph:                                           ; preds = %_ZL22Abc_NtkIncrementTravIdP10Abc_Ntk_t_.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZL22Abc_NtkIncrementTravIdP10Abc_Ntk_t_.exit ] ; 2 uses
  %.val3778 = phi ptr [ %.val37, %.lr.ph ], [ %.val3775, %_ZL22Abc_NtkIncrementTravIdP10Abc_Ntk_t_.exit ]
  %i.ae = getelementptr i8, ptr %.val3778, i64 8
  %.val38.val = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val38.val, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !135
  %i.ah = call noundef i32 @_ZN5eSLIM11eSLIMCirMan5addPiEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val37 = load ptr, ptr %i.y, align 8, !tbaa !245 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val37, i64 4
  %.val37.val = load i32, ptr %i.ak, align 4, !tbaa !244
  %i.al = sext i32 %.val37.val to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph, label %.critedge.preheader, !llvm.loop !238

.critedge2.preheader:                             ; preds = %.critedge
  %i.an = icmp sgt i32 %.val40.val, 0
  br i1 %i.an, label %.lr.ph89, label %.critedge4

.lr.ph89:                                         ; preds = %.critedge2.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

.lr.ph83:                                         ; preds = %.critedge.preheader, %.critedge
  %.val40105 = phi ptr [ %.val40, %.critedge ], [ %.val4079, %.critedge.preheader ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.au = getelementptr i8, ptr %.val40105, i64 8
  %.val42.val = load ptr, ptr %i.au, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val42.val, i64 %indvars.iv99
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !135 ; 3 uses
  %.val.i45 = load ptr, ptr %i.aw, align 8, !tbaa !138
  %i.ax = getelementptr i8, ptr %i.aw, i64 32
  %.val2.i = load ptr, ptr %i.ax, align 8, !tbaa !247
  %i.ay = getelementptr i8, ptr %.val.i45, i64 32
  %.val.val.i46 = load ptr, ptr %i.ay, align 8, !tbaa !122
  %.val2.val.i = load i32, ptr %.val2.i, align 4, !tbaa !74
  %i.az = getelementptr i8, ptr %.val.val.i46, i64 8
  %.val.val.val.i = load ptr, ptr %i.az, align 8, !tbaa !134
  %i.ba = sext i32 %.val2.val.i to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !135
  %i.bd = getelementptr i8, ptr %i.aw, i64 20
  %.val3.i = load i32, ptr %i.bd, align 4
  %i.be = lshr i32 %.val3.i, 10
  %i.bf = and i32 %i.be, 1
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 20
  %.val44 = load i32, ptr %i.bk, align 4
  %i.bl = and i32 %.val44, 15
  %.not65 = icmp eq i32 %i.bl, 3
  br i1 %.not65, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !139
  %i.bo = call noundef i32 @_ZN5eSLIM11eSLIMCirMan14insertNtkNodesEP10Abc_Ntk_t_iRSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, i32 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %4, i1 noundef zeroext %2) ; 0 uses
  %.val40.pre = load ptr, ptr %i.ab, align 8, !tbaa !246
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph83, %bb.d
  %.val40 = phi ptr [ %.val40105, %.lr.ph83 ], [ %.val40.pre, %bb.d ] ; 3 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.bp = getelementptr i8, ptr %.val40, i64 4
  %.val40.val = load i32, ptr %i.bp, align 4, !tbaa !244 ; 2 uses
  %i.bq = sext i32 %.val40.val to i64
  %i.br = icmp slt i64 %indvars.iv.next100, %i.bq
  br i1 %i.br, label %.lr.ph83, label %.critedge2.preheader, !llvm.loop !239

bb.e:                                             ; preds = %.lr.ph89, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE2atERS5_.exit
  %indvars.iv102 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next103, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE2atERS5_.exit ] ; 2 uses
  %.val3988 = phi ptr [ %.val40, %.lr.ph89 ], [ %.val39, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE2atERS5_.exit ]
  %i.bs = getelementptr i8, ptr %.val3988, i64 8
  %.val41.val = load ptr, ptr %i.bs, align 8, !tbaa !134
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val41.val, i64 %indvars.iv102
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !135 ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %i.bu, i64 20
  %.0.val.pre = load i32, ptr %.phi.trans.insert, align 4
  %.val.i53.pre = load ptr, ptr %i.bu, align 8, !tbaa !138
  br label %bb.f

bb.f:                                             ; preds = %_ZL23Abc_NodeIsTravIdCurrentP10Abc_Obj_t_.exit, %bb.e
  %.val.i53 = phi ptr [ %.val.i53.pre, %bb.e ], [ %.val.i62, %_ZL23Abc_NodeIsTravIdCurrentP10Abc_Obj_t_.exit ]
  %.0.val = phi i32 [ %.0.val.pre, %bb.e ], [ %.val43, %_ZL23Abc_NodeIsTravIdCurrentP10Abc_Obj_t_.exit ]
  %.034 = phi i1 [ false, %bb.e ], [ %i.dw, %_ZL23Abc_NodeIsTravIdCurrentP10Abc_Obj_t_.exit ]
end_hunk_0
