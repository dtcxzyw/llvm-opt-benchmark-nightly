Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expr-c49a31e1b3bb1312.uu_expr.1dfcadec2fff7288-cgu.0?download=true
inline.NumInlined: 1053
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE6removemEB1P_:bb.a

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i53, i64 4 ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i52, 1
  %i.q = icmp eq ptr %i.o, %i.m
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i53 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i52 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.val6.i.i.i = load i32, ptr %.sroa.0.03.i.i.i53, align 4, !noalias !338, !noundef !4
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.0.val, i32 %.val6.i.i.i)
  switch i8 %i.r, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2f_9ExprErrorENtB1i_14LeafOrInternalE11search_treemEB2f_.exit.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i52, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 496
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !338, !nonnull !4, !noundef !4
  %i.x = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2f_9ExprErrorENtB1i_14LeafOrInternalE11search_treemEB2f_.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !340
  store i8 0, ptr %i.e, align 1, !noalias !340
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2f_9ExprErrorENtB1i_14LeafOrInternalE11search_treemEB2f_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !341
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !341
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !341
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.i.i.i52, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !341
  call fastcc void @_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2s_9ExprErrorENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4b_13OccupiedEntrymB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB2s_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e) #24, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !341
  br label %_RINvMNtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2q_9ExprErrorENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4o_13OccupiedEntrymB1K_E9remove_kv0NtNtB9_5alloc6GlobalEB2q_.exit.i.i

bb.h:                                             ; preds = %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2f_9ExprErrorENtB1i_14LeafOrInternalE11search_treemEB2f_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !341
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 496
  %i.ab = icmp samesign ult i64 %.sroa.8.0.i.i.i52, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.8.0.i.i.i52
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !342, !nonnull !4, !noundef !4 ; 3 uses
  %i.ae = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.ag = add i64 %i.h, -2
  %i.ah = sub i64 %i.ag, %indvar
  %xtraiter = and i64 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.03.08.i.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 494
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 496
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 3 uses
  %i.ap = add i64 %.sroa.05.07.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !325

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa58.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 7
  br i1 %i.aq, label %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 494
  %i.as = load i16, ptr %i.ar, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 496
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 494
  %i.az = load i16, ptr %i.ay, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 496
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 494
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 496
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 494
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 496
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 494
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 496
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 494
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 496
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 494
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 496
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 494
  %i.cp = load i16, ptr %i.co, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 496
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.cv = add i64 %.sroa.05.07.i.i.i.i.i, -8      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa58.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i, i64 494
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !343, !noundef !4 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !342
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !noalias !342
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !342
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.db, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !342
  call fastcc void @_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2s_9ExprErrorENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4b_13OccupiedEntrymB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB2s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e) #24, !noalias !344
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.a, align 8, !noalias !342
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !342, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !342 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !342 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 494
  %i.de = load i16, ptr %i.dd, align 2, !noalias !345, !noundef !4
  %i.df = zext i16 %i.de to i64
  %i.dg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.df
  br i1 %i.dg, label %_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorENtB1y_4LeafENtB1y_4EdgeE7next_kvB2w_.exit.i.i.i.i, label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i, %.lr.ph.i15.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i15.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i15.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i ]
  %i.dh = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !346, !nonnull !4, !noundef !4 ; 3 uses
  %i.di = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 492
  %i.dk = load i16, ptr %i.dj, align 4, !noalias !346 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 494
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !345, !noundef !4
  %i.dn = icmp ult i16 %i.dk, %i.dm
  br i1 %i.dn, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i15.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i15.i.i.i.i
  %i.do = zext i16 %i.dk to i64
  br label %_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorENtB1y_4LeafENtB1y_4EdgeE7next_kvB2w_.exit.i.i.i.i

_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorENtB1y_4LeafENtB1y_4EdgeE7next_kvB2w_.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.do, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i ] ; 3 uses
  %.sroa.531.0.i.i.i.i = phi i64 [ %i.di, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i ]
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.dh, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2i_9ExprErrorENtB1k_14LeafOrInternalE14last_leaf_edgeB2i_.exit.i.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 448
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.sroa.7.0.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 8
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  store i32 %.sroa.01.0.copyload.i.i.i.i, ptr %i.dq, align 4, !noalias !347
  %.sroa.433.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.433.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.433.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ds, i64 40, i1 false), !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ds, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.z, i64 40, i1 false), !noalias !342
  %i.dt = icmp eq i64 %.sroa.531.0.i.i.i.i, 0
  br i1 %i.dt, label %_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2t_9ExprErrorENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4k_13OccupiedEntrymB1N_E9remove_kv0NtNtBc_5alloc6GlobalEB2t_.exit.i.i.i, label %_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2t_9ExprErrorENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4k_13OccupiedEntrymB1N_E9remove_kv0NtNtBc_5alloc6GlobalEB2t_.exit.i.i.loopexit.i

_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2t_9ExprErrorENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4k_13OccupiedEntrymB1N_E9remove_kv0NtNtBc_5alloc6GlobalEB2t_.exit.i.i.loopexit.i: ; preds = %_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorENtB1y_4LeafENtB1y_4EdgeE7next_kvB2w_.exit.i.i.i.i
  %i.du = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.du)
  br label %_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2t_9ExprErrorENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4k_13OccupiedEntrymB1N_E9remove_kv0NtNtBc_5alloc6GlobalEB2t_.exit.i.i.i

_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2t_9ExprErrorENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4k_13OccupiedEntrymB1N_E9remove_kv0NtNtBc_5alloc6GlobalEB2t_.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2t_9ExprErrorENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4k_13OccupiedEntrymB1N_E9remove_kv0NtNtBc_5alloc6GlobalEB2t_.exit.i.i.loopexit.i, %_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorENtB1y_4LeafENtB1y_4EdgeE7next_kvB2w_.exit.i.i.i.i
  %.sroa.441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.441.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.433.i.i.i.i, i64 44, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !341
  br label %_RINvMNtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2q_9ExprErrorENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4o_13OccupiedEntrymB1K_E9remove_kv0NtNtB9_5alloc6GlobalEB2q_.exit.i.i

_RINvMNtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2q_9ExprErrorENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4o_13OccupiedEntrymB1K_E9remove_kv0NtNtB9_5alloc6GlobalEB2q_.exit.i.i: ; preds = %_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2t_9ExprErrorENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4k_13OccupiedEntrymB1N_E9remove_kv0NtNtBc_5alloc6GlobalEB2t_.exit.i.i.i, %bb.g
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !336, !noalias !348, !noundef !4
  %i.dx = add i64 %i.dw, -1
  store i64 %i.dx, ptr %i.dv, align 8, !alias.scope !336, !noalias !348
  %i.dy = load i8, ptr %i.e, align 1, !range !10, !noalias !340, !noundef !4
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.i, label %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit

bb.i:                                             ; preds = %_RINvMNtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2q_9ExprErrorENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4o_13OccupiedEntrymB1K_E9remove_kv0NtNtB9_5alloc6GlobalEB2q_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvMss_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB29_9ExprErrorENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB29_.exit.i.i, !prof !6

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #25, !noalias !350
  unreachable

_RINvMss_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB29_9ExprErrorENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB29_.exit.i.i: ; preds = %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !350, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !alias.scope !351, !noalias !348
  %i.ec = add i64 %i.h, -1
  store i64 %i.ec, ptr %i.g, align 8, !alias.scope !351, !noalias !348
  store ptr null, ptr %i.eb, align 8, !noalias !350
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 592, i64 noundef 8) #24, !noalias !350
  br label %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit

_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit: ; preds = %_RINvMNtNtNtCs7tKScEop1B6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2q_9ExprErrorENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4o_13OccupiedEntrymB1K_E9remove_kv0NtNtB9_5alloc6GlobalEB2q_.exit.i.i, %_RINvMss_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB29_9ExprErrorENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB29_.exit.i.i
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload3 = load i64, ptr %.sroa.4.0..sroa_idx2, align 8, !noalias !336 ; 2 uses
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx4, i64 32, i1 false), !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !339
  %.not = icmp eq i64 %.sroa.4.0.copyload3, 2
  br i1 %.not, label %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  br label %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit.thread

_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit.thread: ; preds = %._crit_edge, %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit, %bb.a, %bb.k
  %storemerge = phi i64 [ %.sroa.4.0.copyload3, %bb.k ], [ 2, %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1P_9ExprErrorEE12remove_entrymEB1P_.exit ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc i64 @_RINvNtCs2zCsf9UsIrc_7uu_expr11syntax_tree12regex_searchNtNtCslwwPJGKhBTm_4onig7buffers12EncodedBytesEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call noundef ptr @_RNvXs_NtCslwwPJGKhBTm_4onig11match_paramNtB4_10MatchParamNtNtCs6JMX4GRUq9U_4core7default7Default7default() #24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !368
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !367, !noalias !369, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = tail call noundef ptr @_RNvXs0_NtCslwwPJGKhBTm_4onig7buffersNtB5_12EncodedBytesNtB5_12EncodedChars9limit_ptr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #24, !noalias !369 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val37.i = load ptr, ptr %i.h, align 8, !alias.scope !367, !noalias !369, !noundef !4 ; 2 uses
  %i.i = tail call noundef ptr @_RNvMs4_CslwwPJGKhBTm_4onigNtB5_5Regex8encoding(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #24, !noalias !370
  %.not.i = icmp eq ptr %.val37.i, %i.i
  br i1 %.not.i, label %bb.b, label %.split.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %2 ; 2 uses
  %i.k = icmp ugt ptr %.val.i, %i.g
  br i1 %i.k, label %bb.d, label %bb.c

.split.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !368
  store ptr %.val37.i, ptr %i.c, align 8, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !368
  %i.l = tail call noundef ptr @_RNvMs4_CslwwPJGKhBTm_4onigNtB5_5Regex8encoding(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #24, !noalias !370
  store ptr %i.l, ptr %i.b, align 8, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !368
  store ptr %i.c, ptr %i.a, align 8, !noalias !368
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6JMX4GRUq9U_4core3fmtONtNtCs4BYVb6Px9A_8onig_sys3ffi18OnigEncodingTypeSTNtB5_5Debug3fmtCs2zCsf9UsIrc_7uu_expr, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !368
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.m, align 8, !noalias !368
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs6JMX4GRUq9U_4core3fmtONtNtCs4BYVb6Px9A_8onig_sys3ffi18OnigEncodingTypeSTNtB5_5Debug3fmtCs2zCsf9UsIrc_7uu_expr, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !368
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull @11, ptr noundef nonnull %i.a) #24, !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !368
  br label %_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt ptr %i.j, %i.g
  br i1 %i.n, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !372
  %i.o = tail call noundef dereferenceable_or_null(35) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !372 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !alias.scope !366, !noalias !373, !noundef !4
  %i.r = tail call noundef i32 @onig_search_with_param(ptr noundef %i.q, ptr noundef nonnull %.val.i, ptr noundef %i.g, ptr noundef nonnull %.val.i, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable_or_null(32) %3, i32 noundef 0, ptr noundef %i.f) #24, !noalias !365 ; 4 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !374
  %i.t = tail call noundef dereferenceable_or_null(35) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !374 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %i.r, -1
  br i1 %i.v, label %_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.w = zext nneg i32 %i.r to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !365, !noalias !375
  br label %_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @_RNvMs0_CslwwPJGKhBTm_4onigNtB5_5Error9from_code(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, i32 noundef %i.r) #24
  br label %_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit

bb.j:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 35) #26, !noalias !370
  unreachable

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.t, ptr noundef nonnull align 1 dereferenceable(35) @9, i64 35, i1 false), !noalias !370
  store i64 35, ptr %i.e, align 8, !alias.scope !365, !noalias !375
  %.sroa.06.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.t, ptr %.sroa.06.sroa.4.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !375
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 35, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !375
  br label %_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 35) #26, !noalias !370
  unreachable

bb.m:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.o, ptr noundef nonnull align 1 dereferenceable(35) @10, i64 35, i1 false), !noalias !370
  store i64 35, ptr %i.e, align 8, !alias.scope !365, !noalias !375
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !375
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 35, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !375
  br label %_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit

_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit.thread: ; preds = %bb.g, %bb.h
  %.ph = phi i64 [ 1, %bb.h ], [ 0, %bb.g ]
  call void @_RNvXs0_NtCslwwPJGKhBTm_4onig11match_paramNtB5_10MatchParamNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionjENtCslwwPJGKhBTm_4onig5ErrorEECs2zCsf9UsIrc_7uu_expr.exit

_RINvMs4_CslwwPJGKhBTm_4onigNtB6_5Regex17search_with_paramNtNtB6_7buffers12EncodedBytesECs2zCsf9UsIrc_7uu_expr.exit: ; preds = %.split.i, %bb.i, %bb.k, %bb.m
  %.pr = load i64, ptr %i.e, align 8              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !11
  call void @_RNvXs0_NtCslwwPJGKhBTm_4onig11match_paramNtB5_10MatchParamNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  switch i64 %.pr, label %bb.n [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionjENtCslwwPJGKhBTm_4onig5ErrorEECs2zCsf9UsIrc_7uu_expr.exit
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionjENtCslwwPJGKhBTm_4onig5ErrorEECs2zCsf9UsIrc_7uu_expr.exit.fold.split
  ]
end_hunk_0
