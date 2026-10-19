Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/map_test?download=true
inline.NumInlined: 25391
inline.NumDeleted: 5895
loop-unroll.NumCompletelyUnrolled: 461
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_ENS0_8multimapIiiS5_S9_SC_EESt8multimapIiiS5_S9_EEEiRT_RT0_RT1_RT2_:bb.a
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.bg, align 8, !tbaa !182
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.bh, align 8, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.bi, align 8, !tbaa !182
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.bj, align 8, !tbaa !182
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.bk, align 8, !tbaa !182
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.bl, align 8, !tbaa !182
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.bm, align 8, !tbaa !182
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.bn, align 8, !tbaa !182
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.bo, align 8, !tbaa !182
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 392
  store i32 49, ptr %i.bp, align 8, !tbaa !438
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 396
  store i32 49, ptr %i.bq, align 4, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %9, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.br, align 4, !tbaa !182
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.bs, align 4, !tbaa !182
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.bt, align 4, !tbaa !182
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.bu, align 4, !tbaa !182
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.bv, align 4, !tbaa !182
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.bw, align 4, !tbaa !182
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.bx, align 4, !tbaa !182
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.by, align 4, !tbaa !182
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bz, align 4, !tbaa !182
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.ca, align 4, !tbaa !182
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.cb, align 4, !tbaa !182
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.cc, align 4, !tbaa !182
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.cd, align 4, !tbaa !182
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.ce, align 4, !tbaa !182
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.cf, align 4, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.cg, align 4, !tbaa !182
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.ch, align 4, !tbaa !182
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.ci, align 4, !tbaa !182
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.cj, align 4, !tbaa !182
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.ck, align 4, !tbaa !182
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.cl, align 4, !tbaa !182
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.cm, align 4, !tbaa !182
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.cn, align 4, !tbaa !182
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.co, align 4, !tbaa !182
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 388
  store i32 2, ptr %i.cp, align 4, !tbaa !439
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 392
  store i32 49, ptr %i.cq, align 8, !tbaa !438
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 396
  store i32 1, ptr %i.cr, align 4, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.af
  %storemerge263 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.ge, %bb.af ] ; 2 uses
  %i.ct = and i32 %storemerge263, 1
  %.not = icmp eq i32 %i.ct, 0
  %i.cu = sext i32 %storemerge263 to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cu ; 5 uses
  br i1 %.not, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !2769
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = and i64 %i.cx, -2                       ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not29.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i32, ptr %i.cv, align 8, !tbaa !182, !noalias !2769 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.02631.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.127.i.i.i.i, %bb.n ]
  %.02830.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i ], [ %i.de, %bb.n ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 24
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !182, !noalias !2769
  %i.dd = icmp slt i32 %i.da, %i.dc               ; 4 uses
  %.127.i.i.i.i = select i1 %i.dd, ptr %.02631.i.i.i.i, ptr %.02830.i.i.i.i ; 3 uses
  %.in.v.i.i.i.i = select i1 %i.dd, i64 8, i64 16
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 %.in.v.i.i.i.i
  %i.de = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !185, !noalias !2769 ; 2 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i93, label %._crit_edge.i.i.i.i, label %bb.n, !llvm.loop !38

._crit_edge.i.i.i.i:                              ; preds = %bb.n
  %.not18.i.i.i.i = icmp eq ptr %.127.i.i.i.i, null
  br i1 %.not18.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i, i64 24
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !182, !noalias !2769
  %i.dh = icmp slt i32 %i.dg, %i.da
  br i1 %i.dh, label %bb.p, label %.critedge81.thread

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.0.lcssa.i12.shrunk.i.i.i = phi i1 [ %i.dd, %._crit_edge.i.i.i.i ], [ %i.dd, %bb.o ], [ true, %bb.m ]
  %.013.lcssa.i11.i.i.i = phi ptr [ %.02830.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.02830.i.i.i.i, %bb.o ], [ %i.b, %bb.m ] ; 6 uses
  %i.di = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2770 ; 13 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load <2 x i32>, ptr %i.cv, align 8, !tbaa !182, !noalias !2770
  store <2 x i32> %i.dk, ptr %i.dj, align 4, !tbaa !182, !noalias !2770
  %i.dl = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.b ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i: ; preds = %bb.p
  br i1 %i.dl, label %bb.q, label %bb.s

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i: ; preds = %bb.p
  br i1 %i.dl, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !2771
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = and i64 %i.do, 1
  %i.dq = or disjoint i64 %i.dp, %i.dm
  %i.dr = inttoptr i64 %i.dq to ptr
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !185, !noalias !2771
  store ptr %i.di, ptr %i.n, align 8, !tbaa !181, !noalias !2771
  store ptr %i.di, ptr %i.m, align 8, !tbaa !180, !noalias !2771
  br label %bb.u

.thread.i.i.i:                                    ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 8
  store ptr %i.di, ptr %i.ds, align 8, !tbaa !180, !noalias !2771
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !180, !noalias !2771
  %i.du = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.dt
  br i1 %i.du, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.thread.i.i.i
  store ptr %i.di, ptr %i.m, align 8, !tbaa !180, !noalias !2771
  br label %bb.u

bb.s:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 16
  store ptr %i.di, ptr %i.dv, align 8, !tbaa !181, !noalias !2771
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !181, !noalias !2771
  %i.dx = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.dw
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.di, ptr %i.n, align 8, !tbaa !181, !noalias !2771
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %.thread.i.i.i, %bb.r, %bb.s, %bb.t
  %i.dy = ptrtoint ptr %.013.lcssa.i11.i.i.i to i64
  %i.dz = load ptr, ptr %i.di, align 8, !tbaa !185, !noalias !2771
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = and i64 %i.ea, 1
  %i.ec = or i64 %i.eb, %i.dy
  %i.ed = inttoptr i64 %i.ec to ptr
  store ptr %i.ed, ptr %i.di, align 8, !tbaa !185, !noalias !2771
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false), !noalias !2771
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.di) #26, !noalias !2771
  %i.ef = load i64, ptr %0, align 8, !tbaa !188, !noalias !2771
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %0, align 8, !tbaa !188, !noalias !2771
  br label %bb.ac

bb.v:                                             ; preds = %bb.l
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !2772
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, -2                       ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit, label %.lr.ph.i.i.i.i.i94

.lr.ph.i.i.i.i.i94:                               ; preds = %bb.v
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i32, ptr %i.cv, align 8, !tbaa !182, !noalias !2772
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i94
  %.08.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i94 ], [ %.1.i.i.i.i.i, %bb.w ]
  %storemerge27.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i94 ], [ %storemerge.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 24
  %i.en = load i32, ptr %i.em, align 4, !tbaa !182, !noalias !2772
  %i.eo = icmp slt i32 %i.el, %i.en               ; 2 uses
  %storemerge.in.v.i.i.i.i.i = select i1 %i.eo, i64 8, i64 16
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.eo, ptr %storemerge27.i.i.i.i.i, ptr %.08.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !185, !noalias !2772 ; 2 uses
  %.not.i.i.i.i.i95 = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i95, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit, label %bb.w, !llvm.loop !48

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit: ; preds = %bb.w, %bb.v
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.b, %bb.v ], [ %.1.i.i.i.i.i, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !2773
  store i8 0, ptr %7, align 8, !tbaa !210, !noalias !2773
  store ptr null, ptr %i.cs, align 8, !tbaa !211, !noalias !2773
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2773
  store ptr %i.b, ptr %6, align 8, !tbaa !408, !alias.scope !2774, !noalias !2775
  %i.ep = call { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkIiNS0_6detail16key_nodeptr_compINS_9container13key_node_predISt4lessIiENS9_3dtl9select1stIKiEENS9_9base_nodeISt4pairISF_iENSD_19intrusive_tree_hookIS3_LNS9_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISN_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSD_11key_of_nodeISN_SG_EEEEEESI_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSX_SY_RKT_T0_RNS0_20insert_commit_data_tISY_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.cv, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null), !noalias !2775 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ep, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.ep, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2773
  %i.eq = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.eq, label %bb.x, label %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit

bb.x:                                             ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit
  %i.er = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2773 ; 13 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load <2 x i32>, ptr %i.cv, align 8, !tbaa !182, !noalias !2773
  store <2 x i32> %i.et, ptr %i.es, align 4, !tbaa !182, !noalias !2773
  %i.eu = load ptr, ptr %i.cs, align 8, !tbaa !211, !noalias !2776 ; 6 uses
  %i.ev = load i8, ptr %7, align 8, !tbaa !210, !range !205, !noalias !2776, !noundef !200
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = icmp eq ptr %i.eu, %i.b                 ; 2 uses
  br i1 %i.ew, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i98, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i96

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i96: ; preds = %bb.x
  br i1 %i.ex, label %bb.y, label %bb.aa

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i98: ; preds = %bb.x
  br i1 %i.ex, label %bb.y, label %.thread.i.i.i99

bb.y:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i98, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i96
  %i.ey = ptrtoint ptr %i.er to i64
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !2776
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = and i64 %i.fa, 1
  %i.fc = or disjoint i64 %i.fb, %i.ey
  %i.fd = inttoptr i64 %i.fc to ptr
  store ptr %i.fd, ptr %i.b, align 8, !tbaa !185, !noalias !2776
  store ptr %i.er, ptr %i.n, align 8, !tbaa !181, !noalias !2776
  store ptr %i.er, ptr %i.m, align 8, !tbaa !180, !noalias !2776
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97

.thread.i.i.i99:                                  ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i98
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.er, ptr %i.fe, align 8, !tbaa !180, !noalias !2776
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !180, !noalias !2776
  %i.fg = icmp eq ptr %i.eu, %i.ff
  br i1 %i.fg, label %bb.z, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97

bb.z:                                             ; preds = %.thread.i.i.i99
  store ptr %i.er, ptr %i.m, align 8, !tbaa !180, !noalias !2776
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97

bb.aa:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i96
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.er, ptr %i.fh, align 8, !tbaa !181, !noalias !2776
  %i.fi = load ptr, ptr %i.n, align 8, !tbaa !181, !noalias !2776
  %i.fj = icmp eq ptr %i.eu, %i.fi
  br i1 %i.fj, label %bb.ab, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.er, ptr %i.n, align 8, !tbaa !181, !noalias !2776
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97: ; preds = %bb.ab, %bb.aa, %bb.z, %.thread.i.i.i99, %bb.y
  %i.fk = ptrtoint ptr %i.eu to i64
  %i.fl = load ptr, ptr %i.er, align 8, !tbaa !185, !noalias !2776
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = and i64 %i.fm, 1
  %i.fo = or i64 %i.fn, %i.fk
  %i.fp = inttoptr i64 %i.fo to ptr
  store ptr %i.fp, ptr %i.er, align 8, !tbaa !185, !noalias !2776
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false), !noalias !2776
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.er) #26, !noalias !2776
  %i.fr = load i64, ptr %0, align 8, !tbaa !188, !noalias !2776
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %0, align 8, !tbaa !188, !noalias !2776
  br label %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit

_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit: ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97
  %.sroa.010.0.i.i = phi ptr [ %i.er, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i97 ], [ %.fca.0.extract.i.i.i, %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !2773
  br label %bb.ac

bb.ac:                                            ; preds = %bb.u, %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit
  %.sroa.0235.0 = phi ptr [ %.sroa.010.0.i.i, %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit ], [ %i.di, %bb.u ] ; 3 uses
  %i.ft = icmp eq ptr %i.b, %.sroa.0235.0
  br i1 %i.ft, label %.critedge81.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0235.0, i64 24
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !264 ; 2 uses
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %9, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !438
  %.not74 = icmp eq i32 %i.fv, %i.fz
  br i1 %.not74, label %bb.ae, label %.critedge81.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0235.0, i64 28
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !265
  %.not75 = icmp eq i32 %i.gb, %i.fv
  br i1 %.not75, label %bb.af, label %.critedge81.thread

bb.af:                                            ; preds = %bb.ae
  %i.gc = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.fw, ptr %i.gc, align 4, !tbaa !182
  %i.gd = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.ge = add nsw i32 %i.gd, 1                    ; 2 uses
  store i32 %i.ge, ptr %i.a, align 4, !tbaa !182
  %i.gf = icmp sgt i32 %i.gd, 48
  br i1 %i.gf, label %bb.ag, label %bb.l, !llvm.loop !2713

.critedge81.thread:                               ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gg = load i64, ptr %0, align 8, !tbaa !188
  %i.gh = load i64, ptr %i.ai, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.gg, %i.gh
  br i1 %.not.i, label %bb.ah, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.ah:                                            ; preds = %bb.ag
  %i.gi = load ptr, ptr %i.m, align 8, !tbaa !180, !noalias !2777 ; 2 uses
  %.not1920.i = icmp eq ptr %i.gi, %i.b
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.gj = load ptr, ptr %i.ag, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.ha, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.gj, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.gi, %.lr.ph.preheader.i ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !264
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 24
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !264
  %.not10.i = icmp eq i32 %i.gn, %i.gl
  br i1 %.not10.i, label %bb.ai, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.ai:                                            ; preds = %.lr.ph.i
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !265
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 28
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !265
  %.not11.i = icmp eq i32 %i.gr, %i.gp
  br i1 %.not11.i, label %bb.aj, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.aj:                                            ; preds = %bb.ai
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i100, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.aj, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i101, %.preheader17.i.i.i.i ], [ %i.gt, %bb.aj ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %.0.i.i.i.i.i101 = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %.0.i.i.i.i.i101, null
  br i1 %.not.i.i.i.i.i102, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, label %.preheader17.i.i.i.i, !llvm.loop !16

.preheader.i.i.i.i:                               ; preds = %bb.aj, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.015.021.i, %bb.aj ] ; 4 uses
  %.0.in.in.in.i.i.i.i = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !189
  %.0.in.in.i.i.i.i = ptrtoint ptr %.0.in.in.in.i.i.i.i to i64
  %.0.in.i.i.i.i = and i64 %.0.in.in.i.i.i.i, -2
  %.0.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i to ptr ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !181
  %i.gw = icmp eq ptr %.013.i.i.i.i, %i.gv
  br i1 %i.gw, label %.preheader.i.i.i.i, label %bb.ak, !llvm.loop !17

bb.ak:                                            ; preds = %.preheader.i.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !181
  %.not16.i.i.i.i = icmp eq ptr %i.gy, %.0.i.i.i.i
  %i.gz = select i1 %.not16.i.i.i.i, ptr %.013.i.i.i.i, ptr %.0.i.i.i.i
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i: ; preds = %.preheader17.i.i.i.i, %bb.ak
  %.014.i.i.i.i = phi ptr [ %i.gz, %bb.ak ], [ %.05.i.i.i.i.i, %.preheader17.i.i.i.i ] ; 2 uses
  %i.ha = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #28
  %.not19.i = icmp eq ptr %.014.i.i.i.i, %i.b
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !44

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %bb.ah
  %i.hb = load i64, ptr %2, align 8, !tbaa !188
  %i.hc = load i64, ptr %i.aq, align 8, !tbaa !234
  %.not.i103 = icmp eq i64 %i.hb, %i.hc
  br i1 %.not.i103, label %bb.al, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.al:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit
  %i.hd = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !2778 ; 2 uses
  %.not1920.i105 = icmp eq ptr %i.hd, %i.o
  br i1 %.not1920.i105, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i106

.lr.ph.preheader.i106:                            ; preds = %bb.al
  %i.he = load ptr, ptr %i.ao, align 8, !tbaa !232
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i118, %.lr.ph.preheader.i106
  %.sroa.0.022.i108 = phi ptr [ %i.hv, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i118 ], [ %i.he, %.lr.ph.preheader.i106 ] ; 3 uses
  %.sroa.015.021.i109 = phi ptr [ %.014.i.i.i.i119, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i118 ], [ %i.hd, %.lr.ph.preheader.i106 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i108, i64 32
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !264
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i109, i64 24
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !264
  %.not10.i110 = icmp eq i32 %i.hi, %i.hg
  br i1 %.not10.i110, label %bb.am, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.am:                                            ; preds = %.lr.ph.i107
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i108, i64 36
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !265
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i109, i64 28
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !265
  %.not11.i111 = icmp eq i32 %i.hm, %i.hk
  br i1 %.not11.i111, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.an:                                            ; preds = %bb.am
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i109, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i112 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i112, label %.preheader.i.i.i.i121, label %.preheader17.i.i.i.i113

.preheader17.i.i.i.i113:                          ; preds = %bb.an, %.preheader17.i.i.i.i113
  %.05.i.i.i.i.i114 = phi ptr [ %.0.i.i.i.i.i116, %.preheader17.i.i.i.i113 ], [ %i.ho, %bb.an ] ; 2 uses
  %.0.in.i.i.i.i.i115 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i114, i64 8
  %.0.i.i.i.i.i116 = load ptr, ptr %.0.in.i.i.i.i.i115, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i117 = icmp eq ptr %.0.i.i.i.i.i116, null
  br i1 %.not.i.i.i.i.i117, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i118, label %.preheader17.i.i.i.i113, !llvm.loop !16

.preheader.i.i.i.i121:                            ; preds = %bb.an, %.preheader.i.i.i.i121
  %.013.i.i.i.i122 = phi ptr [ %.0.i.i.i.i126, %.preheader.i.i.i.i121 ], [ %.sroa.015.021.i109, %bb.an ] ; 4 uses
  %.0.in.in.in.i.i.i.i123 = load ptr, ptr %.013.i.i.i.i122, align 8, !tbaa !189
  %.0.in.in.i.i.i.i124 = ptrtoint ptr %.0.in.in.in.i.i.i.i123 to i64
  %.0.in.i.i.i.i125 = and i64 %.0.in.in.i.i.i.i124, -2
  %.0.i.i.i.i126 = inttoptr i64 %.0.in.i.i.i.i125 to ptr ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i126, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !181
  %i.hr = icmp eq ptr %.013.i.i.i.i122, %i.hq
  br i1 %i.hr, label %.preheader.i.i.i.i121, label %bb.ao, !llvm.loop !17

bb.ao:                                            ; preds = %.preheader.i.i.i.i121
  %i.hs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i122, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !181
  %.not16.i.i.i.i127 = icmp eq ptr %i.ht, %.0.i.i.i.i126
  %i.hu = select i1 %.not16.i.i.i.i127, ptr %.013.i.i.i.i122, ptr %.0.i.i.i.i126
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i118

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i118: ; preds = %.preheader17.i.i.i.i113, %bb.ao
  %.014.i.i.i.i119 = phi ptr [ %i.hu, %bb.ao ], [ %.05.i.i.i.i.i114, %.preheader17.i.i.i.i113 ] ; 2 uses
  %i.hv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i108) #28
  %.not19.i120 = icmp eq ptr %.014.i.i.i.i119, %i.o
  br i1 %.not19.i120, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit, label %.lr.ph.i107, !llvm.loop !45

_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i118, %bb.al
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %bb.aq, !llvm.loop !2726

bb.aq:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit, %bb.ap
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.ap ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 4 uses
  %i.hy = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !2779
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = and i64 %i.hz, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aq
  %i.ib = inttoptr i64 %i.ia to ptr               ; 3 uses
  %i.ic = load i32, ptr %i.hx, align 8, !tbaa !182, !noalias !2779 ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.ar ]
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.ar ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !182, !noalias !2779
  %i.if = icmp slt i32 %i.ie, %i.ic               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.if, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.if, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !185, !noalias !2779 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundIiNS0_6detail16key_nodeptr_compISt4lessIiENS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENSC_3dtl19intrusive_tree_hookIS3_LNSC_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSH_11key_of_nodeISL_NSH_9select1stISF_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSV_RKT_T0_.exit.i.i.i.i, label %bb.ar, !llvm.loop !46

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundIiNS0_6detail16key_nodeptr_compISt4lessIiENS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENSC_3dtl19intrusive_tree_hookIS3_LNSC_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSH_11key_of_nodeISL_NSH_9select1stISF_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSV_RKT_T0_.exit.i.i.i.i: ; preds = %bb.ar
  %i.ig = icmp eq ptr %.1.i.i.i.i.i.i, %i.b
  br i1 %i.ig, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS4_.exit

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS4_.exit: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundIiNS0_6detail16key_nodeptr_compISt4lessIiENS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENSC_3dtl19intrusive_tree_hookIS3_LNSC_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSH_11key_of_nodeISL_NSH_9select1stISF_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSV_RKT_T0_.exit.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 24
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !182, !noalias !2779
  %i.ij = icmp slt i32 %i.ic, %i.ii
  br i1 %i.ij, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS4_.exit
  %i.ik = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.ik, 0
  br i1 %.not76, label %.lr.ph.i.i.i.i.i148, label %.lr.ph.i.i.i.i129

.lr.ph.i.i.i.i129:                                ; preds = %bb.as, %.lr.ph.i.i.i.i129
  %.02631.i.i.i.i130 = phi ptr [ %.127.i.i.i.i132, %.lr.ph.i.i.i.i129 ], [ null, %bb.as ]
  %.02830.i.i.i.i131 = phi ptr [ %i.io, %.lr.ph.i.i.i.i129 ], [ %i.ib, %bb.as ] ; 9 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 24
  %i.im = load i32, ptr %i.il, align 4, !tbaa !182, !noalias !2780
  %i.in = icmp slt i32 %i.ic, %i.im               ; 3 uses
  %.127.i.i.i.i132 = select i1 %i.in, ptr %.02631.i.i.i.i130, ptr %.02830.i.i.i.i131 ; 4 uses
  %.in.v.i.i.i.i133 = select i1 %i.in, i64 8, i64 16
  %.in.i.i.i.i134 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 %.in.v.i.i.i.i133
  %i.io = load ptr, ptr %.in.i.i.i.i134, align 8, !tbaa !185, !noalias !2780 ; 2 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i135, label %._crit_edge.i.i.i.i136, label %.lr.ph.i.i.i.i129, !llvm.loop !38

._crit_edge.i.i.i.i136:                           ; preds = %.lr.ph.i.i.i.i129
  %.not18.i.i.i.i137 = icmp eq ptr %.127.i.i.i.i132, null
  br i1 %.not18.i.i.i.i137, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i.i.i136
  %i.ip = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i132, i64 24
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !182, !noalias !2780
  %i.ir = icmp slt i32 %i.iq, %i.ic
  br i1 %i.ir, label %bb.au, label %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEES4_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEEbEOiDpOT_.exit146

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.i.i136
  %i.is = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2781 ; 11 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load <2 x i32>, ptr %i.hx, align 4, !tbaa !182, !noalias !2781
  store <2 x i32> %i.iu, ptr %i.it, align 4, !tbaa !182, !noalias !2781
  %i.iv = icmp eq ptr %.02830.i.i.i.i131, %i.b    ; 2 uses
  br i1 %i.in, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i144, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i142

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i142: ; preds = %bb.au
  br i1 %i.iv, label %bb.av, label %bb.ax

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i144: ; preds = %bb.au
  br i1 %i.iv, label %bb.av, label %.thread.i.i.i145

bb.av:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i144, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i142
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !2782
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = and i64 %i.iy, 1
  %i.ja = or disjoint i64 %i.iz, %i.iw
  %i.jb = inttoptr i64 %i.ja to ptr
  store ptr %i.jb, ptr %i.b, align 8, !tbaa !185, !noalias !2782
  store ptr %i.is, ptr %i.n, align 8, !tbaa !181, !noalias !2782
  store ptr %i.is, ptr %i.m, align 8, !tbaa !180, !noalias !2782
  br label %.critedge83

.thread.i.i.i145:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i144
  %i.jc = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 8
  store ptr %i.is, ptr %i.jc, align 8, !tbaa !180, !noalias !2782
  %i.jd = load ptr, ptr %i.m, align 8, !tbaa !180, !noalias !2782
  %i.je = icmp eq ptr %.02830.i.i.i.i131, %i.jd
  br i1 %i.je, label %bb.aw, label %.critedge83

bb.aw:                                            ; preds = %.thread.i.i.i145
  store ptr %i.is, ptr %i.m, align 8, !tbaa !180, !noalias !2782
  br label %.critedge83

bb.ax:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i142
  %i.jf = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 16
  store ptr %i.is, ptr %i.jf, align 8, !tbaa !181, !noalias !2782
  %i.jg = load ptr, ptr %i.n, align 8, !tbaa !181, !noalias !2782
  %i.jh = icmp eq ptr %.02830.i.i.i.i131, %i.jg
  br i1 %i.jh, label %bb.ay, label %.critedge83

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.is, ptr %i.n, align 8, !tbaa !181, !noalias !2782
  br label %.critedge83

.lr.ph.i.i.i.i.i148:                              ; preds = %bb.as, %.lr.ph.i.i.i.i.i148
  %.08.i.i.i.i.i149 = phi ptr [ %.1.i.i.i.i.i153, %.lr.ph.i.i.i.i.i148 ], [ %i.b, %bb.as ]
  %storemerge27.i.i.i.i.i150 = phi ptr [ %storemerge.i.i.i.i.i154, %.lr.ph.i.i.i.i.i148 ], [ %i.ib, %bb.as ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i150, i64 24
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !182, !noalias !2783
  %i.jk = icmp slt i32 %i.ic, %i.jj               ; 2 uses
  %storemerge.in.v.i.i.i.i.i151 = select i1 %i.jk, i64 8, i64 16
  %storemerge.in.i.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i150, i64 %storemerge.in.v.i.i.i.i.i151
  %.1.i.i.i.i.i153 = select i1 %i.jk, ptr %storemerge27.i.i.i.i.i150, ptr %.08.i.i.i.i.i149 ; 2 uses
  %storemerge.i.i.i.i.i154 = load ptr, ptr %storemerge.in.i.i.i.i.i152, align 8, !tbaa !185, !noalias !2783 ; 2 uses
  %.not.i.i.i.i.i155 = icmp eq ptr %storemerge.i.i.i.i.i154, null
  br i1 %.not.i.i.i.i.i155, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit157, label %.lr.ph.i.i.i.i.i148, !llvm.loop !48

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit157: ; preds = %.lr.ph.i.i.i.i.i148
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !2784
  store i8 0, ptr %5, align 8, !tbaa !210, !noalias !2784
  store ptr null, ptr %i.hw, align 8, !tbaa !211, !noalias !2784
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2784
  store ptr %i.b, ptr %4, align 8, !tbaa !408, !alias.scope !2785, !noalias !2786
  %i.jl = call { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkIiNS0_6detail16key_nodeptr_compINS_9container13key_node_predISt4lessIiENS9_3dtl9select1stIKiEENS9_9base_nodeISt4pairISF_iENSD_19intrusive_tree_hookIS3_LNS9_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISN_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSD_11key_of_nodeISN_SG_EEEEEESI_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSX_SY_RKT_T0_RNS0_20insert_commit_data_tISY_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.1.i.i.i.i.i153, ptr noundef nonnull align 4 dereferenceable(4) %i.hx, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null), !noalias !2786 ; 2 uses
  %.fca.0.extract.i.i.i158 = extractvalue { ptr, i8 } %i.jl, 0
  %.fca.1.extract.i.i.i159 = extractvalue { ptr, i8 } %i.jl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2784
  %i.jm = trunc nuw i8 %.fca.1.extract.i.i.i159 to i1
  br i1 %i.jm, label %bb.az, label %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit165

bb.az:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit157
  %i.jn = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2784 ; 13 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load <2 x i32>, ptr %i.hx, align 8, !tbaa !182, !noalias !2784
  store <2 x i32> %i.jp, ptr %i.jo, align 4, !tbaa !182, !noalias !2784
  %i.jq = load ptr, ptr %i.hw, align 8, !tbaa !211, !noalias !2787 ; 6 uses
  %i.jr = load i8, ptr %5, align 8, !tbaa !210, !range !205, !noalias !2787, !noundef !200
  %i.js = trunc nuw i8 %i.jr to i1
  %i.jt = icmp eq ptr %i.jq, %i.b                 ; 2 uses
  br i1 %i.js, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i163, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i161

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i161: ; preds = %bb.az
  br i1 %i.jt, label %bb.ba, label %bb.bc

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i163: ; preds = %bb.az
  br i1 %i.jt, label %bb.ba, label %.thread.i.i.i164

bb.ba:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i163, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i161
  %i.ju = ptrtoint ptr %i.jn to i64
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !2787
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %i.jy = or disjoint i64 %i.jx, %i.ju
  %i.jz = inttoptr i64 %i.jy to ptr
  store ptr %i.jz, ptr %i.b, align 8, !tbaa !185, !noalias !2787
  store ptr %i.jn, ptr %i.n, align 8, !tbaa !181, !noalias !2787
  store ptr %i.jn, ptr %i.m, align 8, !tbaa !180, !noalias !2787
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162

.thread.i.i.i164:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i163
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store ptr %i.jn, ptr %i.ka, align 8, !tbaa !180, !noalias !2787
  %i.kb = load ptr, ptr %i.m, align 8, !tbaa !180, !noalias !2787
  %i.kc = icmp eq ptr %i.jq, %i.kb
  br i1 %i.kc, label %bb.bb, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162

bb.bb:                                            ; preds = %.thread.i.i.i164
  store ptr %i.jn, ptr %i.m, align 8, !tbaa !180, !noalias !2787
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162

bb.bc:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i161
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store ptr %i.jn, ptr %i.kd, align 8, !tbaa !181, !noalias !2787
  %i.ke = load ptr, ptr %i.n, align 8, !tbaa !181, !noalias !2787
  %i.kf = icmp eq ptr %i.jq, %i.ke
  br i1 %i.kf, label %bb.bd, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.jn, ptr %i.n, align 8, !tbaa !181, !noalias !2787
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162: ; preds = %bb.bd, %bb.bc, %bb.bb, %.thread.i.i.i164, %bb.ba
  %i.kg = ptrtoint ptr %i.jq to i64
  %i.kh = load ptr, ptr %i.jn, align 8, !tbaa !185, !noalias !2787
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = and i64 %i.ki, 1
  %i.kk = or i64 %i.kj, %i.kg
  %i.kl = inttoptr i64 %i.kk to ptr
  store ptr %i.kl, ptr %i.jn, align 8, !tbaa !185, !noalias !2787
  %i.km = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, i8 0, i64 16, i1 false), !noalias !2787
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.jn) #26, !noalias !2787
  %i.kn = load i64, ptr %0, align 8, !tbaa !188, !noalias !2787
  %i.ko = add i64 %i.kn, 1
  store i64 %i.ko, ptr %0, align 8, !tbaa !188, !noalias !2787
  br label %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit165

_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit165: ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit157, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162
  %.sroa.010.0.i.i160 = phi ptr [ %i.jn, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISA_EEEE.exit.i.i162 ], [ %.fca.0.extract.i.i.i158, %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiESaIS5_ENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS4_.exit157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !2784
  br label %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEES4_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEEbEOiDpOT_.exit146

_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEES4_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEEbEOiDpOT_.exit146: ; preds = %bb.at, %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit165
  %.sroa.0225.0 = phi ptr [ %.sroa.010.0.i.i160, %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEENSE_ISS_Lb1EEEOiDpOT_.exit165 ], [ %.127.i.i.i.i132, %bb.at ] ; 2 uses
  %.not307 = icmp eq ptr %.sroa.0225.0, %.1.i.i.i.i.i.i
  br i1 %.not307, label %bb.be, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.be:                                            ; preds = %_ZN5boost9container3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJiEEES4_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSF_8bhtraitsINS0_9base_nodeIS6_NSD_19intrusive_tree_hookIPvLS9_0ELb1EEELb1EEENSF_18rbtree_node_traitsISK_Lb1EEELNSF_14link_mode_typeE0ENSF_7dft_tagELj3EEELb0EEELb0EEEbEOiDpOT_.exit146
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0225.0, i64 28
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !265
  %i.kr = zext i32 %i.kq to i64
  %.not77 = icmp eq i64 %indvars.iv, %i.kr
  br i1 %.not77, label %bb.ap, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

.critedge83:                                      ; preds = %bb.av, %.thread.i.i.i145, %bb.aw, %bb.ax, %bb.ay
  store ptr %.02830.i.i.i.i131, ptr %i.is, align 8, !tbaa !185, !noalias !2782
  %i.ks = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, i8 0, i64 16, i1 false), !noalias !2782
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.is) #26, !noalias !2782
  %i.kt = load i64, ptr %0, align 8, !tbaa !188, !noalias !2782
  %i.ku = add i64 %i.kt, 1
  store i64 %i.ku, ptr %0, align 8, !tbaa !188, !noalias !2782
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

.critedge85:                                      ; preds = %bb.ap
  %i.kv = load i64, ptr %0, align 8, !tbaa !188
  %i.kw = load i64, ptr %i.ai, align 8, !tbaa !234
  %.not.i166 = icmp eq i64 %i.kv, %i.kw
  br i1 %.not.i166, label %bb.bf, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.bf:                                            ; preds = %.critedge85
  %i.kx = load ptr, ptr %i.m, align 8, !tbaa !180, !noalias !2788 ; 2 uses
  %.not1920.i168 = icmp eq ptr %i.kx, %i.b
  br i1 %.not1920.i168, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit191, label %.lr.ph.preheader.i169

.lr.ph.preheader.i169:                            ; preds = %bb.bf
  %i.ky = load ptr, ptr %i.ag, align 8, !tbaa !232
  br label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i181, %.lr.ph.preheader.i169
  %.sroa.0.022.i171 = phi ptr [ %i.lp, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i181 ], [ %i.ky, %.lr.ph.preheader.i169 ] ; 3 uses
  %.sroa.015.021.i172 = phi ptr [ %.014.i.i.i.i182, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i181 ], [ %i.kx, %.lr.ph.preheader.i169 ] ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i171, i64 32
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !264
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i172, i64 24
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !264
  %.not10.i173 = icmp eq i32 %i.lc, %i.la
  br i1 %.not10.i173, label %bb.bg, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.bg:                                            ; preds = %.lr.ph.i170
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i171, i64 36
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !265
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i172, i64 28
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !265
  %.not11.i174 = icmp eq i32 %i.lg, %i.le
  br i1 %.not11.i174, label %bb.bh, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.bh:                                            ; preds = %bb.bg
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i172, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i175, label %.preheader.i.i.i.i184, label %.preheader17.i.i.i.i176

.preheader17.i.i.i.i176:                          ; preds = %bb.bh, %.preheader17.i.i.i.i176
  %.05.i.i.i.i.i177 = phi ptr [ %.0.i.i.i.i.i179, %.preheader17.i.i.i.i176 ], [ %i.li, %bb.bh ] ; 2 uses
  %.0.in.i.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i177, i64 8
  %.0.i.i.i.i.i179 = load ptr, ptr %.0.in.i.i.i.i.i178, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i180 = icmp eq ptr %.0.i.i.i.i.i179, null
  br i1 %.not.i.i.i.i.i180, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i181, label %.preheader17.i.i.i.i176, !llvm.loop !16

.preheader.i.i.i.i184:                            ; preds = %bb.bh, %.preheader.i.i.i.i184
  %.013.i.i.i.i185 = phi ptr [ %.0.i.i.i.i189, %.preheader.i.i.i.i184 ], [ %.sroa.015.021.i172, %bb.bh ] ; 4 uses
  %.0.in.in.in.i.i.i.i186 = load ptr, ptr %.013.i.i.i.i185, align 8, !tbaa !189
  %.0.in.in.i.i.i.i187 = ptrtoint ptr %.0.in.in.in.i.i.i.i186 to i64
  %.0.in.i.i.i.i188 = and i64 %.0.in.in.i.i.i.i187, -2
  %.0.i.i.i.i189 = inttoptr i64 %.0.in.i.i.i.i188 to ptr ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i189, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !181
  %i.ll = icmp eq ptr %.013.i.i.i.i185, %i.lk
  br i1 %i.ll, label %.preheader.i.i.i.i184, label %bb.bi, !llvm.loop !17

bb.bi:                                            ; preds = %.preheader.i.i.i.i184
  %i.lm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i185, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !181
  %.not16.i.i.i.i190 = icmp eq ptr %i.ln, %.0.i.i.i.i189
  %i.lo = select i1 %.not16.i.i.i.i190, ptr %.013.i.i.i.i185, ptr %.0.i.i.i.i189
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i181

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i181: ; preds = %.preheader17.i.i.i.i176, %bb.bi
  %.014.i.i.i.i182 = phi ptr [ %i.lo, %bb.bi ], [ %.05.i.i.i.i.i177, %.preheader17.i.i.i.i176 ] ; 2 uses
  %i.lp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i171) #28
  %.not19.i183 = icmp eq ptr %.014.i.i.i.i182, %i.b
  br i1 %.not19.i183, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit191, label %.lr.ph.i170, !llvm.loop !44

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit191: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i181, %bb.bf
  %i.lq = load i64, ptr %2, align 8, !tbaa !188
  %i.lr = load i64, ptr %i.aq, align 8, !tbaa !234
  %.not.i192 = icmp eq i64 %i.lq, %i.lr
  br i1 %.not.i192, label %bb.bj, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.bj:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_S9_EEEbRKT_RKT0_.exit191
  %i.ls = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !2789 ; 2 uses
  %.not1920.i194 = icmp eq ptr %i.ls, %i.o
  br i1 %.not1920.i194, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217, label %.lr.ph.preheader.i195

.lr.ph.preheader.i195:                            ; preds = %bb.bj
  %i.lt = load ptr, ptr %i.ao, align 8, !tbaa !232
  br label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i207, %.lr.ph.preheader.i195
  %.sroa.0.022.i197 = phi ptr [ %i.mk, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i207 ], [ %i.lt, %.lr.ph.preheader.i195 ] ; 3 uses
  %.sroa.015.021.i198 = phi ptr [ %.014.i.i.i.i208, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i207 ], [ %i.ls, %.lr.ph.preheader.i195 ] ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i197, i64 32
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !264
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i198, i64 24
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !264
  %.not10.i199 = icmp eq i32 %i.lx, %i.lv
  br i1 %.not10.i199, label %bb.bk, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.bk:                                            ; preds = %.lr.ph.i196
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i197, i64 36
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !265
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i198, i64 28
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !265
  %.not11.i200 = icmp eq i32 %i.mb, %i.lz
  br i1 %.not11.i200, label %bb.bl, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiESaISt4pairIKiiEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_S9_EEEbRKT_RKT0_.exit217

bb.bl:                                            ; preds = %bb.bk
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i198, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i201, label %.preheader.i.i.i.i210, label %.preheader17.i.i.i.i202

.preheader17.i.i.i.i202:                          ; preds = %bb.bl, %.preheader17.i.i.i.i202
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EENS0_8multimapIiiS5_SA_SD_EESt8multimapIiiS5_SG_EEEiRT_RT0_RT1_RT2_:bb.a
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.bo, align 8, !tbaa !182
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.bp, align 8, !tbaa !182
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.bq, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.br, align 8, !tbaa !182
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.bs, align 8, !tbaa !182
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.bt, align 8, !tbaa !182
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.bu, align 8, !tbaa !182
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.bv, align 8, !tbaa !182
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.bw, align 8, !tbaa !182
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 392
  store i32 49, ptr %i.bx, align 8, !tbaa !438
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 396
  store i32 49, ptr %i.by, align 4, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %9, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.bz, align 4, !tbaa !182
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.ca, align 4, !tbaa !182
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.cb, align 4, !tbaa !182
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.cc, align 4, !tbaa !182
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.cd, align 4, !tbaa !182
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ce, align 4, !tbaa !182
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.cf, align 4, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.cg, align 4, !tbaa !182
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.ch, align 4, !tbaa !182
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.ci, align 4, !tbaa !182
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.cj, align 4, !tbaa !182
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.ck, align 4, !tbaa !182
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.cl, align 4, !tbaa !182
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.cm, align 4, !tbaa !182
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.cn, align 4, !tbaa !182
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.co, align 4, !tbaa !182
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.cp, align 4, !tbaa !182
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.cq, align 4, !tbaa !182
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.cr, align 4, !tbaa !182
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.cs, align 4, !tbaa !182
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.ct, align 4, !tbaa !182
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.cu, align 4, !tbaa !182
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.cv, align 4, !tbaa !182
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.cw, align 4, !tbaa !182
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 388
  store i32 2, ptr %i.cx, align 4, !tbaa !439
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 392
  store i32 49, ptr %i.cy, align 8, !tbaa !438
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 396
  store i32 1, ptr %i.cz, align 4, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.af
  %storemerge263 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.gm, %bb.af ] ; 2 uses
  %i.db = and i32 %storemerge263, 1
  %.not = icmp eq i32 %i.db, 0
  %i.dc = sext i32 %storemerge263 to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %8, i64 %i.dc ; 5 uses
  br i1 %.not, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !289, !noalias !3869
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, -4                       ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not29.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !182, !noalias !3869 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.02631.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.127.i.i.i.i, %bb.n ]
  %.02830.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i ], [ %i.dm, %bb.n ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 24
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !182, !noalias !3869
  %i.dl = icmp slt i32 %i.di, %i.dk               ; 4 uses
  %.127.i.i.i.i = select i1 %i.dl, ptr %.02631.i.i.i.i, ptr %.02830.i.i.i.i ; 3 uses
  %.in.v.i.i.i.i = select i1 %i.dl, i64 8, i64 16
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 %.in.v.i.i.i.i
  %i.dm = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !282, !noalias !3869 ; 2 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i93, label %._crit_edge.i.i.i.i, label %bb.n, !llvm.loop !72

._crit_edge.i.i.i.i:                              ; preds = %bb.n
  %.not18.i.i.i.i = icmp eq ptr %.127.i.i.i.i, null
  br i1 %.not18.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i, i64 24
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !182, !noalias !3869
  %i.dp = icmp slt i32 %i.do, %i.di
  br i1 %i.dp, label %bb.p, label %.critedge81.thread

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.0.lcssa.i12.shrunk.i.i.i = phi i1 [ %i.dl, %._crit_edge.i.i.i.i ], [ %i.dl, %bb.o ], [ true, %bb.m ]
  %.013.lcssa.i11.i.i.i = phi ptr [ %.02830.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.02830.i.i.i.i, %bb.o ], [ %i.b, %bb.m ] ; 6 uses
  %i.dq = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !3870 ; 13 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load <2 x i32>, ptr %i.dd, align 8, !tbaa !182, !noalias !3870
  store <2 x i32> %i.ds, ptr %i.dr, align 4, !tbaa !182, !noalias !3870
  %i.dt = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.b ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i: ; preds = %bb.p
  br i1 %i.dt, label %bb.q, label %bb.s

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i: ; preds = %bb.p
  br i1 %i.dt, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !3871
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = and i64 %i.dw, 3
  %i.dy = or disjoint i64 %i.dx, %i.du
  %i.dz = inttoptr i64 %i.dy to ptr
  store ptr %i.dz, ptr %i.b, align 8, !tbaa !282, !noalias !3871
  store ptr %i.dq, ptr %i.r, align 8, !tbaa !281, !noalias !3871
  store ptr %i.dq, ptr %i.q, align 8, !tbaa !280, !noalias !3871
  br label %bb.u

.thread.i.i.i:                                    ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 8
  store ptr %i.dq, ptr %i.ea, align 8, !tbaa !280, !noalias !3871
  %i.eb = load ptr, ptr %i.q, align 8, !tbaa !280, !noalias !3871
  %i.ec = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.eb
  br i1 %i.ec, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.thread.i.i.i
  store ptr %i.dq, ptr %i.q, align 8, !tbaa !280, !noalias !3871
  br label %bb.u

bb.s:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 16
  store ptr %i.dq, ptr %i.ed, align 8, !tbaa !281, !noalias !3871
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !281, !noalias !3871
  %i.ef = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.ee
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.dq, ptr %i.r, align 8, !tbaa !281, !noalias !3871
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %.thread.i.i.i, %bb.r, %bb.s, %bb.t
  %i.eg = ptrtoint ptr %.013.lcssa.i11.i.i.i to i64
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !282, !noalias !3871
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 3
  %i.ek = or i64 %i.ej, %i.eg
  %i.el = inttoptr i64 %i.ek to ptr
  store ptr %i.el, ptr %i.dq, align 8, !tbaa !282, !noalias !3871
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false), !noalias !3871
  call void @_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_20compact_avltree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.dq) #26, !noalias !3871
  %i.en = load i64, ptr %0, align 8, !tbaa !188, !noalias !3871
  %i.eo = add i64 %i.en, 1
  store i64 %i.eo, ptr %0, align 8, !tbaa !188, !noalias !3871
  br label %bb.ac

bb.v:                                             ; preds = %bb.l
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !289, !noalias !3872
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = and i64 %i.eq, -4                       ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit, label %.lr.ph.i.i.i.i.i94

.lr.ph.i.i.i.i.i94:                               ; preds = %bb.v
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load i32, ptr %i.dd, align 8, !tbaa !182, !noalias !3872
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i94
  %.08.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i94 ], [ %.1.i.i.i.i.i, %bb.w ]
  %storemerge27.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i94 ], [ %storemerge.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 24
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !182, !noalias !3872
  %i.ew = icmp slt i32 %i.et, %i.ev               ; 2 uses
  %storemerge.in.v.i.i.i.i.i = select i1 %i.ew, i64 8, i64 16
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.ew, ptr %storemerge27.i.i.i.i.i, ptr %.08.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !282, !noalias !3872 ; 2 uses
  %.not.i.i.i.i.i95 = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i95, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit, label %bb.w, !llvm.loop !69

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit: ; preds = %bb.w, %bb.v
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.b, %bb.v ], [ %.1.i.i.i.i.i, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !3873
  store i8 0, ptr %7, align 8, !tbaa !488, !noalias !3873
  store ptr null, ptr %i.da, align 8, !tbaa !489, !noalias !3873
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !3873
  store ptr %i.b, ptr %6, align 8, !tbaa !492, !alias.scope !3874, !noalias !3875
  %i.ex = call { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE19insert_unique_checkIiNS0_6detail16key_nodeptr_compINS_9container13key_node_predISt4lessIiENS9_3dtl9select1stIKiEENS9_9base_nodeISt4pairISF_iENSD_19intrusive_tree_hookIS3_LNS9_14tree_type_enumE1ELb1EEELb1EEEbEENS0_8bhtraitsISN_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENSD_11key_of_nodeISN_SG_EEEEEESI_IPNS0_20compact_avltree_nodeIS3_EEbEPKSX_SY_RKT_T0_RNS0_20insert_commit_data_tISY_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.dd, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null), !noalias !3875 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ex, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.ex, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !3873
  %i.ey = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.ey, label %bb.x, label %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit

bb.x:                                             ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit
  %i.ez = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !3873 ; 13 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load <2 x i32>, ptr %i.dd, align 8, !tbaa !182, !noalias !3873
  store <2 x i32> %i.fb, ptr %i.fa, align 4, !tbaa !182, !noalias !3873
  %i.fc = load ptr, ptr %i.da, align 8, !tbaa !489, !noalias !3876 ; 6 uses
  %i.fd = load i8, ptr %7, align 8, !tbaa !488, !range !205, !noalias !3876, !noundef !200
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = icmp eq ptr %i.fc, %i.b                 ; 2 uses
  br i1 %i.fe, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i98, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i96

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i96: ; preds = %bb.x
  br i1 %i.ff, label %bb.y, label %bb.aa

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i98: ; preds = %bb.x
  br i1 %i.ff, label %bb.y, label %.thread.i.i.i99

bb.y:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i98, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i96
  %i.fg = ptrtoint ptr %i.ez to i64
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !3876
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 3
  %i.fk = or disjoint i64 %i.fj, %i.fg
  %i.fl = inttoptr i64 %i.fk to ptr
  store ptr %i.fl, ptr %i.b, align 8, !tbaa !282, !noalias !3876
  store ptr %i.ez, ptr %i.r, align 8, !tbaa !281, !noalias !3876
  store ptr %i.ez, ptr %i.q, align 8, !tbaa !280, !noalias !3876
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97

.thread.i.i.i99:                                  ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i98
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.ez, ptr %i.fm, align 8, !tbaa !280, !noalias !3876
  %i.fn = load ptr, ptr %i.q, align 8, !tbaa !280, !noalias !3876
  %i.fo = icmp eq ptr %i.fc, %i.fn
  br i1 %i.fo, label %bb.z, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97

bb.z:                                             ; preds = %.thread.i.i.i99
  store ptr %i.ez, ptr %i.q, align 8, !tbaa !280, !noalias !3876
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97

bb.aa:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i96
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.ez, ptr %i.fp, align 8, !tbaa !281, !noalias !3876
  %i.fq = load ptr, ptr %i.r, align 8, !tbaa !281, !noalias !3876
  %i.fr = icmp eq ptr %i.fc, %i.fq
  br i1 %i.fr, label %bb.ab, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ez, ptr %i.r, align 8, !tbaa !281, !noalias !3876
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97: ; preds = %bb.ab, %bb.aa, %bb.z, %.thread.i.i.i99, %bb.y
  %i.fs = ptrtoint ptr %i.fc to i64
  %i.ft = load ptr, ptr %i.ez, align 8, !tbaa !282, !noalias !3876
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = and i64 %i.fu, 3
  %i.fw = or i64 %i.fv, %i.fs
  %i.fx = inttoptr i64 %i.fw to ptr
  store ptr %i.fx, ptr %i.ez, align 8, !tbaa !282, !noalias !3876
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false), !noalias !3876
  call void @_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_20compact_avltree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ez) #26, !noalias !3876
  %i.fz = load i64, ptr %0, align 8, !tbaa !188, !noalias !3876
  %i.ga = add i64 %i.fz, 1
  store i64 %i.ga, ptr %0, align 8, !tbaa !188, !noalias !3876
  br label %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit

_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit: ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97
  %.sroa.010.0.i.i = phi ptr [ %i.ez, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i97 ], [ %.fca.0.extract.i.i.i, %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3873
  br label %bb.ac

bb.ac:                                            ; preds = %bb.u, %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit
  %.sroa.0235.0 = phi ptr [ %.sroa.010.0.i.i, %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit ], [ %i.dq, %bb.u ] ; 3 uses
  %i.gb = icmp eq ptr %i.b, %.sroa.0235.0
  br i1 %i.gb, label %.critedge81.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0235.0, i64 24
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !264 ; 2 uses
  %i.ge = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !438
  %.not74 = icmp eq i32 %i.gd, %i.gh
  br i1 %.not74, label %bb.ae, label %.critedge81.thread

bb.ae:                                            ; preds = %bb.ad
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0235.0, i64 28
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !265
  %.not75 = icmp eq i32 %i.gj, %i.gd
  br i1 %.not75, label %bb.af, label %.critedge81.thread

bb.af:                                            ; preds = %bb.ae
  %i.gk = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.ge, ptr %i.gk, align 4, !tbaa !182
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gm = add nsw i32 %i.gl, 1                    ; 2 uses
  store i32 %i.gm, ptr %i.a, align 4, !tbaa !182
  %i.gn = icmp sgt i32 %i.gl, 48
  br i1 %i.gn, label %bb.ag, label %bb.l, !llvm.loop !3813

.critedge81.thread:                               ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.go = load i64, ptr %0, align 8, !tbaa !188
  %i.gp = load i64, ptr %i.aq, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.go, %i.gp
  br i1 %.not.i, label %bb.ah, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.ah:                                            ; preds = %bb.ag
  %i.gq = load ptr, ptr %i.q, align 8, !tbaa !280, !noalias !3877 ; 2 uses
  %.not1920.i = icmp eq ptr %i.gq, %i.b
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.gr = load ptr, ptr %i.ao, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.hi, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i ], [ %i.gr, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i ], [ %i.gq, %.lr.ph.preheader.i ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !264
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 24
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !264
  %.not10.i = icmp eq i32 %i.gv, %i.gt
  br i1 %.not10.i, label %bb.ai, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.ai:                                            ; preds = %.lr.ph.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !265
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 28
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !265
  %.not11.i = icmp eq i32 %i.gz, %i.gx
  br i1 %.not11.i, label %bb.aj, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.aj:                                            ; preds = %bb.ai
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i100, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.aj, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i101, %.preheader17.i.i.i.i ], [ %i.hb, %bb.aj ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %.0.i.i.i.i.i101 = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !280 ; 2 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %.0.i.i.i.i.i101, null
  br i1 %.not.i.i.i.i.i102, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i, label %.preheader17.i.i.i.i, !llvm.loop !64

.preheader.i.i.i.i:                               ; preds = %bb.aj, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.015.021.i, %bb.aj ] ; 4 uses
  %.0.in.in.in.i.i.i.i = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !289
  %.0.in.in.i.i.i.i = ptrtoint ptr %.0.in.in.in.i.i.i.i to i64
  %.0.in.i.i.i.i = and i64 %.0.in.in.i.i.i.i, -4
  %.0.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i to ptr ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !281
  %i.he = icmp eq ptr %.013.i.i.i.i, %i.hd
  br i1 %i.he, label %.preheader.i.i.i.i, label %bb.ak, !llvm.loop !65

bb.ak:                                            ; preds = %.preheader.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !281
  %.not16.i.i.i.i = icmp eq ptr %i.hg, %.0.i.i.i.i
  %i.hh = select i1 %.not16.i.i.i.i, ptr %.013.i.i.i.i, ptr %.0.i.i.i.i
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i: ; preds = %.preheader17.i.i.i.i, %bb.ak
  %.014.i.i.i.i = phi ptr [ %i.hh, %bb.ak ], [ %.05.i.i.i.i.i, %.preheader17.i.i.i.i ] ; 2 uses
  %i.hi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #28
  %.not19.i = icmp eq ptr %.014.i.i.i.i, %i.b
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !66

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i, %bb.ah
  %i.hj = load i64, ptr %2, align 8, !tbaa !188
  %i.hk = load i64, ptr %i.ay, align 8, !tbaa !234
  %.not.i103 = icmp eq i64 %i.hj, %i.hk
  br i1 %.not.i103, label %bb.al, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.al:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit
  %i.hl = load ptr, ptr %i.ah, align 8, !tbaa !280, !noalias !3878 ; 2 uses
  %.not1920.i105 = icmp eq ptr %i.hl, %i.s
  br i1 %.not1920.i105, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i106

.lr.ph.preheader.i106:                            ; preds = %bb.al
  %i.hm = load ptr, ptr %i.aw, align 8, !tbaa !232
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i118, %.lr.ph.preheader.i106
  %.sroa.0.022.i108 = phi ptr [ %i.id, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i118 ], [ %i.hm, %.lr.ph.preheader.i106 ] ; 3 uses
  %.sroa.015.021.i109 = phi ptr [ %.014.i.i.i.i119, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i118 ], [ %i.hl, %.lr.ph.preheader.i106 ] ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i108, i64 32
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !264
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i109, i64 24
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !264
  %.not10.i110 = icmp eq i32 %i.hq, %i.ho
  br i1 %.not10.i110, label %bb.am, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.am:                                            ; preds = %.lr.ph.i107
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i108, i64 36
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !265
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i109, i64 28
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !265
  %.not11.i111 = icmp eq i32 %i.hu, %i.hs
  br i1 %.not11.i111, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.an:                                            ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i109, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i.i112 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i112, label %.preheader.i.i.i.i121, label %.preheader17.i.i.i.i113

.preheader17.i.i.i.i113:                          ; preds = %bb.an, %.preheader17.i.i.i.i113
  %.05.i.i.i.i.i114 = phi ptr [ %.0.i.i.i.i.i116, %.preheader17.i.i.i.i113 ], [ %i.hw, %bb.an ] ; 2 uses
  %.0.in.i.i.i.i.i115 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i114, i64 8
  %.0.i.i.i.i.i116 = load ptr, ptr %.0.in.i.i.i.i.i115, align 8, !tbaa !280 ; 2 uses
  %.not.i.i.i.i.i117 = icmp eq ptr %.0.i.i.i.i.i116, null
  br i1 %.not.i.i.i.i.i117, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i118, label %.preheader17.i.i.i.i113, !llvm.loop !64

.preheader.i.i.i.i121:                            ; preds = %bb.an, %.preheader.i.i.i.i121
  %.013.i.i.i.i122 = phi ptr [ %.0.i.i.i.i126, %.preheader.i.i.i.i121 ], [ %.sroa.015.021.i109, %bb.an ] ; 4 uses
  %.0.in.in.in.i.i.i.i123 = load ptr, ptr %.013.i.i.i.i122, align 8, !tbaa !289
  %.0.in.in.i.i.i.i124 = ptrtoint ptr %.0.in.in.in.i.i.i.i123 to i64
  %.0.in.i.i.i.i125 = and i64 %.0.in.in.i.i.i.i124, -4
  %.0.i.i.i.i126 = inttoptr i64 %.0.in.i.i.i.i125 to ptr ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i126, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !281
  %i.hz = icmp eq ptr %.013.i.i.i.i122, %i.hy
  br i1 %i.hz, label %.preheader.i.i.i.i121, label %bb.ao, !llvm.loop !65

bb.ao:                                            ; preds = %.preheader.i.i.i.i121
  %i.ia = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i122, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !281
  %.not16.i.i.i.i127 = icmp eq ptr %i.ib, %.0.i.i.i.i126
  %i.ic = select i1 %.not16.i.i.i.i127, ptr %.013.i.i.i.i122, ptr %.0.i.i.i.i126
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i118

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i118: ; preds = %.preheader17.i.i.i.i113, %bb.ao
  %.014.i.i.i.i119 = phi ptr [ %i.ic, %bb.ao ], [ %.05.i.i.i.i.i114, %.preheader17.i.i.i.i113 ] ; 2 uses
  %i.id = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i108) #28
  %.not19.i120 = icmp eq ptr %.014.i.i.i.i119, %i.s
  br i1 %.not19.i120, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, label %.lr.ph.i107, !llvm.loop !67

_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i118, %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %bb.aq, !llvm.loop !3826

bb.aq:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, %bb.ap
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.ap ] ; 4 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 4 uses
  %i.ig = load ptr, ptr %i.b, align 8, !tbaa !289, !noalias !3879
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = and i64 %i.ih, -4                       ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aq
  %i.ij = inttoptr i64 %i.ii to ptr               ; 3 uses
  %i.ik = load i32, ptr %i.if, align 8, !tbaa !182, !noalias !3879 ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.ar ]
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.ar ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.im = load i32, ptr %i.il, align 4, !tbaa !182, !noalias !3879
  %i.in = icmp slt i32 %i.im, %i.ik               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.in, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.in, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !282, !noalias !3879 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE11lower_boundIiNS0_6detail16key_nodeptr_compISt4lessIiENS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENSC_3dtl19intrusive_tree_hookIS3_LNSC_14tree_type_enumE1ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENSH_11key_of_nodeISL_NSH_9select1stISF_EEEEEEEEPNS0_20compact_avltree_nodeIS3_EEPKSV_RKT_T0_.exit.i.i.i.i, label %bb.ar, !llvm.loop !68

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE11lower_boundIiNS0_6detail16key_nodeptr_compISt4lessIiENS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENSC_3dtl19intrusive_tree_hookIS3_LNSC_14tree_type_enumE1ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENSH_11key_of_nodeISL_NSH_9select1stISF_EEEEEEEEPNS0_20compact_avltree_nodeIS3_EEPKSV_RKT_T0_.exit.i.i.i.i: ; preds = %bb.ar
  %i.io = icmp eq ptr %.1.i.i.i.i.i.i, %i.b
  br i1 %i.io, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE4findERS4_.exit

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE4findERS4_.exit: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE11lower_boundIiNS0_6detail16key_nodeptr_compISt4lessIiENS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENSC_3dtl19intrusive_tree_hookIS3_LNSC_14tree_type_enumE1ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENSH_11key_of_nodeISL_NSH_9select1stISF_EEEEEEEEPNS0_20compact_avltree_nodeIS3_EEPKSV_RKT_T0_.exit.i.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 24
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !182, !noalias !3879
  %i.ir = icmp slt i32 %i.ik, %i.iq
  br i1 %i.ir, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE4findERS4_.exit
  %i.is = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.is, 0
  br i1 %.not76, label %.lr.ph.i.i.i.i.i148, label %.lr.ph.i.i.i.i129

.lr.ph.i.i.i.i129:                                ; preds = %bb.as, %.lr.ph.i.i.i.i129
  %.02631.i.i.i.i130 = phi ptr [ %.127.i.i.i.i132, %.lr.ph.i.i.i.i129 ], [ null, %bb.as ]
  %.02830.i.i.i.i131 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i129 ], [ %i.ij, %bb.as ] ; 9 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 24
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !182, !noalias !3880
  %i.iv = icmp slt i32 %i.ik, %i.iu               ; 3 uses
  %.127.i.i.i.i132 = select i1 %i.iv, ptr %.02631.i.i.i.i130, ptr %.02830.i.i.i.i131 ; 4 uses
  %.in.v.i.i.i.i133 = select i1 %i.iv, i64 8, i64 16
  %.in.i.i.i.i134 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 %.in.v.i.i.i.i133
  %i.iw = load ptr, ptr %.in.i.i.i.i134, align 8, !tbaa !282, !noalias !3880 ; 2 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i135, label %._crit_edge.i.i.i.i136, label %.lr.ph.i.i.i.i129, !llvm.loop !72

._crit_edge.i.i.i.i136:                           ; preds = %.lr.ph.i.i.i.i129
  %.not18.i.i.i.i137 = icmp eq ptr %.127.i.i.i.i132, null
  br i1 %.not18.i.i.i.i137, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i.i.i136
  %i.ix = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i132, i64 24
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !182, !noalias !3880
  %i.iz = icmp slt i32 %i.iy, %i.ik
  br i1 %i.iz, label %bb.au, label %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEES5_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEEbEOiDpOT_.exit146

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.i.i136
  %i.ja = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !3881 ; 12 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load <2 x i32>, ptr %i.if, align 4, !tbaa !182, !noalias !3881
  store <2 x i32> %i.jc, ptr %i.jb, align 4, !tbaa !182, !noalias !3881
  %i.jd = icmp eq ptr %.02830.i.i.i.i131, %i.b    ; 2 uses
  br i1 %i.iv, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i144, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i142

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i142: ; preds = %bb.au
  br i1 %i.jd, label %bb.av, label %bb.ax

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i144: ; preds = %bb.au
  br i1 %i.jd, label %bb.av, label %.thread.i.i.i145

bb.av:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i144, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i142
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !3882
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = and i64 %i.jg, 3
  %i.ji = or disjoint i64 %i.jh, %i.je
  %i.jj = inttoptr i64 %i.ji to ptr
  store ptr %i.jj, ptr %i.b, align 8, !tbaa !282, !noalias !3882
  store ptr %i.ja, ptr %i.r, align 8, !tbaa !281, !noalias !3882
  store ptr %i.ja, ptr %i.q, align 8, !tbaa !280, !noalias !3882
  br label %.critedge83

.thread.i.i.i145:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i144
  %i.jk = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 8
  store ptr %i.ja, ptr %i.jk, align 8, !tbaa !280, !noalias !3882
  %i.jl = load ptr, ptr %i.q, align 8, !tbaa !280, !noalias !3882
  %i.jm = icmp eq ptr %.02830.i.i.i.i131, %i.jl
  br i1 %i.jm, label %bb.aw, label %.critedge83

bb.aw:                                            ; preds = %.thread.i.i.i145
  store ptr %i.ja, ptr %i.q, align 8, !tbaa !280, !noalias !3882
  br label %.critedge83

bb.ax:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i142
  %i.jn = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i131, i64 16
  store ptr %i.ja, ptr %i.jn, align 8, !tbaa !281, !noalias !3882
  %i.jo = load ptr, ptr %i.r, align 8, !tbaa !281, !noalias !3882
  %i.jp = icmp eq ptr %.02830.i.i.i.i131, %i.jo
  br i1 %i.jp, label %bb.ay, label %.critedge83

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.ja, ptr %i.r, align 8, !tbaa !281, !noalias !3882
  br label %.critedge83

.lr.ph.i.i.i.i.i148:                              ; preds = %bb.as, %.lr.ph.i.i.i.i.i148
  %.08.i.i.i.i.i149 = phi ptr [ %.1.i.i.i.i.i153, %.lr.ph.i.i.i.i.i148 ], [ %i.b, %bb.as ]
  %storemerge27.i.i.i.i.i150 = phi ptr [ %storemerge.i.i.i.i.i154, %.lr.ph.i.i.i.i.i148 ], [ %i.ij, %bb.as ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i150, i64 24
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !182, !noalias !3883
  %i.js = icmp slt i32 %i.ik, %i.jr               ; 2 uses
  %storemerge.in.v.i.i.i.i.i151 = select i1 %i.js, i64 8, i64 16
  %storemerge.in.i.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i150, i64 %storemerge.in.v.i.i.i.i.i151
  %.1.i.i.i.i.i153 = select i1 %i.js, ptr %storemerge27.i.i.i.i.i150, ptr %.08.i.i.i.i.i149 ; 2 uses
  %storemerge.i.i.i.i.i154 = load ptr, ptr %storemerge.in.i.i.i.i.i152, align 8, !tbaa !282, !noalias !3883 ; 2 uses
  %.not.i.i.i.i.i155 = icmp eq ptr %storemerge.i.i.i.i.i154, null
  br i1 %.not.i.i.i.i.i155, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit157, label %.lr.ph.i.i.i.i.i148, !llvm.loop !69

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit157: ; preds = %.lr.ph.i.i.i.i.i148
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3884
  store i8 0, ptr %5, align 8, !tbaa !488, !noalias !3884
  store ptr null, ptr %i.ie, align 8, !tbaa !489, !noalias !3884
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !3884
  store ptr %i.b, ptr %4, align 8, !tbaa !492, !alias.scope !3885, !noalias !3886
  %i.jt = call { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE19insert_unique_checkIiNS0_6detail16key_nodeptr_compINS_9container13key_node_predISt4lessIiENS9_3dtl9select1stIKiEENS9_9base_nodeISt4pairISF_iENSD_19intrusive_tree_hookIS3_LNS9_14tree_type_enumE1ELb1EEELb1EEEbEENS0_8bhtraitsISN_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENSD_11key_of_nodeISN_SG_EEEEEESI_IPNS0_20compact_avltree_nodeIS3_EEbEPKSX_SY_RKT_T0_RNS0_20insert_commit_data_tISY_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.1.i.i.i.i.i153, ptr noundef nonnull align 4 dereferenceable(4) %i.if, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null), !noalias !3886 ; 2 uses
  %.fca.0.extract.i.i.i158 = extractvalue { ptr, i8 } %i.jt, 0
  %.fca.1.extract.i.i.i159 = extractvalue { ptr, i8 } %i.jt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !3884
  %i.ju = trunc nuw i8 %.fca.1.extract.i.i.i159 to i1
  br i1 %i.ju, label %bb.az, label %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit165

bb.az:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit157
  %i.jv = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !3884 ; 13 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load <2 x i32>, ptr %i.if, align 8, !tbaa !182, !noalias !3884
  store <2 x i32> %i.jx, ptr %i.jw, align 4, !tbaa !182, !noalias !3884
  %i.jy = load ptr, ptr %i.ie, align 8, !tbaa !489, !noalias !3887 ; 6 uses
  %i.jz = load i8, ptr %5, align 8, !tbaa !488, !range !205, !noalias !3887, !noundef !200
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = icmp eq ptr %i.jy, %i.b                 ; 2 uses
  br i1 %i.ka, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i163, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i161

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i161: ; preds = %bb.az
  br i1 %i.kb, label %bb.ba, label %bb.bc

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i163: ; preds = %bb.az
  br i1 %i.kb, label %bb.ba, label %.thread.i.i.i164

bb.ba:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i163, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i161
  %i.kc = ptrtoint ptr %i.jv to i64
  %i.kd = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !3887
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = and i64 %i.ke, 3
  %i.kg = or disjoint i64 %i.kf, %i.kc
  %i.kh = inttoptr i64 %i.kg to ptr
  store ptr %i.kh, ptr %i.b, align 8, !tbaa !282, !noalias !3887
  store ptr %i.jv, ptr %i.r, align 8, !tbaa !281, !noalias !3887
  store ptr %i.jv, ptr %i.q, align 8, !tbaa !280, !noalias !3887
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162

.thread.i.i.i164:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.thread.i.i.i163
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %i.jv, ptr %i.ki, align 8, !tbaa !280, !noalias !3887
  %i.kj = load ptr, ptr %i.q, align 8, !tbaa !280, !noalias !3887
  %i.kk = icmp eq ptr %i.jy, %i.kj
  br i1 %i.kk, label %bb.bb, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162

bb.bb:                                            ; preds = %.thread.i.i.i164
  store ptr %i.jv, ptr %i.q, align 8, !tbaa !280, !noalias !3887
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162

bb.bc:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEELb0EEppEv.exit.i.i.i161
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store ptr %i.jv, ptr %i.kl, align 8, !tbaa !281, !noalias !3887
  %i.km = load ptr, ptr %i.r, align 8, !tbaa !281, !noalias !3887
  %i.kn = icmp eq ptr %i.jy, %i.km
  br i1 %i.kn, label %bb.bd, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.jv, ptr %i.r, align 8, !tbaa !281, !noalias !3887
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162: ; preds = %bb.bd, %bb.bc, %bb.bb, %.thread.i.i.i164, %bb.ba
  %i.ko = ptrtoint ptr %i.jy to i64
  %i.kp = load ptr, ptr %i.jv, align 8, !tbaa !282, !noalias !3887
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = and i64 %i.kq, 3
  %i.ks = or i64 %i.kr, %i.ko
  %i.kt = inttoptr i64 %i.ks to ptr
  store ptr %i.kt, ptr %i.jv, align 8, !tbaa !282, !noalias !3887
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, i8 0, i64 16, i1 false), !noalias !3887
  call void @_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_20compact_avltree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.jv) #26, !noalias !3887
  %i.kv = load i64, ptr %0, align 8, !tbaa !188, !noalias !3887
  %i.kw = add i64 %i.kv, 1
  store i64 %i.kw, ptr %0, align 8, !tbaa !188, !noalias !3887
  br label %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit165

_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit165: ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit157, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162
  %.sroa.010.0.i.i160 = phi ptr [ %i.jv, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE1ELb1EEELb1EEENS0_19avltree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj5EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERSD_RKNS0_20insert_commit_data_tIPNS0_20compact_avltree_nodeISA_EEEE.exit.i.i162 ], [ %.fca.0.extract.i.i.i158, %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13new_allocatorIS5_EENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11upper_boundERS4_.exit157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3884
  br label %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEES5_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEEbEOiDpOT_.exit146

_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEES5_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEEbEOiDpOT_.exit146: ; preds = %bb.at, %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit165
  %.sroa.0225.0 = phi ptr [ %.sroa.010.0.i.i160, %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEENSF_IST_Lb1EEEOiDpOT_.exit165 ], [ %.127.i.i.i.i132, %bb.at ] ; 2 uses
  %.not307 = icmp eq ptr %.sroa.0225.0, %.1.i.i.i.i.i.i
  br i1 %.not307, label %bb.be, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.be:                                            ; preds = %_ZN5boost9container3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEE11try_emplaceIJiEEES5_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS7_NSE_19intrusive_tree_hookIPvLSA_1ELb1EEELb1EEENSG_19avltree_node_traitsISL_Lb1EEELNSG_14link_mode_typeE0ENSG_7dft_tagELj5EEELb0EEELb0EEEbEOiDpOT_.exit146
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0225.0, i64 28
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !265
  %i.kz = zext i32 %i.ky to i64
  %.not77 = icmp eq i64 %indvars.iv, %i.kz
  br i1 %.not77, label %bb.ap, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

.critedge83:                                      ; preds = %bb.av, %.thread.i.i.i145, %bb.aw, %bb.ax, %bb.ay
  %i.la = ptrtoint ptr %.02830.i.i.i.i131 to i64
  %i.lb = load ptr, ptr %i.ja, align 8, !tbaa !282, !noalias !3882
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = and i64 %i.lc, 3
  %i.le = or i64 %i.ld, %i.la
  %i.lf = inttoptr i64 %i.le to ptr
  store ptr %i.lf, ptr %i.ja, align 8, !tbaa !282, !noalias !3882
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, i8 0, i64 16, i1 false), !noalias !3882
  call void @_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_20compact_avltree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ja) #26, !noalias !3882
  %i.lh = load i64, ptr %0, align 8, !tbaa !188, !noalias !3882
  %i.li = add i64 %i.lh, 1
  store i64 %i.li, ptr %0, align 8, !tbaa !188, !noalias !3882
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

.critedge85:                                      ; preds = %bb.ap
  %i.lj = load i64, ptr %0, align 8, !tbaa !188
  %i.lk = load i64, ptr %i.aq, align 8, !tbaa !234
  %.not.i166 = icmp eq i64 %i.lj, %i.lk
  br i1 %.not.i166, label %bb.bf, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.bf:                                            ; preds = %.critedge85
  %i.ll = load ptr, ptr %i.q, align 8, !tbaa !280, !noalias !3888 ; 2 uses
  %.not1920.i168 = icmp eq ptr %i.ll, %i.b
  br i1 %.not1920.i168, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit191, label %.lr.ph.preheader.i169

.lr.ph.preheader.i169:                            ; preds = %bb.bf
  %i.lm = load ptr, ptr %i.ao, align 8, !tbaa !232
  br label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i181, %.lr.ph.preheader.i169
  %.sroa.0.022.i171 = phi ptr [ %i.md, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i181 ], [ %i.lm, %.lr.ph.preheader.i169 ] ; 3 uses
  %.sroa.015.021.i172 = phi ptr [ %.014.i.i.i.i182, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i181 ], [ %i.ll, %.lr.ph.preheader.i169 ] ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i171, i64 32
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !264
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i172, i64 24
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !264
  %.not10.i173 = icmp eq i32 %i.lq, %i.lo
  br i1 %.not10.i173, label %bb.bg, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.bg:                                            ; preds = %.lr.ph.i170
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i171, i64 36
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !265
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i172, i64 28
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !265
  %.not11.i174 = icmp eq i32 %i.lu, %i.ls
  br i1 %.not11.i174, label %bb.bh, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.bh:                                            ; preds = %bb.bg
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i172, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i175, label %.preheader.i.i.i.i184, label %.preheader17.i.i.i.i176

.preheader17.i.i.i.i176:                          ; preds = %bb.bh, %.preheader17.i.i.i.i176
  %.05.i.i.i.i.i177 = phi ptr [ %.0.i.i.i.i.i179, %.preheader17.i.i.i.i176 ], [ %i.lw, %bb.bh ] ; 2 uses
  %.0.in.i.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i177, i64 8
  %.0.i.i.i.i.i179 = load ptr, ptr %.0.in.i.i.i.i.i178, align 8, !tbaa !280 ; 2 uses
  %.not.i.i.i.i.i180 = icmp eq ptr %.0.i.i.i.i.i179, null
  br i1 %.not.i.i.i.i.i180, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i181, label %.preheader17.i.i.i.i176, !llvm.loop !64

.preheader.i.i.i.i184:                            ; preds = %bb.bh, %.preheader.i.i.i.i184
  %.013.i.i.i.i185 = phi ptr [ %.0.i.i.i.i189, %.preheader.i.i.i.i184 ], [ %.sroa.015.021.i172, %bb.bh ] ; 4 uses
  %.0.in.in.in.i.i.i.i186 = load ptr, ptr %.013.i.i.i.i185, align 8, !tbaa !289
  %.0.in.in.i.i.i.i187 = ptrtoint ptr %.0.in.in.in.i.i.i.i186 to i64
  %.0.in.i.i.i.i188 = and i64 %.0.in.in.i.i.i.i187, -4
  %.0.i.i.i.i189 = inttoptr i64 %.0.in.i.i.i.i188 to ptr ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i189, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !281
  %i.lz = icmp eq ptr %.013.i.i.i.i185, %i.ly
  br i1 %i.lz, label %.preheader.i.i.i.i184, label %bb.bi, !llvm.loop !65

bb.bi:                                            ; preds = %.preheader.i.i.i.i184
  %i.ma = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i185, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !281
  %.not16.i.i.i.i190 = icmp eq ptr %i.mb, %.0.i.i.i.i189
  %i.mc = select i1 %.not16.i.i.i.i190, ptr %.013.i.i.i.i185, ptr %.0.i.i.i.i189
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i181

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i181: ; preds = %.preheader17.i.i.i.i176, %bb.bi
  %.014.i.i.i.i182 = phi ptr [ %i.mc, %bb.bi ], [ %.05.i.i.i.i.i177, %.preheader17.i.i.i.i176 ] ; 2 uses
  %i.md = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i171) #28
  %.not19.i183 = icmp eq ptr %.014.i.i.i.i182, %i.b
  br i1 %.not19.i183, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit191, label %.lr.ph.i170, !llvm.loop !66

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit191: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i181, %bb.bf
  %i.me = load i64, ptr %2, align 8, !tbaa !188
  %i.mf = load i64, ptr %i.ay, align 8, !tbaa !234
  %.not.i192 = icmp eq i64 %i.me, %i.mf
  br i1 %.not.i192, label %bb.bj, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.bj:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit191
  %i.mg = load ptr, ptr %i.ah, align 8, !tbaa !280, !noalias !3889 ; 2 uses
  %.not1920.i194 = icmp eq ptr %i.mg, %i.s
  br i1 %.not1920.i194, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217, label %.lr.ph.preheader.i195

.lr.ph.preheader.i195:                            ; preds = %bb.bj
  %i.mh = load ptr, ptr %i.aw, align 8, !tbaa !232
  br label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i207, %.lr.ph.preheader.i195
  %.sroa.0.022.i197 = phi ptr [ %i.my, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i207 ], [ %i.mh, %.lr.ph.preheader.i195 ] ; 3 uses
  %.sroa.015.021.i198 = phi ptr [ %.014.i.i.i.i208, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE1ELb1EEELb1EEENS3_19avltree_node_traitsISB_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj5EEELb0EEELb1EEppEv.exit.i207 ], [ %i.mg, %.lr.ph.preheader.i195 ] ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i197, i64 32
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !264
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i198, i64 24
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !264
  %.not10.i199 = icmp eq i32 %i.ml, %i.mj
  br i1 %.not10.i199, label %bb.bk, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.bk:                                            ; preds = %.lr.ph.i196
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i197, i64 36
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !265
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i198, i64 28
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !265
  %.not11.i200 = icmp eq i32 %i.mp, %i.mn
  br i1 %.not11.i200, label %bb.bl, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIKiiEEENS0_8tree_optILNS0_14tree_type_enumE1ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit217

bb.bl:                                            ; preds = %bb.bk
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt3mapIiiS5_SaIS9_EENS0_8multimapIiiS5_SA_SD_EESt8multimapIiiS5_SG_EEEiRT_RT0_RT1_RT2_:bb.a
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !292
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.y, ptr %i.ap, align 8, !tbaa !293
  store i64 0, ptr %2, align 8, !tbaa !188
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.aq, align 8, !tbaa !296
  br i1 %i.an, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE5clearEv.exit95, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9intrusive11sgtree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE2ELb1EEELb1EEENS0_16tree_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1EvE17clear_and_disposeINS8_42allocator_node_destroyer_and_chain_builderINS3_13adaptive_poolISD_Lm256ELm2ELm1ELj2EEEEEEEvT_.exit.i.i92
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeISt4pairIKiiENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEELm256ELm2ELm1ELj2EE21deallocate_individualERNS6_31transform_multiallocation_chainINS6_27basic_multiallocation_chainIS8_EESB_EE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %8) #26
  br label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE5clearEv.exit95

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE5clearEv.exit95: ; preds = %_ZN5boost9intrusive11sgtree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE2ELb1EEELb1EEENS0_16tree_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1EvE17clear_and_disposeINS8_42allocator_node_destroyer_and_chain_builderINS3_13adaptive_poolISD_Lm256ELm2ELm1ELj2EEEEEEEvT_.exit.thread.i.i94, %_ZN5boost9intrusive11sgtree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKiiENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE2ELb1EEELb1EEENS0_16tree_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENS8_11key_of_nodeISD_NS8_9select1stIS6_EEEESt4lessIiEmLb1EvE17clear_and_disposeINS8_42allocator_node_destroyer_and_chain_builderINS3_13adaptive_poolISD_Lm256ELm2ELm1ELj2EEEEEEEvT_.exit.i.i92, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !231
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.as)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE5clearEv.exit95
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #31
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE5clearEv.exit95
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !231
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !232
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !233
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !234
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !231
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ba)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #31
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.az, align 8, !tbaa !231
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !232
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !233
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %10, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.bh, align 8, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  store <4 x i32> <i32 3, i32 3, i32 4, i32 4>, ptr %i.bi, align 8, !tbaa !182
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 40
  store <4 x i32> <i32 5, i32 5, i32 6, i32 6>, ptr %i.bj, align 8, !tbaa !182
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 56
  store <4 x i32> <i32 7, i32 7, i32 8, i32 8>, ptr %i.bk, align 8, !tbaa !182
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 72
  store <4 x i32> <i32 9, i32 9, i32 10, i32 10>, ptr %i.bl, align 8, !tbaa !182
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.bm, align 8, !tbaa !182
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.bn, align 8, !tbaa !182
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 120
  store <4 x i32> <i32 15, i32 15, i32 16, i32 16>, ptr %i.bo, align 8, !tbaa !182
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 136
  store <4 x i32> <i32 17, i32 17, i32 18, i32 18>, ptr %i.bp, align 8, !tbaa !182
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 152
  store <4 x i32> <i32 19, i32 19, i32 20, i32 20>, ptr %i.bq, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 168
  store <4 x i32> <i32 21, i32 21, i32 22, i32 22>, ptr %i.br, align 8, !tbaa !182
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 184
  store <4 x i32> <i32 23, i32 23, i32 24, i32 24>, ptr %i.bs, align 8, !tbaa !182
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 200
  store <4 x i32> <i32 25, i32 25, i32 26, i32 26>, ptr %i.bt, align 8, !tbaa !182
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 216
  store <4 x i32> <i32 27, i32 27, i32 28, i32 28>, ptr %i.bu, align 8, !tbaa !182
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 232
  store <4 x i32> <i32 29, i32 29, i32 30, i32 30>, ptr %i.bv, align 8, !tbaa !182
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 248
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.bw, align 8, !tbaa !182
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.bx, align 8, !tbaa !182
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.by, align 8, !tbaa !182
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.bz, align 8, !tbaa !182
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.ca, align 8, !tbaa !182
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.cb, align 8, !tbaa !182
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.cc, align 8, !tbaa !182
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.cd, align 8, !tbaa !182
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.ce, align 8, !tbaa !182
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 392
  store i32 49, ptr %i.cf, align 8, !tbaa !438
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 396
  store i32 49, ptr %i.cg, align 4, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %11, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.ch, align 4, !tbaa !182
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.ci, align 4, !tbaa !182
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.cj, align 4, !tbaa !182
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.ck, align 4, !tbaa !182
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.cl, align 4, !tbaa !182
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.cm, align 4, !tbaa !182
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.cn, align 4, !tbaa !182
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.co, align 4, !tbaa !182
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.cp, align 4, !tbaa !182
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.cq, align 4, !tbaa !182
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.cr, align 4, !tbaa !182
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.cs, align 4, !tbaa !182
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.ct, align 4, !tbaa !182
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.cu, align 4, !tbaa !182
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.cv, align 4, !tbaa !182
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.cw, align 4, !tbaa !182
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.cx, align 4, !tbaa !182
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.cy, align 4, !tbaa !182
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.cz, align 4, !tbaa !182
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.da, align 4, !tbaa !182
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.db, align 4, !tbaa !182
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.dc, align 4, !tbaa !182
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.dd, align 4, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.de, align 4, !tbaa !182
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 388
  store i32 2, ptr %i.df, align 4, !tbaa !439
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 392
  store i32 49, ptr %i.dg, align 8, !tbaa !438
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 396
  store i32 1, ptr %i.dh, align 4, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.t
  %storemerge211 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.ek, %bb.t ] ; 3 uses
  %i.dj = and i32 %storemerge211, 1
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.dk = sext i32 %storemerge211 to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %10, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  call void @_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE11try_emplaceIiJiEEES3_INS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLSB_2ELb1EEELb1EEENSG_16tree_node_traitsISL_EELNSG_14link_mode_typeE0ENSG_7dft_tagELj6EEELb0EEELb0EEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.442") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.dm)
  %i.dn = load i8, ptr %i.di, align 8, !tbaa !544, !range !205, !noundef !200
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.n, label %.critedge79

bb.n:                                             ; preds = %bb.m
  %i.dp = load ptr, ptr %12, align 8, !tbaa !555
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.dq = sext i32 %storemerge211 to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %10, i64 %i.dq ; 3 uses
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !309, !noalias !5050 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not6.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE11upper_boundERS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !182, !noalias !5050
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.p ]
  %storemerge27.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 24
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !182, !noalias !5050
  %i.dw = icmp slt i32 %i.dt, %i.dv               ; 2 uses
  %storemerge.in.v.i.i.i.i.i = select i1 %i.dw, i64 8, i64 16
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.dw, ptr %storemerge27.i.i.i.i.i, ptr %.08.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !540, !noalias !5050 ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i96, label %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE11upper_boundERS4_.exit, label %bb.p, !llvm.loop !87

_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE11upper_boundERS4_.exit: ; preds = %bb.p, %bb.o
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.d, %bb.o ], [ %.1.i.i.i.i.i, %bb.p ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !5051
  store ptr %.0.lcssa.i.i.i.i.i, ptr %7, align 8, !tbaa !539, !noalias !5051
  call void @_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE11try_emplaceIiJiEEES3_INS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSG_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLSB_2ELb1EEELb1EEENSG_16tree_node_traitsISL_EELNSG_14link_mode_typeE0ENSG_7dft_tagELj6EEELb0EEELb0EEEbENSF_IST_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.442") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 4 dereferenceable(4) %i.dr, ptr noundef nonnull align 4 dereferenceable(4) %i.dx), !noalias !5051
  %i.dy = load ptr, ptr %6, align 8, !tbaa !555, !noalias !5051
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !5051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE11upper_boundERS4_.exit
  %.sroa.0192.0 = phi ptr [ %i.dy, %_ZN5boost9container3dtl4treeISt4pairIKiiEiSt4lessIiENS0_13adaptive_poolIS5_Lm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEE11upper_boundERS4_.exit ], [ %i.dp, %bb.n ] ; 3 uses
  %i.dz = icmp eq ptr %i.d, %.sroa.0192.0
  br i1 %i.dz, label %.critedge81.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0192.0, i64 24
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !264 ; 2 uses
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %11, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !438
  %.not74 = icmp eq i32 %i.eb, %i.ef
  br i1 %.not74, label %bb.s, label %.critedge81.thread

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0192.0, i64 28
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !265
  %.not75 = icmp eq i32 %i.eh, %i.eb
  br i1 %.not75, label %bb.t, label %.critedge81.thread

bb.t:                                             ; preds = %bb.s
  %i.ei = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.ec, ptr %i.ei, align 4, !tbaa !182
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.ek = add nsw i32 %i.ej, 1                    ; 2 uses
  store i32 %i.ek, ptr %i.a, align 4, !tbaa !182
  %i.el = icmp sgt i32 %i.ej, 48
  br i1 %i.el, label %bb.u, label %bb.l, !llvm.loop !5010

.critedge79:                                      ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.critedge81.thread

.critedge81.thread:                               ; preds = %bb.s, %bb.q, %bb.r, %.critedge79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit178

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.em = load i64, ptr %0, align 8, !tbaa !188
  %i.en = load i64, ptr %i.ay, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.em, %i.en
  br i1 %.not.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit178

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !292, !noalias !5052 ; 2 uses
  %.not1920.i = icmp eq ptr %i.ep, %i.d
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.eq = load ptr, ptr %i.aw, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.fh, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i ], [ %i.eq, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i ], [ %i.ep, %.lr.ph.preheader.i ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.es = load i32, ptr %i.er, align 4, !tbaa !264
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 24
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !264
  %.not10.i = icmp eq i32 %i.eu, %i.es
  br i1 %.not10.i, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit178

bb.w:                                             ; preds = %.lr.ph.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !265
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 28
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !265
  %.not11.i = icmp eq i32 %i.ey, %i.ew
  br i1 %.not11.i, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit178

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.x, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.preheader17.i.i.i.i ], [ %i.fa, %bb.x ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %.0.i.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !292 ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i97, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i, label %.preheader17.i.i.i.i, !llvm.loop !80

.preheader.i.i.i.i:                               ; preds = %bb.x, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.015.021.i, %bb.x ] ; 4 uses
  %.0.i.i.i.i = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !309 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !293
  %i.fd = icmp eq ptr %.013.i.i.i.i, %i.fc
  br i1 %i.fd, label %.preheader.i.i.i.i, label %bb.y, !llvm.loop !81

bb.y:                                             ; preds = %.preheader.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !293
  %.not16.i.i.i.i = icmp eq ptr %i.ff, %.0.i.i.i.i
  %i.fg = select i1 %.not16.i.i.i.i, ptr %.013.i.i.i.i, ptr %.0.i.i.i.i
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i: ; preds = %.preheader17.i.i.i.i, %bb.y
  %.014.i.i.i.i = phi ptr [ %i.fg, %bb.y ], [ %.05.i.i.i.i.i, %.preheader17.i.i.i.i ] ; 2 uses
  %i.fh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #28
  %.not19.i = icmp eq ptr %.014.i.i.i.i, %i.d
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !82

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i, %bb.v
  %i.fi = load i64, ptr %2, align 8, !tbaa !188
  %i.fj = load i64, ptr %i.bg, align 8, !tbaa !234
  %.not.i98 = icmp eq i64 %i.fi, %i.fj
  br i1 %.not.i98, label %bb.z, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit178

bb.z:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt3mapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !292, !noalias !5053 ; 2 uses
  %.not1920.i100 = icmp eq ptr %i.fl, %i.y
  br i1 %.not1920.i100, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i101

.lr.ph.preheader.i101:                            ; preds = %bb.z
  %i.fm = load ptr, ptr %i.be, align 8, !tbaa !232
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i113, %.lr.ph.preheader.i101
  %.sroa.0.022.i103 = phi ptr [ %i.gd, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i113 ], [ %i.fm, %.lr.ph.preheader.i101 ] ; 3 uses
  %.sroa.015.021.i104 = phi ptr [ %.014.i.i.i.i114, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i113 ], [ %i.fl, %.lr.ph.preheader.i101 ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i103, i64 32
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !264
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i104, i64 24
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !264
  %.not10.i105 = icmp eq i32 %i.fq, %i.fo
  br i1 %.not10.i105, label %bb.aa, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit178

bb.aa:                                            ; preds = %.lr.ph.i102
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i103, i64 36
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !265
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i104, i64 28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !265
  %.not11.i106 = icmp eq i32 %i.fu, %i.fs
  br i1 %.not11.i106, label %bb.ab, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapIiiSt4lessIiENS0_13adaptive_poolISt4pairIKiiELm256ELm2ELm1ELj2EEENS0_8tree_optILNS0_14tree_type_enumE2ELb1EEEEESt8multimapIiiS5_SaIS9_EEEEbRKT_RKT0_.exit178

bb.ab:                                            ; preds = %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i104, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i107, label %.preheader.i.i.i.i116, label %.preheader17.i.i.i.i108

.preheader17.i.i.i.i108:                          ; preds = %bb.ab, %.preheader17.i.i.i.i108
  %.05.i.i.i.i.i109 = phi ptr [ %.0.i.i.i.i.i111, %.preheader17.i.i.i.i108 ], [ %i.fw, %bb.ab ] ; 2 uses
  %.0.in.i.i.i.i.i110 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i109, i64 8
  %.0.i.i.i.i.i111 = load ptr, ptr %.0.in.i.i.i.i.i110, align 8, !tbaa !292 ; 2 uses
  %.not.i.i.i.i.i112 = icmp eq ptr %.0.i.i.i.i.i111, null
  br i1 %.not.i.i.i.i.i112, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i113, label %.preheader17.i.i.i.i108, !llvm.loop !80

.preheader.i.i.i.i116:                            ; preds = %bb.ab, %.preheader.i.i.i.i116
  %.013.i.i.i.i117 = phi ptr [ %.0.i.i.i.i118, %.preheader.i.i.i.i116 ], [ %.sroa.015.021.i104, %bb.ab ] ; 4 uses
  %.0.i.i.i.i118 = load ptr, ptr %.013.i.i.i.i117, align 8, !tbaa !309 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i118, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !293
  %i.fz = icmp eq ptr %.013.i.i.i.i117, %i.fy
  br i1 %i.fz, label %.preheader.i.i.i.i116, label %bb.ac, !llvm.loop !81

bb.ac:                                            ; preds = %.preheader.i.i.i.i116
  %i.ga = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i117, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !293
  %.not16.i.i.i.i119 = icmp eq ptr %i.gb, %.0.i.i.i.i118
  %i.gc = select i1 %.not16.i.i.i.i119, ptr %.013.i.i.i.i117, ptr %.0.i.i.i.i118
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i113

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKiiENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE2ELb1EEELb1EEENS3_16tree_node_traitsISB_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i113: ; preds = %.preheader17.i.i.i.i108, %bb.ac
  %.014.i.i.i.i114 = phi ptr [ %i.gc, %bb.ac ], [ %.05.i.i.i.i.i109, %.preheader17.i.i.i.i108 ] ; 2 uses
  %i.gd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i103) #28
  %.not19.i115 = icmp eq ptr %.014.i.i.i.i114, %i.y
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  store <4 x i32> <i32 42, i32 42, i32 43, i32 43>, ptr %i.bl, align 16, !tbaa !184
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 352
  store <4 x i32> <i32 44, i32 44, i32 45, i32 45>, ptr %i.bm, align 16, !tbaa !184
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 368
  store <4 x i32> <i32 46, i32 46, i32 47, i32 47>, ptr %i.bn, align 16, !tbaa !184
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.bo, align 16, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bp, i8 0, i64 48, i1 false), !tbaa !184
  %i.bq = add i32 %_ZN5boost9container4test11movable_int5countE.promoted, 300
  store i32 %i.bq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %16, align 16, !tbaa !184
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.br, align 16, !tbaa !184
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.bs, align 16, !tbaa !184
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.bt, align 16, !tbaa !184
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.bu, align 16, !tbaa !184
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.bv, align 16, !tbaa !184
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.bw, align 16, !tbaa !184
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.bx, align 16, !tbaa !184
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.by, align 16, !tbaa !184
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.bz, align 16, !tbaa !184
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.ca, align 16, !tbaa !184
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.cb, align 16, !tbaa !184
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.cc, align 16, !tbaa !184
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.cd, align 16, !tbaa !184
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.ce, align 16, !tbaa !184
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.cf, align 16, !tbaa !184
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.cg, align 16, !tbaa !184
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.ch, align 16, !tbaa !184
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.ci, align 16, !tbaa !184
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.cj, align 16, !tbaa !184
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.ck, align 16, !tbaa !184
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.cl, align 16, !tbaa !184
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.cm, align 16, !tbaa !184
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.cn, align 16, !tbaa !184
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.co, align 16, !tbaa !184
  %i.cp = add i32 %_ZN5boost9container4test11movable_int5countE.promoted, 400
  store i32 %i.cp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.ai
  %storemerge315 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.fl, %bb.ai ] ; 2 uses
  %i.cr = and i32 %storemerge315, 1
  %.not = icmp eq i32 %i.cr, 0
  %i.cs = sext i32 %storemerge315 to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %15, i64 %i.cs ; 7 uses
  br i1 %.not, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !6309
  store ptr %i.b, ptr %14, align 8, !tbaa !604, !noalias !6309
  %i.cv = invoke noundef ptr @_ZN5boost9intrusive20splaytree_algorithmsINS0_16tree_node_traitsIPvEEE15priv_splay_downILb1ENS_9container4test11movable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSF_11key_of_nodeISP_SI_EEEEEEPNS0_9tree_nodeIS3_EES10_RKT0_T1_Pb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.ct, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef null)
          to label %.noexc unwind label %bb.t     ; 0 uses

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !6309
  %.02829.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !540, !noalias !6309 ; 2 uses
  %.not30.i.i.i.i.i = icmp eq ptr %.02829.i.i.i.i.i, null
  br i1 %.not30.i.i.i.i.i, label %bb.n, label %.lr.ph.i.i.i.i.i123

.lr.ph.i.i.i.i.i123:                              ; preds = %.noexc
  %i.cw = load i32, ptr %i.ct, align 8, !tbaa !184, !noalias !6309 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i123
  %.02833.i.i.i.i.i = phi ptr [ %.02829.i.i.i.i.i, %.lr.ph.i.i.i.i.i123 ], [ %.028.i.i.i.i.i, %bb.l ] ; 5 uses
  %.02631.i.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i.i123 ], [ %.127.i.i.i.i.i, %bb.l ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.02833.i.i.i.i.i, i64 24
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !184, !noalias !6309
  %i.cz = icmp slt i32 %i.cw, %i.cy               ; 4 uses
  %.127.i.i.i.i.i = select i1 %i.cz, ptr %.02631.i.i.i.i.i, ptr %.02833.i.i.i.i.i ; 3 uses
  %.in.v.i.i.i.i.i = select i1 %i.cz, i64 8, i64 16
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02833.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %.028.i.i.i.i.i = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !540, !noalias !6309 ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq ptr %.028.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i, label %bb.l, !llvm.loop !113

._crit_edge.i.i.i.i.i:                            ; preds = %bb.l
  %.not18.i.i.i.i.i = icmp eq ptr %.127.i.i.i.i.i, null
  br i1 %.not18.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i.i, i64 24
  %i.db = load i32, ptr %i.da, align 4, !tbaa !184, !noalias !6309
  %i.dc = icmp slt i32 %i.db, %i.cw
  br i1 %i.dc, label %bb.n, label %.critedge109.thread

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i, %.noexc
  %.0.lcssa.i15.shrunk.i.i.i.i = phi i1 [ %i.cz, %._crit_edge.i.i.i.i.i ], [ %i.cz, %bb.m ], [ true, %.noexc ]
  %.013.lcssa.i14.i.i.i.i = phi ptr [ %.02833.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.02833.i.i.i.i.i, %bb.m ], [ %i.b, %.noexc ] ; 6 uses
  %i.dd = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc125 unwind label %bb.t  ; 11 uses

.noexc125:                                        ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6310
  %i.dg = load <2 x i32>, ptr %i.ct, align 8, !tbaa !184, !noalias !6310
  store i32 0, ptr %i.ct, align 8, !tbaa !184, !noalias !6310
  store <2 x i32> %i.dg, ptr %i.de, align 4, !tbaa !184, !noalias !6310
  store i32 0, ptr %i.cu, align 4, !tbaa !184, !noalias !6310
  %i.dh = add i32 %i.df, 2
  store i32 %i.dh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6310
  %i.di = icmp eq ptr %.013.lcssa.i14.i.i.i.i, %i.b ; 2 uses
  br i1 %.0.lcssa.i15.shrunk.i.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i: ; preds = %.noexc125
  br i1 %i.di, label %bb.o, label %bb.q

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i: ; preds = %.noexc125
  br i1 %i.di, label %bb.o, label %.thread.i.i.i

bb.o:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i
  store ptr %i.dd, ptr %i.b, align 8, !tbaa !309, !noalias !6311
  store ptr %i.dd, ptr %i.m, align 8, !tbaa !293, !noalias !6311
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !292, !noalias !6311
  br label %bb.u

.thread.i.i.i:                                    ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i14.i.i.i.i, i64 8
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !292, !noalias !6311
  %i.dk = load ptr, ptr %i.l, align 8, !tbaa !292, !noalias !6311
  %i.dl = icmp eq ptr %.013.lcssa.i14.i.i.i.i, %i.dk
  br i1 %i.dl, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.thread.i.i.i
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !292, !noalias !6311
  br label %bb.u

bb.q:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.lcssa.i14.i.i.i.i, i64 16
  store ptr %i.dd, ptr %i.dm, align 8, !tbaa !293, !noalias !6311
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !293, !noalias !6311
  %i.do = icmp eq ptr %.013.lcssa.i14.i.i.i.i, %i.dn
  br i1 %i.do, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  store ptr %i.dd, ptr %i.m, align 8, !tbaa !293, !noalias !6311
  br label %bb.u

bb.s:                                             ; preds = %bb.ah
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %bb.n, %bb.k
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.u:                                             ; preds = %bb.o, %.thread.i.i.i, %bb.p, %bb.q, %bb.r
  store ptr %.013.lcssa.i14.i.i.i.i, ptr %i.dd, align 8, !tbaa !309, !noalias !6311
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false), !noalias !6311
  %i.ds = load i64, ptr %0, align 8, !tbaa !188, !noalias !6311
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %0, align 8, !tbaa !188, !noalias !6311
  br label %bb.ae

bb.v:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !6312
  store ptr %i.b, ptr %13, align 8, !tbaa !600, !noalias !6312
  %i.du = invoke noundef ptr @_ZN5boost9intrusive20splaytree_algorithmsINS0_16tree_node_traitsIPvEEE15priv_splay_downILb1ENS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_9tree_nodeIS3_EESY_RKT0_T1_Pb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.ct, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef null)
          to label %.noexc126 unwind label %bb.ad ; 0 uses

.noexc126:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !6312
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !309, !noalias !6312 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not6.i.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc126
  %i.dw = load i32, ptr %i.ct, align 8, !tbaa !184, !noalias !6312
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.w ]
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !184, !noalias !6312
  %i.dz = icmp slt i32 %i.dw, %i.dy               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.dz, i64 8, i64 16
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.dz, ptr %storemerge27.i.i.i.i.i.i, ptr %.08.i.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !540, !noalias !6312 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit, label %bb.w, !llvm.loop !108

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit: ; preds = %bb.w, %.noexc126
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.b, %.noexc126 ], [ %.1.i.i.i.i.i.i, %bb.w ]
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !182
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %15, i64 %i.eb ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !6313
  store i8 0, ptr %12, align 8, !tbaa !527, !noalias !6313
  store ptr null, ptr %i.cq, align 8, !tbaa !528, !noalias !6313
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !6314
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !6314
  store ptr %i.b, ptr %10, align 8, !tbaa !604, !noalias !6314
  %i.ee = invoke noundef ptr @_ZN5boost9intrusive20splaytree_algorithmsINS0_16tree_node_traitsIPvEEE15priv_splay_downILb1ENS_9container4test11movable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSF_11key_of_nodeISP_SI_EEEEEEPNS0_9tree_nodeIS3_EES10_RKT0_T1_Pb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.ec, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef null)
          to label %.noexc131 unwind label %bb.ad ; 0 uses

.noexc131:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !6314
  store ptr %i.b, ptr %11, align 8, !tbaa !604, !noalias !6314
  %i.ef = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_16tree_node_traitsIPvEEE19insert_unique_checkINS_9container4test11movable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_9tree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ec, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef null)
          to label %.noexc132 unwind label %bb.ad ; 2 uses

.noexc132:                                        ; preds = %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !6314
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ef, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.ef, 1
  %i.eg = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.eg, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %.noexc132
  %i.eh = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc133 unwind label %bb.ad ; 11 uses

.noexc133:                                        ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6313
  %i.ek = load <2 x i32>, ptr %i.ec, align 8, !tbaa !184, !noalias !6313
  store i32 0, ptr %i.ec, align 8, !tbaa !184, !noalias !6313
  store <2 x i32> %i.ek, ptr %i.ei, align 4, !tbaa !184, !noalias !6313
  store i32 0, ptr %i.ed, align 4, !tbaa !184, !noalias !6313
  %i.el = add i32 %i.ej, 2
  store i32 %i.el, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6313
  %i.em = load ptr, ptr %i.cq, align 8, !tbaa !528, !noalias !6315 ; 6 uses
  %i.en = load i8, ptr %12, align 8, !tbaa !527, !range !205, !noalias !6315, !noundef !200
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = icmp eq ptr %i.em, %i.b                 ; 2 uses
  br i1 %i.eo, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i129, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i127

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i127: ; preds = %.noexc133
  br i1 %i.ep, label %bb.y, label %bb.aa

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i129: ; preds = %.noexc133
  br i1 %i.ep, label %bb.y, label %.thread.i.i.i130

bb.y:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i129, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i127
  store ptr %i.eh, ptr %i.b, align 8, !tbaa !309, !noalias !6315
  store ptr %i.eh, ptr %i.m, align 8, !tbaa !293, !noalias !6315
  store ptr %i.eh, ptr %i.l, align 8, !tbaa !292, !noalias !6315
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128

.thread.i.i.i130:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i129
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.eh, ptr %i.eq, align 8, !tbaa !292, !noalias !6315
  %i.er = load ptr, ptr %i.l, align 8, !tbaa !292, !noalias !6315
  %i.es = icmp eq ptr %i.em, %i.er
  br i1 %i.es, label %bb.z, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128

bb.z:                                             ; preds = %.thread.i.i.i130
  store ptr %i.eh, ptr %i.l, align 8, !tbaa !292, !noalias !6315
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128

bb.aa:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i127
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.eh, ptr %i.et, align 8, !tbaa !293, !noalias !6315
  %i.eu = load ptr, ptr %i.m, align 8, !tbaa !293, !noalias !6315
  %i.ev = icmp eq ptr %i.em, %i.eu
  br i1 %i.ev, label %bb.ab, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.eh, ptr %i.m, align 8, !tbaa !293, !noalias !6315
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128: ; preds = %bb.ab, %bb.aa, %bb.z, %.thread.i.i.i130, %bb.y
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !309, !noalias !6315
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i8 0, i64 16, i1 false), !noalias !6315
  %i.ex = load i64, ptr %0, align 8, !tbaa !188, !noalias !6315
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %0, align 8, !tbaa !188, !noalias !6315
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128, %.noexc132
  %.sroa.010.0.i.i = phi ptr [ %i.eh, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i128 ], [ %.fca.0.extract.i.i.i, %.noexc132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !6313
  br label %bb.ae

bb.ad:                                            ; preds = %bb.x, %.noexc131, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit, %bb.v
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %bb.u, %bb.ac
  %.sroa.0270.0 = phi ptr [ %.sroa.010.0.i.i, %bb.ac ], [ %i.dd, %bb.u ] ; 3 uses
  %i.fa = icmp eq ptr %i.b, %.sroa.0270.0
  br i1 %i.fa, label %.critedge109.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0270.0, i64 24
  %i.fc = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %16, i64 %i.fd
  %i.ff = load i32, ptr %i.fb, align 4, !tbaa !184 ; 2 uses
  %i.fg = load i32, ptr %i.fe, align 8, !tbaa !184
  %.not288 = icmp eq i32 %i.ff, %i.fg
  br i1 %.not288, label %bb.ag, label %.critedge109.thread

bb.ag:                                            ; preds = %bb.af
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0270.0, i64 28
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !184
  %.not289 = icmp eq i32 %i.fi, %i.ff
  br i1 %.not289, label %bb.ah, label %.critedge109.thread

bb.ah:                                            ; preds = %bb.ag
  %i.fj = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ai unwind label %bb.s

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.fc, ptr %i.fj, align 4, !tbaa !182
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1                    ; 2 uses
  store i32 %i.fl, ptr %i.a, align 4, !tbaa !182
  %i.fm = icmp sgt i32 %i.fk, 48
  br i1 %i.fm, label %bb.ak, label %bb.j, !llvm.loop !6255

bb.aj:                                            ; preds = %bb.ad, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.s ], [ %i.dq, %bb.t ], [ %i.ez, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.by

.critedge109.thread:                              ; preds = %bb.ag, %bb.ae, %bb.af, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.fn = load i64, ptr %0, align 8, !tbaa !188
  %i.fo = load i64, ptr %i.ag, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.fn, %i.fo
  br i1 %.not.i, label %bb.al, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.al:                                            ; preds = %bb.ak
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !292, !noalias !6316 ; 2 uses
  %.not1721.i = icmp eq ptr %i.fp, %i.b
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.al
  %i.fq = load ptr, ptr %i.ae, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i ], [ %i.fp, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.09.022.i = phi ptr [ %i.gh, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i ], [ %i.fq, %.lr.ph.preheader.i ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !264
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 24
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !184
  %.not18.i = icmp eq i32 %i.fu, %i.fs
  br i1 %.not18.i, label %bb.am, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.am:                                            ; preds = %.lr.ph.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !265
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !184
  %.not19.i = icmp eq i32 %i.fy, %i.fw
  br i1 %.not19.i, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.an:                                            ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i134, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.an, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i135, %.preheader17.i.i.i.i ], [ %i.ga, %bb.an ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  %.0.i.i.i.i.i150 = load ptr, ptr %.0.in.i.i.i.i.i149, align 8, !tbaa !292 ; 2 uses
  %.not.i.i.i.i.i151 = icmp eq ptr %.0.i.i.i.i.i150, null
  br i1 %.not.i.i.i.i.i151, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i152, label %.preheader17.i.i.i.i147, !llvm.loop !80

.preheader.i.i.i.i155:                            ; preds = %bb.ar, %.preheader.i.i.i.i155
  %.013.i.i.i.i156 = phi ptr [ %.0.i.i.i.i157, %.preheader.i.i.i.i155 ], [ %.sroa.013.023.i142, %bb.ar ] ; 4 uses
  %.0.i.i.i.i157 = load ptr, ptr %.013.i.i.i.i156, align 8, !tbaa !309 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i157, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !293
  %i.gy = icmp eq ptr %.013.i.i.i.i156, %i.gx
  br i1 %i.gy, label %.preheader.i.i.i.i155, label %bb.as, !llvm.loop !81

bb.as:                                            ; preds = %.preheader.i.i.i.i155
  %i.gz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i156, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !293
  %.not16.i.i.i.i158 = icmp eq ptr %i.ha, %.0.i.i.i.i157
  %i.hb = select i1 %.not16.i.i.i.i158, ptr %.013.i.i.i.i156, ptr %.0.i.i.i.i157
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i152

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i152: ; preds = %.preheader17.i.i.i.i147, %bb.as
  %.014.i.i.i.i153 = phi ptr [ %i.hb, %bb.as ], [ %.05.i.i.i.i.i148, %.preheader17.i.i.i.i147 ] ; 2 uses
  %i.hc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i143) #28
  %.not17.i154 = icmp eq ptr %.014.i.i.i.i153, %i.n
  br i1 %.not17.i154, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i141, !llvm.loop !106

_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i152, %bb.ap
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.bp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge113, label %bb.au, !llvm.loop !6268

bb.au:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, %bb.at
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.at ] ; 4 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !6318
  store ptr %i.b, ptr %9, align 8, !tbaa !600, !noalias !6318
  %i.hf = invoke noundef ptr @_ZN5boost9intrusive20splaytree_algorithmsINS0_16tree_node_traitsIPvEEE15priv_splay_downILb1ENS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_9tree_nodeIS3_EESY_RKT0_T1_Pb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef null)
          to label %.noexc159 unwind label %bb.aw ; 0 uses

.noexc159:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !6318
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !309, !noalias !6318 ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc159
  %i.hh = load i32, ptr %i.he, align 8, !tbaa !184, !noalias !6318 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i, %bb.av ]
  %storemerge27.i.i.i.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %bb.av ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i.i, i64 24
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !184, !noalias !6318
  %i.hk = icmp slt i32 %i.hj, %i.hh               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i.i = select i1 %i.hk, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = select i1 %i.hk, ptr %.08.i.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i.i, align 8, !tbaa !540, !noalias !6318 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_16tree_node_traitsIPvEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_9tree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i, label %bb.av, !llvm.loop !107

_ZN5boost9intrusive17bstree_algorithmsINS0_16tree_node_traitsIPvEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_9tree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i: ; preds = %bb.av
  %i.hl = icmp eq ptr %.1.i.i.i.i.i.i.i, %i.b
  br i1 %i.hl, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE4findERS6_.exit

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE4findERS6_.exit: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_16tree_node_traitsIPvEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_9tree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 24
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !184, !noalias !6318
  %i.ho = icmp slt i32 %i.hh, %i.hn
  br i1 %i.ho, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ax:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE4findERS6_.exit
  %i.hq = and i64 %indvars.iv, 1
  %.not96 = icmp eq i64 %i.hq, 0
  br i1 %.not96, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !6319
  store ptr %i.b, ptr %8, align 8, !tbaa !604, !noalias !6319
  %i.hr = invoke noundef ptr @_ZN5boost9intrusive20splaytree_algorithmsINS0_16tree_node_traitsIPvEEE15priv_splay_downILb1ENS_9container4test11movable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSF_11key_of_nodeISP_SI_EEEEEEPNS0_9tree_nodeIS3_EES10_RKT0_T1_Pb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef null)
          to label %.noexc180 unwind label %.loopexit ; 0 uses

.noexc180:                                        ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !6319
  %.02829.i.i.i.i.i160 = load ptr, ptr %i.b, align 8, !tbaa !540, !noalias !6319 ; 2 uses
  %.not30.i.i.i.i.i161 = icmp eq ptr %.02829.i.i.i.i.i160, null
  br i1 %.not30.i.i.i.i.i161, label %bb.bb, label %.lr.ph.i.i.i.i.i162

.lr.ph.i.i.i.i.i162:                              ; preds = %.noexc180
  %i.hs = load i32, ptr %i.he, align 8, !tbaa !184, !noalias !6319 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.i.i.i.i.i162
  %.02833.i.i.i.i.i163 = phi ptr [ %.02829.i.i.i.i.i160, %.lr.ph.i.i.i.i.i162 ], [ %.028.i.i.i.i.i168, %bb.az ] ; 5 uses
  %.02631.i.i.i.i.i164 = phi ptr [ null, %.lr.ph.i.i.i.i.i162 ], [ %.127.i.i.i.i.i165, %bb.az ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.02833.i.i.i.i.i163, i64 24
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !184, !noalias !6319
  %i.hv = icmp slt i32 %i.hs, %i.hu               ; 4 uses
  %.127.i.i.i.i.i165 = select i1 %i.hv, ptr %.02631.i.i.i.i.i164, ptr %.02833.i.i.i.i.i163 ; 4 uses
  %.in.v.i.i.i.i.i166 = select i1 %i.hv, i64 8, i64 16
  %.in.i.i.i.i.i167 = getelementptr inbounds nuw i8, ptr %.02833.i.i.i.i.i163, i64 %.in.v.i.i.i.i.i166
  %.028.i.i.i.i.i168 = load ptr, ptr %.in.i.i.i.i.i167, align 8, !tbaa !540, !noalias !6319 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %.028.i.i.i.i.i168, null
  br i1 %.not.i.i.i.i.i169, label %._crit_edge.i.i.i.i.i170, label %bb.az, !llvm.loop !113

._crit_edge.i.i.i.i.i170:                         ; preds = %bb.az
  %.not18.i.i.i.i.i171 = icmp eq ptr %.127.i.i.i.i.i165, null
  br i1 %.not18.i.i.i.i.i171, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i170
  %i.hw = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i.i165, i64 24
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !184, !noalias !6319
  %i.hy = icmp slt i32 %i.hx, %i.hs
  br i1 %i.hy, label %bb.bb, label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_3ELb1EEELb1EEENSI_16tree_node_traitsISN_EELNSI_14link_mode_typeE0ENSI_7dft_tagELj6EEELb0EEELb0EEEbEOS3_DpOT_.exit182

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i.i.i.i.i170, %.noexc180
  %.0.lcssa.i15.shrunk.i.i.i.i174 = phi i1 [ %i.hv, %._crit_edge.i.i.i.i.i170 ], [ %i.hv, %bb.ba ], [ true, %.noexc180 ]
  %.013.lcssa.i14.i.i.i.i175 = phi ptr [ %.02833.i.i.i.i.i163, %._crit_edge.i.i.i.i.i170 ], [ %.02833.i.i.i.i.i163, %bb.ba ], [ %i.b, %.noexc180 ] ; 6 uses
  %i.hz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc181 unwind label %.loopexit.split-lp ; 10 uses

.noexc181:                                        ; preds = %bb.bb
  %i.ia = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ic = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6320
  %i.id = load <2 x i32>, ptr %i.he, align 4, !tbaa !184, !noalias !6320
  store i32 0, ptr %i.he, align 4, !tbaa !184, !noalias !6320
  store <2 x i32> %i.id, ptr %i.ib, align 4, !tbaa !184, !noalias !6320
  store i32 0, ptr %i.ia, align 4, !tbaa !184, !noalias !6320
  %i.ie = add i32 %i.ic, 2
  store i32 %i.ie, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6320
  %i.if = icmp eq ptr %.013.lcssa.i14.i.i.i.i175, %i.b ; 2 uses
  br i1 %.0.lcssa.i15.shrunk.i.i.i.i174, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i178, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i176

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i176: ; preds = %.noexc181
  br i1 %i.if, label %bb.bc, label %bb.be

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i178: ; preds = %.noexc181
  br i1 %i.if, label %bb.bc, label %.thread.i.i.i179

bb.bc:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i178, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i176
  store ptr %i.hz, ptr %i.b, align 8, !tbaa !309, !noalias !6321
  store ptr %i.hz, ptr %i.m, align 8, !tbaa !293, !noalias !6321
  store ptr %i.hz, ptr %i.l, align 8, !tbaa !292, !noalias !6321
  br label %.critedge111

.thread.i.i.i179:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i178
  %i.ig = getelementptr inbounds nuw i8, ptr %.013.lcssa.i14.i.i.i.i175, i64 8
  store ptr %i.hz, ptr %i.ig, align 8, !tbaa !292, !noalias !6321
  %i.ih = load ptr, ptr %i.l, align 8, !tbaa !292, !noalias !6321
  %i.ii = icmp eq ptr %.013.lcssa.i14.i.i.i.i175, %i.ih
  br i1 %i.ii, label %bb.bd, label %.critedge111

bb.bd:                                            ; preds = %.thread.i.i.i179
  store ptr %i.hz, ptr %i.l, align 8, !tbaa !292, !noalias !6321
  br label %.critedge111

bb.be:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i176
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.lcssa.i14.i.i.i.i175, i64 16
  store ptr %i.hz, ptr %i.ij, align 8, !tbaa !293, !noalias !6321
  %i.ik = load ptr, ptr %i.m, align 8, !tbaa !293, !noalias !6321
  %i.il = icmp eq ptr %.013.lcssa.i14.i.i.i.i175, %i.ik
  br i1 %i.il, label %bb.bf, label %.critedge111

bb.bf:                                            ; preds = %bb.be
  store ptr %i.hz, ptr %i.m, align 8, !tbaa !293, !noalias !6321
  br label %.critedge111

.loopexit:                                        ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bg:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !6322
  store ptr %i.b, ptr %7, align 8, !tbaa !600, !noalias !6322
  %i.im = invoke noundef ptr @_ZN5boost9intrusive20splaytree_algorithmsINS0_16tree_node_traitsIPvEEE15priv_splay_downILb1ENS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_9tree_nodeIS3_EESY_RKT0_T1_Pb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef null)
          to label %.noexc193 unwind label %bb.bo ; 0 uses

.noexc193:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !6322
  %i.in = load ptr, ptr %i.b, align 8, !tbaa !309, !noalias !6322 ; 2 uses
  %.not6.i.i.i.i.i.i183 = icmp eq ptr %i.in, null
  br i1 %.not6.i.i.i.i.i.i183, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit194, label %.lr.ph.i.i.i.i.i.i184

.lr.ph.i.i.i.i.i.i184:                            ; preds = %.noexc193
  %i.io = load i32, ptr %i.he, align 8, !tbaa !184, !noalias !6322
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.i.i.i.i.i184
  %.08.i.i.i.i.i.i185 = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i184 ], [ %.1.i.i.i.i.i.i189, %bb.bh ]
  %storemerge27.i.i.i.i.i.i186 = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i.i184 ], [ %storemerge.i.i.i.i.i.i190, %bb.bh ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i186, i64 24
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !184, !noalias !6322
  %i.ir = icmp slt i32 %i.io, %i.iq               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i187 = select i1 %i.ir, i64 8, i64 16
  %storemerge.in.i.i.i.i.i.i188 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i186, i64 %storemerge.in.v.i.i.i.i.i.i187
  %.1.i.i.i.i.i.i189 = select i1 %i.ir, ptr %storemerge27.i.i.i.i.i.i186, ptr %.08.i.i.i.i.i.i185 ; 2 uses
  %storemerge.i.i.i.i.i.i190 = load ptr, ptr %storemerge.in.i.i.i.i.i.i188, align 8, !tbaa !540, !noalias !6322 ; 2 uses
  %.not.i.i.i.i.i.i191 = icmp eq ptr %storemerge.i.i.i.i.i.i190, null
  br i1 %.not.i.i.i.i.i.i191, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit194, label %bb.bh, !llvm.loop !108

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit194: ; preds = %bb.bh, %.noexc193
  %.0.lcssa.i.i.i.i.i.i192 = phi ptr [ %i.b, %.noexc193 ], [ %.1.i.i.i.i.i.i189, %bb.bh ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !6323
  store i8 0, ptr %6, align 8, !tbaa !527, !noalias !6323
  store ptr null, ptr %i.hd, align 8, !tbaa !528, !noalias !6323
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !6324
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !6324
  store ptr %i.b, ptr %4, align 8, !tbaa !604, !noalias !6324
  %i.it = invoke noundef ptr @_ZN5boost9intrusive20splaytree_algorithmsINS0_16tree_node_traitsIPvEEE15priv_splay_downILb1ENS_9container4test11movable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSF_11key_of_nodeISP_SI_EEEEEEPNS0_9tree_nodeIS3_EES10_RKT0_T1_Pb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef null)
          to label %.noexc202 unwind label %bb.bo ; 0 uses

.noexc202:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit194
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !6324
  store ptr %i.b, ptr %5, align 8, !tbaa !604, !noalias !6324
  %i.iu = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_16tree_node_traitsIPvEEE19insert_unique_checkINS_9container4test11movable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE3ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_9tree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i.i192, ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef null)
          to label %.noexc203 unwind label %bb.bo ; 2 uses

.noexc203:                                        ; preds = %.noexc202
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !6324
  %.fca.0.extract.i.i.i195 = extractvalue { ptr, i8 } %i.iu, 0
  %.fca.1.extract.i.i.i196 = extractvalue { ptr, i8 } %i.iu, 1
  %i.iv = trunc nuw i8 %.fca.1.extract.i.i.i196 to i1
  br i1 %i.iv, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %.noexc203
  %i.iw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc204 unwind label %bb.bo ; 11 uses

.noexc204:                                        ; preds = %bb.bi
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6323
  %i.iz = load <2 x i32>, ptr %i.he, align 8, !tbaa !184, !noalias !6323
  store i32 0, ptr %i.he, align 8, !tbaa !184, !noalias !6323
  store <2 x i32> %i.iz, ptr %i.ix, align 4, !tbaa !184, !noalias !6323
  store i32 0, ptr %i.is, align 4, !tbaa !184, !noalias !6323
  %i.ja = add i32 %i.iy, 2
  store i32 %i.ja, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !6323
  %i.jb = load ptr, ptr %i.hd, align 8, !tbaa !528, !noalias !6325 ; 6 uses
  %i.jc = load i8, ptr %6, align 8, !tbaa !527, !range !205, !noalias !6325, !noundef !200
  %i.jd = trunc nuw i8 %i.jc to i1
  %i.je = icmp eq ptr %i.jb, %i.b                 ; 2 uses
  br i1 %i.jd, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i200, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i198

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i198: ; preds = %.noexc204
  br i1 %i.je, label %bb.bj, label %bb.bl

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i200: ; preds = %.noexc204
  br i1 %i.je, label %bb.bj, label %.thread.i.i.i201

bb.bj:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i200, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i198
  store ptr %i.iw, ptr %i.b, align 8, !tbaa !309, !noalias !6325
  store ptr %i.iw, ptr %i.m, align 8, !tbaa !293, !noalias !6325
  store ptr %i.iw, ptr %i.l, align 8, !tbaa !292, !noalias !6325
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199

.thread.i.i.i201:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.thread.i.i.i200
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %i.jf, align 8, !tbaa !292, !noalias !6325
  %i.jg = load ptr, ptr %i.l, align 8, !tbaa !292, !noalias !6325
  %i.jh = icmp eq ptr %i.jb, %i.jg
  br i1 %i.jh, label %bb.bk, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199

bb.bk:                                            ; preds = %.thread.i.i.i201
  store ptr %i.iw, ptr %i.l, align 8, !tbaa !292, !noalias !6325
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199

bb.bl:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEELb0EEppEv.exit.i.i.i198
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store ptr %i.iw, ptr %i.ji, align 8, !tbaa !293, !noalias !6325
  %i.jj = load ptr, ptr %i.m, align 8, !tbaa !293, !noalias !6325
  %i.jk = icmp eq ptr %i.jb, %i.jj
  br i1 %i.jk, label %bb.bm, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199

bb.bm:                                            ; preds = %bb.bl
  store ptr %i.iw, ptr %i.m, align 8, !tbaa !293, !noalias !6325
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199: ; preds = %bb.bm, %bb.bl, %bb.bk, %.thread.i.i.i201, %bb.bj
  store ptr %i.jb, ptr %i.iw, align 8, !tbaa !309, !noalias !6325
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i8 0, i64 16, i1 false), !noalias !6325
  %i.jm = load i64, ptr %0, align 8, !tbaa !188, !noalias !6325
  %i.jn = add i64 %i.jm, 1
  store i64 %i.jn, ptr %0, align 8, !tbaa !188, !noalias !6325
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199, %.noexc203
  %.sroa.010.0.i.i197 = phi ptr [ %i.iw, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE3ELb1EEELb1EEENS0_16tree_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj6EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE8EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_9tree_nodeISC_EEEE.exit.i.i199 ], [ %.fca.0.extract.i.i.i195, %.noexc203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !6323
  br label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_3ELb1EEELb1EEENSI_16tree_node_traitsISN_EELNSI_14link_mode_typeE0ENSI_7dft_tagELj6EEELb0EEELb0EEEbEOS3_DpOT_.exit182

bb.bo:                                            ; preds = %bb.bi, %.noexc202, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11upper_boundERS6_.exit194, %bb.bg
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_3ELb1EEELb1EEENSI_16tree_node_traitsISN_EELNSI_14link_mode_typeE0ENSI_7dft_tagELj6EEELb0EEELb0EEEbEOS3_DpOT_.exit182: ; preds = %bb.ba, %bb.bn
  %.sroa.0260.0 = phi ptr [ %.sroa.010.0.i.i197, %bb.bn ], [ %.127.i.i.i.i.i165, %bb.ba ] ; 2 uses
  %i.jp = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182 ; 3 uses
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %.not386 = icmp eq ptr %.sroa.0260.0, %.1.i.i.i.i.i.i.i
  br i1 %.not386, label %bb.bp, label %.critedge7

bb.bp:                                            ; preds = %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_3ELb1EEELb1EEENSI_16tree_node_traitsISN_EELNSI_14link_mode_typeE0ENSI_7dft_tagELj6EEELb0EEELb0EEEbEOS3_DpOT_.exit182
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0260.0, i64 28
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !184
  %i.jt = zext i32 %i.js to i64
  %.not290 = icmp eq i64 %indvars.iv, %i.jt
  store i32 %i.jp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  br i1 %.not290, label %bb.at, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

.critedge7:                                       ; preds = %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_3ELb1EEELb1EEENSI_16tree_node_traitsISN_EELNSI_14link_mode_typeE0ENSI_7dft_tagELj6EEELb0EEELb0EEEbEOS3_DpOT_.exit182
  store i32 %i.jp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

.critedge111:                                     ; preds = %bb.bc, %.thread.i.i.i179, %bb.bd, %bb.be, %bb.bf
  store ptr %.013.lcssa.i14.i.i.i.i175, ptr %i.hz, align 8, !tbaa !309, !noalias !6321
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false), !noalias !6321
  %i.jv = load i64, ptr %0, align 8, !tbaa !188, !noalias !6321
  %i.jw = add i64 %i.jv, 1
  store i64 %i.jw, ptr %0, align 8, !tbaa !188, !noalias !6321
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

.critedge113:                                     ; preds = %bb.at
  %i.jx = load i64, ptr %0, align 8, !tbaa !188
  %i.jy = load i64, ptr %i.ag, align 8, !tbaa !234
  %.not.i206 = icmp eq i64 %i.jx, %i.jy
  br i1 %.not.i206, label %bb.bq, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.bq:                                            ; preds = %.critedge113
  %i.jz = load ptr, ptr %i.l, align 8, !tbaa !292, !noalias !6326 ; 2 uses
  %.not1721.i208 = icmp eq ptr %i.jz, %i.b
  br i1 %.not1721.i208, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit228, label %.lr.ph.preheader.i209

.lr.ph.preheader.i209:                            ; preds = %bb.bq
  %i.ka = load ptr, ptr %i.ae, align 8, !tbaa !232
  br label %.lr.ph.i210

.lr.ph.i210:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i221, %.lr.ph.preheader.i209
  %.sroa.013.023.i211 = phi ptr [ %.014.i.i.i.i222, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i221 ], [ %i.jz, %.lr.ph.preheader.i209 ] ; 4 uses
  %.sroa.09.022.i212 = phi ptr [ %i.kr, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i221 ], [ %i.ka, %.lr.ph.preheader.i209 ] ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i212, i64 32
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !264
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i211, i64 24
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !184
  %.not18.i213 = icmp eq i32 %i.ke, %i.kc
  br i1 %.not18.i213, label %bb.br, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.br:                                            ; preds = %.lr.ph.i210
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i212, i64 36
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !265
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i211, i64 28
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !184
  %.not19.i214 = icmp eq i32 %i.ki, %i.kg
  br i1 %.not19.i214, label %bb.bs, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.bs:                                            ; preds = %bb.br
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i211, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i215 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i.i215, label %.preheader.i.i.i.i224, label %.preheader17.i.i.i.i216

.preheader17.i.i.i.i216:                          ; preds = %bb.bs, %.preheader17.i.i.i.i216
  %.05.i.i.i.i.i217 = phi ptr [ %.0.i.i.i.i.i219, %.preheader17.i.i.i.i216 ], [ %i.kk, %bb.bs ] ; 2 uses
  %.0.in.i.i.i.i.i218 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i217, i64 8
  %.0.i.i.i.i.i219 = load ptr, ptr %.0.in.i.i.i.i.i218, align 8, !tbaa !292 ; 2 uses
  %.not.i.i.i.i.i220 = icmp eq ptr %.0.i.i.i.i.i219, null
  br i1 %.not.i.i.i.i.i220, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i221, label %.preheader17.i.i.i.i216, !llvm.loop !80

.preheader.i.i.i.i224:                            ; preds = %bb.bs, %.preheader.i.i.i.i224
  %.013.i.i.i.i225 = phi ptr [ %.0.i.i.i.i226, %.preheader.i.i.i.i224 ], [ %.sroa.013.023.i211, %bb.bs ] ; 4 uses
  %.0.i.i.i.i226 = load ptr, ptr %.013.i.i.i.i225, align 8, !tbaa !309 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i226, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !293
  %i.kn = icmp eq ptr %.013.i.i.i.i225, %i.km
  br i1 %i.kn, label %.preheader.i.i.i.i224, label %bb.bt, !llvm.loop !81

bb.bt:                                            ; preds = %.preheader.i.i.i.i224
  %i.ko = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i225, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !293
  %.not16.i.i.i.i227 = icmp eq ptr %i.kp, %.0.i.i.i.i226
  %i.kq = select i1 %.not16.i.i.i.i227, ptr %.013.i.i.i.i225, ptr %.0.i.i.i.i226
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i221

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i221: ; preds = %.preheader17.i.i.i.i216, %bb.bt
  %.014.i.i.i.i222 = phi ptr [ %i.kq, %bb.bt ], [ %.05.i.i.i.i.i217, %.preheader17.i.i.i.i216 ] ; 2 uses
  %i.kr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i212) #28
  %.not17.i223 = icmp eq ptr %.014.i.i.i.i222, %i.b
  br i1 %.not17.i223, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit228, label %.lr.ph.i210, !llvm.loop !105

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit228: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i221, %bb.bq
  %i.ks = load i64, ptr %2, align 8, !tbaa !188
  %i.kt = load i64, ptr %i.ao, align 8, !tbaa !234
  %.not.i229 = icmp eq i64 %i.ks, %i.kt
  br i1 %.not.i229, label %bb.bu, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.bu:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit228
  %i.ku = load ptr, ptr %i.x, align 8, !tbaa !292, !noalias !6327 ; 2 uses
  %.not1721.i231 = icmp eq ptr %i.ku, %i.n
  br i1 %.not1721.i231, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251, label %.lr.ph.preheader.i232

.lr.ph.preheader.i232:                            ; preds = %bb.bu
  %i.kv = load ptr, ptr %i.am, align 8, !tbaa !232
  br label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i244, %.lr.ph.preheader.i232
  %.sroa.013.023.i234 = phi ptr [ %.014.i.i.i.i245, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i244 ], [ %i.ku, %.lr.ph.preheader.i232 ] ; 4 uses
  %.sroa.09.022.i235 = phi ptr [ %i.lm, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE3ELb1EEELb1EEENS3_16tree_node_traitsISD_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj6EEELb0EEELb1EEppEv.exit.i244 ], [ %i.kv, %.lr.ph.preheader.i232 ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i235, i64 32
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !264
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i234, i64 24
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !184
  %.not18.i236 = icmp eq i32 %i.kz, %i.kx
  br i1 %.not18.i236, label %bb.bv, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.bv:                                            ; preds = %.lr.ph.i233
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i235, i64 36
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !265
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i234, i64 28
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !184
  %.not19.i237 = icmp eq i32 %i.ld, %i.lb
  br i1 %.not19.i237, label %bb.bw, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE3ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit251

bb.bw:                                            ; preds = %bb.bv
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i234, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i238 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i.i238, label %.preheader.i.i.i.i247, label %.preheader17.i.i.i.i239

.preheader17.i.i.i.i239:                          ; preds = %bb.bw, %.preheader17.i.i.i.i239
  %.05.i.i.i.i.i240 = phi ptr [ %.0.i.i.i.i.i242, %.preheader17.i.i.i.i239 ], [ %i.lf, %bb.bw ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  store <4 x i32> <i32 44, i32 44, i32 45, i32 45>, ptr %i.ca, align 16, !tbaa !612
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 368
  store <4 x i32> <i32 46, i32 46, i32 47, i32 47>, ptr %i.cb, align 16, !tbaa !612
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.cc, align 16, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false), !tbaa !612
  %i.ce = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted, 300
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !612
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.cf, align 16, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.cg, align 16, !tbaa !612
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.ch, align 16, !tbaa !612
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.ci, align 16, !tbaa !612
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.cj, align 16, !tbaa !612
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.ck, align 16, !tbaa !612
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.cl, align 16, !tbaa !612
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.cm, align 16, !tbaa !612
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.cn, align 16, !tbaa !612
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.co, align 16, !tbaa !612
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.cp, align 16, !tbaa !612
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.cq, align 16, !tbaa !612
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.cr, align 16, !tbaa !612
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.cs, align 16, !tbaa !612
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.ct, align 16, !tbaa !612
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.cu, align 16, !tbaa !612
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.cv, align 16, !tbaa !612
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.cw, align 16, !tbaa !612
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.cx, align 16, !tbaa !612
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.cy, align 16, !tbaa !612
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.cz, align 16, !tbaa !612
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.da, align 16, !tbaa !612
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.db, align 16, !tbaa !612
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.dc, align 16, !tbaa !612
  %i.dd = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted, 400
  store i32 %i.dd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.ak
  %storemerge313 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.gx, %bb.ak ] ; 2 uses
  %i.df = and i32 %storemerge313, 1
  %.not = icmp eq i32 %i.df, 0
  %i.dg = sext i32 %storemerge313 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %8, i64 %i.dg ; 5 uses
  br i1 %.not, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !7251
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = and i64 %i.dj, -2                       ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not29.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load i32, ptr %i.dh, align 8, !tbaa !612, !noalias !7251 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.02631.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.127.i.i.i.i, %bb.n ]
  %.02830.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.dq, %bb.n ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 24
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !612, !noalias !7251
  %i.dp = icmp slt i32 %i.dm, %i.do               ; 4 uses
  %.127.i.i.i.i = select i1 %i.dp, ptr %.02631.i.i.i.i, ptr %.02830.i.i.i.i ; 3 uses
  %.in.v.i.i.i.i = select i1 %i.dp, i64 8, i64 16
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 %.in.v.i.i.i.i
  %i.dq = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !185, !noalias !7251 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i123, label %._crit_edge.i.i.i.i, label %bb.n, !llvm.loop !124

._crit_edge.i.i.i.i:                              ; preds = %bb.n
  %.not18.i.i.i.i = icmp eq ptr %.127.i.i.i.i, null
  br i1 %.not18.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i, i64 24
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !612, !noalias !7251
  %i.dt = icmp slt i32 %i.ds, %i.dm
  br i1 %i.dt, label %bb.p, label %.critedge109.thread

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.0.lcssa.i12.shrunk.i.i.i = phi i1 [ %i.dp, %._crit_edge.i.i.i.i ], [ %i.dp, %bb.o ], [ true, %bb.m ]
  %.013.lcssa.i11.i.i.i = phi ptr [ %.02830.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.02830.i.i.i.i, %bb.o ], [ %i.b, %bb.m ] ; 6 uses
  %i.du = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %bb.v     ; 13 uses

.noexc:                                           ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7252
  %i.dx = load <2 x i32>, ptr %i.dh, align 8, !tbaa !612, !noalias !7252
  store <2 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !612, !noalias !7252
  %i.dy = add i32 %i.dw, 2
  store i32 %i.dy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7252
  %i.dz = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.b ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i: ; preds = %.noexc
  br i1 %i.dz, label %bb.q, label %bb.s

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i: ; preds = %.noexc
  br i1 %i.dz, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.ea = ptrtoint ptr %i.du to i64
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !7253
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, 1
  %i.ee = or disjoint i64 %i.ed, %i.ea
  %i.ef = inttoptr i64 %i.ee to ptr
  store ptr %i.ef, ptr %i.b, align 8, !tbaa !185, !noalias !7253
  store ptr %i.du, ptr %i.t, align 8, !tbaa !181, !noalias !7253
  store ptr %i.du, ptr %i.s, align 8, !tbaa !180, !noalias !7253
  br label %bb.w

.thread.i.i.i:                                    ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 8
  store ptr %i.du, ptr %i.eg, align 8, !tbaa !180, !noalias !7253
  %i.eh = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !7253
  %i.ei = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.eh
  br i1 %i.ei, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.thread.i.i.i
  store ptr %i.du, ptr %i.s, align 8, !tbaa !180, !noalias !7253
  br label %bb.w

bb.s:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 16
  store ptr %i.du, ptr %i.ej, align 8, !tbaa !181, !noalias !7253
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !7253
  %i.el = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.ek
  br i1 %i.el, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr %i.du, ptr %i.t, align 8, !tbaa !181, !noalias !7253
  br label %bb.w

bb.u:                                             ; preds = %bb.aj
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.v:                                             ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.w:                                             ; preds = %bb.q, %.thread.i.i.i, %bb.r, %bb.s, %bb.t
  %i.eo = ptrtoint ptr %.013.lcssa.i11.i.i.i to i64
  %i.ep = load ptr, ptr %i.du, align 8, !tbaa !185, !noalias !7253
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = and i64 %i.eq, 1
  %i.es = or i64 %i.er, %i.eo
  %i.et = inttoptr i64 %i.es to ptr
  store ptr %i.et, ptr %i.du, align 8, !tbaa !185, !noalias !7253
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i8 0, i64 16, i1 false), !noalias !7253
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.du) #26, !noalias !7253
  %i.ev = load i64, ptr %0, align 8, !tbaa !188, !noalias !7253
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %0, align 8, !tbaa !188, !noalias !7253
  br label %bb.ag

bb.x:                                             ; preds = %bb.l
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !7254
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, -2                       ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i.i.i124

.lr.ph.i.i.i.i.i124:                              ; preds = %bb.x
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load i32, ptr %i.dh, align 8, !tbaa !612, !noalias !7254
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i124
  %.08.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i124 ], [ %.1.i.i.i.i.i, %bb.y ]
  %storemerge27.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i124 ], [ %storemerge.i.i.i.i.i, %bb.y ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 24
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !612, !noalias !7254
  %i.fe = icmp slt i32 %i.fb, %i.fd               ; 2 uses
  %storemerge.in.v.i.i.i.i.i = select i1 %i.fe, i64 8, i64 16
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.fe, ptr %storemerge27.i.i.i.i.i, ptr %.08.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !185, !noalias !7254 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i125, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %bb.y, !llvm.loop !121

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit: ; preds = %bb.y, %bb.x
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.b, %bb.x ], [ %.1.i.i.i.i.i, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !7255
  store i8 0, ptr %7, align 8, !tbaa !210, !noalias !7255
  store ptr null, ptr %i.de, align 8, !tbaa !211, !noalias !7255
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !7255
  store ptr %i.b, ptr %6, align 8, !tbaa !625, !alias.scope !7256, !noalias !7257
  %i.ff = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test12copyable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.dh, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %.noexc130 unwind label %bb.af ; 2 uses

.noexc130:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ff, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.ff, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !7255
  %i.fg = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.fg, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.noexc130
  %i.fh = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc131 unwind label %bb.af ; 13 uses

.noexc131:                                        ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7255
  %i.fk = load <2 x i32>, ptr %i.dh, align 8, !tbaa !612, !noalias !7255
  store <2 x i32> %i.fk, ptr %i.fi, align 4, !tbaa !612, !noalias !7255
  %i.fl = add i32 %i.fj, 2
  store i32 %i.fl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7255
  %i.fm = load ptr, ptr %i.de, align 8, !tbaa !211, !noalias !7258 ; 6 uses
  %i.fn = load i8, ptr %7, align 8, !tbaa !210, !range !205, !noalias !7258, !noundef !200
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = icmp eq ptr %i.fm, %i.b                 ; 2 uses
  br i1 %i.fo, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126: ; preds = %.noexc131
  br i1 %i.fp, label %bb.aa, label %bb.ac

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128: ; preds = %.noexc131
  br i1 %i.fp, label %bb.aa, label %.thread.i.i.i129

bb.aa:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.fq = ptrtoint ptr %i.fh to i64
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !7258
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 1
  %i.fu = or disjoint i64 %i.ft, %i.fq
  %i.fv = inttoptr i64 %i.fu to ptr
  store ptr %i.fv, ptr %i.b, align 8, !tbaa !185, !noalias !7258
  store ptr %i.fh, ptr %i.t, align 8, !tbaa !181, !noalias !7258
  store ptr %i.fh, ptr %i.s, align 8, !tbaa !180, !noalias !7258
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

.thread.i.i.i129:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fh, ptr %i.fw, align 8, !tbaa !180, !noalias !7258
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !7258
  %i.fy = icmp eq ptr %i.fm, %i.fx
  br i1 %i.fy, label %bb.ab, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ab:                                            ; preds = %.thread.i.i.i129
  store ptr %i.fh, ptr %i.s, align 8, !tbaa !180, !noalias !7258
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ac:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fh, ptr %i.fz, align 8, !tbaa !181, !noalias !7258
  %i.ga = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !7258
  %i.gb = icmp eq ptr %i.fm, %i.ga
  br i1 %i.gb, label %bb.ad, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.fh, ptr %i.t, align 8, !tbaa !181, !noalias !7258
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127: ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread.i.i.i129, %bb.aa
  %i.gc = ptrtoint ptr %i.fm to i64
  %i.gd = load ptr, ptr %i.fh, align 8, !tbaa !185, !noalias !7258
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = and i64 %i.ge, 1
  %i.gg = or i64 %i.gf, %i.gc
  %i.gh = inttoptr i64 %i.gg to ptr
  store ptr %i.gh, ptr %i.fh, align 8, !tbaa !185, !noalias !7258
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false), !noalias !7258
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.fh) #26, !noalias !7258
  %i.gj = load i64, ptr %0, align 8, !tbaa !188, !noalias !7258
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %0, align 8, !tbaa !188, !noalias !7258
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127, %.noexc130
  %.sroa.010.0.i.i = phi ptr [ %i.fh, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127 ], [ %.fca.0.extract.i.i.i, %.noexc130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !7255
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.w, %bb.ae
  %.sroa.0271.0 = phi ptr [ %.sroa.010.0.i.i, %bb.ae ], [ %i.du, %bb.w ] ; 3 uses
  %i.gm = icmp eq ptr %i.b, %.sroa.0271.0
  br i1 %i.gm, label %.critedge109.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 24
  %i.go = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gp
  %i.gr = load i32, ptr %i.gn, align 4, !tbaa !612 ; 2 uses
  %i.gs = load i32, ptr %i.gq, align 8, !tbaa !612
  %.not289 = icmp eq i32 %i.gr, %i.gs
  br i1 %.not289, label %bb.ai, label %.critedge109.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 28
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !612
  %.not290 = icmp eq i32 %i.gu, %i.gr
  br i1 %.not290, label %bb.aj, label %.critedge109.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gv = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ak unwind label %bb.u

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.go, ptr %i.gv, align 4, !tbaa !182
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gx = add nsw i32 %i.gw, 1                    ; 2 uses
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !182
  %i.gy = icmp sgt i32 %i.gw, 48
  br i1 %i.gy, label %bb.am, label %bb.l, !llvm.loop !7195

bb.al:                                            ; preds = %bb.af, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.em, %bb.u ], [ %i.en, %bb.v ], [ %i.gl, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bw

.critedge109.thread:                              ; preds = %bb.ai, %bb.ag, %bb.ah, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gz = load i64, ptr %0, align 8, !tbaa !188
  %i.ha = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.gz, %i.ha
  br i1 %.not.i, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.an:                                            ; preds = %bb.am
  %i.hb = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !7259 ; 2 uses
  %.not1721.i = icmp eq ptr %i.hb, %i.b
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.hc = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.hb, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.09.022.i = phi ptr [ %i.ht, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.hc, %.lr.ph.preheader.i ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !264
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 24
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !612
  %.not18.i = icmp eq i32 %i.hg, %i.he
  br i1 %.not18.i, label %bb.ao, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ao:                                            ; preds = %.lr.ph.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !265
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 28
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !612
  %.not19.i = icmp eq i32 %i.hk, %i.hi
  br i1 %.not19.i, label %bb.ap, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ap:                                            ; preds = %bb.ao
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i132, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.ap, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i133, %.preheader17.i.i.i.i ], [ %i.hm, %bb.ap ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %.0.i.i.i.i.i133 = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %.0.i.i.i.i.i133, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, label %.preheader17.i.i.i.i, !llvm.loop !16

.preheader.i.i.i.i:                               ; preds = %bb.ap, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.013.023.i, %bb.ap ] ; 4 uses
  %.0.in.in.in.i.i.i.i = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !189
  %.0.in.in.i.i.i.i = ptrtoint ptr %.0.in.in.in.i.i.i.i to i64
  %.0.in.i.i.i.i = and i64 %.0.in.in.i.i.i.i, -2
  %.0.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i to ptr ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !181
  %i.hp = icmp eq ptr %.013.i.i.i.i, %i.ho
  br i1 %i.hp, label %.preheader.i.i.i.i, label %bb.aq, !llvm.loop !17

bb.aq:                                            ; preds = %.preheader.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !181
  %.not16.i.i.i.i = icmp eq ptr %i.hr, %.0.i.i.i.i
  %i.hs = select i1 %.not16.i.i.i.i, ptr %.013.i.i.i.i, ptr %.0.i.i.i.i
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i: ; preds = %.preheader17.i.i.i.i, %bb.aq
  %.014.i.i.i.i = phi ptr [ %i.hs, %bb.aq ], [ %.05.i.i.i.i.i, %.preheader17.i.i.i.i ] ; 2 uses
  %i.ht = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #28
  %.not17.i = icmp eq ptr %.014.i.i.i.i, %i.b
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !118

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %bb.an
  %i.hu = load i64, ptr %2, align 8, !tbaa !188
  %i.hv = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i135 = icmp eq i64 %i.hu, %i.hv
  br i1 %.not.i135, label %bb.ar, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ar:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit
  %i.hw = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !7260 ; 2 uses
  %.not1721.i137 = icmp eq ptr %i.hw, %i.u
  br i1 %.not1721.i137, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i138

.lr.ph.preheader.i138:                            ; preds = %bb.ar
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
.preheader17.i.i.i.i145:                          ; preds = %bb.at, %.preheader17.i.i.i.i145
  %.05.i.i.i.i.i146 = phi ptr [ %.0.i.i.i.i.i148, %.preheader17.i.i.i.i145 ], [ %i.ih, %bb.at ] ; 2 uses
  %.0.in.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i146, i64 8
  %.0.i.i.i.i.i148 = load ptr, ptr %.0.in.i.i.i.i.i147, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i149 = icmp eq ptr %.0.i.i.i.i.i148, null
  br i1 %.not.i.i.i.i.i149, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, label %.preheader17.i.i.i.i145, !llvm.loop !16

.preheader.i.i.i.i153:                            ; preds = %bb.at, %.preheader.i.i.i.i153
  %.013.i.i.i.i154 = phi ptr [ %.0.i.i.i.i158, %.preheader.i.i.i.i153 ], [ %.sroa.013.023.i140, %bb.at ] ; 4 uses
  %.0.in.in.in.i.i.i.i155 = load ptr, ptr %.013.i.i.i.i154, align 8, !tbaa !189
  %.0.in.in.i.i.i.i156 = ptrtoint ptr %.0.in.in.in.i.i.i.i155 to i64
  %.0.in.i.i.i.i157 = and i64 %.0.in.in.i.i.i.i156, -2
  %.0.i.i.i.i158 = inttoptr i64 %.0.in.i.i.i.i157 to ptr ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i158, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !181
  %i.ik = icmp eq ptr %.013.i.i.i.i154, %i.ij
  br i1 %i.ik, label %.preheader.i.i.i.i153, label %bb.au, !llvm.loop !17

bb.au:                                            ; preds = %.preheader.i.i.i.i153
  %i.il = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i154, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !181
  %.not16.i.i.i.i159 = icmp eq ptr %i.im, %.0.i.i.i.i158
  %i.in = select i1 %.not16.i.i.i.i159, ptr %.013.i.i.i.i154, ptr %.0.i.i.i.i158
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150: ; preds = %.preheader17.i.i.i.i145, %bb.au
  %.014.i.i.i.i151 = phi ptr [ %i.in, %bb.au ], [ %.05.i.i.i.i.i146, %.preheader17.i.i.i.i145 ] ; 2 uses
  %i.io = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i141) #28
  %.not17.i152 = icmp eq ptr %.014.i.i.i.i151, %i.u
  br i1 %.not17.i152, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i139, !llvm.loop !119

_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, %bb.ar
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge113, label %bb.aw, !llvm.loop !7208

bb.aw:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, %bb.av
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.av ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 4 uses
  %i.ir = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !7261
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = and i64 %i.is, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aw
  %i.iu = inttoptr i64 %i.it to ptr               ; 3 uses
  %i.iv = load i32, ptr %i.iq, align 8, !tbaa !612, !noalias !7261 ; 5 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.ax ]
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !612, !noalias !7261
  %i.iy = icmp slt i32 %i.ix, %i.iv               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.iy, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.iy, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !185, !noalias !7261 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test12copyable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i, label %bb.ax, !llvm.loop !120

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test12copyable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i: ; preds = %bb.ax
  %i.iz = icmp eq ptr %.1.i.i.i.i.i.i, %i.b
  br i1 %i.iz, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test12copyable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 24
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !612, !noalias !7261
  %i.jc = icmp slt i32 %i.iv, %i.jb
  br i1 %i.jc, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit
  %i.jd = and i64 %indvars.iv, 1
  %.not96 = icmp eq i64 %i.jd, 0
  br i1 %.not96, label %.lr.ph.i.i.i.i.i181, label %.lr.ph.i.i.i.i161

.lr.ph.i.i.i.i161:                                ; preds = %bb.ay, %.lr.ph.i.i.i.i161
  %.02631.i.i.i.i162 = phi ptr [ %.127.i.i.i.i164, %.lr.ph.i.i.i.i161 ], [ null, %bb.ay ]
  %.02830.i.i.i.i163 = phi ptr [ %i.jh, %.lr.ph.i.i.i.i161 ], [ %i.iu, %bb.ay ] ; 9 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 24
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !612, !noalias !7262
  %i.jg = icmp slt i32 %i.iv, %i.jf               ; 3 uses
  %.127.i.i.i.i164 = select i1 %i.jg, ptr %.02631.i.i.i.i162, ptr %.02830.i.i.i.i163 ; 4 uses
  %.in.v.i.i.i.i165 = select i1 %i.jg, i64 8, i64 16
  %.in.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 %.in.v.i.i.i.i165
  %i.jh = load ptr, ptr %.in.i.i.i.i166, align 8, !tbaa !185, !noalias !7262 ; 2 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i167, label %._crit_edge.i.i.i.i168, label %.lr.ph.i.i.i.i161, !llvm.loop !124

._crit_edge.i.i.i.i168:                           ; preds = %.lr.ph.i.i.i.i161
  %.not18.i.i.i.i169 = icmp eq ptr %.127.i.i.i.i164, null
  br i1 %.not18.i.i.i.i169, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i.i.i168
  %i.ji = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i164, i64 24
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !612, !noalias !7262
  %i.jk = icmp slt i32 %i.jj, %i.iv
  br i1 %i.jk, label %bb.ba, label %_ZN5boost9container3mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i168
  %i.jl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc178 unwind label %bb.bf ; 12 uses

.noexc178:                                        ; preds = %bb.ba
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7263
  %i.jo = load <2 x i32>, ptr %i.iq, align 4, !tbaa !612, !noalias !7263
  store <2 x i32> %i.jo, ptr %i.jm, align 4, !tbaa !612, !noalias !7263
  %i.jp = add i32 %i.jn, 2
  store i32 %i.jp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7263
  %i.jq = icmp eq ptr %.02830.i.i.i.i163, %i.b    ; 2 uses
  br i1 %i.jg, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174: ; preds = %.noexc178
  br i1 %i.jq, label %bb.bb, label %bb.bd

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176: ; preds = %.noexc178
  br i1 %i.jq, label %bb.bb, label %.thread.i.i.i177

bb.bb:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.jr = ptrtoint ptr %i.jl to i64
  %i.js = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !7264
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = and i64 %i.jt, 1
  %i.jv = or disjoint i64 %i.ju, %i.jr
  %i.jw = inttoptr i64 %i.jv to ptr
  store ptr %i.jw, ptr %i.b, align 8, !tbaa !185, !noalias !7264
  store ptr %i.jl, ptr %i.t, align 8, !tbaa !181, !noalias !7264
  store ptr %i.jl, ptr %i.s, align 8, !tbaa !180, !noalias !7264
  br label %.critedge111

.thread.i.i.i177:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176
  %i.jx = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 8
  store ptr %i.jl, ptr %i.jx, align 8, !tbaa !180, !noalias !7264
  %i.jy = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !7264
  %i.jz = icmp eq ptr %.02830.i.i.i.i163, %i.jy
  br i1 %i.jz, label %bb.bc, label %.critedge111

bb.bc:                                            ; preds = %.thread.i.i.i177
  store ptr %i.jl, ptr %i.s, align 8, !tbaa !180, !noalias !7264
  br label %.critedge111

bb.bd:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.ka = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 16
  store ptr %i.jl, ptr %i.ka, align 8, !tbaa !181, !noalias !7264
  %i.kb = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !7264
  %i.kc = icmp eq ptr %.02830.i.i.i.i163, %i.kb
  br i1 %i.kc, label %bb.be, label %.critedge111

bb.be:                                            ; preds = %bb.bd
  store ptr %i.jl, ptr %i.t, align 8, !tbaa !181, !noalias !7264
  br label %.critedge111

bb.bf:                                            ; preds = %bb.ba
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.lr.ph.i.i.i.i.i181:                              ; preds = %bb.ay, %.lr.ph.i.i.i.i.i181
  %.08.i.i.i.i.i182 = phi ptr [ %.1.i.i.i.i.i186, %.lr.ph.i.i.i.i.i181 ], [ %i.b, %bb.ay ]
  %storemerge27.i.i.i.i.i183 = phi ptr [ %storemerge.i.i.i.i.i187, %.lr.ph.i.i.i.i.i181 ], [ %i.iu, %bb.ay ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 24
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !612, !noalias !7265
  %i.kg = icmp slt i32 %i.iv, %i.kf               ; 2 uses
  %storemerge.in.v.i.i.i.i.i184 = select i1 %i.kg, i64 8, i64 16
  %storemerge.in.i.i.i.i.i185 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 %storemerge.in.v.i.i.i.i.i184
  %.1.i.i.i.i.i186 = select i1 %i.kg, ptr %storemerge27.i.i.i.i.i183, ptr %.08.i.i.i.i.i182 ; 2 uses
  %storemerge.i.i.i.i.i187 = load ptr, ptr %storemerge.in.i.i.i.i.i185, align 8, !tbaa !185, !noalias !7265 ; 2 uses
  %.not.i.i.i.i.i188 = icmp eq ptr %storemerge.i.i.i.i.i187, null
  br i1 %.not.i.i.i.i.i188, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190, label %.lr.ph.i.i.i.i.i181, !llvm.loop !121

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190: ; preds = %.lr.ph.i.i.i.i.i181
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !7266
  store i8 0, ptr %5, align 8, !tbaa !210, !noalias !7266
  store ptr null, ptr %i.ip, align 8, !tbaa !211, !noalias !7266
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !7266
  store ptr %i.b, ptr %4, align 8, !tbaa !625, !alias.scope !7267, !noalias !7268
  %i.kh = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test12copyable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.1.i.i.i.i.i186, ptr noundef nonnull align 4 dereferenceable(4) %i.iq, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %.noexc198 unwind label %bb.bm ; 2 uses

.noexc198:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %.fca.0.extract.i.i.i191 = extractvalue { ptr, i8 } %i.kh, 0
  %.fca.1.extract.i.i.i192 = extractvalue { ptr, i8 } %i.kh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !7266
  %i.ki = trunc nuw i8 %.fca.1.extract.i.i.i192 to i1
  br i1 %i.ki, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %.noexc198
  %i.kj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc199 unwind label %bb.bm ; 13 uses

.noexc199:                                        ; preds = %bb.bg
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7266
  %i.km = load <2 x i32>, ptr %i.iq, align 8, !tbaa !612, !noalias !7266
  store <2 x i32> %i.km, ptr %i.kk, align 4, !tbaa !612, !noalias !7266
  %i.kn = add i32 %i.kl, 2
  store i32 %i.kn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182, !noalias !7266
  %i.ko = load ptr, ptr %i.ip, align 8, !tbaa !211, !noalias !7269 ; 6 uses
  %i.kp = load i8, ptr %5, align 8, !tbaa !210, !range !205, !noalias !7269, !noundef !200
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = icmp eq ptr %i.ko, %i.b                 ; 2 uses
  br i1 %i.kq, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194: ; preds = %.noexc199
  br i1 %i.kr, label %bb.bh, label %bb.bj

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196: ; preds = %.noexc199
  br i1 %i.kr, label %bb.bh, label %.thread.i.i.i197

bb.bh:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.ks = ptrtoint ptr %i.kj to i64
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !7269
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = and i64 %i.ku, 1
  %i.kw = or disjoint i64 %i.kv, %i.ks
  %i.kx = inttoptr i64 %i.kw to ptr
  store ptr %i.kx, ptr %i.b, align 8, !tbaa !185, !noalias !7269
  store ptr %i.kj, ptr %i.t, align 8, !tbaa !181, !noalias !7269
  store ptr %i.kj, ptr %i.s, align 8, !tbaa !180, !noalias !7269
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

.thread.i.i.i197:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kj, ptr %i.ky, align 8, !tbaa !180, !noalias !7269
  %i.kz = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !7269
  %i.la = icmp eq ptr %i.ko, %i.kz
  br i1 %i.la, label %bb.bi, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bi:                                            ; preds = %.thread.i.i.i197
  store ptr %i.kj, ptr %i.s, align 8, !tbaa !180, !noalias !7269
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bj:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store ptr %i.kj, ptr %i.lb, align 8, !tbaa !181, !noalias !7269
  %i.lc = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !7269
  %i.ld = icmp eq ptr %i.ko, %i.lc
  br i1 %i.ld, label %bb.bk, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.kj, ptr %i.t, align 8, !tbaa !181, !noalias !7269
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195: ; preds = %bb.bk, %bb.bj, %bb.bi, %.thread.i.i.i197, %bb.bh
  %i.le = ptrtoint ptr %i.ko to i64
  %i.lf = load ptr, ptr %i.kj, align 8, !tbaa !185, !noalias !7269
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = and i64 %i.lg, 1
  %i.li = or i64 %i.lh, %i.le
  %i.lj = inttoptr i64 %i.li to ptr
  store ptr %i.lj, ptr %i.kj, align 8, !tbaa !185, !noalias !7269
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, i8 0, i64 16, i1 false), !noalias !7269
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.kj) #26, !noalias !7269
  %i.ll = load i64, ptr %0, align 8, !tbaa !188, !noalias !7269
  %i.lm = add i64 %i.ll, 1
  store i64 %i.lm, ptr %0, align 8, !tbaa !188, !noalias !7269
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195, %.noexc198
  %.sroa.010.0.i.i193 = phi ptr [ %i.kj, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test12copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195 ], [ %.fca.0.extract.i.i.i191, %.noexc198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !7266
  br label %_ZN5boost9container3mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.bm:                                            ; preds = %bb.bg, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test12copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZN5boost9container3mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179: ; preds = %bb.az, %bb.bl
  %.sroa.0261.0 = phi ptr [ %.sroa.010.0.i.i193, %bb.bl ], [ %.127.i.i.i.i164, %bb.az ] ; 2 uses
  %i.lo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182 ; 3 uses
  %i.lp = add i32 %i.lo, 1
  store i32 %i.lp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182
  %.not381 = icmp eq ptr %.sroa.0261.0, %.1.i.i.i.i.i.i
  br i1 %.not381, label %bb.bn, label %.critedge7

bb.bn:                                            ; preds = %_ZN5boost9container3mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0261.0, i64 28
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !612
  %i.ls = zext i32 %i.lr to i64
  %.not291 = icmp eq i64 %indvars.iv, %i.ls
  store i32 %i.lo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182
  br i1 %.not291, label %bb.av, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge7:                                       ; preds = %_ZN5boost9container3mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  store i32 %i.lo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !182
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge111:                                     ; preds = %bb.bb, %.thread.i.i.i177, %bb.bc, %bb.bd, %bb.be
  %i.lt = ptrtoint ptr %.02830.i.i.i.i163 to i64
  %i.lu = load ptr, ptr %i.jl, align 8, !tbaa !185, !noalias !7264
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = and i64 %i.lv, 1
  %i.lx = or i64 %i.lw, %i.lt
  %i.ly = inttoptr i64 %i.lx to ptr
  store ptr %i.ly, ptr %i.jl, align 8, !tbaa !185, !noalias !7264
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false), !noalias !7264
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.jl) #26, !noalias !7264
  %i.ma = load i64, ptr %0, align 8, !tbaa !188, !noalias !7264
  %i.mb = add i64 %i.ma, 1
  store i64 %i.mb, ptr %0, align 8, !tbaa !188, !noalias !7264
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge113:                                     ; preds = %bb.av
  %i.mc = load i64, ptr %0, align 8, !tbaa !188
  %i.md = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i201 = icmp eq i64 %i.mc, %i.md
  br i1 %.not.i201, label %bb.bo, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bo:                                            ; preds = %.critedge113
  %i.me = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !7270 ; 2 uses
  %.not1721.i203 = icmp eq ptr %i.me, %i.b
  br i1 %.not1721.i203, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.preheader.i204

.lr.ph.preheader.i204:                            ; preds = %bb.bo
  %i.mf = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %.lr.ph.preheader.i204
  %.sroa.013.023.i206 = phi ptr [ %.014.i.i.i.i217, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.me, %.lr.ph.preheader.i204 ] ; 4 uses
  %.sroa.09.022.i207 = phi ptr [ %i.mw, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.mf, %.lr.ph.preheader.i204 ] ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 32
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !264
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 24
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !612
  %.not18.i208 = icmp eq i32 %i.mj, %i.mh
  br i1 %.not18.i208, label %bb.bp, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bp:                                            ; preds = %.lr.ph.i205
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 36
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !265
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 28
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !612
  %.not19.i209 = icmp eq i32 %i.mn, %i.ml
  br i1 %.not19.i209, label %bb.bq, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bq:                                            ; preds = %bb.bp
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i210, label %.preheader.i.i.i.i219, label %.preheader17.i.i.i.i211

.preheader17.i.i.i.i211:                          ; preds = %bb.bq, %.preheader17.i.i.i.i211
  %.05.i.i.i.i.i212 = phi ptr [ %.0.i.i.i.i.i214, %.preheader17.i.i.i.i211 ], [ %i.mp, %bb.bq ] ; 2 uses
  %.0.in.i.i.i.i.i213 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i212, i64 8
  %.0.i.i.i.i.i214 = load ptr, ptr %.0.in.i.i.i.i.i213, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i215 = icmp eq ptr %.0.i.i.i.i.i214, null
  br i1 %.not.i.i.i.i.i215, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, label %.preheader17.i.i.i.i211, !llvm.loop !16

.preheader.i.i.i.i219:                            ; preds = %bb.bq, %.preheader.i.i.i.i219
  %.013.i.i.i.i220 = phi ptr [ %.0.i.i.i.i224, %.preheader.i.i.i.i219 ], [ %.sroa.013.023.i206, %bb.bq ] ; 4 uses
  %.0.in.in.in.i.i.i.i221 = load ptr, ptr %.013.i.i.i.i220, align 8, !tbaa !189
  %.0.in.in.i.i.i.i222 = ptrtoint ptr %.0.in.in.in.i.i.i.i221 to i64
  %.0.in.i.i.i.i223 = and i64 %.0.in.in.i.i.i.i222, -2
  %.0.i.i.i.i224 = inttoptr i64 %.0.in.i.i.i.i223 to ptr ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i224, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !181
  %i.ms = icmp eq ptr %.013.i.i.i.i220, %i.mr
  br i1 %i.ms, label %.preheader.i.i.i.i219, label %bb.br, !llvm.loop !17

bb.br:                                            ; preds = %.preheader.i.i.i.i219
  %i.mt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i220, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !181
  %.not16.i.i.i.i225 = icmp eq ptr %i.mu, %.0.i.i.i.i224
  %i.mv = select i1 %.not16.i.i.i.i225, ptr %.013.i.i.i.i220, ptr %.0.i.i.i.i224
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216: ; preds = %.preheader17.i.i.i.i211, %bb.br
  %.014.i.i.i.i217 = phi ptr [ %i.mv, %bb.br ], [ %.05.i.i.i.i.i212, %.preheader17.i.i.i.i211 ] ; 2 uses
  %i.mw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i207) #28
  %.not17.i218 = icmp eq ptr %.014.i.i.i.i217, %i.b
  br i1 %.not17.i218, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.i205, !llvm.loop !118

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %bb.bo
  %i.mx = load i64, ptr %2, align 8, !tbaa !188
  %i.my = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i227 = icmp eq i64 %i.mx, %i.my
  br i1 %.not.i227, label %bb.bs, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bs:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226
  %i.mz = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !7271 ; 2 uses
  %.not1721.i229 = icmp eq ptr %i.mz, %i.u
  br i1 %.not1721.i229, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.preheader.i230

.lr.ph.preheader.i230:                            ; preds = %bb.bs
  %i.na = load ptr, ptr %i.ba, align 8, !tbaa !232
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242, %.lr.ph.preheader.i230
  %.sroa.013.023.i232 = phi ptr [ %.014.i.i.i.i243, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.mz, %.lr.ph.preheader.i230 ] ; 4 uses
  %.sroa.09.022.i233 = phi ptr [ %i.nr, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test12copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.na, %.lr.ph.preheader.i230 ] ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i233, i64 32
end_hunk_6
begin_hunk_7_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.cc, align 16, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false), !tbaa !239
  %i.ce = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 300
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !239
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.cf, align 16, !tbaa !239
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.cg, align 16, !tbaa !239
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.ch, align 16, !tbaa !239
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.ci, align 16, !tbaa !239
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.cj, align 16, !tbaa !239
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.ck, align 16, !tbaa !239
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.cl, align 16, !tbaa !239
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.cm, align 16, !tbaa !239
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.cn, align 16, !tbaa !239
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.co, align 16, !tbaa !239
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.cp, align 16, !tbaa !239
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.cq, align 16, !tbaa !239
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.cr, align 16, !tbaa !239
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.cs, align 16, !tbaa !239
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.ct, align 16, !tbaa !239
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.cu, align 16, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.cv, align 16, !tbaa !239
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.cw, align 16, !tbaa !239
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.cx, align 16, !tbaa !239
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.cy, align 16, !tbaa !239
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.cz, align 16, !tbaa !239
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.da, align 16, !tbaa !239
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.db, align 16, !tbaa !239
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.dc, align 16, !tbaa !239
  %i.dd = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 400
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.ak
  %storemerge313 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.gz, %bb.ak ] ; 2 uses
  %i.df = and i32 %storemerge313, 1
  %.not = icmp eq i32 %i.df, 0
  %i.dg = sext i32 %storemerge313 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %8, i64 %i.dg ; 9 uses
  br i1 %.not, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !8376
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -2                       ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not29.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load i32, ptr %i.dh, align 8, !tbaa !239, !noalias !8376 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.02631.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.127.i.i.i.i, %bb.n ]
  %.02830.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dr, %bb.n ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 24
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !239, !noalias !8376
  %i.dq = icmp slt i32 %i.dn, %i.dp               ; 4 uses
  %.127.i.i.i.i = select i1 %i.dq, ptr %.02631.i.i.i.i, ptr %.02830.i.i.i.i ; 3 uses
  %.in.v.i.i.i.i = select i1 %i.dq, i64 8, i64 16
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 %.in.v.i.i.i.i
  %i.dr = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !185, !noalias !8376 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i123, label %._crit_edge.i.i.i.i, label %bb.n, !llvm.loop !138

._crit_edge.i.i.i.i:                              ; preds = %bb.n
  %.not18.i.i.i.i = icmp eq ptr %.127.i.i.i.i, null
  br i1 %.not18.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !239, !noalias !8376
  %i.du = icmp slt i32 %i.dt, %i.dn
  br i1 %i.du, label %bb.p, label %.critedge109.thread

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.0.lcssa.i12.shrunk.i.i.i = phi i1 [ %i.dq, %._crit_edge.i.i.i.i ], [ %i.dq, %bb.o ], [ true, %bb.m ]
  %.013.lcssa.i11.i.i.i = phi ptr [ %.02830.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.02830.i.i.i.i, %bb.o ], [ %i.b, %bb.m ] ; 6 uses
  %i.dv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %bb.v     ; 13 uses

.noexc:                                           ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8377
  %i.dy = load <2 x i32>, ptr %i.dh, align 8, !tbaa !239, !noalias !8377
  store i32 0, ptr %i.dh, align 8, !tbaa !239, !noalias !8377
  store <2 x i32> %i.dy, ptr %i.dw, align 4, !tbaa !239, !noalias !8377
  store i32 0, ptr %i.di, align 4, !tbaa !239, !noalias !8377
  %i.dz = add i32 %i.dx, 2
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8377
  %i.ea = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.b ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i: ; preds = %.noexc
  br i1 %i.ea, label %bb.q, label %bb.s

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i: ; preds = %.noexc
  br i1 %i.ea, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !8378
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 1
  %i.ef = or disjoint i64 %i.ee, %i.eb
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.b, align 8, !tbaa !185, !noalias !8378
  store ptr %i.dv, ptr %i.t, align 8, !tbaa !181, !noalias !8378
  store ptr %i.dv, ptr %i.s, align 8, !tbaa !180, !noalias !8378
  br label %bb.w

.thread.i.i.i:                                    ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 8
  store ptr %i.dv, ptr %i.eh, align 8, !tbaa !180, !noalias !8378
  %i.ei = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !8378
  %i.ej = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.ei
  br i1 %i.ej, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.thread.i.i.i
  store ptr %i.dv, ptr %i.s, align 8, !tbaa !180, !noalias !8378
  br label %bb.w

bb.s:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 16
  store ptr %i.dv, ptr %i.ek, align 8, !tbaa !181, !noalias !8378
  %i.el = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !8378
  %i.em = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.el
  br i1 %i.em, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr %i.dv, ptr %i.t, align 8, !tbaa !181, !noalias !8378
  br label %bb.w

bb.u:                                             ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.v:                                             ; preds = %bb.p
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.w:                                             ; preds = %bb.q, %.thread.i.i.i, %bb.r, %bb.s, %bb.t
  %i.ep = ptrtoint ptr %.013.lcssa.i11.i.i.i to i64
  %i.eq = load ptr, ptr %i.dv, align 8, !tbaa !185, !noalias !8378
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, 1
  %i.et = or i64 %i.es, %i.ep
  %i.eu = inttoptr i64 %i.et to ptr
  store ptr %i.eu, ptr %i.dv, align 8, !tbaa !185, !noalias !8378
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false), !noalias !8378
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.dv) #26, !noalias !8378
  %i.ew = load i64, ptr %0, align 8, !tbaa !188, !noalias !8378
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %0, align 8, !tbaa !188, !noalias !8378
  br label %bb.ag

bb.x:                                             ; preds = %bb.l
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !8379
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = and i64 %i.ez, -2                       ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i.i.i124

.lr.ph.i.i.i.i.i124:                              ; preds = %bb.x
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load i32, ptr %i.dh, align 8, !tbaa !239, !noalias !8379
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i124
  %.08.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i124 ], [ %.1.i.i.i.i.i, %bb.y ]
  %storemerge27.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i124 ], [ %storemerge.i.i.i.i.i, %bb.y ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 24
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !239, !noalias !8379
  %i.ff = icmp slt i32 %i.fc, %i.fe               ; 2 uses
  %storemerge.in.v.i.i.i.i.i = select i1 %i.ff, i64 8, i64 16
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.ff, ptr %storemerge27.i.i.i.i.i, ptr %.08.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !185, !noalias !8379 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i125, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %bb.y, !llvm.loop !134

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit: ; preds = %bb.y, %bb.x
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.b, %bb.x ], [ %.1.i.i.i.i.i, %bb.y ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !8380
  store i8 0, ptr %7, align 8, !tbaa !210, !noalias !8380
  store ptr null, ptr %i.de, align 8, !tbaa !211, !noalias !8380
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !8380
  store ptr %i.b, ptr %6, align 8, !tbaa !669, !alias.scope !8381, !noalias !8382
  %i.fh = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.dh, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %.noexc130 unwind label %bb.af ; 2 uses

.noexc130:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.fh, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.fh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !8380
  %i.fi = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.fi, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.noexc130
  %i.fj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc131 unwind label %bb.af ; 13 uses

.noexc131:                                        ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8380
  %i.fm = load <2 x i32>, ptr %i.dh, align 8, !tbaa !239, !noalias !8380
  store i32 0, ptr %i.dh, align 8, !tbaa !239, !noalias !8380
  store <2 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !239, !noalias !8380
  store i32 0, ptr %i.fg, align 4, !tbaa !239, !noalias !8380
  %i.fn = add i32 %i.fl, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8380
  %i.fo = load ptr, ptr %i.de, align 8, !tbaa !211, !noalias !8383 ; 6 uses
  %i.fp = load i8, ptr %7, align 8, !tbaa !210, !range !205, !noalias !8383, !noundef !200
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = icmp eq ptr %i.fo, %i.b                 ; 2 uses
  br i1 %i.fq, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126: ; preds = %.noexc131
  br i1 %i.fr, label %bb.aa, label %bb.ac

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128: ; preds = %.noexc131
  br i1 %i.fr, label %bb.aa, label %.thread.i.i.i129

bb.aa:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.fs = ptrtoint ptr %i.fj to i64
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !8383
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = and i64 %i.fu, 1
  %i.fw = or disjoint i64 %i.fv, %i.fs
  %i.fx = inttoptr i64 %i.fw to ptr
  store ptr %i.fx, ptr %i.b, align 8, !tbaa !185, !noalias !8383
  store ptr %i.fj, ptr %i.t, align 8, !tbaa !181, !noalias !8383
  store ptr %i.fj, ptr %i.s, align 8, !tbaa !180, !noalias !8383
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

.thread.i.i.i129:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fj, ptr %i.fy, align 8, !tbaa !180, !noalias !8383
  %i.fz = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !8383
  %i.ga = icmp eq ptr %i.fo, %i.fz
  br i1 %i.ga, label %bb.ab, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ab:                                            ; preds = %.thread.i.i.i129
  store ptr %i.fj, ptr %i.s, align 8, !tbaa !180, !noalias !8383
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ac:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.fj, ptr %i.gb, align 8, !tbaa !181, !noalias !8383
  %i.gc = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !8383
  %i.gd = icmp eq ptr %i.fo, %i.gc
  br i1 %i.gd, label %bb.ad, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.fj, ptr %i.t, align 8, !tbaa !181, !noalias !8383
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127: ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread.i.i.i129, %bb.aa
  %i.ge = ptrtoint ptr %i.fo to i64
  %i.gf = load ptr, ptr %i.fj, align 8, !tbaa !185, !noalias !8383
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = and i64 %i.gg, 1
  %i.gi = or i64 %i.gh, %i.ge
  %i.gj = inttoptr i64 %i.gi to ptr
  store ptr %i.gj, ptr %i.fj, align 8, !tbaa !185, !noalias !8383
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i8 0, i64 16, i1 false), !noalias !8383
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.fj) #26, !noalias !8383
  %i.gl = load i64, ptr %0, align 8, !tbaa !188, !noalias !8383
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %0, align 8, !tbaa !188, !noalias !8383
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127, %.noexc130
  %.sroa.010.0.i.i = phi ptr [ %i.fj, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127 ], [ %.fca.0.extract.i.i.i, %.noexc130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !8380
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.w, %bb.ae
  %.sroa.0271.0 = phi ptr [ %.sroa.010.0.i.i, %bb.ae ], [ %i.dv, %bb.w ] ; 3 uses
  %i.go = icmp eq ptr %i.b, %.sroa.0271.0
  br i1 %i.go, label %.critedge109.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 24
  %i.gq = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gr
  %i.gt = load i32, ptr %i.gp, align 4, !tbaa !239 ; 2 uses
  %i.gu = load i32, ptr %i.gs, align 8, !tbaa !239
  %.not289 = icmp eq i32 %i.gt, %i.gu
  br i1 %.not289, label %bb.ai, label %.critedge109.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !239
  %.not290 = icmp eq i32 %i.gw, %i.gt
  br i1 %.not290, label %bb.aj, label %.critedge109.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gx = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ak unwind label %bb.u

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.gq, ptr %i.gx, align 4, !tbaa !182
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gz = add nsw i32 %i.gy, 1                    ; 2 uses
  store i32 %i.gz, ptr %i.a, align 4, !tbaa !182
  %i.ha = icmp sgt i32 %i.gy, 48
  br i1 %i.ha, label %bb.am, label %bb.l, !llvm.loop !8320

bb.al:                                            ; preds = %bb.af, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.en, %bb.u ], [ %i.eo, %bb.v ], [ %i.gn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bw

.critedge109.thread:                              ; preds = %bb.ai, %bb.ag, %bb.ah, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.hb = load i64, ptr %0, align 8, !tbaa !188
  %i.hc = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.hb, %i.hc
  br i1 %.not.i, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.an:                                            ; preds = %bb.am
  %i.hd = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !8384 ; 2 uses
  %.not1721.i = icmp eq ptr %i.hd, %i.b
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.he = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.hd, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.09.022.i = phi ptr [ %i.hv, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.he, %.lr.ph.preheader.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !264
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 24
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !239
  %.not18.i = icmp eq i32 %i.hi, %i.hg
  br i1 %.not18.i, label %bb.ao, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ao:                                            ; preds = %.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !265
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 28
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !239
  %.not19.i = icmp eq i32 %i.hm, %i.hk
  br i1 %.not19.i, label %bb.ap, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ap:                                            ; preds = %bb.ao
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i132, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.ap, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i133, %.preheader17.i.i.i.i ], [ %i.ho, %bb.ap ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %.0.i.i.i.i.i133 = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %.0.i.i.i.i.i133, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, label %.preheader17.i.i.i.i, !llvm.loop !16

.preheader.i.i.i.i:                               ; preds = %bb.ap, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.013.023.i, %bb.ap ] ; 4 uses
  %.0.in.in.in.i.i.i.i = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !189
  %.0.in.in.i.i.i.i = ptrtoint ptr %.0.in.in.in.i.i.i.i to i64
  %.0.in.i.i.i.i = and i64 %.0.in.in.i.i.i.i, -2
  %.0.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i to ptr ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !181
  %i.hr = icmp eq ptr %.013.i.i.i.i, %i.hq
  br i1 %i.hr, label %.preheader.i.i.i.i, label %bb.aq, !llvm.loop !17

bb.aq:                                            ; preds = %.preheader.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !181
  %.not16.i.i.i.i = icmp eq ptr %i.ht, %.0.i.i.i.i
  %i.hu = select i1 %.not16.i.i.i.i, ptr %.013.i.i.i.i, ptr %.0.i.i.i.i
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i: ; preds = %.preheader17.i.i.i.i, %bb.aq
  %.014.i.i.i.i = phi ptr [ %i.hu, %bb.aq ], [ %.05.i.i.i.i.i, %.preheader17.i.i.i.i ] ; 2 uses
  %i.hv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #28
  %.not17.i = icmp eq ptr %.014.i.i.i.i, %i.b
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !131

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %bb.an
  %i.hw = load i64, ptr %2, align 8, !tbaa !188
  %i.hx = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i135 = icmp eq i64 %i.hw, %i.hx
  br i1 %.not.i135, label %bb.ar, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ar:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit
  %i.hy = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !8385 ; 2 uses
  %.not1721.i137 = icmp eq ptr %i.hy, %i.u
  br i1 %.not1721.i137, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i138

end_hunk_7
begin_hunk_8_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  %.not.i.i.i.i.i149 = icmp eq ptr %.0.i.i.i.i.i148, null
  br i1 %.not.i.i.i.i.i149, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, label %.preheader17.i.i.i.i145, !llvm.loop !16

.preheader.i.i.i.i153:                            ; preds = %bb.at, %.preheader.i.i.i.i153
  %.013.i.i.i.i154 = phi ptr [ %.0.i.i.i.i158, %.preheader.i.i.i.i153 ], [ %.sroa.013.023.i140, %bb.at ] ; 4 uses
  %.0.in.in.in.i.i.i.i155 = load ptr, ptr %.013.i.i.i.i154, align 8, !tbaa !189
  %.0.in.in.i.i.i.i156 = ptrtoint ptr %.0.in.in.in.i.i.i.i155 to i64
  %.0.in.i.i.i.i157 = and i64 %.0.in.in.i.i.i.i156, -2
  %.0.i.i.i.i158 = inttoptr i64 %.0.in.i.i.i.i157 to ptr ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i158, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !181
  %i.im = icmp eq ptr %.013.i.i.i.i154, %i.il
  br i1 %i.im, label %.preheader.i.i.i.i153, label %bb.au, !llvm.loop !17

bb.au:                                            ; preds = %.preheader.i.i.i.i153
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i154, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !181
  %.not16.i.i.i.i159 = icmp eq ptr %i.io, %.0.i.i.i.i158
  %i.ip = select i1 %.not16.i.i.i.i159, ptr %.013.i.i.i.i154, ptr %.0.i.i.i.i158
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150: ; preds = %.preheader17.i.i.i.i145, %bb.au
  %.014.i.i.i.i151 = phi ptr [ %i.ip, %bb.au ], [ %.05.i.i.i.i.i146, %.preheader17.i.i.i.i145 ] ; 2 uses
  %i.iq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i141) #28
  %.not17.i152 = icmp eq ptr %.014.i.i.i.i151, %i.u
  br i1 %.not17.i152, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i139, !llvm.loop !132

_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge113, label %bb.aw, !llvm.loop !8333

bb.aw:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, %bb.av
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.av ] ; 4 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 8 uses
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !8386
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = and i64 %i.iu, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aw
  %i.iw = inttoptr i64 %i.iv to ptr               ; 3 uses
  %i.ix = load i32, ptr %i.is, align 8, !tbaa !239, !noalias !8386 ; 5 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.ax ]
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !239, !noalias !8386
  %i.ja = icmp slt i32 %i.iz, %i.ix               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.ja, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.ja, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !185, !noalias !8386 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i, label %bb.ax, !llvm.loop !133

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i: ; preds = %bb.ax
  %i.jb = icmp eq ptr %.1.i.i.i.i.i.i, %i.b
  br i1 %i.jb, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 24
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !239, !noalias !8386
  %i.je = icmp slt i32 %i.ix, %i.jd
  br i1 %i.je, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit
  %i.jf = and i64 %indvars.iv, 1
  %.not96 = icmp eq i64 %i.jf, 0
  br i1 %.not96, label %.lr.ph.i.i.i.i.i181, label %.lr.ph.i.i.i.i161

.lr.ph.i.i.i.i161:                                ; preds = %bb.ay, %.lr.ph.i.i.i.i161
  %.02631.i.i.i.i162 = phi ptr [ %.127.i.i.i.i164, %.lr.ph.i.i.i.i161 ], [ null, %bb.ay ]
  %.02830.i.i.i.i163 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i161 ], [ %i.iw, %bb.ay ] ; 9 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 24
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !239, !noalias !8387
  %i.ji = icmp slt i32 %i.ix, %i.jh               ; 3 uses
  %.127.i.i.i.i164 = select i1 %i.ji, ptr %.02631.i.i.i.i162, ptr %.02830.i.i.i.i163 ; 4 uses
  %.in.v.i.i.i.i165 = select i1 %i.ji, i64 8, i64 16
  %.in.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 %.in.v.i.i.i.i165
  %i.jj = load ptr, ptr %.in.i.i.i.i166, align 8, !tbaa !185, !noalias !8387 ; 2 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i167, label %._crit_edge.i.i.i.i168, label %.lr.ph.i.i.i.i161, !llvm.loop !138

._crit_edge.i.i.i.i168:                           ; preds = %.lr.ph.i.i.i.i161
  %.not18.i.i.i.i169 = icmp eq ptr %.127.i.i.i.i164, null
  br i1 %.not18.i.i.i.i169, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i.i.i168
  %i.jk = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i164, i64 24
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !239, !noalias !8387
  %i.jm = icmp slt i32 %i.jl, %i.ix
  br i1 %i.jm, label %bb.ba, label %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i168
  %i.jn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc178 unwind label %bb.bf ; 12 uses

.noexc178:                                        ; preds = %bb.ba
  %i.jo = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8388
  %i.jr = load <2 x i32>, ptr %i.is, align 4, !tbaa !239, !noalias !8388
  store i32 0, ptr %i.is, align 4, !tbaa !239, !noalias !8388
  store <2 x i32> %i.jr, ptr %i.jp, align 4, !tbaa !239, !noalias !8388
  store i32 0, ptr %i.jo, align 4, !tbaa !239, !noalias !8388
  %i.js = add i32 %i.jq, 2
  store i32 %i.js, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8388
  %i.jt = icmp eq ptr %.02830.i.i.i.i163, %i.b    ; 2 uses
  br i1 %i.ji, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174: ; preds = %.noexc178
  br i1 %i.jt, label %bb.bb, label %bb.bd

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176: ; preds = %.noexc178
  br i1 %i.jt, label %bb.bb, label %.thread.i.i.i177

bb.bb:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.ju = ptrtoint ptr %i.jn to i64
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !8389
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %i.jy = or disjoint i64 %i.jx, %i.ju
  %i.jz = inttoptr i64 %i.jy to ptr
  store ptr %i.jz, ptr %i.b, align 8, !tbaa !185, !noalias !8389
  store ptr %i.jn, ptr %i.t, align 8, !tbaa !181, !noalias !8389
  store ptr %i.jn, ptr %i.s, align 8, !tbaa !180, !noalias !8389
  br label %.critedge111

.thread.i.i.i177:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176
  %i.ka = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 8
  store ptr %i.jn, ptr %i.ka, align 8, !tbaa !180, !noalias !8389
  %i.kb = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !8389
  %i.kc = icmp eq ptr %.02830.i.i.i.i163, %i.kb
  br i1 %i.kc, label %bb.bc, label %.critedge111

bb.bc:                                            ; preds = %.thread.i.i.i177
  store ptr %i.jn, ptr %i.s, align 8, !tbaa !180, !noalias !8389
  br label %.critedge111

bb.bd:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.kd = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 16
  store ptr %i.jn, ptr %i.kd, align 8, !tbaa !181, !noalias !8389
  %i.ke = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !8389
  %i.kf = icmp eq ptr %.02830.i.i.i.i163, %i.ke
  br i1 %i.kf, label %bb.be, label %.critedge111

bb.be:                                            ; preds = %bb.bd
  store ptr %i.jn, ptr %i.t, align 8, !tbaa !181, !noalias !8389
  br label %.critedge111

bb.bf:                                            ; preds = %bb.ba
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.lr.ph.i.i.i.i.i181:                              ; preds = %bb.ay, %.lr.ph.i.i.i.i.i181
  %.08.i.i.i.i.i182 = phi ptr [ %.1.i.i.i.i.i186, %.lr.ph.i.i.i.i.i181 ], [ %i.b, %bb.ay ]
  %storemerge27.i.i.i.i.i183 = phi ptr [ %storemerge.i.i.i.i.i187, %.lr.ph.i.i.i.i.i181 ], [ %i.iw, %bb.ay ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 24
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !239, !noalias !8390
  %i.kj = icmp slt i32 %i.ix, %i.ki               ; 2 uses
  %storemerge.in.v.i.i.i.i.i184 = select i1 %i.kj, i64 8, i64 16
  %storemerge.in.i.i.i.i.i185 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 %storemerge.in.v.i.i.i.i.i184
  %.1.i.i.i.i.i186 = select i1 %i.kj, ptr %storemerge27.i.i.i.i.i183, ptr %.08.i.i.i.i.i182 ; 2 uses
  %storemerge.i.i.i.i.i187 = load ptr, ptr %storemerge.in.i.i.i.i.i185, align 8, !tbaa !185, !noalias !8390 ; 2 uses
  %.not.i.i.i.i.i188 = icmp eq ptr %storemerge.i.i.i.i.i187, null
  br i1 %.not.i.i.i.i.i188, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190, label %.lr.ph.i.i.i.i.i181, !llvm.loop !134

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190: ; preds = %.lr.ph.i.i.i.i.i181
  %i.kk = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !8391
  store i8 0, ptr %5, align 8, !tbaa !210, !noalias !8391
  store ptr null, ptr %i.ir, align 8, !tbaa !211, !noalias !8391
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !8391
  store ptr %i.b, ptr %4, align 8, !tbaa !669, !alias.scope !8392, !noalias !8393
  %i.kl = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.1.i.i.i.i.i186, ptr noundef nonnull align 4 dereferenceable(4) %i.is, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %.noexc198 unwind label %bb.bm ; 2 uses

.noexc198:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %.fca.0.extract.i.i.i191 = extractvalue { ptr, i8 } %i.kl, 0
  %.fca.1.extract.i.i.i192 = extractvalue { ptr, i8 } %i.kl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !8391
  %i.km = trunc nuw i8 %.fca.1.extract.i.i.i192 to i1
  br i1 %i.km, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %.noexc198
  %i.kn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc199 unwind label %bb.bm ; 13 uses

.noexc199:                                        ; preds = %bb.bg
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8391
  %i.kq = load <2 x i32>, ptr %i.is, align 8, !tbaa !239, !noalias !8391
  store i32 0, ptr %i.is, align 8, !tbaa !239, !noalias !8391
  store <2 x i32> %i.kq, ptr %i.ko, align 4, !tbaa !239, !noalias !8391
  store i32 0, ptr %i.kk, align 4, !tbaa !239, !noalias !8391
  %i.kr = add i32 %i.kp, 2
  store i32 %i.kr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !8391
  %i.ks = load ptr, ptr %i.ir, align 8, !tbaa !211, !noalias !8394 ; 6 uses
  %i.kt = load i8, ptr %5, align 8, !tbaa !210, !range !205, !noalias !8394, !noundef !200
  %i.ku = trunc nuw i8 %i.kt to i1
  %i.kv = icmp eq ptr %i.ks, %i.b                 ; 2 uses
  br i1 %i.ku, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194: ; preds = %.noexc199
  br i1 %i.kv, label %bb.bh, label %bb.bj

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196: ; preds = %.noexc199
  br i1 %i.kv, label %bb.bh, label %.thread.i.i.i197

bb.bh:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.kw = ptrtoint ptr %i.kn to i64
  %i.kx = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !8394
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = and i64 %i.ky, 1
  %i.la = or disjoint i64 %i.kz, %i.kw
  %i.lb = inttoptr i64 %i.la to ptr
  store ptr %i.lb, ptr %i.b, align 8, !tbaa !185, !noalias !8394
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !181, !noalias !8394
  store ptr %i.kn, ptr %i.s, align 8, !tbaa !180, !noalias !8394
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

.thread.i.i.i197:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kn, ptr %i.lc, align 8, !tbaa !180, !noalias !8394
  %i.ld = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !8394
  %i.le = icmp eq ptr %i.ks, %i.ld
  br i1 %i.le, label %bb.bi, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bi:                                            ; preds = %.thread.i.i.i197
  store ptr %i.kn, ptr %i.s, align 8, !tbaa !180, !noalias !8394
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bj:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.kn, ptr %i.lf, align 8, !tbaa !181, !noalias !8394
  %i.lg = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !8394
  %i.lh = icmp eq ptr %i.ks, %i.lg
  br i1 %i.lh, label %bb.bk, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !181, !noalias !8394
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195: ; preds = %bb.bk, %bb.bj, %bb.bi, %.thread.i.i.i197, %bb.bh
  %i.li = ptrtoint ptr %i.ks to i64
  %i.lj = load ptr, ptr %i.kn, align 8, !tbaa !185, !noalias !8394
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = and i64 %i.lk, 1
  %i.lm = or i64 %i.ll, %i.li
  %i.ln = inttoptr i64 %i.lm to ptr
  store ptr %i.ln, ptr %i.kn, align 8, !tbaa !185, !noalias !8394
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i8 0, i64 16, i1 false), !noalias !8394
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.kn) #26, !noalias !8394
  %i.lp = load i64, ptr %0, align 8, !tbaa !188, !noalias !8394
  %i.lq = add i64 %i.lp, 1
  store i64 %i.lq, ptr %0, align 8, !tbaa !188, !noalias !8394
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195, %.noexc198
  %.sroa.010.0.i.i193 = phi ptr [ %i.kn, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195 ], [ %.fca.0.extract.i.i.i191, %.noexc198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !8391
  br label %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.bm:                                            ; preds = %bb.bg, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179: ; preds = %bb.az, %bb.bl
  %.sroa.0261.0 = phi ptr [ %.sroa.010.0.i.i193, %bb.bl ], [ %.127.i.i.i.i164, %bb.az ] ; 2 uses
  %i.ls = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182 ; 3 uses
  %i.lt = add i32 %i.ls, 1
  store i32 %i.lt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  %.not381 = icmp eq ptr %.sroa.0261.0, %.1.i.i.i.i.i.i
  br i1 %.not381, label %bb.bn, label %.critedge7

bb.bn:                                            ; preds = %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0261.0, i64 28
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !239
  %i.lw = zext i32 %i.lv to i64
  %.not291 = icmp eq i64 %indvars.iv, %i.lw
  store i32 %i.ls, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  br i1 %.not291, label %bb.av, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge7:                                       ; preds = %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  store i32 %i.ls, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge111:                                     ; preds = %bb.bb, %.thread.i.i.i177, %bb.bc, %bb.bd, %bb.be
  %i.lx = ptrtoint ptr %.02830.i.i.i.i163 to i64
  %i.ly = load ptr, ptr %i.jn, align 8, !tbaa !185, !noalias !8389
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, 1
  %i.mb = or i64 %i.ma, %i.lx
  %i.mc = inttoptr i64 %i.mb to ptr
  store ptr %i.mc, ptr %i.jn, align 8, !tbaa !185, !noalias !8389
  %i.md = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.md, i8 0, i64 16, i1 false), !noalias !8389
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.jn) #26, !noalias !8389
  %i.me = load i64, ptr %0, align 8, !tbaa !188, !noalias !8389
  %i.mf = add i64 %i.me, 1
  store i64 %i.mf, ptr %0, align 8, !tbaa !188, !noalias !8389
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge113:                                     ; preds = %bb.av
  %i.mg = load i64, ptr %0, align 8, !tbaa !188
  %i.mh = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i201 = icmp eq i64 %i.mg, %i.mh
  br i1 %.not.i201, label %bb.bo, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bo:                                            ; preds = %.critedge113
  %i.mi = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !8395 ; 2 uses
  %.not1721.i203 = icmp eq ptr %i.mi, %i.b
  br i1 %.not1721.i203, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.preheader.i204

.lr.ph.preheader.i204:                            ; preds = %bb.bo
  %i.mj = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %.lr.ph.preheader.i204
  %.sroa.013.023.i206 = phi ptr [ %.014.i.i.i.i217, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.mi, %.lr.ph.preheader.i204 ] ; 4 uses
  %.sroa.09.022.i207 = phi ptr [ %i.na, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.mj, %.lr.ph.preheader.i204 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 32
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !264
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 24
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !239
  %.not18.i208 = icmp eq i32 %i.mn, %i.ml
  br i1 %.not18.i208, label %bb.bp, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bp:                                            ; preds = %.lr.ph.i205
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 36
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !265
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !239
  %.not19.i209 = icmp eq i32 %i.mr, %i.mp
  br i1 %.not19.i209, label %bb.bq, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bq:                                            ; preds = %bb.bp
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i210, label %.preheader.i.i.i.i219, label %.preheader17.i.i.i.i211

.preheader17.i.i.i.i211:                          ; preds = %bb.bq, %.preheader17.i.i.i.i211
  %.05.i.i.i.i.i212 = phi ptr [ %.0.i.i.i.i.i214, %.preheader17.i.i.i.i211 ], [ %i.mt, %bb.bq ] ; 2 uses
  %.0.in.i.i.i.i.i213 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i212, i64 8
  %.0.i.i.i.i.i214 = load ptr, ptr %.0.in.i.i.i.i.i213, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i215 = icmp eq ptr %.0.i.i.i.i.i214, null
  br i1 %.not.i.i.i.i.i215, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, label %.preheader17.i.i.i.i211, !llvm.loop !16

.preheader.i.i.i.i219:                            ; preds = %bb.bq, %.preheader.i.i.i.i219
  %.013.i.i.i.i220 = phi ptr [ %.0.i.i.i.i224, %.preheader.i.i.i.i219 ], [ %.sroa.013.023.i206, %bb.bq ] ; 4 uses
  %.0.in.in.in.i.i.i.i221 = load ptr, ptr %.013.i.i.i.i220, align 8, !tbaa !189
  %.0.in.in.i.i.i.i222 = ptrtoint ptr %.0.in.in.in.i.i.i.i221 to i64
  %.0.in.i.i.i.i223 = and i64 %.0.in.in.i.i.i.i222, -2
  %.0.i.i.i.i224 = inttoptr i64 %.0.in.i.i.i.i223 to ptr ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i224, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !181
  %i.mw = icmp eq ptr %.013.i.i.i.i220, %i.mv
  br i1 %i.mw, label %.preheader.i.i.i.i219, label %bb.br, !llvm.loop !17

bb.br:                                            ; preds = %.preheader.i.i.i.i219
  %i.mx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i220, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !181
  %.not16.i.i.i.i225 = icmp eq ptr %i.my, %.0.i.i.i.i224
  %i.mz = select i1 %.not16.i.i.i.i225, ptr %.013.i.i.i.i220, ptr %.0.i.i.i.i224
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216: ; preds = %.preheader17.i.i.i.i211, %bb.br
  %.014.i.i.i.i217 = phi ptr [ %i.mz, %bb.br ], [ %.05.i.i.i.i.i212, %.preheader17.i.i.i.i211 ] ; 2 uses
  %i.na = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i207) #28
  %.not17.i218 = icmp eq ptr %.014.i.i.i.i217, %i.b
  br i1 %.not17.i218, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.i205, !llvm.loop !131

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %bb.bo
  %i.nb = load i64, ptr %2, align 8, !tbaa !188
  %i.nc = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i227 = icmp eq i64 %i.nb, %i.nc
  br i1 %.not.i227, label %bb.bs, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bs:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226
  %i.nd = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !8396 ; 2 uses
  %.not1721.i229 = icmp eq ptr %i.nd, %i.u
  br i1 %.not1721.i229, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.preheader.i230

.lr.ph.preheader.i230:                            ; preds = %bb.bs
  %i.ne = load ptr, ptr %i.ba, align 8, !tbaa !232
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242, %.lr.ph.preheader.i230
  %.sroa.013.023.i232 = phi ptr [ %.014.i.i.i.i243, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.nd, %.lr.ph.preheader.i230 ] ; 4 uses
  %.sroa.09.022.i233 = phi ptr [ %i.nv, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.ne, %.lr.ph.preheader.i230 ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.cc, align 16, !tbaa !704
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false), !tbaa !704
  %i.ce = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted, 300
  store i32 %i.ce, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !704
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.cf, align 16, !tbaa !704
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.cg, align 16, !tbaa !704
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.ch, align 16, !tbaa !704
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.ci, align 16, !tbaa !704
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.cj, align 16, !tbaa !704
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.ck, align 16, !tbaa !704
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.cl, align 16, !tbaa !704
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.cm, align 16, !tbaa !704
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.cn, align 16, !tbaa !704
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.co, align 16, !tbaa !704
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.cp, align 16, !tbaa !704
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.cq, align 16, !tbaa !704
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.cr, align 16, !tbaa !704
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.cs, align 16, !tbaa !704
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.ct, align 16, !tbaa !704
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.cu, align 16, !tbaa !704
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.cv, align 16, !tbaa !704
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.cw, align 16, !tbaa !704
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.cx, align 16, !tbaa !704
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.cy, align 16, !tbaa !704
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.cz, align 16, !tbaa !704
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.da, align 16, !tbaa !704
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.db, align 16, !tbaa !704
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.dc, align 16, !tbaa !704
  %i.dd = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted, 400
  store i32 %i.dd, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.ak
  %storemerge313 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.gz, %bb.ak ] ; 2 uses
  %i.df = and i32 %storemerge313, 1
  %.not = icmp eq i32 %i.df, 0
  %i.dg = sext i32 %storemerge313 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %8, i64 %i.dg ; 9 uses
  br i1 %.not, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !9471
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -2                       ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not29.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load i32, ptr %i.dh, align 8, !tbaa !704, !noalias !9471 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.02631.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.127.i.i.i.i, %bb.n ]
  %.02830.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dr, %bb.n ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 24
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !704, !noalias !9471
  %i.dq = icmp slt i32 %i.dn, %i.dp               ; 4 uses
  %.127.i.i.i.i = select i1 %i.dq, ptr %.02631.i.i.i.i, ptr %.02830.i.i.i.i ; 3 uses
  %.in.v.i.i.i.i = select i1 %i.dq, i64 8, i64 16
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 %.in.v.i.i.i.i
  %i.dr = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !185, !noalias !9471 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i123, label %._crit_edge.i.i.i.i, label %bb.n, !llvm.loop !150

._crit_edge.i.i.i.i:                              ; preds = %bb.n
  %.not18.i.i.i.i = icmp eq ptr %.127.i.i.i.i, null
  br i1 %.not18.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !704, !noalias !9471
  %i.du = icmp slt i32 %i.dt, %i.dn
  br i1 %i.du, label %bb.p, label %.critedge109.thread

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.0.lcssa.i12.shrunk.i.i.i = phi i1 [ %i.dq, %._crit_edge.i.i.i.i ], [ %i.dq, %bb.o ], [ true, %bb.m ]
  %.013.lcssa.i11.i.i.i = phi ptr [ %.02830.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.02830.i.i.i.i, %bb.o ], [ %i.b, %bb.m ] ; 6 uses
  %i.dv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %bb.v     ; 13 uses

.noexc:                                           ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9472
  %i.dy = load <2 x i32>, ptr %i.dh, align 8, !tbaa !704, !noalias !9472
  store i32 0, ptr %i.dh, align 8, !tbaa !704, !noalias !9472
  store <2 x i32> %i.dy, ptr %i.dw, align 4, !tbaa !704, !noalias !9472
  store i32 0, ptr %i.di, align 4, !tbaa !704, !noalias !9472
  %i.dz = add i32 %i.dx, 2
  store i32 %i.dz, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9472
  %i.ea = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.b ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i: ; preds = %.noexc
  br i1 %i.ea, label %bb.q, label %bb.s

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i: ; preds = %.noexc
  br i1 %i.ea, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !9473
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 1
  %i.ef = or disjoint i64 %i.ee, %i.eb
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.b, align 8, !tbaa !185, !noalias !9473
  store ptr %i.dv, ptr %i.t, align 8, !tbaa !181, !noalias !9473
  store ptr %i.dv, ptr %i.s, align 8, !tbaa !180, !noalias !9473
  br label %bb.w

.thread.i.i.i:                                    ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 8
  store ptr %i.dv, ptr %i.eh, align 8, !tbaa !180, !noalias !9473
  %i.ei = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !9473
  %i.ej = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.ei
  br i1 %i.ej, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.thread.i.i.i
  store ptr %i.dv, ptr %i.s, align 8, !tbaa !180, !noalias !9473
  br label %bb.w

bb.s:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 16
  store ptr %i.dv, ptr %i.ek, align 8, !tbaa !181, !noalias !9473
  %i.el = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !9473
  %i.em = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.el
  br i1 %i.em, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr %i.dv, ptr %i.t, align 8, !tbaa !181, !noalias !9473
  br label %bb.w

bb.u:                                             ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.v:                                             ; preds = %bb.p
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.w:                                             ; preds = %bb.q, %.thread.i.i.i, %bb.r, %bb.s, %bb.t
  %i.ep = ptrtoint ptr %.013.lcssa.i11.i.i.i to i64
  %i.eq = load ptr, ptr %i.dv, align 8, !tbaa !185, !noalias !9473
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, 1
  %i.et = or i64 %i.es, %i.ep
  %i.eu = inttoptr i64 %i.et to ptr
  store ptr %i.eu, ptr %i.dv, align 8, !tbaa !185, !noalias !9473
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false), !noalias !9473
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.dv) #26, !noalias !9473
  %i.ew = load i64, ptr %0, align 8, !tbaa !188, !noalias !9473
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %0, align 8, !tbaa !188, !noalias !9473
  br label %bb.ag

bb.x:                                             ; preds = %bb.l
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !9474
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = and i64 %i.ez, -2                       ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i.i.i124

.lr.ph.i.i.i.i.i124:                              ; preds = %bb.x
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load i32, ptr %i.dh, align 8, !tbaa !704, !noalias !9474
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i124
  %.08.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i124 ], [ %.1.i.i.i.i.i, %bb.y ]
  %storemerge27.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i124 ], [ %storemerge.i.i.i.i.i, %bb.y ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 24
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !704, !noalias !9474
  %i.ff = icmp slt i32 %i.fc, %i.fe               ; 2 uses
  %storemerge.in.v.i.i.i.i.i = select i1 %i.ff, i64 8, i64 16
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.ff, ptr %storemerge27.i.i.i.i.i, ptr %.08.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !185, !noalias !9474 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i125, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %bb.y, !llvm.loop !147

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit: ; preds = %bb.y, %bb.x
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.b, %bb.x ], [ %.1.i.i.i.i.i, %bb.y ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !9475
  store i8 0, ptr %7, align 8, !tbaa !210, !noalias !9475
  store ptr null, ptr %i.de, align 8, !tbaa !211, !noalias !9475
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !9475
  store ptr %i.b, ptr %6, align 8, !tbaa !717, !alias.scope !9476, !noalias !9477
  %i.fh = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test17moveconstruct_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.dh, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %.noexc130 unwind label %bb.af ; 2 uses

.noexc130:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.fh, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.fh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !9475
  %i.fi = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.fi, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.noexc130
  %i.fj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc131 unwind label %bb.af ; 13 uses

.noexc131:                                        ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9475
  %i.fm = load <2 x i32>, ptr %i.dh, align 8, !tbaa !704, !noalias !9475
  store i32 0, ptr %i.dh, align 8, !tbaa !704, !noalias !9475
  store <2 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !704, !noalias !9475
  store i32 0, ptr %i.fg, align 4, !tbaa !704, !noalias !9475
  %i.fn = add i32 %i.fl, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9475
  %i.fo = load ptr, ptr %i.de, align 8, !tbaa !211, !noalias !9478 ; 6 uses
  %i.fp = load i8, ptr %7, align 8, !tbaa !210, !range !205, !noalias !9478, !noundef !200
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = icmp eq ptr %i.fo, %i.b                 ; 2 uses
  br i1 %i.fq, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126: ; preds = %.noexc131
  br i1 %i.fr, label %bb.aa, label %bb.ac

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128: ; preds = %.noexc131
  br i1 %i.fr, label %bb.aa, label %.thread.i.i.i129

bb.aa:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.fs = ptrtoint ptr %i.fj to i64
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !9478
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = and i64 %i.fu, 1
  %i.fw = or disjoint i64 %i.fv, %i.fs
  %i.fx = inttoptr i64 %i.fw to ptr
  store ptr %i.fx, ptr %i.b, align 8, !tbaa !185, !noalias !9478
  store ptr %i.fj, ptr %i.t, align 8, !tbaa !181, !noalias !9478
  store ptr %i.fj, ptr %i.s, align 8, !tbaa !180, !noalias !9478
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

.thread.i.i.i129:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fj, ptr %i.fy, align 8, !tbaa !180, !noalias !9478
  %i.fz = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !9478
  %i.ga = icmp eq ptr %i.fo, %i.fz
  br i1 %i.ga, label %bb.ab, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ab:                                            ; preds = %.thread.i.i.i129
  store ptr %i.fj, ptr %i.s, align 8, !tbaa !180, !noalias !9478
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ac:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.fj, ptr %i.gb, align 8, !tbaa !181, !noalias !9478
  %i.gc = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !9478
  %i.gd = icmp eq ptr %i.fo, %i.gc
  br i1 %i.gd, label %bb.ad, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.fj, ptr %i.t, align 8, !tbaa !181, !noalias !9478
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127: ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread.i.i.i129, %bb.aa
  %i.ge = ptrtoint ptr %i.fo to i64
  %i.gf = load ptr, ptr %i.fj, align 8, !tbaa !185, !noalias !9478
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = and i64 %i.gg, 1
  %i.gi = or i64 %i.gh, %i.ge
  %i.gj = inttoptr i64 %i.gi to ptr
  store ptr %i.gj, ptr %i.fj, align 8, !tbaa !185, !noalias !9478
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i8 0, i64 16, i1 false), !noalias !9478
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.fj) #26, !noalias !9478
  %i.gl = load i64, ptr %0, align 8, !tbaa !188, !noalias !9478
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %0, align 8, !tbaa !188, !noalias !9478
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127, %.noexc130
  %.sroa.010.0.i.i = phi ptr [ %i.fj, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127 ], [ %.fca.0.extract.i.i.i, %.noexc130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !9475
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.w, %bb.ae
  %.sroa.0271.0 = phi ptr [ %.sroa.010.0.i.i, %bb.ae ], [ %i.dv, %bb.w ] ; 3 uses
  %i.go = icmp eq ptr %i.b, %.sroa.0271.0
  br i1 %i.go, label %.critedge109.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 24
  %i.gq = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gr
  %i.gt = load i32, ptr %i.gp, align 4, !tbaa !704 ; 2 uses
  %i.gu = load i32, ptr %i.gs, align 8, !tbaa !704
  %.not289 = icmp eq i32 %i.gt, %i.gu
  br i1 %.not289, label %bb.ai, label %.critedge109.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !704
  %.not290 = icmp eq i32 %i.gw, %i.gt
  br i1 %.not290, label %bb.aj, label %.critedge109.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gx = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ak unwind label %bb.u

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.gq, ptr %i.gx, align 4, !tbaa !182
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gz = add nsw i32 %i.gy, 1                    ; 2 uses
  store i32 %i.gz, ptr %i.a, align 4, !tbaa !182
  %i.ha = icmp sgt i32 %i.gy, 48
  br i1 %i.ha, label %bb.am, label %bb.l, !llvm.loop !9415

bb.al:                                            ; preds = %bb.af, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.en, %bb.u ], [ %i.eo, %bb.v ], [ %i.gn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bw

.critedge109.thread:                              ; preds = %bb.ai, %bb.ag, %bb.ah, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.hb = load i64, ptr %0, align 8, !tbaa !188
  %i.hc = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.hb, %i.hc
  br i1 %.not.i, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.an:                                            ; preds = %bb.am
  %i.hd = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !9479 ; 2 uses
  %.not1721.i = icmp eq ptr %i.hd, %i.b
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.he = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.hd, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.09.022.i = phi ptr [ %i.hv, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.he, %.lr.ph.preheader.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !264
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 24
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !704
  %.not18.i = icmp eq i32 %i.hi, %i.hg
  br i1 %.not18.i, label %bb.ao, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ao:                                            ; preds = %.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !265
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 28
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !704
  %.not19.i = icmp eq i32 %i.hm, %i.hk
  br i1 %.not19.i, label %bb.ap, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ap:                                            ; preds = %bb.ao
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i132, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.ap, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i133, %.preheader17.i.i.i.i ], [ %i.ho, %bb.ap ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %.0.i.i.i.i.i133 = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %.0.i.i.i.i.i133, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, label %.preheader17.i.i.i.i, !llvm.loop !16

.preheader.i.i.i.i:                               ; preds = %bb.ap, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.013.023.i, %bb.ap ] ; 4 uses
  %.0.in.in.in.i.i.i.i = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !189
  %.0.in.in.i.i.i.i = ptrtoint ptr %.0.in.in.in.i.i.i.i to i64
  %.0.in.i.i.i.i = and i64 %.0.in.in.i.i.i.i, -2
  %.0.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i to ptr ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !181
  %i.hr = icmp eq ptr %.013.i.i.i.i, %i.hq
  br i1 %i.hr, label %.preheader.i.i.i.i, label %bb.aq, !llvm.loop !17

bb.aq:                                            ; preds = %.preheader.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !181
  %.not16.i.i.i.i = icmp eq ptr %i.ht, %.0.i.i.i.i
  %i.hu = select i1 %.not16.i.i.i.i, ptr %.013.i.i.i.i, ptr %.0.i.i.i.i
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i: ; preds = %.preheader17.i.i.i.i, %bb.aq
  %.014.i.i.i.i = phi ptr [ %i.hu, %bb.aq ], [ %.05.i.i.i.i.i, %.preheader17.i.i.i.i ] ; 2 uses
  %i.hv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #28
  %.not17.i = icmp eq ptr %.014.i.i.i.i, %i.b
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !144

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %bb.an
  %i.hw = load i64, ptr %2, align 8, !tbaa !188
  %i.hx = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i135 = icmp eq i64 %i.hw, %i.hx
  br i1 %.not.i135, label %bb.ar, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.ar:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit
  %i.hy = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !9480 ; 2 uses
  %.not1721.i137 = icmp eq ptr %i.hy, %i.u
  br i1 %.not1721.i137, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i138

end_hunk_9
begin_hunk_10_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_8multimapIS4_S4_S6_SB_SE_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  %.not.i.i.i.i.i149 = icmp eq ptr %.0.i.i.i.i.i148, null
  br i1 %.not.i.i.i.i.i149, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, label %.preheader17.i.i.i.i145, !llvm.loop !16

.preheader.i.i.i.i153:                            ; preds = %bb.at, %.preheader.i.i.i.i153
  %.013.i.i.i.i154 = phi ptr [ %.0.i.i.i.i158, %.preheader.i.i.i.i153 ], [ %.sroa.013.023.i140, %bb.at ] ; 4 uses
  %.0.in.in.in.i.i.i.i155 = load ptr, ptr %.013.i.i.i.i154, align 8, !tbaa !189
  %.0.in.in.i.i.i.i156 = ptrtoint ptr %.0.in.in.in.i.i.i.i155 to i64
  %.0.in.i.i.i.i157 = and i64 %.0.in.in.i.i.i.i156, -2
  %.0.i.i.i.i158 = inttoptr i64 %.0.in.i.i.i.i157 to ptr ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i158, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !181
  %i.im = icmp eq ptr %.013.i.i.i.i154, %i.il
  br i1 %i.im, label %.preheader.i.i.i.i153, label %bb.au, !llvm.loop !17

bb.au:                                            ; preds = %.preheader.i.i.i.i153
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i154, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !181
  %.not16.i.i.i.i159 = icmp eq ptr %i.io, %.0.i.i.i.i158
  %i.ip = select i1 %.not16.i.i.i.i159, ptr %.013.i.i.i.i154, ptr %.0.i.i.i.i158
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150: ; preds = %.preheader17.i.i.i.i145, %bb.au
  %.014.i.i.i.i151 = phi ptr [ %i.ip, %bb.au ], [ %.05.i.i.i.i.i146, %.preheader17.i.i.i.i145 ] ; 2 uses
  %i.iq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i141) #28
  %.not17.i152 = icmp eq ptr %.014.i.i.i.i151, %i.u
  br i1 %.not17.i152, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i139, !llvm.loop !145

_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge113, label %bb.aw, !llvm.loop !9428

bb.aw:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, %bb.av
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.av ] ; 4 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 8 uses
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !9481
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = and i64 %i.iu, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aw
  %i.iw = inttoptr i64 %i.iv to ptr               ; 3 uses
  %i.ix = load i32, ptr %i.is, align 8, !tbaa !704, !noalias !9481 ; 5 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.ax ]
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !704, !noalias !9481
  %i.ja = icmp slt i32 %i.iz, %i.ix               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.ja, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.ja, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !185, !noalias !9481 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test17moveconstruct_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i, label %bb.ax, !llvm.loop !146

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test17moveconstruct_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i: ; preds = %bb.ax
  %i.jb = icmp eq ptr %.1.i.i.i.i.i.i, %i.b
  br i1 %i.jb, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test17moveconstruct_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 24
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !704, !noalias !9481
  %i.je = icmp slt i32 %i.ix, %i.jd
  br i1 %i.je, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit
  %i.jf = and i64 %indvars.iv, 1
  %.not96 = icmp eq i64 %i.jf, 0
  br i1 %.not96, label %.lr.ph.i.i.i.i.i181, label %.lr.ph.i.i.i.i161

.lr.ph.i.i.i.i161:                                ; preds = %bb.ay, %.lr.ph.i.i.i.i161
  %.02631.i.i.i.i162 = phi ptr [ %.127.i.i.i.i164, %.lr.ph.i.i.i.i161 ], [ null, %bb.ay ]
  %.02830.i.i.i.i163 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i161 ], [ %i.iw, %bb.ay ] ; 9 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 24
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !704, !noalias !9482
  %i.ji = icmp slt i32 %i.ix, %i.jh               ; 3 uses
  %.127.i.i.i.i164 = select i1 %i.ji, ptr %.02631.i.i.i.i162, ptr %.02830.i.i.i.i163 ; 4 uses
  %.in.v.i.i.i.i165 = select i1 %i.ji, i64 8, i64 16
  %.in.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 %.in.v.i.i.i.i165
  %i.jj = load ptr, ptr %.in.i.i.i.i166, align 8, !tbaa !185, !noalias !9482 ; 2 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i167, label %._crit_edge.i.i.i.i168, label %.lr.ph.i.i.i.i161, !llvm.loop !150

._crit_edge.i.i.i.i168:                           ; preds = %.lr.ph.i.i.i.i161
  %.not18.i.i.i.i169 = icmp eq ptr %.127.i.i.i.i164, null
  br i1 %.not18.i.i.i.i169, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i.i.i168
  %i.jk = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i164, i64 24
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !704, !noalias !9482
  %i.jm = icmp slt i32 %i.jl, %i.ix
  br i1 %i.jm, label %bb.ba, label %_ZN5boost9container3mapINS0_4test17moveconstruct_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i168
  %i.jn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc178 unwind label %bb.bf ; 12 uses

.noexc178:                                        ; preds = %bb.ba
  %i.jo = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jq = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9483
  %i.jr = load <2 x i32>, ptr %i.is, align 4, !tbaa !704, !noalias !9483
  store i32 0, ptr %i.is, align 4, !tbaa !704, !noalias !9483
  store <2 x i32> %i.jr, ptr %i.jp, align 4, !tbaa !704, !noalias !9483
  store i32 0, ptr %i.jo, align 4, !tbaa !704, !noalias !9483
  %i.js = add i32 %i.jq, 2
  store i32 %i.js, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9483
  %i.jt = icmp eq ptr %.02830.i.i.i.i163, %i.b    ; 2 uses
  br i1 %i.ji, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174: ; preds = %.noexc178
  br i1 %i.jt, label %bb.bb, label %bb.bd

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176: ; preds = %.noexc178
  br i1 %i.jt, label %bb.bb, label %.thread.i.i.i177

bb.bb:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.ju = ptrtoint ptr %i.jn to i64
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !9484
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %i.jy = or disjoint i64 %i.jx, %i.ju
  %i.jz = inttoptr i64 %i.jy to ptr
  store ptr %i.jz, ptr %i.b, align 8, !tbaa !185, !noalias !9484
  store ptr %i.jn, ptr %i.t, align 8, !tbaa !181, !noalias !9484
  store ptr %i.jn, ptr %i.s, align 8, !tbaa !180, !noalias !9484
  br label %.critedge111

.thread.i.i.i177:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176
  %i.ka = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 8
  store ptr %i.jn, ptr %i.ka, align 8, !tbaa !180, !noalias !9484
  %i.kb = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !9484
  %i.kc = icmp eq ptr %.02830.i.i.i.i163, %i.kb
  br i1 %i.kc, label %bb.bc, label %.critedge111

bb.bc:                                            ; preds = %.thread.i.i.i177
  store ptr %i.jn, ptr %i.s, align 8, !tbaa !180, !noalias !9484
  br label %.critedge111

bb.bd:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.kd = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 16
  store ptr %i.jn, ptr %i.kd, align 8, !tbaa !181, !noalias !9484
  %i.ke = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !9484
  %i.kf = icmp eq ptr %.02830.i.i.i.i163, %i.ke
  br i1 %i.kf, label %bb.be, label %.critedge111

bb.be:                                            ; preds = %bb.bd
  store ptr %i.jn, ptr %i.t, align 8, !tbaa !181, !noalias !9484
  br label %.critedge111

bb.bf:                                            ; preds = %bb.ba
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.lr.ph.i.i.i.i.i181:                              ; preds = %bb.ay, %.lr.ph.i.i.i.i.i181
  %.08.i.i.i.i.i182 = phi ptr [ %.1.i.i.i.i.i186, %.lr.ph.i.i.i.i.i181 ], [ %i.b, %bb.ay ]
  %storemerge27.i.i.i.i.i183 = phi ptr [ %storemerge.i.i.i.i.i187, %.lr.ph.i.i.i.i.i181 ], [ %i.iw, %bb.ay ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 24
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !704, !noalias !9485
  %i.kj = icmp slt i32 %i.ix, %i.ki               ; 2 uses
  %storemerge.in.v.i.i.i.i.i184 = select i1 %i.kj, i64 8, i64 16
  %storemerge.in.i.i.i.i.i185 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 %storemerge.in.v.i.i.i.i.i184
  %.1.i.i.i.i.i186 = select i1 %i.kj, ptr %storemerge27.i.i.i.i.i183, ptr %.08.i.i.i.i.i182 ; 2 uses
  %storemerge.i.i.i.i.i187 = load ptr, ptr %storemerge.in.i.i.i.i.i185, align 8, !tbaa !185, !noalias !9485 ; 2 uses
  %.not.i.i.i.i.i188 = icmp eq ptr %storemerge.i.i.i.i.i187, null
  br i1 %.not.i.i.i.i.i188, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190, label %.lr.ph.i.i.i.i.i181, !llvm.loop !147

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190: ; preds = %.lr.ph.i.i.i.i.i181
  %i.kk = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !9486
  store i8 0, ptr %5, align 8, !tbaa !210, !noalias !9486
  store ptr null, ptr %i.ir, align 8, !tbaa !211, !noalias !9486
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !9486
  store ptr %i.b, ptr %4, align 8, !tbaa !717, !alias.scope !9487, !noalias !9488
  %i.kl = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test17moveconstruct_intENS0_6detail16key_nodeptr_compINS7_13key_node_predISt4lessIS9_ENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISH_S9_ENSF_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISP_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSF_11key_of_nodeISP_SI_EEEEEESK_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSZ_S10_RKT_T0_RNS0_20insert_commit_data_tIS10_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.1.i.i.i.i.i186, ptr noundef nonnull align 4 dereferenceable(4) %i.is, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %.noexc198 unwind label %bb.bm ; 2 uses

.noexc198:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %.fca.0.extract.i.i.i191 = extractvalue { ptr, i8 } %i.kl, 0
  %.fca.1.extract.i.i.i192 = extractvalue { ptr, i8 } %i.kl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !9486
  %i.km = trunc nuw i8 %.fca.1.extract.i.i.i192 to i1
  br i1 %i.km, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %.noexc198
  %i.kn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc199 unwind label %bb.bm ; 13 uses

.noexc199:                                        ; preds = %bb.bg
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9486
  %i.kq = load <2 x i32>, ptr %i.is, align 8, !tbaa !704, !noalias !9486
  store i32 0, ptr %i.is, align 8, !tbaa !704, !noalias !9486
  store <2 x i32> %i.kq, ptr %i.ko, align 4, !tbaa !704, !noalias !9486
  store i32 0, ptr %i.kk, align 4, !tbaa !704, !noalias !9486
  %i.kr = add i32 %i.kp, 2
  store i32 %i.kr, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182, !noalias !9486
  %i.ks = load ptr, ptr %i.ir, align 8, !tbaa !211, !noalias !9489 ; 6 uses
  %i.kt = load i8, ptr %5, align 8, !tbaa !210, !range !205, !noalias !9489, !noundef !200
  %i.ku = trunc nuw i8 %i.kt to i1
  %i.kv = icmp eq ptr %i.ks, %i.b                 ; 2 uses
  br i1 %i.ku, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194: ; preds = %.noexc199
  br i1 %i.kv, label %bb.bh, label %bb.bj

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196: ; preds = %.noexc199
  br i1 %i.kv, label %bb.bh, label %.thread.i.i.i197

bb.bh:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.kw = ptrtoint ptr %i.kn to i64
  %i.kx = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !9489
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = and i64 %i.ky, 1
  %i.la = or disjoint i64 %i.kz, %i.kw
  %i.lb = inttoptr i64 %i.la to ptr
  store ptr %i.lb, ptr %i.b, align 8, !tbaa !185, !noalias !9489
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !181, !noalias !9489
  store ptr %i.kn, ptr %i.s, align 8, !tbaa !180, !noalias !9489
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

.thread.i.i.i197:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kn, ptr %i.lc, align 8, !tbaa !180, !noalias !9489
  %i.ld = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !9489
  %i.le = icmp eq ptr %i.ks, %i.ld
  br i1 %i.le, label %bb.bi, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bi:                                            ; preds = %.thread.i.i.i197
  store ptr %i.kn, ptr %i.s, align 8, !tbaa !180, !noalias !9489
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bj:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.kn, ptr %i.lf, align 8, !tbaa !181, !noalias !9489
  %i.lg = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !9489
  %i.lh = icmp eq ptr %i.ks, %i.lg
  br i1 %i.lh, label %bb.bk, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !181, !noalias !9489
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195: ; preds = %bb.bk, %bb.bj, %bb.bi, %.thread.i.i.i197, %bb.bh
  %i.li = ptrtoint ptr %i.ks to i64
  %i.lj = load ptr, ptr %i.kn, align 8, !tbaa !185, !noalias !9489
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = and i64 %i.lk, 1
  %i.lm = or i64 %i.ll, %i.li
  %i.ln = inttoptr i64 %i.lm to ptr
  store ptr %i.ln, ptr %i.kn, align 8, !tbaa !185, !noalias !9489
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i8 0, i64 16, i1 false), !noalias !9489
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.kn) #26, !noalias !9489
  %i.lp = load i64, ptr %0, align 8, !tbaa !188, !noalias !9489
  %i.lq = add i64 %i.lp, 1
  store i64 %i.lq, ptr %0, align 8, !tbaa !188, !noalias !9489
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195, %.noexc198
  %.sroa.010.0.i.i193 = phi ptr [ %i.kn, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test17moveconstruct_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195 ], [ %.fca.0.extract.i.i.i191, %.noexc198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !9486
  br label %_ZN5boost9container3mapINS0_4test17moveconstruct_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.bm:                                            ; preds = %bb.bg, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test17moveconstruct_intES5_EiSt4lessIS5_ENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZN5boost9container3mapINS0_4test17moveconstruct_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179: ; preds = %bb.az, %bb.bl
  %.sroa.0261.0 = phi ptr [ %.sroa.010.0.i.i193, %bb.bl ], [ %.127.i.i.i.i164, %bb.az ] ; 2 uses
  %i.ls = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182 ; 3 uses
  %i.lt = add i32 %i.ls, 1
  store i32 %i.lt, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182
  %.not381 = icmp eq ptr %.sroa.0261.0, %.1.i.i.i.i.i.i
  br i1 %.not381, label %bb.bn, label %.critedge7

bb.bn:                                            ; preds = %_ZN5boost9container3mapINS0_4test17moveconstruct_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0261.0, i64 28
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !704
  %i.lw = zext i32 %i.lv to i64
  %.not291 = icmp eq i64 %indvars.iv, %i.lw
  store i32 %i.ls, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182
  br i1 %.not291, label %bb.av, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge7:                                       ; preds = %_ZN5boost9container3mapINS0_4test17moveconstruct_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES7_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSI_8bhtraitsINS0_9base_nodeIS9_NSG_19intrusive_tree_hookIPvLSC_0ELb1EEELb1EEENSI_18rbtree_node_traitsISN_Lb1EEELNSI_14link_mode_typeE0ENSI_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  store i32 %i.ls, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !182
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge111:                                     ; preds = %bb.bb, %.thread.i.i.i177, %bb.bc, %bb.bd, %bb.be
  %i.lx = ptrtoint ptr %.02830.i.i.i.i163 to i64
  %i.ly = load ptr, ptr %i.jn, align 8, !tbaa !185, !noalias !9484
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, 1
  %i.mb = or i64 %i.ma, %i.lx
  %i.mc = inttoptr i64 %i.mb to ptr
  store ptr %i.mc, ptr %i.jn, align 8, !tbaa !185, !noalias !9484
  %i.md = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.md, i8 0, i64 16, i1 false), !noalias !9484
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.jn) #26, !noalias !9484
  %i.me = load i64, ptr %0, align 8, !tbaa !188, !noalias !9484
  %i.mf = add i64 %i.me, 1
  store i64 %i.mf, ptr %0, align 8, !tbaa !188, !noalias !9484
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

.critedge113:                                     ; preds = %bb.av
  %i.mg = load i64, ptr %0, align 8, !tbaa !188
  %i.mh = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i201 = icmp eq i64 %i.mg, %i.mh
  br i1 %.not.i201, label %bb.bo, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bo:                                            ; preds = %.critedge113
  %i.mi = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !9490 ; 2 uses
  %.not1721.i203 = icmp eq ptr %i.mi, %i.b
  br i1 %.not1721.i203, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.preheader.i204

.lr.ph.preheader.i204:                            ; preds = %bb.bo
  %i.mj = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %.lr.ph.preheader.i204
  %.sroa.013.023.i206 = phi ptr [ %.014.i.i.i.i217, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.mi, %.lr.ph.preheader.i204 ] ; 4 uses
  %.sroa.09.022.i207 = phi ptr [ %i.na, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.mj, %.lr.ph.preheader.i204 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 32
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !264
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 24
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !704
  %.not18.i208 = icmp eq i32 %i.mn, %i.ml
  br i1 %.not18.i208, label %bb.bp, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bp:                                            ; preds = %.lr.ph.i205
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 36
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !265
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !704
  %.not19.i209 = icmp eq i32 %i.mr, %i.mp
  br i1 %.not19.i209, label %bb.bq, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bq:                                            ; preds = %bb.bp
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i210, label %.preheader.i.i.i.i219, label %.preheader17.i.i.i.i211

.preheader17.i.i.i.i211:                          ; preds = %bb.bq, %.preheader17.i.i.i.i211
  %.05.i.i.i.i.i212 = phi ptr [ %.0.i.i.i.i.i214, %.preheader17.i.i.i.i211 ], [ %i.mt, %bb.bq ] ; 2 uses
  %.0.in.i.i.i.i.i213 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i212, i64 8
  %.0.i.i.i.i.i214 = load ptr, ptr %.0.in.i.i.i.i.i213, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i215 = icmp eq ptr %.0.i.i.i.i.i214, null
  br i1 %.not.i.i.i.i.i215, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, label %.preheader17.i.i.i.i211, !llvm.loop !16

.preheader.i.i.i.i219:                            ; preds = %bb.bq, %.preheader.i.i.i.i219
  %.013.i.i.i.i220 = phi ptr [ %.0.i.i.i.i224, %.preheader.i.i.i.i219 ], [ %.sroa.013.023.i206, %bb.bq ] ; 4 uses
  %.0.in.in.in.i.i.i.i221 = load ptr, ptr %.013.i.i.i.i220, align 8, !tbaa !189
  %.0.in.in.i.i.i.i222 = ptrtoint ptr %.0.in.in.in.i.i.i.i221 to i64
  %.0.in.i.i.i.i223 = and i64 %.0.in.in.i.i.i.i222, -2
  %.0.i.i.i.i224 = inttoptr i64 %.0.in.i.i.i.i223 to ptr ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i224, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !181
  %i.mw = icmp eq ptr %.013.i.i.i.i220, %i.mv
  br i1 %i.mw, label %.preheader.i.i.i.i219, label %bb.br, !llvm.loop !17

bb.br:                                            ; preds = %.preheader.i.i.i.i219
  %i.mx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i220, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !181
  %.not16.i.i.i.i225 = icmp eq ptr %i.my, %.0.i.i.i.i224
  %i.mz = select i1 %.not16.i.i.i.i225, ptr %.013.i.i.i.i220, ptr %.0.i.i.i.i224
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216: ; preds = %.preheader17.i.i.i.i211, %bb.br
  %.014.i.i.i.i217 = phi ptr [ %i.mz, %bb.br ], [ %.05.i.i.i.i.i212, %.preheader17.i.i.i.i211 ] ; 2 uses
  %i.na = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i207) #28
  %.not17.i218 = icmp eq ptr %.014.i.i.i.i217, %i.b
  br i1 %.not17.i218, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.i205, !llvm.loop !144

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %bb.bo
  %i.nb = load i64, ptr %2, align 8, !tbaa !188
  %i.nc = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i227 = icmp eq i64 %i.nb, %i.nc
  br i1 %.not.i227, label %bb.bs, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252

bb.bs:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit226
  %i.nd = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !9491 ; 2 uses
  %.not1721.i229 = icmp eq ptr %i.nd, %i.u
  br i1 %.not1721.i229, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_17moveconstruct_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.preheader.i230

.lr.ph.preheader.i230:                            ; preds = %bb.bs
  %i.ne = load ptr, ptr %i.ba, align 8, !tbaa !232
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242, %.lr.ph.preheader.i230
  %.sroa.013.023.i232 = phi ptr [ %.014.i.i.i.i243, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.nd, %.lr.ph.preheader.i230 ] ; 4 uses
  %.sroa.09.022.i233 = phi ptr [ %i.nv, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test17moveconstruct_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.ne, %.lr.ph.preheader.i230 ] ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEENS0_8multimapIS4_S4_S5_SA_SD_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.cc, align 16, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false), !tbaa !239
  %i.ce = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 300
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !239
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.cf, align 16, !tbaa !239
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.cg, align 16, !tbaa !239
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.ch, align 16, !tbaa !239
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.ci, align 16, !tbaa !239
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.cj, align 16, !tbaa !239
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.ck, align 16, !tbaa !239
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.cl, align 16, !tbaa !239
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.cm, align 16, !tbaa !239
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.cn, align 16, !tbaa !239
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.co, align 16, !tbaa !239
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.cp, align 16, !tbaa !239
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.cq, align 16, !tbaa !239
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.cr, align 16, !tbaa !239
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.cs, align 16, !tbaa !239
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.ct, align 16, !tbaa !239
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.cu, align 16, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.cv, align 16, !tbaa !239
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.cw, align 16, !tbaa !239
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.cx, align 16, !tbaa !239
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.cy, align 16, !tbaa !239
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.cz, align 16, !tbaa !239
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.da, align 16, !tbaa !239
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.db, align 16, !tbaa !239
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.dc, align 16, !tbaa !239
  %i.dd = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 400
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.ak
  %storemerge313 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.gz, %bb.ak ] ; 2 uses
  %i.df = and i32 %storemerge313, 1
  %.not = icmp eq i32 %i.df, 0
  %i.dg = sext i32 %storemerge313 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %8, i64 %i.dg ; 9 uses
  br i1 %.not, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !10353
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -2                       ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not29.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load i32, ptr %i.dh, align 8, !tbaa !239, !noalias !10353 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.02631.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.127.i.i.i.i, %bb.n ]
  %.02830.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dr, %bb.n ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 24
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !239, !noalias !10353
  %i.dq = icmp slt i32 %i.dn, %i.dp               ; 4 uses
  %.127.i.i.i.i = select i1 %i.dq, ptr %.02631.i.i.i.i, ptr %.02830.i.i.i.i ; 3 uses
  %.in.v.i.i.i.i = select i1 %i.dq, i64 8, i64 16
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i, i64 %.in.v.i.i.i.i
  %i.dr = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !185, !noalias !10353 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i123, label %._crit_edge.i.i.i.i, label %bb.n, !llvm.loop !162

._crit_edge.i.i.i.i:                              ; preds = %bb.n
  %.not18.i.i.i.i = icmp eq ptr %.127.i.i.i.i, null
  br i1 %.not18.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !239, !noalias !10353
  %i.du = icmp slt i32 %i.dt, %i.dn
  br i1 %i.du, label %bb.p, label %.critedge109.thread

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.0.lcssa.i12.shrunk.i.i.i = phi i1 [ %i.dq, %._crit_edge.i.i.i.i ], [ %i.dq, %bb.o ], [ true, %bb.m ]
  %.013.lcssa.i11.i.i.i = phi ptr [ %.02830.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.02830.i.i.i.i, %bb.o ], [ %i.b, %bb.m ] ; 6 uses
  %i.dv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %bb.v     ; 13 uses

.noexc:                                           ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10354
  %i.dy = load <2 x i32>, ptr %i.dh, align 8, !tbaa !239, !noalias !10354
  store i32 0, ptr %i.dh, align 8, !tbaa !239, !noalias !10354
  store <2 x i32> %i.dy, ptr %i.dw, align 4, !tbaa !239, !noalias !10354
  store i32 0, ptr %i.di, align 4, !tbaa !239, !noalias !10354
  %i.dz = add i32 %i.dx, 2
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10354
  %i.ea = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.b ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i: ; preds = %.noexc
  br i1 %i.ea, label %bb.q, label %bb.s

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i: ; preds = %.noexc
  br i1 %i.ea, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !10355
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 1
  %i.ef = or disjoint i64 %i.ee, %i.eb
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.b, align 8, !tbaa !185, !noalias !10355
  store ptr %i.dv, ptr %i.t, align 8, !tbaa !181, !noalias !10355
  store ptr %i.dv, ptr %i.s, align 8, !tbaa !180, !noalias !10355
  br label %bb.w

.thread.i.i.i:                                    ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 8
  store ptr %i.dv, ptr %i.eh, align 8, !tbaa !180, !noalias !10355
  %i.ei = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !10355
  %i.ej = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.ei
  br i1 %i.ej, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.thread.i.i.i
  store ptr %i.dv, ptr %i.s, align 8, !tbaa !180, !noalias !10355
  br label %bb.w

bb.s:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i, i64 16
  store ptr %i.dv, ptr %i.ek, align 8, !tbaa !181, !noalias !10355
  %i.el = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !10355
  %i.em = icmp eq ptr %.013.lcssa.i11.i.i.i, %i.el
  br i1 %i.em, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr %i.dv, ptr %i.t, align 8, !tbaa !181, !noalias !10355
  br label %bb.w

bb.u:                                             ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.v:                                             ; preds = %bb.p
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.w:                                             ; preds = %bb.q, %.thread.i.i.i, %bb.r, %bb.s, %bb.t
  %i.ep = ptrtoint ptr %.013.lcssa.i11.i.i.i to i64
  %i.eq = load ptr, ptr %i.dv, align 8, !tbaa !185, !noalias !10355
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, 1
  %i.et = or i64 %i.es, %i.ep
  %i.eu = inttoptr i64 %i.et to ptr
  store ptr %i.eu, ptr %i.dv, align 8, !tbaa !185, !noalias !10355
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false), !noalias !10355
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.dv) #26, !noalias !10355
  %i.ew = load i64, ptr %0, align 8, !tbaa !188, !noalias !10355
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %0, align 8, !tbaa !188, !noalias !10355
  br label %bb.ag

bb.x:                                             ; preds = %bb.l
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !10356
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = and i64 %i.ez, -2                       ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i.i.i124

.lr.ph.i.i.i.i.i124:                              ; preds = %bb.x
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load i32, ptr %i.dh, align 8, !tbaa !239, !noalias !10356
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i124
  %.08.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i124 ], [ %.1.i.i.i.i.i, %bb.y ]
  %storemerge27.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i124 ], [ %storemerge.i.i.i.i.i, %bb.y ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 24
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !239, !noalias !10356
  %i.ff = icmp slt i32 %i.fc, %i.fe               ; 2 uses
  %storemerge.in.v.i.i.i.i.i = select i1 %i.ff, i64 8, i64 16
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.ff, ptr %storemerge27.i.i.i.i.i, ptr %.08.i.i.i.i.i ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !185, !noalias !10356 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i125, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit, label %bb.y, !llvm.loop !159

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit: ; preds = %bb.y, %bb.x
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.b, %bb.x ], [ %.1.i.i.i.i.i, %bb.y ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !10357
  store i8 0, ptr %7, align 8, !tbaa !210, !noalias !10357
  store ptr null, ptr %i.de, align 8, !tbaa !211, !noalias !10357
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !10357
  store ptr %i.b, ptr %6, align 8, !tbaa !730, !alias.scope !10358, !noalias !10359
  %i.fh = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predINS8_16less_transparentENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISG_S9_ENSE_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISO_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSE_11key_of_nodeISO_SH_EEEEEESJ_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSY_SZ_RKT_T0_RNS0_20insert_commit_data_tISZ_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.dh, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %.noexc130 unwind label %bb.af ; 2 uses

.noexc130:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.fh, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.fh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !10357
  %i.fi = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.fi, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.noexc130
  %i.fj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc131 unwind label %bb.af ; 13 uses

.noexc131:                                        ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10357
  %i.fm = load <2 x i32>, ptr %i.dh, align 8, !tbaa !239, !noalias !10357
  store i32 0, ptr %i.dh, align 8, !tbaa !239, !noalias !10357
  store <2 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !239, !noalias !10357
  store i32 0, ptr %i.fg, align 4, !tbaa !239, !noalias !10357
  %i.fn = add i32 %i.fl, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10357
  %i.fo = load ptr, ptr %i.de, align 8, !tbaa !211, !noalias !10360 ; 6 uses
  %i.fp = load i8, ptr %7, align 8, !tbaa !210, !range !205, !noalias !10360, !noundef !200
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = icmp eq ptr %i.fo, %i.b                 ; 2 uses
  br i1 %i.fq, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126: ; preds = %.noexc131
  br i1 %i.fr, label %bb.aa, label %bb.ac

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128: ; preds = %.noexc131
  br i1 %i.fr, label %bb.aa, label %.thread.i.i.i129

bb.aa:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.fs = ptrtoint ptr %i.fj to i64
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !10360
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = and i64 %i.fu, 1
  %i.fw = or disjoint i64 %i.fv, %i.fs
  %i.fx = inttoptr i64 %i.fw to ptr
  store ptr %i.fx, ptr %i.b, align 8, !tbaa !185, !noalias !10360
  store ptr %i.fj, ptr %i.t, align 8, !tbaa !181, !noalias !10360
  store ptr %i.fj, ptr %i.s, align 8, !tbaa !180, !noalias !10360
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

.thread.i.i.i129:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i128
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fj, ptr %i.fy, align 8, !tbaa !180, !noalias !10360
  %i.fz = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !10360
  %i.ga = icmp eq ptr %i.fo, %i.fz
  br i1 %i.ga, label %bb.ab, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ab:                                            ; preds = %.thread.i.i.i129
  store ptr %i.fj, ptr %i.s, align 8, !tbaa !180, !noalias !10360
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ac:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i126
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.fj, ptr %i.gb, align 8, !tbaa !181, !noalias !10360
  %i.gc = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !10360
  %i.gd = icmp eq ptr %i.fo, %i.gc
  br i1 %i.gd, label %bb.ad, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.fj, ptr %i.t, align 8, !tbaa !181, !noalias !10360
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127: ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread.i.i.i129, %bb.aa
  %i.ge = ptrtoint ptr %i.fo to i64
  %i.gf = load ptr, ptr %i.fj, align 8, !tbaa !185, !noalias !10360
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = and i64 %i.gg, 1
  %i.gi = or i64 %i.gh, %i.ge
  %i.gj = inttoptr i64 %i.gi to ptr
  store ptr %i.gj, ptr %i.fj, align 8, !tbaa !185, !noalias !10360
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i8 0, i64 16, i1 false), !noalias !10360
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.fj) #26, !noalias !10360
  %i.gl = load i64, ptr %0, align 8, !tbaa !188, !noalias !10360
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %0, align 8, !tbaa !188, !noalias !10360
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127, %.noexc130
  %.sroa.010.0.i.i = phi ptr [ %i.fj, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i127 ], [ %.fca.0.extract.i.i.i, %.noexc130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !10357
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.w, %bb.ae
  %.sroa.0271.0 = phi ptr [ %.sroa.010.0.i.i, %bb.ae ], [ %i.dv, %bb.w ] ; 3 uses
  %i.go = icmp eq ptr %i.b, %.sroa.0271.0
  br i1 %i.go, label %.critedge109.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 24
  %i.gq = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gr
  %i.gt = load i32, ptr %i.gp, align 4, !tbaa !239 ; 2 uses
  %i.gu = load i32, ptr %i.gs, align 8, !tbaa !239
  %.not289 = icmp eq i32 %i.gt, %i.gu
  br i1 %.not289, label %bb.ai, label %.critedge109.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0271.0, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !239
  %.not290 = icmp eq i32 %i.gw, %i.gt
  br i1 %.not290, label %bb.aj, label %.critedge109.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gx = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ak unwind label %bb.u

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.gq, ptr %i.gx, align 4, !tbaa !182
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !182 ; 2 uses
  %i.gz = add nsw i32 %i.gy, 1                    ; 2 uses
  store i32 %i.gz, ptr %i.a, align 4, !tbaa !182
  %i.ha = icmp sgt i32 %i.gy, 48
  br i1 %i.ha, label %bb.am, label %bb.l, !llvm.loop !10297

bb.al:                                            ; preds = %bb.af, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.en, %bb.u ], [ %i.eo, %bb.v ], [ %i.gn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bw

.critedge109.thread:                              ; preds = %bb.ai, %bb.ag, %bb.ah, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.hb = load i64, ptr %0, align 8, !tbaa !188
  %i.hc = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i = icmp eq i64 %i.hb, %i.hc
  br i1 %.not.i, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.an:                                            ; preds = %bb.am
  %i.hd = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !10361 ; 2 uses
  %.not1721.i = icmp eq ptr %i.hd, %i.b
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.he = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %.014.i.i.i.i, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.hd, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.09.022.i = phi ptr [ %i.hv, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i ], [ %i.he, %.lr.ph.preheader.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !264
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 24
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !239
  %.not18.i = icmp eq i32 %i.hi, %i.hg
  br i1 %.not18.i, label %bb.ao, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.ao:                                            ; preds = %.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !265
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 28
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !239
  %.not19.i = icmp eq i32 %i.hm, %i.hk
  br i1 %.not19.i, label %bb.ap, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.ap:                                            ; preds = %bb.ao
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i132, label %.preheader.i.i.i.i, label %.preheader17.i.i.i.i

.preheader17.i.i.i.i:                             ; preds = %bb.ap, %.preheader17.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i133, %.preheader17.i.i.i.i ], [ %i.ho, %bb.ap ] ; 2 uses
  %.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %.0.i.i.i.i.i133 = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %.0.i.i.i.i.i133, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, label %.preheader17.i.i.i.i, !llvm.loop !16

.preheader.i.i.i.i:                               ; preds = %bb.ap, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.013.023.i, %bb.ap ] ; 4 uses
  %.0.in.in.in.i.i.i.i = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !189
  %.0.in.in.i.i.i.i = ptrtoint ptr %.0.in.in.in.i.i.i.i to i64
  %.0.in.i.i.i.i = and i64 %.0.in.in.i.i.i.i, -2
  %.0.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i to ptr ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !181
  %i.hr = icmp eq ptr %.013.i.i.i.i, %i.hq
  br i1 %i.hr, label %.preheader.i.i.i.i, label %bb.aq, !llvm.loop !17

bb.aq:                                            ; preds = %.preheader.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !181
  %.not16.i.i.i.i = icmp eq ptr %i.ht, %.0.i.i.i.i
  %i.hu = select i1 %.not16.i.i.i.i, ptr %.013.i.i.i.i, ptr %.0.i.i.i.i
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i: ; preds = %.preheader17.i.i.i.i, %bb.aq
  %.014.i.i.i.i = phi ptr [ %i.hu, %bb.aq ], [ %.05.i.i.i.i.i, %.preheader17.i.i.i.i ] ; 2 uses
  %i.hv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #28
  %.not17.i = icmp eq ptr %.014.i.i.i.i, %i.b
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !156

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i, %bb.an
  %i.hw = load i64, ptr %2, align 8, !tbaa !188
  %i.hx = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i135 = icmp eq i64 %i.hw, %i.hx
  br i1 %.not.i135, label %bb.ar, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.ar:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.hy = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !10362 ; 2 uses
  %.not1721.i137 = icmp eq ptr %i.hy, %i.u
  br i1 %.not1721.i137, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i138

end_hunk_11
begin_hunk_12_@_ZN5boost9container4test20map_test_try_emplaceINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEENS0_8multimapIS4_S4_S5_SA_SD_EESt8multimapIiiSH_SK_EEEiRT_RT0_RT1_RT2_:bb.a
  %.not.i.i.i.i.i149 = icmp eq ptr %.0.i.i.i.i.i148, null
  br i1 %.not.i.i.i.i.i149, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, label %.preheader17.i.i.i.i145, !llvm.loop !16

.preheader.i.i.i.i153:                            ; preds = %bb.at, %.preheader.i.i.i.i153
  %.013.i.i.i.i154 = phi ptr [ %.0.i.i.i.i158, %.preheader.i.i.i.i153 ], [ %.sroa.013.023.i140, %bb.at ] ; 4 uses
  %.0.in.in.in.i.i.i.i155 = load ptr, ptr %.013.i.i.i.i154, align 8, !tbaa !189
  %.0.in.in.i.i.i.i156 = ptrtoint ptr %.0.in.in.in.i.i.i.i155 to i64
  %.0.in.i.i.i.i157 = and i64 %.0.in.in.i.i.i.i156, -2
  %.0.i.i.i.i158 = inttoptr i64 %.0.in.i.i.i.i157 to ptr ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i158, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !181
  %i.im = icmp eq ptr %.013.i.i.i.i154, %i.il
  br i1 %i.im, label %.preheader.i.i.i.i153, label %bb.au, !llvm.loop !17

bb.au:                                            ; preds = %.preheader.i.i.i.i153
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i154, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !181
  %.not16.i.i.i.i159 = icmp eq ptr %i.io, %.0.i.i.i.i158
  %i.ip = select i1 %.not16.i.i.i.i159, ptr %.013.i.i.i.i154, ptr %.0.i.i.i.i158
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150: ; preds = %.preheader17.i.i.i.i145, %bb.au
  %.014.i.i.i.i151 = phi ptr [ %i.ip, %bb.au ], [ %.05.i.i.i.i.i146, %.preheader17.i.i.i.i145 ] ; 2 uses
  %i.iq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i141) #28
  %.not17.i152 = icmp eq ptr %.014.i.i.i.i151, %i.u
  br i1 %.not17.i152, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i139, !llvm.loop !157

_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i150, %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge113, label %bb.aw, !llvm.loop !10310

bb.aw:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, %bb.av
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.av ] ; 4 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 8 uses
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !10363
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = and i64 %i.iu, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aw
  %i.iw = inttoptr i64 %i.iv to ptr               ; 3 uses
  %i.ix = load i32, ptr %i.is, align 8, !tbaa !239, !noalias !10363 ; 5 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.ax ]
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !239, !noalias !10363
  %i.ja = icmp slt i32 %i.iz, %i.ix               ; 2 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.ja, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.ja, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !185, !noalias !10363 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compINS8_16less_transparentENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSI_11key_of_nodeISM_NSI_9select1stISG_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSW_RKT_T0_.exit.i.i.i.i, label %bb.ax, !llvm.loop !158

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compINS8_16less_transparentENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSI_11key_of_nodeISM_NSI_9select1stISG_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSW_RKT_T0_.exit.i.i.i.i: ; preds = %bb.ax
  %i.jb = icmp eq ptr %.1.i.i.i.i.i.i, %i.b
  br i1 %i.jb, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compINS8_16less_transparentENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSI_11key_of_nodeISM_NSI_9select1stISG_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSW_RKT_T0_.exit.i.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 24
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !239, !noalias !10363
  %i.je = icmp slt i32 %i.ix, %i.jd
  br i1 %i.je, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE4findERS6_.exit
  %i.jf = and i64 %indvars.iv, 1
  %.not96 = icmp eq i64 %i.jf, 0
  br i1 %.not96, label %.lr.ph.i.i.i.i.i181, label %.lr.ph.i.i.i.i161

.lr.ph.i.i.i.i161:                                ; preds = %bb.ay, %.lr.ph.i.i.i.i161
  %.02631.i.i.i.i162 = phi ptr [ %.127.i.i.i.i164, %.lr.ph.i.i.i.i161 ], [ null, %bb.ay ]
  %.02830.i.i.i.i163 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i161 ], [ %i.iw, %bb.ay ] ; 9 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 24
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !239, !noalias !10364
  %i.ji = icmp slt i32 %i.ix, %i.jh               ; 3 uses
  %.127.i.i.i.i164 = select i1 %i.ji, ptr %.02631.i.i.i.i162, ptr %.02830.i.i.i.i163 ; 4 uses
  %.in.v.i.i.i.i165 = select i1 %i.ji, i64 8, i64 16
  %.in.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 %.in.v.i.i.i.i165
  %i.jj = load ptr, ptr %.in.i.i.i.i166, align 8, !tbaa !185, !noalias !10364 ; 2 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i167, label %._crit_edge.i.i.i.i168, label %.lr.ph.i.i.i.i161, !llvm.loop !162

._crit_edge.i.i.i.i168:                           ; preds = %.lr.ph.i.i.i.i161
  %.not18.i.i.i.i169 = icmp eq ptr %.127.i.i.i.i164, null
  br i1 %.not18.i.i.i.i169, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i.i.i168
  %i.jk = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i164, i64 24
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !239, !noalias !10364
  %i.jm = icmp slt i32 %i.jl, %i.ix
  br i1 %i.jm, label %bb.ba, label %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES6_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSH_8bhtraitsINS0_9base_nodeIS8_NSF_19intrusive_tree_hookIPvLSB_0ELb1EEELb1EEENSH_18rbtree_node_traitsISM_Lb1EEELNSH_14link_mode_typeE0ENSH_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i168
  %i.jn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc178 unwind label %bb.bf ; 12 uses

.noexc178:                                        ; preds = %bb.ba
  %i.jo = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10365
  %i.jr = load <2 x i32>, ptr %i.is, align 4, !tbaa !239, !noalias !10365
  store i32 0, ptr %i.is, align 4, !tbaa !239, !noalias !10365
  store <2 x i32> %i.jr, ptr %i.jp, align 4, !tbaa !239, !noalias !10365
  store i32 0, ptr %i.jo, align 4, !tbaa !239, !noalias !10365
  %i.js = add i32 %i.jq, 2
  store i32 %i.js, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10365
  %i.jt = icmp eq ptr %.02830.i.i.i.i163, %i.b    ; 2 uses
  br i1 %i.ji, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174: ; preds = %.noexc178
  br i1 %i.jt, label %bb.bb, label %bb.bd

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176: ; preds = %.noexc178
  br i1 %i.jt, label %bb.bb, label %.thread.i.i.i177

bb.bb:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.ju = ptrtoint ptr %i.jn to i64
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !10366
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %i.jy = or disjoint i64 %i.jx, %i.ju
  %i.jz = inttoptr i64 %i.jy to ptr
  store ptr %i.jz, ptr %i.b, align 8, !tbaa !185, !noalias !10366
  store ptr %i.jn, ptr %i.t, align 8, !tbaa !181, !noalias !10366
  store ptr %i.jn, ptr %i.s, align 8, !tbaa !180, !noalias !10366
  br label %.critedge111

.thread.i.i.i177:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i176
  %i.ka = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 8
  store ptr %i.jn, ptr %i.ka, align 8, !tbaa !180, !noalias !10366
  %i.kb = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !10366
  %i.kc = icmp eq ptr %.02830.i.i.i.i163, %i.kb
  br i1 %i.kc, label %bb.bc, label %.critedge111

bb.bc:                                            ; preds = %.thread.i.i.i177
  store ptr %i.jn, ptr %i.s, align 8, !tbaa !180, !noalias !10366
  br label %.critedge111

bb.bd:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i174
  %i.kd = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i163, i64 16
  store ptr %i.jn, ptr %i.kd, align 8, !tbaa !181, !noalias !10366
  %i.ke = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !10366
  %i.kf = icmp eq ptr %.02830.i.i.i.i163, %i.ke
  br i1 %i.kf, label %bb.be, label %.critedge111

bb.be:                                            ; preds = %bb.bd
  store ptr %i.jn, ptr %i.t, align 8, !tbaa !181, !noalias !10366
  br label %.critedge111

bb.bf:                                            ; preds = %bb.ba
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.lr.ph.i.i.i.i.i181:                              ; preds = %bb.ay, %.lr.ph.i.i.i.i.i181
  %.08.i.i.i.i.i182 = phi ptr [ %.1.i.i.i.i.i186, %.lr.ph.i.i.i.i.i181 ], [ %i.b, %bb.ay ]
  %storemerge27.i.i.i.i.i183 = phi ptr [ %storemerge.i.i.i.i.i187, %.lr.ph.i.i.i.i.i181 ], [ %i.iw, %bb.ay ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 24
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !239, !noalias !10367
  %i.kj = icmp slt i32 %i.ix, %i.ki               ; 2 uses
  %storemerge.in.v.i.i.i.i.i184 = select i1 %i.kj, i64 8, i64 16
  %storemerge.in.i.i.i.i.i185 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i183, i64 %storemerge.in.v.i.i.i.i.i184
  %.1.i.i.i.i.i186 = select i1 %i.kj, ptr %storemerge27.i.i.i.i.i183, ptr %.08.i.i.i.i.i182 ; 2 uses
  %storemerge.i.i.i.i.i187 = load ptr, ptr %storemerge.in.i.i.i.i.i185, align 8, !tbaa !185, !noalias !10367 ; 2 uses
  %.not.i.i.i.i.i188 = icmp eq ptr %storemerge.i.i.i.i.i187, null
  br i1 %.not.i.i.i.i.i188, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190, label %.lr.ph.i.i.i.i.i181, !llvm.loop !159

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190: ; preds = %.lr.ph.i.i.i.i.i181
  %i.kk = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !10368
  store i8 0, ptr %5, align 8, !tbaa !210, !noalias !10368
  store ptr null, ptr %i.ir, align 8, !tbaa !211, !noalias !10368
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !10368
  store ptr %i.b, ptr %4, align 8, !tbaa !730, !alias.scope !10369, !noalias !10370
  %i.kl = invoke { ptr, i8 } @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE19insert_unique_checkINS_9container4test24movable_and_copyable_intENS0_6detail16key_nodeptr_compINS7_13key_node_predINS8_16less_transparentENS7_3dtl9select1stIKS9_EENS7_9base_nodeISt4pairISG_S9_ENSE_19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEEbEENS0_8bhtraitsISO_S4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSE_11key_of_nodeISO_SH_EEEEEESJ_IPNS0_19compact_rbtree_nodeIS3_EEbEPKSY_SZ_RKT_T0_RNS0_20insert_commit_data_tISZ_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.1.i.i.i.i.i186, ptr noundef nonnull align 4 dereferenceable(4) %i.is, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %.noexc198 unwind label %bb.bm ; 2 uses

.noexc198:                                        ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %.fca.0.extract.i.i.i191 = extractvalue { ptr, i8 } %i.kl, 0
  %.fca.1.extract.i.i.i192 = extractvalue { ptr, i8 } %i.kl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !10368
  %i.km = trunc nuw i8 %.fca.1.extract.i.i.i192 to i1
  br i1 %i.km, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %.noexc198
  %i.kn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc199 unwind label %bb.bm ; 13 uses

.noexc199:                                        ; preds = %bb.bg
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10368
  %i.kq = load <2 x i32>, ptr %i.is, align 8, !tbaa !239, !noalias !10368
  store i32 0, ptr %i.is, align 8, !tbaa !239, !noalias !10368
  store <2 x i32> %i.kq, ptr %i.ko, align 4, !tbaa !239, !noalias !10368
  store i32 0, ptr %i.kk, align 4, !tbaa !239, !noalias !10368
  %i.kr = add i32 %i.kp, 2
  store i32 %i.kr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182, !noalias !10368
  %i.ks = load ptr, ptr %i.ir, align 8, !tbaa !211, !noalias !10371 ; 6 uses
  %i.kt = load i8, ptr %5, align 8, !tbaa !210, !range !205, !noalias !10371, !noundef !200
  %i.ku = trunc nuw i8 %i.kt to i1
  %i.kv = icmp eq ptr %i.ks, %i.b                 ; 2 uses
  br i1 %i.ku, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194: ; preds = %.noexc199
  br i1 %i.kv, label %bb.bh, label %bb.bj

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196: ; preds = %.noexc199
  br i1 %i.kv, label %bb.bh, label %.thread.i.i.i197

bb.bh:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.kw = ptrtoint ptr %i.kn to i64
  %i.kx = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !10371
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = and i64 %i.ky, 1
  %i.la = or disjoint i64 %i.kz, %i.kw
  %i.lb = inttoptr i64 %i.la to ptr
  store ptr %i.lb, ptr %i.b, align 8, !tbaa !185, !noalias !10371
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !181, !noalias !10371
  store ptr %i.kn, ptr %i.s, align 8, !tbaa !180, !noalias !10371
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

.thread.i.i.i197:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i196
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kn, ptr %i.lc, align 8, !tbaa !180, !noalias !10371
  %i.ld = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !10371
  %i.le = icmp eq ptr %i.ks, %i.ld
  br i1 %i.le, label %bb.bi, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bi:                                            ; preds = %.thread.i.i.i197
  store ptr %i.kn, ptr %i.s, align 8, !tbaa !180, !noalias !10371
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bj:                                            ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i194
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.kn, ptr %i.lf, align 8, !tbaa !181, !noalias !10371
  %i.lg = load ptr, ptr %i.t, align 8, !tbaa !181, !noalias !10371
  %i.lh = icmp eq ptr %i.ks, %i.lg
  br i1 %i.lh, label %bb.bk, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !181, !noalias !10371
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195: ; preds = %bb.bk, %bb.bj, %bb.bi, %.thread.i.i.i197, %bb.bh
  %i.li = ptrtoint ptr %i.ks to i64
  %i.lj = load ptr, ptr %i.kn, align 8, !tbaa !185, !noalias !10371
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = and i64 %i.lk, 1
  %i.lm = or i64 %i.ll, %i.li
  %i.ln = inttoptr i64 %i.lm to ptr
  store ptr %i.ln, ptr %i.kn, align 8, !tbaa !185, !noalias !10371
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i8 0, i64 16, i1 false), !noalias !10371
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.kn) #26, !noalias !10371
  %i.lp = load i64, ptr %0, align 8, !tbaa !188, !noalias !10371
  %i.lq = add i64 %i.lp, 1
  store i64 %i.lq, ptr %0, align 8, !tbaa !188, !noalias !10371
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195, %.noexc198
  %.sroa.010.0.i.i193 = phi ptr [ %i.kn, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test24movable_and_copyable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEENS6_16less_transparentEmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i195 ], [ %.fca.0.extract.i.i.i191, %.noexc198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !10368
  br label %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES6_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSH_8bhtraitsINS0_9base_nodeIS8_NSF_19intrusive_tree_hookIPvLSB_0ELb1EEELb1EEENSH_18rbtree_node_traitsISM_Lb1EEELNSH_14link_mode_typeE0ENSH_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179

bb.bm:                                            ; preds = %bb.bg, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test24movable_and_copyable_intES5_EiNS4_16less_transparentENS0_13new_allocatorIS7_EENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11upper_boundERS6_.exit190
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES6_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSH_8bhtraitsINS0_9base_nodeIS8_NSF_19intrusive_tree_hookIPvLSB_0ELb1EEELb1EEENSH_18rbtree_node_traitsISM_Lb1EEELNSH_14link_mode_typeE0ENSH_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179: ; preds = %bb.az, %bb.bl
  %.sroa.0261.0 = phi ptr [ %.sroa.010.0.i.i193, %bb.bl ], [ %.127.i.i.i.i164, %bb.az ] ; 2 uses
  %i.ls = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182 ; 3 uses
  %i.lt = add i32 %i.ls, 1
  store i32 %i.lt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  %.not381 = icmp eq ptr %.sroa.0261.0, %.1.i.i.i.i.i.i
  br i1 %.not381, label %bb.bn, label %.critedge7

bb.bn:                                            ; preds = %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES6_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSH_8bhtraitsINS0_9base_nodeIS8_NSF_19intrusive_tree_hookIPvLSB_0ELb1EEELb1EEENSH_18rbtree_node_traitsISM_Lb1EEELNSH_14link_mode_typeE0ENSH_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0261.0, i64 28
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !239
  %i.lw = zext i32 %i.lv to i64
  %.not291 = icmp eq i64 %indvars.iv, %i.lw
  store i32 %i.ls, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  br i1 %.not291, label %bb.av, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

.critedge7:                                       ; preds = %_ZN5boost9container3mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIKS3_S3_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEE11try_emplaceIJS3_EEES6_INS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSH_8bhtraitsINS0_9base_nodeIS8_NSF_19intrusive_tree_hookIPvLSB_0ELb1EEELb1EEENSH_18rbtree_node_traitsISM_Lb1EEELNSH_14link_mode_typeE0ENSH_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit179
  store i32 %i.ls, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !182
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

.critedge111:                                     ; preds = %bb.bb, %.thread.i.i.i177, %bb.bc, %bb.bd, %bb.be
  %i.lx = ptrtoint ptr %.02830.i.i.i.i163 to i64
  %i.ly = load ptr, ptr %i.jn, align 8, !tbaa !185, !noalias !10366
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, 1
  %i.mb = or i64 %i.ma, %i.lx
  %i.mc = inttoptr i64 %i.mb to ptr
  store ptr %i.mc, ptr %i.jn, align 8, !tbaa !185, !noalias !10366
  %i.md = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.md, i8 0, i64 16, i1 false), !noalias !10366
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.jn) #26, !noalias !10366
  %i.me = load i64, ptr %0, align 8, !tbaa !188, !noalias !10366
  %i.mf = add i64 %i.me, 1
  store i64 %i.mf, ptr %0, align 8, !tbaa !188, !noalias !10366
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

.critedge113:                                     ; preds = %bb.av
  %i.mg = load i64, ptr %0, align 8, !tbaa !188
  %i.mh = load i64, ptr %i.au, align 8, !tbaa !234
  %.not.i201 = icmp eq i64 %i.mg, %i.mh
  br i1 %.not.i201, label %bb.bo, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.bo:                                            ; preds = %.critedge113
  %i.mi = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !10372 ; 2 uses
  %.not1721.i203 = icmp eq ptr %i.mi, %i.b
  br i1 %.not1721.i203, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.preheader.i204

.lr.ph.preheader.i204:                            ; preds = %bb.bo
  %i.mj = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %.lr.ph.preheader.i204
  %.sroa.013.023.i206 = phi ptr [ %.014.i.i.i.i217, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.mi, %.lr.ph.preheader.i204 ] ; 4 uses
  %.sroa.09.022.i207 = phi ptr [ %i.na, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216 ], [ %i.mj, %.lr.ph.preheader.i204 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 32
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !264
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 24
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !239
  %.not18.i208 = icmp eq i32 %i.mn, %i.ml
  br i1 %.not18.i208, label %bb.bp, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.bp:                                            ; preds = %.lr.ph.i205
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i207, i64 36
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !265
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !239
  %.not19.i209 = icmp eq i32 %i.mr, %i.mp
  br i1 %.not19.i209, label %bb.bq, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.bq:                                            ; preds = %bb.bp
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i206, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i210, label %.preheader.i.i.i.i219, label %.preheader17.i.i.i.i211

.preheader17.i.i.i.i211:                          ; preds = %bb.bq, %.preheader17.i.i.i.i211
  %.05.i.i.i.i.i212 = phi ptr [ %.0.i.i.i.i.i214, %.preheader17.i.i.i.i211 ], [ %i.mt, %bb.bq ] ; 2 uses
  %.0.in.i.i.i.i.i213 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i212, i64 8
  %.0.i.i.i.i.i214 = load ptr, ptr %.0.in.i.i.i.i.i213, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i215 = icmp eq ptr %.0.i.i.i.i.i214, null
  br i1 %.not.i.i.i.i.i215, label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, label %.preheader17.i.i.i.i211, !llvm.loop !16

.preheader.i.i.i.i219:                            ; preds = %bb.bq, %.preheader.i.i.i.i219
  %.013.i.i.i.i220 = phi ptr [ %.0.i.i.i.i224, %.preheader.i.i.i.i219 ], [ %.sroa.013.023.i206, %bb.bq ] ; 4 uses
  %.0.in.in.in.i.i.i.i221 = load ptr, ptr %.013.i.i.i.i220, align 8, !tbaa !189
  %.0.in.in.i.i.i.i222 = ptrtoint ptr %.0.in.in.in.i.i.i.i221 to i64
  %.0.in.i.i.i.i223 = and i64 %.0.in.in.i.i.i.i222, -2
  %.0.i.i.i.i224 = inttoptr i64 %.0.in.i.i.i.i223 to ptr ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i224, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !181
  %i.mw = icmp eq ptr %.013.i.i.i.i220, %i.mv
  br i1 %i.mw, label %.preheader.i.i.i.i219, label %bb.br, !llvm.loop !17

bb.br:                                            ; preds = %.preheader.i.i.i.i219
  %i.mx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i220, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !181
  %.not16.i.i.i.i225 = icmp eq ptr %i.my, %.0.i.i.i.i224
  %i.mz = select i1 %.not16.i.i.i.i225, ptr %.013.i.i.i.i220, ptr %.0.i.i.i.i224
  br label %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216

_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216: ; preds = %.preheader17.i.i.i.i211, %bb.br
  %.014.i.i.i.i217 = phi ptr [ %i.mz, %bb.br ], [ %.05.i.i.i.i.i212, %.preheader17.i.i.i.i211 ] ; 2 uses
  %i.na = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i207) #28
  %.not17.i218 = icmp eq ptr %.014.i.i.i.i217, %i.b
  br i1 %.not17.i218, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.i205, !llvm.loop !156

_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit226: ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i216, %bb.bo
  %i.nb = load i64, ptr %2, align 8, !tbaa !188
  %i.nc = load i64, ptr %i.bc, align 8, !tbaa !234
  %.not.i227 = icmp eq i64 %i.nb, %i.nc
  br i1 %.not.i227, label %bb.bs, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252

bb.bs:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_3mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit226
  %i.nd = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !10373 ; 2 uses
  %.not1721.i229 = icmp eq ptr %i.nd, %i.u
  br i1 %.not1721.i229, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIKS4_S4_EEENS0_8tree_optILNS0_14tree_type_enumE0ELb1EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit252, label %.lr.ph.preheader.i230

.lr.ph.preheader.i230:                            ; preds = %bb.bs
  %i.ne = load ptr, ptr %i.ba, align 8, !tbaa !232
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242, %.lr.ph.preheader.i230
  %.sroa.013.023.i232 = phi ptr [ %.014.i.i.i.i243, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.nd, %.lr.ph.preheader.i230 ] ; 4 uses
  %.sroa.09.022.i233 = phi ptr [ %i.nv, %_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS3_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test24movable_and_copyable_intES9_ENS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS3_18rbtree_node_traitsISD_Lb1EEELNS3_14link_mode_typeE0ENS3_7dft_tagELj3EEELb0EEELb1EEppEv.exit.i242 ], [ %i.ne, %.lr.ph.preheader.i230 ] ; 3 uses
end_hunk_12
