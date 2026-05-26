inline.NumInlined: 1249
inline.NumDeleted: 582
begin_hunk_0_@_ZN10duckdb_re216CharClassBuilder8AddRangeEii:bb.a
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %bb.i, %.lr.ph.i.i.i37
  %.012.i.i.i38 = phi ptr [ %.1.i.i.i43, %.lr.ph.i.i.i37 ], [ %i.t, %bb.i ] ; 3 uses
  %.0811.i.i.i39 = phi ptr [ %.19.i.i.i40, %.lr.ph.i.i.i37 ], [ %i.u, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i38, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !137
  %i.ai = icmp slt i32 %i.ah, %i.af               ; 2 uses
  %.19.i.i.i40 = select i1 %i.ai, ptr %.0811.i.i.i39, ptr %.012.i.i.i38 ; 6 uses
  %.1.in.v.i.i.i41 = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i42 = getelementptr inbounds nuw i8, ptr %.012.i.i.i38, i64 %.1.in.v.i.i.i41
  %.1.i.i.i43 = load ptr, ptr %.1.in.i.i.i42, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %.1.i.i.i43, null
  br i1 %.not.i.i.i44, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45, label %.lr.ph.i.i.i37, !llvm.loop !139

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45: ; preds = %.lr.ph.i.i.i37
  %i.aj = icmp eq ptr %.19.i.i.i40, %i.u
  br i1 %i.aj, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i40, i64 32
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !140
  %.not150.not = icmp sgt i32 %1, %i.al
  br i1 %.not150.not, label %bb.j, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread

bb.j:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i40, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !140 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i40, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !137 ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %2)
  %i.aq = xor i32 %i.ap, -1
  %.neg = add i32 %i.an, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !128
  %i.at = add i32 %.neg, %i.as
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !128
  %i.au = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i40, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #26
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !49
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !49
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread: ; preds = %bb.g, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48, %bb.j, %.critedge
  %.2 = phi i32 [ %2, %.critedge ], [ %spec.select, %bb.j ], [ %2, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48 ], [ %2, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45 ], [ %2, %bb.g ] ; 7 uses
  %.1141 = phi i32 [ %1, %.critedge ], [ %i.an, %bb.j ], [ %1, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48 ], [ %1, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45 ], [ %1, %bb.g ] ; 5 uses
  %i.ay = icmp slt i32 %.2, 1114111
  br i1 %i.ay, label %bb.k, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread

bb.k:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread
  %i.az = add nsw i32 %.2, 1
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !34  ; 2 uses
  %.not10.i.i.i49 = icmp eq ptr %i.ba, null
  br i1 %.not10.i.i.i49, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread, label %.lr.ph.i.i.i50

.lr.ph.i.i.i50:                                   ; preds = %bb.k, %.lr.ph.i.i.i50
  %.012.i.i.i51 = phi ptr [ %.1.i.i.i56, %.lr.ph.i.i.i50 ], [ %i.ba, %bb.k ] ; 3 uses
  %.0811.i.i.i52 = phi ptr [ %.19.i.i.i53, %.lr.ph.i.i.i50 ], [ %i.u, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i51, i64 36
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !137
  %.not152 = icmp sgt i32 %i.bc, %.2              ; 2 uses
  %.19.i.i.i53 = select i1 %.not152, ptr %.012.i.i.i51, ptr %.0811.i.i.i52 ; 6 uses
  %.1.in.v.i.i.i54 = select i1 %.not152, i64 16, i64 24
  %.1.in.i.i.i55 = getelementptr inbounds nuw i8, ptr %.012.i.i.i51, i64 %.1.in.v.i.i.i54
  %.1.i.i.i56 = load ptr, ptr %.1.in.i.i.i55, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %.1.i.i.i56, null
  br i1 %.not.i.i.i57, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i58, label %.lr.ph.i.i.i50, !llvm.loop !139

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i58: ; preds = %.lr.ph.i.i.i50
  %i.bd = icmp eq ptr %.19.i.i.i53, %i.u
  br i1 %i.bd, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i58
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i53, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !140
  %i.bg = icmp slt i32 %i.az, %i.bf
  br i1 %i.bg, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread, label %bb.l

bb.l:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i53, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i53, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !137 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !140
  %i.bl = xor i32 %i.bj, -1
  %.neg30 = add i32 %i.bk, %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !128
  %i.bo = add i32 %.neg30, %i.bn
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !128
  %i.bp = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.19.i.i.i53, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #26
  tail call void @_ZdlPv(ptr noundef nonnull %i.bp) #27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !49
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !49
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i58, %bb.k, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61, %bb.l, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread
  %.4 = phi i32 [ %.2, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread ], [ %i.bj, %bb.l ], [ %.2, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61 ], [ %.2, %bb.k ], [ %.2, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i58 ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !34  ; 2 uses
  %.not10.i.i.i62181 = icmp eq ptr %i.bv, null
  br i1 %.not10.i.i.i62181, label %.thread171, label %.lr.ph.i.i.i63.preheader

.lr.ph.i.i.i63.preheader:                         ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread, %bb.m
  %i.bw = phi ptr [ %i.cr, %bb.m ], [ %i.bv, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread ] ; 2 uses
  br label %.lr.ph.i.i.i63

.thread171:                                       ; preds = %bb.m, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread
  %i.bx = load i32, ptr %i.bt, align 8, !tbaa !128
  %reass.sub172 = sub i32 %.4, %.1141
  %i.by = add i32 %reass.sub172, 1
  %i.bz = add nsw i32 %i.by, %i.bx
  store i32 %i.bz, ptr %i.bt, align 8, !tbaa !128
  br label %._crit_edge.thread.i.i.i

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader, %.lr.ph.i.i.i63
  %.012.i.i.i64 = phi ptr [ %.1.i.i.i69, %.lr.ph.i.i.i63 ], [ %i.bw, %.lr.ph.i.i.i63.preheader ] ; 3 uses
  %.0811.i.i.i65 = phi ptr [ %.19.i.i.i66, %.lr.ph.i.i.i63 ], [ %i.u, %.lr.ph.i.i.i63.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i64, i64 36
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !137
  %i.cc = icmp slt i32 %i.cb, %.1141              ; 2 uses
  %.19.i.i.i66 = select i1 %i.cc, ptr %.0811.i.i.i65, ptr %.012.i.i.i64 ; 6 uses
  %.1.in.v.i.i.i67 = select i1 %i.cc, i64 24, i64 16
  %.1.in.i.i.i68 = getelementptr inbounds nuw i8, ptr %.012.i.i.i64, i64 %.1.in.v.i.i.i67
  %.1.i.i.i69 = load ptr, ptr %.1.in.i.i.i68, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %.1.i.i.i69, null
  br i1 %.not.i.i.i70, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71, label %.lr.ph.i.i.i63, !llvm.loop !139

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71: ; preds = %.lr.ph.i.i.i63
  %i.cd = icmp eq ptr %.19.i.i.i66, %i.u
  br i1 %i.cd, label %.lr.ph.i.i.i75.preheader, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i66, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !140
  %i.cg = icmp slt i32 %.4, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i75.preheader, label %bb.m

bb.m:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i66, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i66, i64 36
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !137
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !140
  %i.cl = xor i32 %i.cj, -1
  %.neg31 = add i32 %i.ck, %i.cl
  %i.cm = load i32, ptr %i.bt, align 8, !tbaa !128
  %i.cn = add i32 %.neg31, %i.cm
  store i32 %i.cn, ptr %i.bt, align 8, !tbaa !128
  %i.co = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.19.i.i.i66, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #26
  tail call void @_ZdlPv(ptr noundef nonnull %i.co) #27
  %i.cp = load i64, ptr %i.bu, align 8, !tbaa !49
  %i.cq = add i64 %i.cp, -1
  store i64 %i.cq, ptr %i.bu, align 8, !tbaa !49
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !34  ; 2 uses
  %.not10.i.i.i62 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i62, label %.thread171, label %.lr.ph.i.i.i63.preheader

.lr.ph.i.i.i75.preheader:                         ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74
  %i.cs = load i32, ptr %i.bt, align 8, !tbaa !128
  %reass.sub = sub i32 %.4, %.1141
  %i.ct = add i32 %reass.sub, 1
  %i.cu = add nsw i32 %i.ct, %i.cs
  store i32 %i.cu, ptr %i.bt, align 8, !tbaa !128
  br label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %.lr.ph.i.i.i75.preheader, %.lr.ph.i.i.i75
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i75 ], [ %i.bw, %.lr.ph.i.i.i75.preheader ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !140
  %i.cx = icmp slt i32 %.4, %i.cw                 ; 2 uses
  %.in.v.i.i.i = select i1 %i.cx, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i76, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i75, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i75
  br i1 %i.cx, label %._crit_edge.thread.i.i.i, label %bb.o

._crit_edge.thread.i.i.i:                         ; preds = %.thread171, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.u, %.thread171 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !126
  %i.da = icmp eq ptr %.019.lcssa29.i.i.i, %i.cz
  br i1 %i.da, label %select.unfold.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.db = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.db, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !137
  %i.de = icmp slt i32 %i.dd, %.1141
  br i1 %i.de, label %select.unfold.i.i, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

select.unfold.i.i:                                ; preds = %bb.o, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.o ] ; 3 uses
  %i.df = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.u
  br i1 %i.df, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !140
  %i.di = icmp slt i32 %.4, %i.dh
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i: ; preds = %bb.p, %select.unfold.i.i
  %i.dj = phi i1 [ %i.di, %bb.p ], [ true, %select.unfold.i.i ]
  %i.dk = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %.sroa.5.0.insert.ext = zext i32 %.4 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.1141 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.dl, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #26
  %i.dm = load i64, ptr %i.bu, align 8, !tbaa !49
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.bu, align 8, !tbaa !49
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i, %bb.o, %bb.h, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.h ], [ true, %bb.o ], [ true, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re216CharClassBuilder12AddCharClassEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !137
  %i.h = tail call noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.e, i32 noundef %i.g) ; 0 uses
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.08) #31 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8ContainsEi(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %i.f = icmp slt i32 %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !139

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !140
  %i.j = icmp sge i32 %1, %i.i
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi i1 [ false, %bb.a ], [ false, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder10FoldsASCIIEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !135
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !136
  %i.d = xor i32 %i.c, %i.a
  %i.e = and i32 %i.d, 67108863
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re216CharClassBuilder4CopyEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.e, align 8, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !128
  store i32 0, ptr %i.a, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not14 = icmp eq ptr %i.j, %i.k
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit, %bb.a
  %i.l = load <2 x i32>, ptr %0, align 8, !tbaa !3
  store <2 x i32> %i.l, ptr %i.a, align 8, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !128
  store i32 %i.n, ptr %i.g, align 8, !tbaa !128
  ret ptr %i.a

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit
  %.sroa.010.015 = phi ptr [ %i.al, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit ], [ %i.j, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 32
  %i.p = load i64, ptr %i.o, align 4              ; 3 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = lshr i64 %i.p, 32
  %i.s = trunc nuw i64 %i.r to i32                ; 2 uses
  %.02022.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.lr.ph ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !140
  %i.v = icmp sgt i32 %i.u, %i.s                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.v, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.v, label %._crit_edge.thread.i.i.i, label %bb.c

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.x = icmp eq ptr %.019.lcssa29.i.i.i, %i.w
  br i1 %i.x, label %select.unfold.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.b ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.y, %bb.b ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !137
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %select.unfold.i.i, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

select.unfold.i.i:                                ; preds = %bb.c, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.c ] ; 3 uses
  %i.ac = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.b
  br i1 %i.ac, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %select.unfold.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !140
  %i.af = icmp sgt i32 %i.ae, %i.s
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i: ; preds = %bb.d, %select.unfold.i.i
  %i.ag = phi i1 [ %i.af, %bb.d ], [ true, %select.unfold.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.p, ptr %i.ai, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #26
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !49
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !49
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit: ; preds = %bb.c, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.015) #31 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !143
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re216CharClassBuilder11RemoveAboveEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1114110
  br i1 %i.a, label %.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 122
  br i1 %i.b, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %1, 97
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw nsw i32 122, %1
  %i.e = lshr i32 67108863, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !136
  %i.h = and i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !136
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !136
  %i.j = icmp slt i32 %1, 90
  br i1 %i.j, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.k = icmp slt i32 %1, 65
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %0, align 8, !tbaa !135
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i32 90, %1
  %i.m = lshr i32 67108863, %i.l
  %i.n = load i32, ptr %0, align 8, !tbaa !135
  %i.o = and i32 %i.n, %i.m
  store i32 %i.o, ptr %0, align 8, !tbaa !135
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.g, %bb.h, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %.not10.i.i.i32 = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i32, label %.thread29, label %.lr.ph.i.i.i.preheader.lr.ph

.lr.ph.i.i.i.preheader.lr.ph:                     ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.insert.ext = zext i32 %1 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %i.v = add nsw i32 %1, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader.lr.ph
  %.012.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.012.i.i.i.be, %.lr.ph.i.i.i.backedge ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.0811.i.i.i.be, %.lr.ph.i.i.i.backedge ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !137
  %.not31 = icmp sgt i32 %i.x, %1                 ; 2 uses
  %.19.i.i.i = select i1 %.not31, ptr %.012.i.i.i, ptr %.0811.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %.not31, i64 16, i64 24
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %.lr.ph.i.i.i, %bb.n
  %.012.i.i.i.be = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.be, %bb.n ]
  %.0811.i.i.i.be = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.n ]
  br label %.lr.ph.i.i.i, !llvm.loop !139

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = icmp eq ptr %.19.i.i.i, %i.q
  br i1 %i.y, label %.thread29, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !140
  %i.ab = icmp sgt i32 %i.aa, 1114111
  br i1 %i.ab, label %.thread29, label %bb.i

bb.i:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit
  %i.ac = load i64, ptr %i.z, align 4             ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ac to i32 ; 4 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.ac, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %i.ad = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #26
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #27
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !49
  %i.af = add i64 %i.ae, -1
  store i64 %i.af, ptr %i.s, align 8, !tbaa !49
  %i.ag = xor i32 %.sroa.8.0.extract.trunc, -1
  %.neg = add i32 %i.ag, %.sroa.0.0.extract.trunc
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !128
  %i.ai = add i32 %.neg, %i.ah                    ; 2 uses
  store i32 %i.ai, ptr %i.t, align 8, !tbaa !128
  %.not = icmp slt i32 %1, %.sroa.0.0.extract.trunc
  %.pre34 = load ptr, ptr %i.p, align 8, !tbaa !43 ; 4 uses
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not23.i.i.i = icmp eq ptr %.pre34, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.j, %.lr.ph.i.i.i14
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i14 ], [ %.pre34, %bb.j ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !140
  %i.al = icmp slt i32 %1, %i.ak                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.al, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i15, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i14, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i14
  br i1 %i.al, label %._crit_edge.thread.i.i.i, label %bb.l

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.j
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.q, %bb.j ] ; 4 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !126
  %i.an = icmp eq ptr %.019.lcssa29.i.i.i, %i.am
  br i1 %i.an, label %select.unfold.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.k ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.ao, %bb.k ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !137
  %i.ar = icmp slt i32 %i.aq, %.sroa.0.0.extract.trunc
  br i1 %i.ar, label %select.unfold.i.i, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit

select.unfold.i.i:                                ; preds = %bb.l, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.l ] ; 3 uses
  %i.as = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.q
  br i1 %i.as, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %select.unfold.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !140
  %i.av = icmp slt i32 %1, %i.au
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.m, %select.unfold.i.i
  %i.aw = phi i1 [ %i.av, %bb.m ], [ true, %select.unfold.i.i ]
  %i.ax = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.0.0.insert.ext = and i64 %i.ac, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.8.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %i.ay, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #26
  %i.az = load i64, ptr %i.s, align 8, !tbaa !49
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.s, align 8, !tbaa !49
  %.pre = load i32, ptr %i.t, align 8, !tbaa !128
  %.pre33.pre = load ptr, ptr %i.p, align 8, !tbaa !34
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit: ; preds = %bb.l, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %.pre33 = phi ptr [ %.pre34, %bb.l ], [ %.pre33.pre, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i ]
  %i.bb = phi i32 [ %i.ai, %bb.l ], [ %.pre, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i ]
  %i.bc = sub i32 %i.v, %.sroa.0.0.extract.trunc
  %i.bd = add nsw i32 %i.bc, %i.bb
  store i32 %i.bd, ptr %i.t, align 8, !tbaa !128
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit
  %i.be = phi ptr [ %.pre34, %bb.i ], [ %.pre33, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit ] ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not10.i.i.i, label %.thread29, label %.lr.ph.i.i.i.backedge

.thread29:                                        ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit, %bb.n, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re216CharClassBuilder6NegateEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i
  store i64 4785070309113856, ptr %i.g, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread
  %i.r = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store i64 4785070309113856, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i
  %i.t = phi ptr [ %i.o, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.k, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.u = phi ptr [ %i.n, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.j, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.sroa.098.4124 = phi ptr [ null, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.g, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.sroa.31.1120 = phi ptr [ null, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.h, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !140
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !137
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.u) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.090.0 = phi ptr [ %i.ab, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.012 = phi i32 [ %i.aa, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  %.not136148 = icmp eq ptr %.sroa.090.0, %i.t
  br i1 %.not136148, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36
  %.113153 = phi i32 [ %i.bk, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.012, %bb.f ] ; 2 uses
  %.sroa.098.0152 = phi ptr [ %.sroa.098.6, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.098.4124, %bb.f ] ; 10 uses
  %.sroa.16.0151 = phi ptr [ %.sroa.16.4, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.098.4124, %bb.f ] ; 6 uses
  %.sroa.31.0150 = phi ptr [ %.sroa.31.2, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.31.1120, %bb.f ] ; 2 uses
  %.sroa.090.1149 = phi ptr [ %i.bl, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.090.0, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.090.1149, i64 32
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !140
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  %.not.i.i21 = icmp eq ptr %.sroa.16.0151, %.sroa.31.0150
  br i1 %.not.i.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %.sroa.671.0.insert.ext = zext i32 %i.ae to i64
  %.sroa.671.0.insert.shift = shl nuw i64 %.sroa.671.0.insert.ext, 32
  %.sroa.066.0.insert.ext = zext i32 %.113153 to i64
  %.sroa.066.0.insert.insert = or disjoint i64 %.sroa.671.0.insert.shift, %.sroa.066.0.insert.ext
  store i64 %.sroa.066.0.insert.insert, ptr %.sroa.16.0151, align 4
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36

bb.h:                                             ; preds = %.lr.ph
  %i.af = ptrtoint ptr %.sroa.16.0151 to i64      ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.098.0152 to i64     ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22: ; preds = %bb.h
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i23 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i23, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i24 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i24)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30
          to label %.noexc35 unwind label %.loopexit ; 8 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %.sroa.671.0.insert.ext73 = zext i32 %i.ae to i64
  %.sroa.671.0.insert.shift74 = shl nuw i64 %.sroa.671.0.insert.ext73, 32
  %.sroa.066.0.insert.ext68 = zext i32 %.113153 to i64
  %.sroa.066.0.insert.insert70 = or disjoint i64 %.sroa.671.0.insert.shift74, %.sroa.066.0.insert.ext68
  store i64 %.sroa.066.0.insert.insert70, ptr %i.aq, align 4
  %.not10.i.i.i.i.i.i.i25 = icmp eq ptr %.sroa.098.0152, %.sroa.16.0151
  br i1 %.not10.i.i.i.i.i.i.i25, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30, label %.lr.ph.i.i.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i.i.i26.preheader:                 ; preds = %.noexc35
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.af, -8
  %i.at = sub i64 %i.as, %i.ag                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  %i.aw = sub i64 %i.ar, %i.ag
  %diff.check = icmp ult i64 %i.aw, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i26.preheader213, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.098.0152, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.sroa.098.0152, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.bb = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep189, align 4, !alias.scope !147, !noalias !144
  %wide.load190 = load <2 x i64>, ptr %i.bb, align 4, !alias.scope !147, !noalias !144
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re216CharClassBuilder6NegateEv:bb.a
  %i.bp = ptrtoint ptr %.sroa.098.0.lcssa to i64  ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.n, label %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc50 unwind label %bb.p

.noexc50:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38: ; preds = %bb.m
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i39, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 2 uses
  %.not.i.i.i.i40 = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i40)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #30
          to label %.noexc51 unwind label %bb.p   ; 8 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  %.sroa.0.0.insert.ext58 = zext i32 %.113.lcssa to i64
  %.sroa.0.0.insert.insert60 = or disjoint i64 %.sroa.0.0.insert.ext58, 4785070309113856
  store i64 %.sroa.0.0.insert.insert60, ptr %i.bz, align 4
  %.not10.i.i.i.i.i.i.i41 = icmp eq ptr %.sroa.098.0.lcssa, %.sroa.31.0.lcssa
  br i1 %.not10.i.i.i.i.i.i.i41, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %.noexc51
  %i.ca = ptrtoaddr ptr %i.by to i64
  %i.cb = add i64 %i.bo, -8
  %i.cc = sub i64 %i.cb, %i.bp                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.cc, 56
  %i.cf = sub i64 %i.ca, %i.bp
  %diff.check193 = icmp ult i64 %i.cf, 32
  %or.cond210 = or i1 %min.iters.check195, %diff.check193
  br i1 %or.cond210, label %.lr.ph.i.i.i.i.i.i.i42.preheader211, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader
  %n.vec198 = and i64 %i.ce, 4611686018427387900  ; 3 uses
  %i.cg = shl i64 %n.vec198, 3                    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.cg
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph196
  %index200 = phi i64 [ 0, %vector.ph196 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %i.cj = shl i64 %index200, 3                    ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.by, i64 %i.cj ; 2 uses
  %next.gep202 = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.cj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ck = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load203 = load <2 x i64>, ptr %next.gep202, align 4, !alias.scope !155, !noalias !152
  %wide.load204 = load <2 x i64>, ptr %i.ck, align 4, !alias.scope !155, !noalias !152
  %i.cl = getelementptr i8, ptr %next.gep201, i64 16
  store <2 x i64> %wide.load203, ptr %next.gep201, align 4, !alias.scope !152, !noalias !155
  store <2 x i64> %wide.load204, ptr %i.cl, align 4, !alias.scope !152, !noalias !155
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.cm, label %middle.block206, label %vector.body199, !llvm.loop !157

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %i.ce, %n.vec198
  br i1 %cmp.n207, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader211

.lr.ph.i.i.i.i.i.i.i42.preheader211:              ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader, %middle.block206
  %.012.i.i.i.i.i.i.i43.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.ch, %middle.block206 ]
  %.0911.i.i.i.i.i.i.i44.ph = phi ptr [ %.sroa.098.0.lcssa, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.ci, %middle.block206 ]
  br label %.lr.ph.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader211, %.lr.ph.i.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i.i43 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader211 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i44 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader211 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.cn = load i64, ptr %.0911.i.i.i.i.i.i.i44, align 4, !alias.scope !155, !noalias !152
  store i64 %i.cn, ptr %.012.i.i.i.i.i.i.i43, align 4, !alias.scope !152, !noalias !155
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i44, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %i.co, %.sroa.31.0.lcssa
  br i1 %.not.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42, !llvm.loop !158

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i.i42, %middle.block206, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i47 = phi ptr [ %i.by, %.noexc51 ], [ %i.ch, %middle.block206 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i42 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i23.i.i.i48 = icmp eq ptr %.sroa.098.0.lcssa, null
  br i1 %.not.i23.i.i.i48, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.0.lcssa) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.p:                                             ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38, %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, %bb.o, %bb.l, %bb.c, %._crit_edge
  %.sroa.16.1 = phi ptr [ %.sroa.16.0.lcssa, %._crit_edge ], [ %i.s, %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.q, %bb.c ], [ %i.cq, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46 ], [ %i.bn, %bb.l ], [ %i.cq, %bb.o ] ; 2 uses
  %.sroa.098.1 = phi ptr [ %.sroa.098.0.lcssa, %._crit_edge ], [ %i.r, %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.g, %bb.c ], [ %i.by, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46 ], [ %.sroa.098.0.lcssa, %bb.l ], [ %i.by, %bb.o ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.ct)
          to label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #28
  unreachable

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.cs, align 8, !tbaa !34
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !126
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !127
  store i64 0, ptr %i.b, align 8, !tbaa !49
  %.not160 = icmp eq ptr %.sroa.16.1, %.sroa.098.1
  br i1 %.not160, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %i.cz = ptrtoint ptr %.sroa.16.1 to i64
  %i.da = ptrtoint ptr %.sroa.098.1 to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  br label %.lr.ph158

._crit_edge159:                                   ; preds = %bb.w, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %i.dd = load <2 x i32>, ptr %0, align 8, !tbaa !3
  %i.de = and <2 x i32> %i.dd, splat (i32 67108863)
  %i.df = xor <2 x i32> %i.de, splat (i32 67108863)
  store <2 x i32> %i.df, ptr %0, align 8, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !128
  %i.di = sub nsw i32 1114112, %i.dh
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !128
  %.not.i.i.i = icmp eq ptr %.sroa.098.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge159
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.1) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit: ; preds = %._crit_edge159, %bb.r
  ret void

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.w
  %.011157 = phi i64 [ %i.ei, %bb.w ], [ 0, %.lr.ph158.preheader ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.098.1, i64 %.011157 ; 4 uses
  %.02022.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !43 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph158
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !137
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.s ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !140
  %i.do = icmp slt i32 %i.dl, %i.dn               ; 2 uses
  %.in.v.i.i.i = select i1 %i.do, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i53, label %._crit_edge.i.i.i, label %bb.s, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %bb.s
  br i1 %i.do, label %._crit_edge.thread.i.i.i, label %bb.u

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph158
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.cw, %.lr.ph158 ] ; 4 uses
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !126
  %i.dq = icmp eq ptr %.019.lcssa29.i.i.i, %i.dp
  br i1 %i.dq, label %select.unfold.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.dr = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.dr, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !137
  %i.du = load i32, ptr %i.dj, align 4, !tbaa !140
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %select.unfold.i.i, label %bb.w

select.unfold.i.i:                                ; preds = %bb.u, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.u ] ; 3 uses
  %i.dw = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.cw
  br i1 %i.dw, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !137
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !140
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.v, %select.unfold.i.i
  %i.ec = phi i1 [ %i.eb, %bb.v ], [ true, %select.unfold.i.i ]
  %i.ed = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc54 unwind label %bb.x   ; 2 uses

.noexc54:                                         ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load i64, ptr %i.dj, align 4
  store i64 %i.ef, ptr %i.ee, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ec, ptr noundef nonnull %i.ed, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #26
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !49
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.b, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %.noexc54, %bb.u
  %i.ei = add nuw i64 %.011157, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %i.dc
  br i1 %exitcond.not, label %._crit_edge159, label %.lr.ph158, !llvm.loop !159

bb.x:                                             ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.p
  %.sroa.098.3 = phi ptr [ %.sroa.098.0.lcssa, %bb.p ], [ %.sroa.098.0152, %.loopexit.split-lp ], [ %.sroa.098.1, %bb.x ], [ %.sroa.098.0152, %.loopexit ] ; 2 uses
  %.pn15.pn = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ej, %bb.x ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i55 = icmp eq ptr %.sroa.098.3, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.3) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56: ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re29CharClass3NewEm(i64 noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = shl i64 %0, 3
  %i.b = add i64 %i.a, 24
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #30 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !72
  store i8 0, ptr %i.c, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !69
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re29CharClass6NegateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add nsw i64 %i.e, 24
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #30 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i8, ptr %0, align 8, !tbaa !160, !range !161, !noundef !162
  store i8 %i.k, ptr %i.g, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69
  %i.n = sub nsw i32 1114112, %i.m
  store i32 %i.n, ptr %i.j, align 4, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.q = icmp slt i32 %.1.in, 1114111
  br i1 %i.q, label %._crit_edge.thread, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.r = phi i32 [ %i.aa, %bb.c ], [ %i.b, %.lr.ph.preheader ]
  %i.s = phi ptr [ %i.ab, %bb.c ], [ %i.p, %.lr.ph.preheader ]
  %.027 = phi ptr [ %i.ac, %bb.c ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %.01926 = phi i32 [ %.1, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02025 = phi i32 [ %.121, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.t = load i32, ptr %.027, align 4, !tbaa !140 ; 2 uses
  %i.u = icmp eq i32 %i.t, %.01926
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %i.t, -1
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.x = add nsw i32 %.02025, 1
  %i.y = sext i32 %.02025 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %.sroa.423.0.insert.ext = zext i32 %i.v to i64
  %.sroa.423.0.insert.shift = shl nuw i64 %.sroa.423.0.insert.ext, 32
  %.sroa.022.0.insert.ext = zext i32 %.01926 to i64
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  store i64 %.sroa.022.0.insert.insert, ptr %i.z, align 4
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !73
  %.pre29 = load i32, ptr %i.a, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.aa = phi i32 [ %.pre29, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.s, %.lr.ph ] ; 2 uses
  %.121 = phi i32 [ %i.x, %bb.b ], [ %.02025, %.lr.ph ] ; 3 uses
  %.1.in.in = getelementptr inbounds nuw i8, ptr %.027, i64 4
  %.1.in = load i32, ptr %.1.in.in, align 4, !tbaa !137 ; 2 uses
  %.1 = add nsw i32 %.1.in, 1                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  %.not = icmp eq ptr %i.ac, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !163

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.019.lcssa35 = phi i32 [ %.1, %._crit_edge ], [ 0, %bb.a ]
  %.020.lcssa34 = phi i32 [ %.121, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.ag = add nsw i32 %.020.lcssa34, 1
  %i.ah = sext i32 %.020.lcssa34 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %.sroa.0.0.insert.ext = zext i32 %.019.lcssa35 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4785070309113856
  store i64 %.sroa.0.0.insert.insert, ptr %i.ai, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.2 = phi i32 [ %i.ag, %._crit_edge.thread ], [ %.121, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %.2, ptr %i.aj, align 8, !tbaa !72
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re29CharClass8ContainsEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.01624 = phi i32 [ %.218, %bb.d ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.01923 = phi ptr [ %.221, %bb.d ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %i.f = lshr i32 %.01624, 1                      ; 3 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.01923, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !137
  %i.k = icmp slt i32 %i.j, %1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.01923, i64 %i.m
  %i.o = sub nsw i32 %.01624, %i.l
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %i.h, align 4, !tbaa !140
  %i.q = icmp slt i32 %1, %i.p
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %.221 = phi ptr [ %i.n, %bb.b ], [ %.01923, %bb.c ]
  %.218 = phi i32 [ %i.o, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.r = icmp sgt i32 %.218, 0
  br i1 %i.r, label %.lr.ph, label %.critedge, !llvm.loop !164
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E:bb.a

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re218CaptureNamesWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN10duckdb_re218CaptureNamesWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #26
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re218CaptureNamesWalker8PreVisitEPNS_6RegexpEiPb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.58", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.61", align 1     ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !7
  %i.c = icmp eq i8 %i.b, 11
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.l, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.m, align 8, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !49
  store ptr %i.i, ptr %i.f, align 8, !tbaa !115
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  store i32 %i.p, ptr %i.a, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33   ; 3 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %.pre5, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pre5, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.t, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp slt i32 %i.v, %i.s                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !190

_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.x, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = icmp slt i32 %i.s, %i.z
  br i1 %i.aa, label %.critedge.i, label %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEixEOi.exit

.critedge.i:                                      ; preds = %.thread, %bb.e, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i, %bb.d
  %i.ab = phi ptr [ %i.e, %bb.e ], [ %i.e, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i ], [ %i.e, %bb.d ], [ %.pre, %.thread ]
  %i.ac = phi ptr [ %i.g, %bb.e ], [ %i.g, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i ], [ %i.g, %bb.d ], [ %i.i, %.thread ]
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %.19.i.i.i.i, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i ], [ %i.t, %bb.d ], [ %i.q, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.a, ptr %4, align 8, !tbaa !191, !alias.scope !192
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ad = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEixEOi.exit

_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEixEOi.exit: ; preds = %bb.e, %.critedge.i
  %i.ae = phi ptr [ %i.ab, %.critedge.i ], [ %i.e, %bb.e ]
  %.sroa.06.0.i = phi ptr [ %i.ad, %.critedge.i ], [ %.19.i.i.i.i, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEixEOi.exit, %bb.b, %bb.a
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re218CaptureNamesWalker10ShortVisitEPNS_6RegexpEi(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.25, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !30
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.j) #27
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %2

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const int, std::__cxx11::basic_string<char>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !191
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  store i32 %i.f, ptr %i.c, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !77
  store i8 0, ptr %i.h, align 8, !tbaa !33
  store ptr %i.b, ptr %i.a, align 8, !tbaa !199
  %i.j = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load i32, ptr %i.c, align 4, !tbaa !3
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = icmp slt i32 %i.p, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !49
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef %i.x) #27
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #27
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = load i32, ptr %2, align 4, !tbaa !3
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !43 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !202

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #31 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !3
  %.pre82 = load i32, ptr %2, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !3      ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3    ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #31 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !166
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !43 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !202

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #31 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #31 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !166
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
end_hunk_2
