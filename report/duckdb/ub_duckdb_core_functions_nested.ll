inline.NumInlined: 12414
inline.NumDeleted: 4971
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm:bb.a
  %i.bm = icmp ult i32 %i.bk, 13
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bg, ptr %i.bo
  %i.bq = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.br = call i32 @memcmp(ptr noundef %i.bp, ptr noundef %i.ao, i64 noundef %i.bq) #30 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  %i.bt = icmp eq i32 %i.br, 0
  %i.bu = and i1 %i.bl, %i.bt
  %or.cond.i.i = or i1 %i.bs, %i.bu
  br i1 %or.cond.i.i, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.i, label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i

_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.i: ; preds = %bb.j, %.split.i.i, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  store i64 0, ptr %.sroa.2.0..sroa_idx3.i.i, align 8
  %i.bv = load i32, ptr %5, align 8, !tbaa !14    ; 5 uses
  %i.bw = icmp ult i32 %i.bv, 13
  br i1 %i.bw, label %.lr.ph.i31.i, label %bb.r

_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.thread.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  store i64 0, ptr %.sroa.2.0..sroa_idx3.i.i, align 8
  %i.bx = load i32, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.by = icmp ult i32 %i.bx, 13
  br i1 %i.by, label %._crit_edge.thread.i55.i, label %bb.r

.lr.ph.i31.i:                                     ; preds = %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.i
  %.0.copyload.i11.i.i.i.i.i32.i = load i32, ptr %i.h, align 4 ; 3 uses
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i32.i)
  br label %.backedge97.i

.backedge97.i:                                    ; preds = %.backedge97.i.backedge, %.lr.ph.i31.i
  %.02638.i33.i = phi ptr [ %i.ah, %.lr.ph.i31.i ], [ %.02638.i33.i.be, %.backedge97.i.backedge ] ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02638.i33.i, i64 36 ; 2 uses
  %.0.copyload.i.i.i.i.i.i34.i = load i32, ptr %i.ca, align 1 ; 3 uses
  %.not.i.i.i.i.i35.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i34.i, %.0.copyload.i11.i.i.i.i.i32.i
  br i1 %.not.i.i.i.i.i35.i, label %bb.k, label %.split.i36.i

.split.i36.i:                                     ; preds = %.backedge97.i
  %i.cb = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i34.i)
  %i.cc = icmp ugt i32 %i.cb, %i.bz
  br i1 %i.cc, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i

bb.k:                                             ; preds = %.backedge97.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.02638.i33.i, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.cf = icmp ult i32 %i.bv, %i.ce
  %.sroa.speculated.i.i.i.i.i57.i = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %i.ce)
  %i.cg = icmp ult i32 %i.ce, 13
  %i.ch = getelementptr inbounds nuw i8, ptr %.02638.i33.i, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = select i1 %i.cg, ptr %i.ca, ptr %i.ci
  %i.ck = zext nneg i32 %.sroa.speculated.i.i.i.i.i57.i to i64
  %i.cl = call i32 @memcmp(ptr noundef %i.cj, ptr noundef nonnull %i.h, i64 noundef %i.ck) #30 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = and i1 %i.cf, %i.cn
  %or.cond.i58.i = or i1 %i.cm, %i.co
  br i1 %or.cond.i58.i, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i

_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i: ; preds = %bb.k, %.split.i36.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.02638.i33.i, i64 16
  %.026.i40.i = load ptr, ptr %i.cp, align 8, !tbaa !1152 ; 2 uses
  %.not.i41.i = icmp eq ptr %.026.i40.i, null
  br i1 %.not.i41.i, label %._crit_edge.thread.i55.i, label %.backedge97.i.backedge

_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i: ; preds = %bb.k, %.split.i36.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.02638.i33.i, i64 24
  %.026.i4064.i = load ptr, ptr %i.cq, align 8, !tbaa !1152 ; 2 uses
  %.not.i4165.i = icmp eq ptr %.026.i4064.i, null
  br i1 %.not.i4165.i, label %._crit_edge.i42.thread.i, label %.backedge97.i.backedge

.backedge97.i.backedge:                           ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i
  %.02638.i33.i.be = phi ptr [ %.026.i40.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i ], [ %.026.i4064.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i ]
  br label %.backedge97.i, !llvm.loop !1343

._crit_edge.thread.i55.i:                         ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.thread.i
  %i.cr = phi i32 [ %i.bx, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.thread.i ], [ %i.bv, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i ] ; 2 uses
  %.025.lcssa43.i56.i = phi ptr [ %i.ai, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.thread.i ], [ %.02638.i33.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1141
  %i.cu = icmp eq ptr %.025.lcssa43.i56.i, %i.ct
  br i1 %i.cu, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit59.thread.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i55.i
  %i.cv = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.025.lcssa43.i56.i) #30 ; 2 uses
  %.0.copyload.i.i.i.i.i5.i45.pre.i = load i32, ptr %i.h, align 4
  %.phi.trans.insert105.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %.0.copyload.i11.i.i.i.i6.i46.pre.i = load i32, ptr %.phi.trans.insert105.i, align 1
  br label %._crit_edge.i42.thread.i

._crit_edge.i42.thread.i:                         ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i, %bb.l
  %.0.copyload.i11.i.i.i.i6.i46.i = phi i32 [ %.0.copyload.i11.i.i.i.i6.i46.pre.i, %bb.l ], [ %.0.copyload.i.i.i.i.i.i34.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i ] ; 2 uses
  %.0.copyload.i.i.i.i.i5.i45.i = phi i32 [ %.0.copyload.i.i.i.i.i5.i45.pre.i, %bb.l ], [ %.0.copyload.i11.i.i.i.i.i32.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i ] ; 2 uses
  %i.cw = phi i32 [ %i.cr, %bb.l ], [ %i.bv, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i ] ; 4 uses
  %.025.lcssa42.i43.i = phi ptr [ %.025.lcssa43.i56.i, %bb.l ], [ %.02638.i33.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i ] ; 2 uses
  %.sroa.011.0.i44.i = phi ptr [ %i.cv, %bb.l ], [ %.02638.i33.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i37.thread.i ] ; 5 uses
  %.not.i.i.i.i7.i47.i = icmp eq i32 %.0.copyload.i.i.i.i.i5.i45.i, %.0.copyload.i11.i.i.i.i6.i46.i
  br i1 %.not.i.i.i.i7.i47.i, label %bb.m, label %.split32.i48.i

.split32.i48.i:                                   ; preds = %._crit_edge.i42.thread.i
  %i.cx = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i5.i45.i)
  %i.cy = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i6.i46.i)
  %i.cz = icmp ugt i32 %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit59.thread.i, label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

bb.m:                                             ; preds = %._crit_edge.i42.thread.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i44.i, i64 36
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i44.i, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !14 ; 3 uses
  %i.dd = icmp ult i32 %i.dc, %i.cw
  %.sroa.speculated.i.i.i.i9.i53.i = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 %i.cw)
  %i.de = icmp ult i32 %i.dc, 13
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i44.i, i64 40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = select i1 %i.de, ptr %i.da, ptr %i.dg
  %i.di = zext nneg i32 %.sroa.speculated.i.i.i.i9.i53.i to i64
  %i.dj = call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef %i.dh, i64 noundef %i.di) #30 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  %i.dl = icmp eq i32 %i.dj, 0
  %i.dm = and i1 %i.dd, %i.dl
  %or.cond35.i54.i = or i1 %i.dk, %i.dm
  br i1 %or.cond35.i54.i, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit59.thread.i, label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit59.thread.i: ; preds = %bb.m, %.split32.i48.i, %._crit_edge.thread.i55.i
  %i.dn = phi i32 [ %i.cw, %bb.m ], [ %i.cw, %.split32.i48.i ], [ %i.cr, %._crit_edge.thread.i55.i ] ; 2 uses
  %.sroa.4.0.i5074.i = phi ptr [ %.025.lcssa42.i43.i, %bb.m ], [ %.025.lcssa42.i43.i, %.split32.i48.i ], [ %.025.lcssa43.i56.i, %._crit_edge.thread.i55.i ] ; 5 uses
  %i.do = icmp eq ptr %.sroa.4.0.i5074.i, %i.ai
  br i1 %i.do, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit59.thread.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i5074.i, i64 32
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !14 ; 3 uses
  %i.dr = icmp ult i32 %i.dn, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i5074.i, i64 36 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ds, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.i.i = load i32, ptr %i.h, align 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.i)
  %i.du = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i.i)
  %i.dv = icmp ugt i32 %i.dt, %i.du
  br label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.dq)
  %i.dw = icmp ult i32 %i.dq, 13
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i5074.i, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = select i1 %i.dw, ptr %i.ds, ptr %i.dy
  %i.ea = zext nneg i32 %.sroa.speculated.i.i.i.i.i.i.i to i64
  %i.eb = call i32 @memcmp(ptr noundef %i.dz, ptr noundef nonnull %i.h, i64 noundef %i.ea) #30 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ed = icmp eq i32 %i.eb, 0
  %i.ee = select i1 %i.ed, i1 %i.dr, i1 false
  br label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit59.thread.i
  %i.ef = phi i1 [ %i.ee, %bb.q ], [ true, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit59.thread.i ], [ %i.dv, %bb.o ], [ true, %bb.p ]
  %i.eg = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ef, ptr noundef nonnull %i.eg, ptr noundef nonnull %.sroa.4.0.i5074.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #25
  %i.ei = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1147
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !1147
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

bb.r:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.thread.i, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit.thread.i
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %5, align 8 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %4, align 8
  store ptr %.sroa.22.0.copyload.i.i.i, ptr %i.i, align 8
  %i.el = trunc i64 %.sroa.01.0.copyload.i.i.i to i32 ; 9 uses
  %i.em = load ptr, ptr %i.af, align 8, !tbaa !1344, !nonnull !130, !align !131
  %i.en = and i64 %.sroa.01.0.copyload.i.i.i, 4294967295 ; 3 uses
  %i.eo = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 noundef %i.en) ; 3 uses
  %i.ep = icmp ult i32 %i.el, 13                  ; 5 uses
  %i.eq = select i1 %i.ep, ptr %i.j, ptr %.sroa.22.0.copyload.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.eq, i64 %i.en, i1 false)
  br i1 %i.ep, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.4.i.i.i, i8 0, i64 12, i1 false)
  %i.er = icmp eq i32 %i.el, 0
  br i1 %i.er, label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.sroa.4.i.i.i, ptr nonnull align 4 %i.j, i64 %i.en, i1 false)
  %.sroa.0.i.sroa.4.i.i.i.4..sroa.0.i.sroa.4.i.i.i.4..sroa.0.i.sroa.4.i.i.i.4..sroa.0.i.sroa.4.i.i.4..sroa.0.i.sroa.4.i.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i.i.i = load ptr, ptr %.sroa.0.i.sroa.4.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4.i.8..fca.1.gep.sroa_idx, align 4
  %.sroa.0.i.sroa.4.i.i.i.0..sroa.0.i.sroa.4.i.i.i.0..sroa.0.i.sroa.4.i.i.i.0..sroa.0.i.sroa.4.i.i.0..sroa.0.i.sroa.4.i.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i.i.i = load i32, ptr %.sroa.0.i.sroa.4.i.i.i, align 4
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.es = load i32, ptr %i.eo, align 1
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.0.copyload.i11.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.s ], [ %.sroa.0.i.sroa.4.i.i.i.0..sroa.0.i.sroa.4.i.i.i.0..sroa.0.i.sroa.4.i.i.i.0..sroa.0.i.sroa.4.i.i.0..sroa.0.i.sroa.4.i.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i.i.i, %bb.t ], [ %i.es, %bb.u ] ; 7 uses
  %7 = phi ptr [ null, %bb.s ], [ %.sroa.0.i.sroa.4.i.i.i.4..sroa.0.i.sroa.4.i.i.i.4..sroa.0.i.sroa.4.i.i.i.4..sroa.0.i.sroa.4.i.i.4..sroa.0.i.sroa.4.i.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i.i.i, %bb.t ], [ %i.eo, %bb.u ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.et = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i32 %i.el, ptr %i.eu, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.et, i64 36 ; 4 uses
  store i32 %.0.copyload.i11.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store ptr %7, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store i64 0, ptr %i.ev, align 8, !tbaa !1339
  %.02636.i.i = load ptr, ptr %i.ag, align 8, !tbaa !1152 ; 2 uses
  %.not37.i.i = icmp eq ptr %.02636.i.i, null
  br i1 %.not37.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i.i.i)
  %i.ex = select i1 %i.ep, ptr %.sroa.4.0..sroa_idx.i, ptr %7
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.lr.ph.i20.i
  %.02638.i.i = phi ptr [ %.02636.i.i, %.lr.ph.i20.i ], [ %.02638.i.i.be, %.backedge.i.backedge ] ; 8 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02638.i.i, i64 36 ; 2 uses
  %.0.copyload.i.i.i.i.i.i21.i = load i32, ptr %i.ey, align 1 ; 3 uses
  %.not.i.i.i.i.i22.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i21.i, %.0.copyload.i11.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i22.i, label %bb.v, label %.split.i23.i

.split.i23.i:                                     ; preds = %.backedge.i
  %i.ez = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i21.i)
  %i.fa = icmp ugt i32 %i.ez, %i.ew
  br i1 %i.fa, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.i, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i

bb.v:                                             ; preds = %.backedge.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.02638.i.i, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !14 ; 3 uses
  %i.fd = icmp ugt i32 %i.fc, %i.el
  %.sroa.speculated.i.i.i.i.i27.i = tail call i32 @llvm.umin.i32(i32 %i.el, i32 %i.fc)
  %i.fe = icmp ult i32 %i.fc, 13
  %i.ff = getelementptr inbounds nuw i8, ptr %.02638.i.i, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = select i1 %i.fe, ptr %i.ey, ptr %i.fg
  %i.fi = zext i32 %.sroa.speculated.i.i.i.i.i27.i to i64
  %i.fj = tail call i32 @memcmp(ptr noundef %i.fh, ptr noundef %i.ex, i64 noundef %i.fi) #30 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  %i.fl = icmp eq i32 %i.fj, 0
  %i.fm = and i1 %i.fd, %i.fl
  %or.cond.i28.i = or i1 %i.fk, %i.fm
  br i1 %or.cond.i28.i, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.i, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i

_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.i: ; preds = %bb.v, %.split.i23.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.02638.i.i, i64 16
  %.026.i.i = load ptr, ptr %i.fn, align 8, !tbaa !1152 ; 2 uses
  %.not.i24.i = icmp eq ptr %.026.i.i, null
  br i1 %.not.i24.i, label %._crit_edge.thread.i.i, label %.backedge.i.backedge

_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i: ; preds = %bb.v, %.split.i23.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.02638.i.i, i64 24
  %.026.i83.i = load ptr, ptr %i.fo, align 8, !tbaa !1152 ; 2 uses
  %.not.i2484.i = icmp eq ptr %.026.i83.i, null
  br i1 %.not.i2484.i, label %._crit_edge.i.thread.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.i
  %.02638.i.i.be = phi ptr [ %.026.i.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.i ], [ %.026.i83.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i ]
  br label %.backedge.i, !llvm.loop !1343

._crit_edge.thread.i.i:                           ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.i, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i
  %.025.lcssa43.i.i = phi ptr [ %i.ai, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i ], [ %.02638.i.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.i ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1141
  %i.fr = icmp eq ptr %.025.lcssa43.i.i, %i.fq
  br i1 %i.fr, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread.i.i
  %i.fs = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.025.lcssa43.i.i) #30 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %.0.copyload.i11.i.i.i.i6.i.pre.i = load i32, ptr %.phi.trans.insert.i, align 1
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i, %bb.w
  %.0.copyload.i11.i.i.i.i6.i.i = phi i32 [ %.0.copyload.i11.i.i.i.i6.i.pre.i, %bb.w ], [ %.0.copyload.i.i.i.i.i.i21.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.025.lcssa42.i.i = phi ptr [ %.025.lcssa43.i.i, %bb.w ], [ %.02638.i.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.sroa.011.0.i.i = phi ptr [ %i.fs, %bb.w ], [ %.02638.i.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i ] ; 4 uses
  %.not.i.i.i.i7.i.i = icmp eq i32 %.0.copyload.i11.i.i.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i6.i.i
  br i1 %.not.i.i.i.i7.i.i, label %bb.x, label %.split32.i.i

.split32.i.i:                                     ; preds = %._crit_edge.i.thread.i
  %i.ft = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i.i.i)
  %i.fu = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i6.i.i)
  %i.fv = icmp ugt i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.y, label %bb.ad

bb.x:                                             ; preds = %._crit_edge.i.thread.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 36
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !14 ; 3 uses
  %i.fz = icmp ult i32 %i.fy, %i.el
  %.sroa.speculated.i.i.i.i9.i.i = tail call i32 @llvm.umin.i32(i32 %i.fy, i32 %i.el)
  %i.ga = select i1 %i.ep, ptr %.sroa.4.0..sroa_idx.i, ptr %7
  %i.gb = icmp ult i32 %i.fy, 13
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = select i1 %i.gb, ptr %i.fw, ptr %i.gd
  %i.gf = zext i32 %.sroa.speculated.i.i.i.i9.i.i to i64
  %i.gg = tail call i32 @memcmp(ptr noundef %i.ga, ptr noundef %i.ge, i64 noundef %i.gf) #30 ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  %i.gi = icmp eq i32 %i.gg, 0
  %i.gj = and i1 %i.fz, %i.gi
  %or.cond35.i.i = or i1 %i.gh, %i.gj
  br i1 %or.cond35.i.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x, %.split32.i.i, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.025.lcssa42.i.i, %bb.x ], [ %.025.lcssa42.i.i, %.split32.i.i ], [ %.025.lcssa43.i.i, %._crit_edge.thread.i.i ] ; 5 uses
  %i.gk = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ai
  br i1 %i.gk, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !14 ; 3 uses
  %i.gn = icmp ugt i32 %i.gm, %i.el
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.go, align 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.i.i)
  %i.gq = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i.i.i)
  %i.gr = icmp ugt i32 %i.gp, %i.gq
  br label %.thread.i.i

bb.ab:                                            ; preds = %bb.z
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.el, i32 %i.gm)
  %i.gs = icmp ult i32 %i.gm, 13
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = select i1 %i.gs, ptr %i.go, ptr %i.gu
  %i.gw = select i1 %i.ep, ptr %.sroa.4.0..sroa_idx.i, ptr %7
  %i.gx = zext i32 %.sroa.speculated.i.i.i.i.i.i.i.i to i64
  %i.gy = tail call i32 @memcmp(ptr noundef %i.gv, ptr noundef %i.gw, i64 noundef %i.gx) #30 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ha = icmp eq i32 %i.gy, 0
  %i.hb = select i1 %i.ha, i1 %i.gn, i1 false
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %i.hc = phi i1 [ %i.hb, %bb.ac ], [ true, %bb.y ], [ %i.gr, %bb.aa ], [ true, %bb.ab ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hc, ptr noundef nonnull %i.et, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #25
  %i.hd = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !1147
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !1147
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

bb.ad:                                            ; preds = %bb.x, %.split32.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.et) #29
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i: ; preds = %bb.ad, %.thread.i.i, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, %bb.m, %.split32.i48.i
  %.sroa.09.0.i.pn.i = phi ptr [ %.sroa.011.0.i44.i, %bb.m ], [ %i.eg, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i ], [ %.sroa.011.0.i.i, %bb.ad ], [ %.sroa.011.0.i44.i, %.split32.i48.i ], [ %i.et, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i: ; preds = %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i, %bb.j, %.split.i.i
  %.pn9.i.i = phi ptr [ %.sroa.09.0.i.pn.i, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i ], [ %.19.i.i.i, %bb.j ], [ %.19.i.i.i, %.split.i.i ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn9.i.i, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.hg = load i64, ptr %.0.i.i, align 8, !tbaa !47
  %i.hh = add i64 %i.hg, %i.ae
  store i64 %i.hh, ptr %.0.i.i, align 8, !tbaa !47
  %i.hi = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.hi, %i.ab
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i, %bb.e, %bb.b
  %i.hj = add nuw i64 %.0100.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hj, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm.exit, label %bb.b, !llvm.loop !1345

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_22HistogramStringFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESH_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_22HistogramStringFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESH_mm:bb.a
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.au:                                            ; preds = %bb.as
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ei, %bb.at ], [ %i.es, %bb.au ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.et, label %bb.av, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.aw:                                            ; preds = %bb.ai, %._crit_edge109
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.k, %bb.m, %bb.v, %bb.x, %bb.aw, %bb.ag, %bb.ad, %bb.y, %bb.w, %bb.u, %bb.l, %bb.j
  %.pn78.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.an, %bb.k ], [ %i.ao, %bb.l ], [ %i.ap, %bb.m ], [ %i.cr, %bb.ad ], [ %i.bs, %bb.u ], [ %i.bt, %bb.v ], [ %i.bu, %bb.w ], [ %i.bv, %bb.x ], [ %i.bw, %bb.y ], [ %i.eu, %bb.aw ], [ %i.dk, %bb.ag ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn78.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.e, %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1326
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !1323 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %.val.i) #25
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i) #29
  br label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.e = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1348

_ZN6duckdb17AggregateExecutor7DestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100
  %i.d = icmp eq i8 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.sroa.4.i = alloca [12 x i8], align 4 ; 6 uses
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.506", align 8    ; 7 uses
  %5 = alloca %"struct.std::pair.502", align 8    ; 8 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = call ptr @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %.sroa.2.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx3, align 8
  %i.e = load i32, ptr %5, align 8, !tbaa !14
  %i.f = icmp ult i32 %i.e, 13
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE16_M_insert_uniqueIS4_EES2_ISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.01.0.copyload.i = load i64, ptr %5, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.22.0.copyload.i, ptr %i.h, align 8
  %i.i = trunc i64 %.sroa.01.0.copyload.i to i32  ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1344, !nonnull !130, !align !131
  %i.k = and i64 %.sroa.01.0.copyload.i, 4294967295 ; 3 uses
  %i.l = call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k) ; 3 uses
  %i.m = icmp ult i32 %i.i, 13                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.o = select i1 %i.m, ptr %i.n, ptr %.sroa.22.0.copyload.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.k, i1 false)
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.4.i, i8 0, i64 12, i1 false)
  %i.p = icmp eq i32 %i.i, 0
  br i1 %i.p, label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.sroa.4.i, ptr nonnull align 4 %i.n, i64 %i.k, i1 false)
  %.sroa.0.i.sroa.4.i.4.i.4.i.4.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.4.i, i64 4
  %.sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i = load ptr, ptr %.sroa.0.i.sroa.4.i.4.i.4.i.4.i.8..fca.1.gep.sroa_idx, align 4
  %.sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i = load i32, ptr %.sroa.0.i.sroa.4.i, align 4
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.l, align 1
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i, %bb.f ], [ %i.q, %bb.g ]
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i = phi ptr [ null, %bb.e ], [ %.sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i, %bb.f ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i32 %i.i, ptr %4, align 8
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.i, ptr %.sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !1349, !alias.scope !1351
  %i.s = call { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_emplace_uniqueIJS2_IS1_mEEEES2_ISt17_Rb_tree_iteratorIS4_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit: ; preds = %bb.c, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i
  %.pn.i = phi { ptr, i8 } [ %i.g, %bb.c ], [ %i.s, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract = extractvalue { ptr, i8 } %.pn.i, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit
  %.pn9 = phi ptr [ %.fca.0.extract, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit ], [ %i.c, %bb.a ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn9, i64 48
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.d, align 4 ; 3 uses
  %i.e = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 2 uses
  %i.f = load i32, ptr %1, align 8                ; 5 uses
  %i.g = icmp ult i32 %i.f, 13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %i.g, ptr %i.d, ptr %i.i       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.014.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 6 uses
  %.0813.i = phi ptr [ %i.c, %.lr.ph.i ], [ %.19.i, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %.014.i, i64 36 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i = load i32, ptr %i.k, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i)
  %i.m = icmp ugt i32 %i.e, %i.l
  br i1 %i.m, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.014.i, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !14   ; 3 uses
  %i.p = icmp ult i32 %i.o, %i.f
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.f)
  %i.q = icmp ult i32 %i.o, 13
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.q, ptr %i.k, ptr %i.s
  %i.u = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %i.v = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.t, i64 noundef %i.u) #30 ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = icmp eq i32 %i.v, 0
  %i.y = and i1 %i.p, %i.x
  %or.cond.i = or i1 %i.w, %i.y
  br i1 %or.cond.i, label %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i, label %bb.d

_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i: ; preds = %bb.c, %.split.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i, %bb.c, %.split.i
  %.sink.i = phi i64 [ 24, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i ], [ 16, %bb.c ], [ 16, %.split.i ]
  %.19.i = phi ptr [ %.0813.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i ], [ %.014.i, %bb.c ], [ %.014.i, %.split.i ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i, i64 %.sink.i
  %.1.i = load ptr, ptr %i.z, align 8, !tbaa !1152 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit, label %bb.b, !llvm.loop !1342

_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit: ; preds = %bb.d
  %i.aa = icmp eq ptr %.19.i, %i.c
  br i1 %i.aa, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i, i64 36 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.ab, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.ad = icmp ugt i32 %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !14 ; 3 uses
  %i.ag = icmp ult i32 %i.f, %i.af
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.af)
  %i.ah = icmp ult i32 %i.af, 13
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %i.ah, ptr %i.ab, ptr %i.aj
  %i.al = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.am = tail call i32 @memcmp(ptr noundef %i.ak, ptr noundef %i.j, i64 noundef %i.al) #30 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = and i1 %i.ag, %i.ao
  %or.cond = or i1 %i.an, %i.ap
  br i1 %or.cond, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  br label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.thread

_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.thread: ; preds = %bb.f, %bb.a, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit, %.split, %bb.g
  %.sroa.0.0 = phi ptr [ %.19.i, %bb.g ], [ %i.c, %.split ], [ %i.c, %bb.a ], [ %i.c, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit ], [ %i.c, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE16_M_insert_uniqueIS4_EES2_ISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.i = icmp ult i32 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.j, align 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i = load i32, ptr %i.k, align 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i)
  %i.n = icmp ugt i32 %i.l, %i.m
  br label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.g)
  %i.o = icmp ult i32 %i.g, 13
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %i.j, ptr %i.q
  %i.s = icmp ult i32 %i.h, 13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %i.k, ptr %i.u
  %i.w = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %i.x = tail call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.v, i64 noundef %i.w) #30 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = select i1 %i.z, i1 %i.i, i1 false
  br label %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit

_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.ab = phi i1 [ %i.aa, %bb.f ], [ true, %bb.b ], [ %i.n, %bb.d ], [ true, %bb.e ]
  %i.ac = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1147
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1147
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit
  %.sroa.09.0 = phi ptr [ %i.ac, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit ], [ %i.b, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_22HistogramStringFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESH_mm:bb.a
bb.as:                                            ; preds = %bb.aq
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.au:                                            ; preds = %bb.as
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ef, %bb.at ], [ %i.ep, %bb.au ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.eq, label %bb.av, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.aw:                                            ; preds = %bb.ai, %._crit_edge110
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.k, %bb.m, %bb.v, %bb.x, %bb.aw, %bb.ag, %bb.ad, %bb.y, %bb.w, %bb.u, %bb.l, %bb.j
  %.pn78.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.an, %bb.k ], [ %i.ao, %bb.l ], [ %i.ap, %bb.m ], [ %i.cr, %bb.ad ], [ %i.bs, %bb.u ], [ %i.bt, %bb.v ], [ %i.bu, %bb.w ], [ %i.bv, %bb.x ], [ %i.bw, %bb.y ], [ %i.er, %bb.aw ], [ %i.dh, %bb.ag ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn78.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.e, %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1590
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !1587 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %.val.i) #25
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i) #29
  br label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.e = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1611

_ZN6duckdb17AggregateExecutor7DestroyINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7DestroyINS_17HistogramAggStateIS5_SD_EEEEvRT_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100
  %i.d = icmp eq i8 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.sroa.4.i = alloca [12 x i8], align 4 ; 6 uses
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.506", align 8    ; 7 uses
  %5 = alloca %"struct.std::pair.502", align 8    ; 8 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = call ptr @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %.sroa.2.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx3, align 8
  %i.d = load i32, ptr %5, align 8, !tbaa !14
  %i.e = icmp ult i32 %i.d, 13
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS4_EEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.01.0.copyload.i = load i64, ptr %5, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.22.0.copyload.i, ptr %i.g, align 8
  %i.h = trunc i64 %.sroa.01.0.copyload.i to i32  ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !1604, !nonnull !130, !align !131
  %i.j = and i64 %.sroa.01.0.copyload.i, 4294967295 ; 3 uses
  %i.k = call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.j) ; 3 uses
  %i.l = icmp ult i32 %i.h, 13                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.n = select i1 %i.l, ptr %i.m, ptr %.sroa.22.0.copyload.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %i.j, i1 false)
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.4.i, i8 0, i64 12, i1 false)
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.sroa.4.i, ptr nonnull align 4 %i.m, i64 %i.j, i1 false)
  %.sroa.0.i.sroa.4.i.4.i.4.i.4.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.4.i, i64 4
  %.sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i = load ptr, ptr %.sroa.0.i.sroa.4.i.4.i.4.i.4.i.8..fca.1.gep.sroa_idx, align 4
  %.sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i = load i32, ptr %.sroa.0.i.sroa.4.i, align 4
  br label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.k, align 1
  br label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i

_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.i.0..sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.pre.i, %bb.f ], [ %i.p, %bb.g ]
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i = phi ptr [ null, %bb.e ], [ %.sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.i.4..sroa.0.i.sroa.4.4..sroa.0.i.sroa.4.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i, %bb.f ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i32 %i.h, ptr %4, align 8
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.0.i.sroa.4.0..sroa.0.i.sroa.4.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i12.i, ptr %.sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.q, align 8, !tbaa !1349, !alias.scope !1612
  %i.r = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_mEEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit

_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit: ; preds = %bb.c, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i
  %.pn.i = phi { ptr, i8 } [ %i.f, %bb.c ], [ %i.r, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract = extractvalue { ptr, i8 } %.pn.i, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit
  %.pn9 = phi ptr [ %.fca.0.extract, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit ], [ %i.c, %bb.a ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn9, i64 24
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1599
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.015 = load ptr, ptr %i.c, align 8, !tbaa !1384 ; 3 uses
  %.not16 = icmp eq ptr %.sroa.06.015, null
  br i1 %.not16, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8
  %.0.copyload.i.i.i.i.i.i.fr = freeze i64 %.0.copyload.i.i.i.i.i.i ; 4 uses
  %i.e = trunc i64 %.0.copyload.i.i.i.i.i.i.fr to i32
  %.0.copyload.i13.i.i.i.i.i = load i64, ptr %i.d, align 8 ; 3 uses
  %i.f = inttoptr i64 %.0.copyload.i13.i.i.i.i.i to ptr
  %i.g = icmp ult i32 %i.e, 13
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.fr, 4294967295
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us
  %.sroa.06.017.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us ], [ %.sroa.06.015, %.lr.ph ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.017.us, i64 8
  %.0.copyload.i12.i.i.i.i.i.us = load i64, ptr %i.i, align 1
  %.not.i.i.i.i.i.us = icmp eq i64 %.0.copyload.i.i.i.i.i.i.fr, %.0.copyload.i12.i.i.i.i.i.us
  br i1 %.not.i.i.i.i.i.us, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.017.us, i64 16
  %.0.copyload.i14.i.i.i.i.i.us = load i64, ptr %i.j, align 1
  %i.k = icmp eq i64 %.0.copyload.i13.i.i.i.i.i, %.0.copyload.i14.i.i.i.i.i.us
  br i1 %i.k, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us: ; preds = %bb.c, %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.017.us, align 8, !tbaa !1384 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.split.us, !llvm.loop !1600

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit
  %.sroa.06.017 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit ], [ %.sroa.06.015, %.lr.ph ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.017, i64 8
  %.0.copyload.i12.i.i.i.i.i = load i64, ptr %i.l, align 1
  %.not.i.i.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.fr, %.0.copyload.i12.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.017, i64 16
  %.0.copyload.i14.i.i.i.i.i = load i64, ptr %i.m, align 1 ; 2 uses
  %i.n = icmp eq i64 %.0.copyload.i13.i.i.i.i.i, %.0.copyload.i14.i.i.i.i.i
  br i1 %i.n, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = inttoptr i64 %.0.copyload.i14.i.i.i.i.i to ptr
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.o, i64 %i.h)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit

_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit: ; preds = %bb.e, %.lr.ph.split
  %.sroa.06.0 = load ptr, ptr %.sroa.06.017, align 8, !tbaa !1384 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.split, !llvm.loop !1600

bb.f:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.q = tail call noundef i64 @_ZN6duckdb4HashINS_8string_tEEEmT_(i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1594 ; 3 uses
  %i.t = urem i64 %i.q, %i.s                      ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !1592
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1384 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %.0.copyload.i.i.i.i.i.i.i.fr.i.i = freeze i64 %.0.copyload.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.y = trunc i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i to i32
  %.0.copyload.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.z = inttoptr i64 %.0.copyload.i13.i.i.i.i.i.i.i.i to ptr
  %i.aa = icmp ult i32 %i.y, 13
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i, 4294967295
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !1601 ; 2 uses
  br i1 %i.aa, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.g, %bb.k
  %i.ac = phi i64 [ %i.aj, %bb.k ], [ %.pre26.i.i, %bb.g ]
  %.0.us.i.i = phi ptr [ %i.ah, %bb.k ], [ %i.x, %bb.g ] ; 4 uses
  %i.ad = icmp eq i64 %i.q, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.split.us.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %.0.copyload.i12.i.i.i.i.i.i.us.i.i = load i64, ptr %i.ae, align 1
  %.not.i.i.i.i.i.i.us.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i, %.0.copyload.i12.i.i.i.i.i.i.us.i.i
  br i1 %.not.i.i.i.i.i.i.us.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %.0.copyload.i14.i.i.i.i.i.i.us.i.i = load i64, ptr %i.af, align 1
  %i.ag = icmp eq i64 %.0.copyload.i13.i.i.i.i.i.i.i.i, %.0.copyload.i14.i.i.i.i.i.i.us.i.i
  br i1 %i.ag, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.split.us.i.i
  %i.ah = load ptr, ptr %.0.us.i.i, align 8, !tbaa !1384 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1601 ; 2 uses
  %i.ak = urem i64 %i.aj, %i.s
  %.not19.us.i.i = icmp eq i64 %i.ak, %i.t
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, !llvm.loop !1603

.split.i.i:                                       ; preds = %bb.g, %bb.p
  %i.al = phi i64 [ %i.au, %bb.p ], [ %.pre26.i.i, %bb.g ]
  %.0.i.i = phi ptr [ %i.as, %bb.p ], [ %i.x, %bb.g ] ; 5 uses
  %i.am = icmp eq i64 %i.q, %i.al
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.split.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.0.copyload.i12.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i, %.0.copyload.i12.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %.0.copyload.i14.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 1 ; 2 uses
  %i.ap = icmp eq i64 %.0.copyload.i13.i.i.i.i.i.i.i.i, %.0.copyload.i14.i.i.i.i.i.i.i.i
  br i1 %i.ap, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = inttoptr i64 %.0.copyload.i14.i.i.i.i.i.i.i.i to ptr
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.z, ptr %i.aq, i64 %i.ab)
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %.split.i.i
  %i.as = load ptr, ptr %.0.i.i, align 8, !tbaa !1384 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.as, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1601 ; 2 uses
  %i.av = urem i64 %i.au, %i.s
  %.not19.i.i = icmp eq i64 %i.av, %i.t
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, !llvm.loop !1603

_ZNKSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit, %bb.d, %bb.e, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us, %bb.c, %bb.b, %bb.f
  %.sroa.06.1 = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.k ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us ], [ %.sroa.06.017, %bb.e ], [ %.sroa.06.017.us, %bb.c ], [ %.sroa.06.017, %bb.d ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit ], [ %.0.us.i.i, %bb.i ], [ null, %bb.j ], [ %.0.i.i, %bb.m ], [ null, %bb.p ], [ null, %bb.o ], [ %.0.i.i, %bb.n ]
  ret ptr %.sroa.06.1
}

declare noundef i64 @_ZN6duckdb4HashINS_8string_tEEEmT_(i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS4_EEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 7 uses
  store ptr null, ptr %i.a, align 8, !tbaa !1384
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_2
