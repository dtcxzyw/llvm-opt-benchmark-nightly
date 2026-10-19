Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_test?download=true
inline.NumInlined: 38937
inline.NumDeleted: 5991
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 400
loop-unroll.NumUnrolled: 718
begin_hunk_0_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiEvEESt3mapIiiS5_SaISt4pairIKiiEEENS0_13flat_multimapIiiS5_vEESt8multimapIiiS5_SB_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.al, align 8, !tbaa !501
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.am, align 8, !tbaa !501
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.an, align 8, !tbaa !501
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.ao, align 8, !tbaa !501
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.ap, align 8, !tbaa !501
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.aq, align 8, !tbaa !501
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 392
  store i32 49, ptr %i.ar, align 8, !tbaa !691
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 396
  store i32 49, ptr %i.as, align 4, !tbaa !692
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %15, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.at, align 4, !tbaa !501
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.au, align 4, !tbaa !501
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.av, align 4, !tbaa !501
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.aw, align 4, !tbaa !501
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.ax, align 4, !tbaa !501
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ay, align 4, !tbaa !501
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.az, align 4, !tbaa !501
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.ba, align 4, !tbaa !501
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bb, align 4, !tbaa !501
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bc, align 4, !tbaa !501
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bd, align 4, !tbaa !501
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.be, align 4, !tbaa !501
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.bf, align 4, !tbaa !501
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bg, align 4, !tbaa !501
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bh, align 4, !tbaa !501
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bi, align 4, !tbaa !501
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bj, align 4, !tbaa !501
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bk, align 4, !tbaa !501
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bl, align 4, !tbaa !501
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.bm, align 4, !tbaa !501
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.bn, align 4, !tbaa !501
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.bo, align 4, !tbaa !501
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.bp, align 4, !tbaa !501
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.bq, align 4, !tbaa !501
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 388
  store i32 2, ptr %i.br, align 4, !tbaa !692
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 392
  store i32 49, ptr %i.bs, align 8, !tbaa !691
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 396
  store i32 1, ptr %i.bt, align 4, !tbaa !692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !501
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.r
  %storemerge205 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.el, %bb.r ] ; 2 uses
  %i.bv = and i32 %storemerge205, 1
  %.not = icmp eq i32 %i.bv, 0
  %i.bw = sext i32 %storemerge205 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %14, i64 %i.bw ; 9 uses
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !508, !noalias !5624 ; 6 uses
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !5625 ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i
  %.not12.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SE_SE_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.cc = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !5626
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.cd = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.ck, %bb.f ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ce = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !501, !noalias !5626
  %i.ch = icmp slt i32 %i.cg, %i.cc               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.ce, -1
  %i.cj = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.ck = select i1 %i.ch, ptr %i.ci, ptr %i.cd   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ch, i64 %i.cj, i64 %i.ce ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SE_SE_RKT0_.exit.i.i.i.i, label %bb.f, !llvm.loop !75

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SE_SE_RKT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.cl = phi ptr [ %i.bz, %bb.e ], [ %i.ck, %bb.f ] ; 10 uses
  %i.cm = icmp eq ptr %i.cl, %i.cb
  br i1 %i.cm, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SE_SE_RKT0_.exit.i.i.i.i
  %i.cn = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !5627
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !501, !noalias !5627
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.thread.i.i, label %.critedge81.thread

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.thread.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SE_SE_RKT0_.exit.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !5627
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !5627
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !5628
  store ptr %i.by, ptr %11, align 8, !noalias !5628
  store ptr %i.bx, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !5628
  store ptr %13, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !5628
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !505, !noalias !5629
  %.not.i.i.i.i = icmp eq i64 %i.cq, %i.ca
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g, !prof !531

bb.g:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.thread.i.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 5 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i.i5.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.cs = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !5629
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !501, !noalias !5629
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cu = load i32, ptr %i.by, align 4, !tbaa !501, !noalias !5629
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !501, !noalias !5629
  %i.cv = add i64 %i.ca, 1
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !507, !noalias !5629
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !501, !noalias !5629
  store <2 x i32> %i.db, ptr %i.cr, align 4, !tbaa !501, !noalias !5629
  %i.dc = add i64 %i.ca, 1
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !507, !noalias !5629
  %i.dd = add nsw i64 %i.cz, -1                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.j, !prof !531

bb.j:                                             ; preds = %bb.i
  %i.de = sub nsw i64 1, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.de
  %i.dh = shl i64 %i.dd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.dg, i64 %i.dh, i1 false), !noalias !5629
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.di = load <2 x i32>, ptr %i.bx, align 8, !tbaa !501, !noalias !5629
  store <2 x i32> %i.di, ptr %i.cl, align 4, !tbaa !501, !noalias !5629
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.thread.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJNS0_13try_emplace_tEiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.cl, i64 noundef 1, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_emplace_proxy.174") align 8 %11), !noalias !5627
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !509, !noalias !5627
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %bb.k
  %i.dj = phi ptr [ %.pre.i.i, %bb.k ], [ %i.cl, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.cl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !5628
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !5627
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !5627
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.dk = load ptr, ptr %0, align 8, !tbaa !508, !noalias !5630 ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !5631 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiEvE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.dm = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !5632
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %i.dn = phi ptr [ %i.dk, %.lr.ph.i.i.i ], [ %i.du, %bb.n ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.n ] ; 2 uses
  %i.do = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !501, !noalias !5632
  %i.dr = icmp slt i32 %i.dm, %i.dq               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i.i.i = xor i64 %i.do, -1
  %i.dt = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.du = select i1 %i.dr, ptr %i.dn, ptr %i.ds   ; 2 uses
  %.1.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dt ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiEvE11upper_boundERKi.exit, label %bb.n, !llvm.loop !10

_ZN5boost9container8flat_mapIiiSt4lessIiEvE11upper_boundERKi.exit: ; preds = %bb.n, %bb.m
  %i.dv = phi ptr [ %i.dk, %bb.m ], [ %i.du, %bb.n ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !5633
  store ptr %i.dv, ptr %10, align 8, !tbaa !595, !noalias !5633
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11try_emplaceIiJiEEES3_INS0_12vec_iteratorIPS4_Lb0EEEbENSB_ISC_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.dw), !noalias !5633
  %i.dx = load ptr, ptr %9, align 8, !tbaa !509, !noalias !5633
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !5633
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN5boost9container8flat_mapIiiSt4lessIiEvE11upper_boundERKi.exit
  %.sroa.0165.0 = phi ptr [ %i.dx, %_ZN5boost9container8flat_mapIiiSt4lessIiEvE11upper_boundERKi.exit ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !508, !noalias !5634
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !5634
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = icmp eq ptr %i.ea, %.sroa.0165.0
  br i1 %i.eb, label %.critedge81.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load i32, ptr %.sroa.0165.0, align 4, !tbaa !529 ; 2 uses
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %15, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !691
  %.not74 = icmp eq i32 %i.ec, %i.eg
  br i1 %.not74, label %bb.q, label %.critedge81.thread

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !530
  %.not75 = icmp eq i32 %i.ei, %i.ec
  br i1 %.not75, label %bb.r, label %.critedge81.thread

bb.r:                                             ; preds = %bb.q
  %i.ej = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !501
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !501
  %i.em = icmp sgt i32 %i.ek, 48
  br i1 %i.em, label %bb.s, label %bb.d, !llvm.loop !5566

.critedge81.thread:                               ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE26priv_insert_unique_prepareIiEEbRKT_RNS9_18insert_commit_dataE.exit.i.i, %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.en = load i64, ptr %i.b, align 8, !tbaa !507 ; 4 uses
  %i.eo = load i64, ptr %i.k, align 8, !tbaa !499
  %.not.i = icmp eq i64 %i.en, %i.eo
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %0, align 8, !tbaa !508, !noalias !5635 ; 3 uses
  %.idx.i = shl nsw i64 %i.en, 3
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.en, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiEvEESt3mapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !497
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.fa, %bb.v ], [ %i.er, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.ez, %bb.v ], [ %i.ep, %.lr.ph.preheader.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !694
  %i.eu = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !529
  %.not10.i = icmp eq i32 %i.eu, %i.et
  br i1 %.not10.i, label %bb.u, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147

bb.u:                                             ; preds = %.lr.ph.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !695
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !530
  %.not11.i = icmp eq i32 %i.ey, %i.ew
  br i1 %.not11.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.fa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #25
  %.not19.i = icmp eq ptr %i.ez, %i.eq
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiEvEESt3mapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !87

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiEvEESt3mapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !507 ; 3 uses
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !499
  %.not.i86 = icmp eq i64 %i.fb, %i.fc
  br i1 %.not.i86, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiEvEESt3mapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit
  %i.fd = load ptr, ptr %2, align 8, !tbaa !508, !noalias !5636 ; 2 uses
  %.idx.i88 = shl nsw i64 %i.fb, 3
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.idx.i88
  %.not1920.i89 = icmp eq i64 %i.fb, 0
  br i1 %.not1920.i89, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i90

.lr.ph.preheader.i90:                             ; preds = %bb.w
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !497
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.y, %.lr.ph.preheader.i90
  %.sroa.0.022.i92 = phi ptr [ %i.fo, %bb.y ], [ %i.ff, %.lr.ph.preheader.i90 ] ; 3 uses
  %.sroa.015.021.i93 = phi ptr [ %i.fn, %bb.y ], [ %i.fd, %.lr.ph.preheader.i90 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 32
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !694
  %i.fi = load i32, ptr %.sroa.015.021.i93, align 4, !tbaa !529
  %.not10.i94 = icmp eq i32 %i.fi, %i.fh
  br i1 %.not10.i94, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147

bb.x:                                             ; preds = %.lr.ph.i91
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !695
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !530
  %.not11.i95 = icmp eq i32 %i.fm, %i.fk
  br i1 %.not11.i95, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 8 ; 2 uses
  %i.fo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i92) #25
  %.not19.i96 = icmp eq ptr %i.fn, %i.fe
  br i1 %.not19.i96, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i91, !llvm.loop !88

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.y, %bb.w
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit

bb.z:                                             ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit, !llvm.loop !5583

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit.preheader, %bb.z
  %i.fp = phi i64 [ %i.ib, %bb.z ], [ %i.en, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 10 uses
  %i.fq = phi ptr [ %i.ic, %bb.z ], [ %i.ep, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 11 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv ; 7 uses
  %.not12.i.i.i.i = icmp eq i64 %i.fp, 0          ; 3 uses
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11lower_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !501, !noalias !5637
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.ft = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.aa ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.aa ] ; 2 uses
  %i.fu = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !501, !noalias !5637
  %i.fx = icmp slt i32 %i.fw, %i.fs               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.neg.i.i.i.i = xor i64 %i.fu, -1
  %i.fz = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.ga = select i1 %i.fx, ptr %i.fy, ptr %i.ft   ; 2 uses
  %.1.i.i.i.i = select i1 %i.fx, i64 %i.fz, i64 %i.fu ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i97, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11lower_boundERKi.exit.i.i, label %bb.aa, !llvm.loop !89

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11lower_boundERKi.exit.i.i: ; preds = %bb.aa, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit
  %i.gb = phi ptr [ %i.fq, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit ], [ %i.ga, %bb.aa ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fp ; 6 uses
  %.not.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11lower_boundERKi.exit.i.i
  %i.gd = load i32, ptr %i.fr, align 8, !tbaa !501, !noalias !5638 ; 5 uses
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !501, !noalias !5638
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_.exit147, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.gg, 0
  br i1 %.not76, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.idx.i.i.i98 = shl nsw i64 %i.fp, 3
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEESt3mapIiiS5_SaIS6_IKiiEEENS0_13flat_multimapIiiS5_S8_EESt8multimapIiiS5_SD_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.al, align 8, !tbaa !501
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.am, align 8, !tbaa !501
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.an, align 8, !tbaa !501
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.ao, align 8, !tbaa !501
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.ap, align 8, !tbaa !501
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.aq, align 8, !tbaa !501
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 392
  store i32 49, ptr %i.ar, align 8, !tbaa !691
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 396
  store i32 49, ptr %i.as, align 4, !tbaa !692
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %15, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.at, align 4, !tbaa !501
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.au, align 4, !tbaa !501
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.av, align 4, !tbaa !501
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.aw, align 4, !tbaa !501
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.ax, align 4, !tbaa !501
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ay, align 4, !tbaa !501
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.az, align 4, !tbaa !501
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.ba, align 4, !tbaa !501
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bb, align 4, !tbaa !501
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bc, align 4, !tbaa !501
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bd, align 4, !tbaa !501
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.be, align 4, !tbaa !501
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.bf, align 4, !tbaa !501
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bg, align 4, !tbaa !501
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bh, align 4, !tbaa !501
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bi, align 4, !tbaa !501
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bj, align 4, !tbaa !501
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bk, align 4, !tbaa !501
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bl, align 4, !tbaa !501
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.bm, align 4, !tbaa !501
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.bn, align 4, !tbaa !501
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.bo, align 4, !tbaa !501
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.bp, align 4, !tbaa !501
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.bq, align 4, !tbaa !501
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 388
  store i32 2, ptr %i.br, align 4, !tbaa !692
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 392
  store i32 49, ptr %i.bs, align 8, !tbaa !691
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 396
  store i32 1, ptr %i.bt, align 4, !tbaa !692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !501
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.r
  %storemerge205 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.el, %bb.r ] ; 2 uses
  %i.bv = and i32 %storemerge205, 1
  %.not = icmp eq i32 %i.bv, 0
  %i.bw = sext i32 %storemerge205 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %14, i64 %i.bw ; 9 uses
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !516, !noalias !8999 ; 6 uses
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9000 ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i
  %.not12.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SF_SF_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.cc = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !9001
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.cd = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.ck, %bb.f ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ce = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !501, !noalias !9001
  %i.ch = icmp slt i32 %i.cg, %i.cc               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.ce, -1
  %i.cj = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.ck = select i1 %i.ch, ptr %i.ci, ptr %i.cd   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ch, i64 %i.cj, i64 %i.ce ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SF_SF_RKT0_.exit.i.i.i.i, label %bb.f, !llvm.loop !127

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SF_SF_RKT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.cl = phi ptr [ %i.bz, %bb.e ], [ %i.ck, %bb.f ] ; 10 uses
  %i.cm = icmp eq ptr %i.cl, %i.cb
  br i1 %i.cm, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SF_SF_RKT0_.exit.i.i.i.i
  %i.cn = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !9002
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !501, !noalias !9002
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.thread.i.i, label %.critedge81.thread

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.thread.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SF_SF_RKT0_.exit.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !9002
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !9002
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !9003
  store ptr %i.by, ptr %11, align 8, !noalias !9003
  store ptr %i.bx, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !9003
  store ptr %13, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !9003
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !513, !noalias !9004
  %.not.i.i.i.i = icmp eq i64 %i.cq, %i.ca
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g, !prof !531

bb.g:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.thread.i.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 5 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i.i5.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.cs = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !9004
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !501, !noalias !9004
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cu = load i32, ptr %i.by, align 4, !tbaa !501, !noalias !9004
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !501, !noalias !9004
  %i.cv = add i64 %i.ca, 1
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !515, !noalias !9004
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !501, !noalias !9004
  store <2 x i32> %i.db, ptr %i.cr, align 4, !tbaa !501, !noalias !9004
  %i.dc = add i64 %i.ca, 1
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !515, !noalias !9004
  %i.dd = add nsw i64 %i.cz, -1                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.j, !prof !531

bb.j:                                             ; preds = %bb.i
  %i.de = sub nsw i64 1, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.de
  %i.dh = shl i64 %i.dd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.dg, i64 %i.dh, i1 false), !noalias !9004
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.di = load <2 x i32>, ptr %i.bx, align 8, !tbaa !501, !noalias !9004
  store <2 x i32> %i.di, ptr %i.cl, align 4, !tbaa !501, !noalias !9004
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.thread.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JNS0_13try_emplace_tEiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.cl, i64 noundef 1, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_emplace_proxy.208") align 8 %11), !noalias !9002
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !509, !noalias !9002
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %bb.k
  %i.dj = phi ptr [ %.pre.i.i, %bb.k ], [ %i.cl, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.cl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !9003
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !9002
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !9002
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.dk = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9005 ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9006 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.dm = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !9007
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %i.dn = phi ptr [ %i.dk, %.lr.ph.i.i.i ], [ %i.du, %bb.n ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.n ] ; 2 uses
  %i.do = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !501, !noalias !9007
  %i.dr = icmp slt i32 %i.dm, %i.dq               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i.i.i = xor i64 %i.do, -1
  %i.dt = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.du = select i1 %i.dr, ptr %i.dn, ptr %i.ds   ; 2 uses
  %.1.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dt ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE11upper_boundERKi.exit, label %bb.n, !llvm.loop !122

_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE11upper_boundERKi.exit: ; preds = %bb.n, %bb.m
  %i.dv = phi ptr [ %i.dk, %bb.m ], [ %i.du, %bb.n ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !9008
  store ptr %i.dv, ptr %10, align 8, !tbaa !595, !noalias !9008
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE11try_emplaceIiJiEEES3_INS0_12vec_iteratorIPS4_Lb0EEEbENSC_ISD_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.dw), !noalias !9008
  %i.dx = load ptr, ptr %9, align 8, !tbaa !509, !noalias !9008
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !9008
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE11upper_boundERKi.exit
  %.sroa.0165.0 = phi ptr [ %i.dx, %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE11upper_boundERKi.exit ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9009
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9009
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = icmp eq ptr %i.ea, %.sroa.0165.0
  br i1 %i.eb, label %.critedge81.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load i32, ptr %.sroa.0165.0, align 4, !tbaa !529 ; 2 uses
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %15, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !691
  %.not74 = icmp eq i32 %i.ec, %i.eg
  br i1 %.not74, label %bb.q, label %.critedge81.thread

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !530
  %.not75 = icmp eq i32 %i.ei, %i.ec
  br i1 %.not75, label %bb.r, label %.critedge81.thread

bb.r:                                             ; preds = %bb.q
  %i.ej = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !501
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !501
  %i.em = icmp sgt i32 %i.ek, 48
  br i1 %i.em, label %bb.s, label %bb.d, !llvm.loop !8941

.critedge81.thread:                               ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE26priv_insert_unique_prepareIiEEbRKT_RNSA_18insert_commit_dataE.exit.i.i, %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.en = load i64, ptr %i.b, align 8, !tbaa !515 ; 4 uses
  %i.eo = load i64, ptr %i.k, align 8, !tbaa !499
  %.not.i = icmp eq i64 %i.en, %i.eo
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9010 ; 3 uses
  %.idx.i = shl nsw i64 %i.en, 3
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.en, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEESt3mapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !497
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.fa, %bb.v ], [ %i.er, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.ez, %bb.v ], [ %i.ep, %.lr.ph.preheader.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !694
  %i.eu = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !529
  %.not10.i = icmp eq i32 %i.eu, %i.et
  br i1 %.not10.i, label %bb.u, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147

bb.u:                                             ; preds = %.lr.ph.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !695
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !530
  %.not11.i = icmp eq i32 %i.ey, %i.ew
  br i1 %.not11.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.fa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #25
  %.not19.i = icmp eq ptr %i.ez, %i.eq
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEESt3mapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !125

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEESt3mapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !515 ; 3 uses
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !499
  %.not.i86 = icmp eq i64 %i.fb, %i.fc
  br i1 %.not.i86, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEESt3mapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit
  %i.fd = load ptr, ptr %2, align 8, !tbaa !516, !noalias !9011 ; 2 uses
  %.idx.i88 = shl nsw i64 %i.fb, 3
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.idx.i88
  %.not1920.i89 = icmp eq i64 %i.fb, 0
  br i1 %.not1920.i89, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i90

.lr.ph.preheader.i90:                             ; preds = %bb.w
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !497
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.y, %.lr.ph.preheader.i90
  %.sroa.0.022.i92 = phi ptr [ %i.fo, %bb.y ], [ %i.ff, %.lr.ph.preheader.i90 ] ; 3 uses
  %.sroa.015.021.i93 = phi ptr [ %i.fn, %bb.y ], [ %i.fd, %.lr.ph.preheader.i90 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 32
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !694
  %i.fi = load i32, ptr %.sroa.015.021.i93, align 4, !tbaa !529
  %.not10.i94 = icmp eq i32 %i.fi, %i.fh
  br i1 %.not10.i94, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147

bb.x:                                             ; preds = %.lr.ph.i91
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !695
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !530
  %.not11.i95 = icmp eq i32 %i.fm, %i.fk
  br i1 %.not11.i95, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 8 ; 2 uses
  %i.fo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i92) #25
  %.not19.i96 = icmp eq ptr %i.fn, %i.fe
  br i1 %.not19.i96, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i91, !llvm.loop !126

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.y, %bb.w
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit

bb.z:                                             ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit, !llvm.loop !8958

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit.preheader, %bb.z
  %i.fp = phi i64 [ %i.ib, %bb.z ], [ %i.en, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 10 uses
  %i.fq = phi ptr [ %i.ic, %bb.z ], [ %i.ep, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 11 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv ; 7 uses
  %.not12.i.i.i.i = icmp eq i64 %i.fp, 0          ; 3 uses
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE11lower_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !501, !noalias !9012
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.ft = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.aa ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.aa ] ; 2 uses
  %i.fu = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !501, !noalias !9012
  %i.fx = icmp slt i32 %i.fw, %i.fs               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.neg.i.i.i.i = xor i64 %i.fu, -1
  %i.fz = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.ga = select i1 %i.fx, ptr %i.fy, ptr %i.ft   ; 2 uses
  %.1.i.i.i.i = select i1 %i.fx, i64 %i.fz, i64 %i.fu ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i97, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE11lower_boundERKi.exit.i.i, label %bb.aa, !llvm.loop !128

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE11lower_boundERKi.exit.i.i: ; preds = %bb.aa, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit
  %i.gb = phi ptr [ %i.fq, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.ga, %bb.aa ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fp ; 6 uses
  %.not.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE11lower_boundERKi.exit.i.i
  %i.gd = load i32, ptr %i.fr, align 8, !tbaa !501, !noalias !9013 ; 5 uses
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !501, !noalias !9013
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.gg, 0
  br i1 %.not76, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.idx.i.i.i98 = shl nsw i64 %i.fp, 3
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.al, align 8, !tbaa !501
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.am, align 8, !tbaa !501
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.an, align 8, !tbaa !501
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.ao, align 8, !tbaa !501
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.ap, align 8, !tbaa !501
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.aq, align 8, !tbaa !501
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 392
  store i32 49, ptr %i.ar, align 8, !tbaa !691
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 396
  store i32 49, ptr %i.as, align 4, !tbaa !692
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %15, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.at, align 4, !tbaa !501
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.au, align 4, !tbaa !501
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.av, align 4, !tbaa !501
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.aw, align 4, !tbaa !501
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.ax, align 4, !tbaa !501
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ay, align 4, !tbaa !501
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.az, align 4, !tbaa !501
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.ba, align 4, !tbaa !501
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bb, align 4, !tbaa !501
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bc, align 4, !tbaa !501
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bd, align 4, !tbaa !501
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.be, align 4, !tbaa !501
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.bf, align 4, !tbaa !501
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bg, align 4, !tbaa !501
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bh, align 4, !tbaa !501
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bi, align 4, !tbaa !501
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bj, align 4, !tbaa !501
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bk, align 4, !tbaa !501
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bl, align 4, !tbaa !501
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.bm, align 4, !tbaa !501
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.bn, align 4, !tbaa !501
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.bo, align 4, !tbaa !501
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.bp, align 4, !tbaa !501
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.bq, align 4, !tbaa !501
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 388
  store i32 2, ptr %i.br, align 4, !tbaa !692
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 392
  store i32 49, ptr %i.bs, align 8, !tbaa !691
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 396
  store i32 1, ptr %i.bt, align 4, !tbaa !692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !501
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.r
  %storemerge205 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.el, %bb.r ] ; 2 uses
  %i.bv = and i32 %storemerge205, 1
  %.not = icmp eq i32 %i.bv, 0
  %i.bw = sext i32 %storemerge205 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %14, i64 %i.bw ; 9 uses
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11564 ; 6 uses
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11565 ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i
  %.not12.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.cc = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !11566
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.cd = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.ck, %bb.f ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ce = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !501, !noalias !11566
  %i.ch = icmp slt i32 %i.cg, %i.cc               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.ce, -1
  %i.cj = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.ck = select i1 %i.ch, ptr %i.ci, ptr %i.cd   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ch, i64 %i.cj, i64 %i.ce ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %bb.f, !llvm.loop !136

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.cl = phi ptr [ %i.bz, %bb.e ], [ %i.ck, %bb.f ] ; 10 uses
  %i.cm = icmp eq ptr %i.cl, %i.cb
  br i1 %i.cm, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i
  %i.cn = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !11567
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !501, !noalias !11567
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %.critedge81.thread

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !11567
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !11567
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !11568
  store ptr %i.by, ptr %11, align 8, !noalias !11568
  store ptr %i.bx, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !11568
  store ptr %13, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !11568
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !505, !noalias !11569
  %.not.i.i.i.i = icmp eq i64 %i.cq, %i.ca
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g, !prof !531

bb.g:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 5 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i.i5.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.cs = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !11569
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !501, !noalias !11569
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cu = load i32, ptr %i.by, align 4, !tbaa !501, !noalias !11569
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !501, !noalias !11569
  %i.cv = add i64 %i.ca, 1
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !511, !noalias !11569
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !501, !noalias !11569
  store <2 x i32> %i.db, ptr %i.cr, align 4, !tbaa !501, !noalias !11569
  %i.dc = add i64 %i.ca, 1
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !511, !noalias !11569
  %i.dd = add nsw i64 %i.cz, -1                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.j, !prof !531

bb.j:                                             ; preds = %bb.i
  %i.de = sub nsw i64 1, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.de
  %i.dh = shl i64 %i.dd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.dg, i64 %i.dh, i1 false), !noalias !11569
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.di = load <2 x i32>, ptr %i.bx, align 8, !tbaa !501, !noalias !11569
  store <2 x i32> %i.di, ptr %i.cl, align 4, !tbaa !501, !noalias !11569
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JNS0_13try_emplace_tEiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.cl, i64 noundef 1, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_emplace_proxy.174") align 8 %11), !noalias !11567
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !509, !noalias !11567
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %bb.k
  %i.dj = phi ptr [ %.pre.i.i, %bb.k ], [ %i.cl, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.cl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !11568
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !11567
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !11567
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.dk = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11570 ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11571 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.dm = load i32, ptr %i.bx, align 8, !tbaa !501, !noalias !11572
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %i.dn = phi ptr [ %i.dk, %.lr.ph.i.i.i ], [ %i.du, %bb.n ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.n ] ; 2 uses
  %i.do = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !501, !noalias !11572
  %i.dr = icmp slt i32 %i.dm, %i.dq               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i.i.i = xor i64 %i.do, -1
  %i.dt = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.du = select i1 %i.dr, ptr %i.dn, ptr %i.ds   ; 2 uses
  %.1.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dt ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE11upper_boundERKi.exit, label %bb.n, !llvm.loop !131

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE11upper_boundERKi.exit: ; preds = %bb.n, %bb.m
  %i.dv = phi ptr [ %i.dk, %bb.m ], [ %i.du, %bb.n ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !11573
  store ptr %i.dv, ptr %10, align 8, !tbaa !595, !noalias !11573
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE11try_emplaceIiJiEEES3_INS0_12vec_iteratorIPS4_Lb0EEEbENSD_ISE_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.dw), !noalias !11573
  %i.dx = load ptr, ptr %9, align 8, !tbaa !509, !noalias !11573
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !11573
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE11upper_boundERKi.exit
  %.sroa.0165.0 = phi ptr [ %i.dx, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE11upper_boundERKi.exit ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11574
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11574
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = icmp eq ptr %i.ea, %.sroa.0165.0
  br i1 %i.eb, label %.critedge81.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load i32, ptr %.sroa.0165.0, align 4, !tbaa !529 ; 2 uses
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %15, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !691
  %.not74 = icmp eq i32 %i.ec, %i.eg
  br i1 %.not74, label %bb.q, label %.critedge81.thread

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !530
  %.not75 = icmp eq i32 %i.ei, %i.ec
  br i1 %.not75, label %bb.r, label %.critedge81.thread

bb.r:                                             ; preds = %bb.q
  %i.ej = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !501
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !501
  %i.em = icmp sgt i32 %i.ek, 48
  br i1 %i.em, label %bb.s, label %bb.d, !llvm.loop !11506

.critedge81.thread:                               ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i, %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.en = load i64, ptr %i.b, align 8, !tbaa !511 ; 4 uses
  %i.eo = load i64, ptr %i.k, align 8, !tbaa !499
  %.not.i = icmp eq i64 %i.en, %i.eo
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11575 ; 3 uses
  %.idx.i = shl nsw i64 %i.en, 3
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.en, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !497
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.fa, %bb.v ], [ %i.er, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.ez, %bb.v ], [ %i.ep, %.lr.ph.preheader.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !694
  %i.eu = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !529
  %.not10.i = icmp eq i32 %i.eu, %i.et
  br i1 %.not10.i, label %bb.u, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.u:                                             ; preds = %.lr.ph.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !695
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !530
  %.not11.i = icmp eq i32 %i.ey, %i.ew
  br i1 %.not11.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.fa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #25
  %.not19.i = icmp eq ptr %i.ez, %i.eq
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !134

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !511 ; 3 uses
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !499
  %.not.i86 = icmp eq i64 %i.fb, %i.fc
  br i1 %.not.i86, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.fd = load ptr, ptr %2, align 8, !tbaa !508, !noalias !11576 ; 2 uses
  %.idx.i88 = shl nsw i64 %i.fb, 3
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.idx.i88
  %.not1920.i89 = icmp eq i64 %i.fb, 0
  br i1 %.not1920.i89, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i90

.lr.ph.preheader.i90:                             ; preds = %bb.w
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !497
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.y, %.lr.ph.preheader.i90
  %.sroa.0.022.i92 = phi ptr [ %i.fo, %bb.y ], [ %i.ff, %.lr.ph.preheader.i90 ] ; 3 uses
  %.sroa.015.021.i93 = phi ptr [ %i.fn, %bb.y ], [ %i.fd, %.lr.ph.preheader.i90 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 32
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !694
  %i.fi = load i32, ptr %.sroa.015.021.i93, align 4, !tbaa !529
  %.not10.i94 = icmp eq i32 %i.fi, %i.fh
  br i1 %.not10.i94, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.x:                                             ; preds = %.lr.ph.i91
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !695
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !530
  %.not11.i95 = icmp eq i32 %i.fm, %i.fk
  br i1 %.not11.i95, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 8 ; 2 uses
  %i.fo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i92) #25
  %.not19.i96 = icmp eq ptr %i.fn, %i.fe
  br i1 %.not19.i96, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i91, !llvm.loop !135

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.y, %bb.w
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.z:                                             ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, !llvm.loop !11523

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, %bb.z
  %i.fp = phi i64 [ %i.ib, %bb.z ], [ %i.en, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 10 uses
  %i.fq = phi ptr [ %i.ic, %bb.z ], [ %i.ep, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 11 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv ; 7 uses
  %.not12.i.i.i.i = icmp eq i64 %i.fp, 0          ; 3 uses
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE11lower_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !501, !noalias !11577
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.ft = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.aa ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.aa ] ; 2 uses
  %i.fu = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !501, !noalias !11577
  %i.fx = icmp slt i32 %i.fw, %i.fs               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.neg.i.i.i.i = xor i64 %i.fu, -1
  %i.fz = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.ga = select i1 %i.fx, ptr %i.fy, ptr %i.ft   ; 2 uses
  %.1.i.i.i.i = select i1 %i.fx, i64 %i.fz, i64 %i.fu ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i97, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE11lower_boundERKi.exit.i.i, label %bb.aa, !llvm.loop !137

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE11lower_boundERKi.exit.i.i: ; preds = %bb.aa, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.gb = phi ptr [ %i.fq, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.ga, %bb.aa ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fp ; 6 uses
  %.not.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE11lower_boundERKi.exit.i.i
  %i.gd = load i32, ptr %i.fr, align 8, !tbaa !501, !noalias !11578 ; 5 uses
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !501, !noalias !11578
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.gg, 0
  br i1 %.not76, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.idx.i.i.i98 = shl nsw i64 %i.fp, 3
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_13flat_multimapIS4_S4_S6_SA_EESt8multimapIiiSD_SG_EEEiRT_RT0_RT1_RT2_:bb.a

_ZN5boost9container13flat_multimapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit: ; preds = %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit, %.lr.ph.preheader.i.i.i.i.i114
  store i64 0, ptr %i.g, align 8, !tbaa !741
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.m)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container13flat_multimapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZN5boost9container13flat_multimapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !496
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !497
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.p, ptr %i.r, align 8, !tbaa !498
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !499
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.u)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !496
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !497
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !498
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %_ZN5boost9container4test11movable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false), !tbaa !565
  %i.ac = add i32 %_ZN5boost9container4test11movable_int5countE.promoted, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %8, align 16, !tbaa !565
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <4 x i32> <i32 2, i32 2, i32 3, i32 3>, ptr %i.ad, align 16, !tbaa !565
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x i32> <i32 4, i32 4, i32 5, i32 5>, ptr %i.ae, align 16, !tbaa !565
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x i32> <i32 6, i32 6, i32 7, i32 7>, ptr %i.af, align 16, !tbaa !565
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <4 x i32> <i32 8, i32 8, i32 9, i32 9>, ptr %i.ag, align 16, !tbaa !565
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <4 x i32> <i32 10, i32 10, i32 11, i32 11>, ptr %i.ah, align 16, !tbaa !565
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x i32> <i32 12, i32 12, i32 13, i32 13>, ptr %i.ai, align 16, !tbaa !565
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x i32> <i32 14, i32 14, i32 15, i32 15>, ptr %i.aj, align 16, !tbaa !565
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <4 x i32> <i32 16, i32 16, i32 17, i32 17>, ptr %i.ak, align 16, !tbaa !565
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <4 x i32> <i32 18, i32 18, i32 19, i32 19>, ptr %i.al, align 16, !tbaa !565
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 160
  store <4 x i32> <i32 20, i32 20, i32 21, i32 21>, ptr %i.am, align 16, !tbaa !565
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <4 x i32> <i32 22, i32 22, i32 23, i32 23>, ptr %i.an, align 16, !tbaa !565
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 192
  store <4 x i32> <i32 24, i32 24, i32 25, i32 25>, ptr %i.ao, align 16, !tbaa !565
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <4 x i32> <i32 26, i32 26, i32 27, i32 27>, ptr %i.ap, align 16, !tbaa !565
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 224
  store <4 x i32> <i32 28, i32 28, i32 29, i32 29>, ptr %i.aq, align 16, !tbaa !565
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <4 x i32> <i32 30, i32 30, i32 31, i32 31>, ptr %i.ar, align 16, !tbaa !565
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 256
  store <4 x i32> <i32 32, i32 32, i32 33, i32 33>, ptr %i.as, align 16, !tbaa !565
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 272
  store <4 x i32> <i32 34, i32 34, i32 35, i32 35>, ptr %i.at, align 16, !tbaa !565
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 288
  store <4 x i32> <i32 36, i32 36, i32 37, i32 37>, ptr %i.au, align 16, !tbaa !565
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 304
  store <4 x i32> <i32 38, i32 38, i32 39, i32 39>, ptr %i.av, align 16, !tbaa !565
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 320
  store <4 x i32> <i32 40, i32 40, i32 41, i32 41>, ptr %i.aw, align 16, !tbaa !565
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 336
  store <4 x i32> <i32 42, i32 42, i32 43, i32 43>, ptr %i.ax, align 16, !tbaa !565
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 352
  store <4 x i32> <i32 44, i32 44, i32 45, i32 45>, ptr %i.ay, align 16, !tbaa !565
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 368
  store <4 x i32> <i32 46, i32 46, i32 47, i32 47>, ptr %i.az, align 16, !tbaa !565
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.ba, align 16, !tbaa !565
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i8 0, i64 48, i1 false), !tbaa !565
  %i.bc = add i32 %_ZN5boost9container4test11movable_int5countE.promoted, 300
  store i32 %i.bc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !565
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.bd, align 16, !tbaa !565
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.be, align 16, !tbaa !565
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.bf, align 16, !tbaa !565
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.bg, align 16, !tbaa !565
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.bh, align 16, !tbaa !565
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.bi, align 16, !tbaa !565
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.bj, align 16, !tbaa !565
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.bk, align 16, !tbaa !565
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.bl, align 16, !tbaa !565
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.bm, align 16, !tbaa !565
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.bn, align 16, !tbaa !565
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.bo, align 16, !tbaa !565
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.bp, align 16, !tbaa !565
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.bq, align 16, !tbaa !565
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.br, align 16, !tbaa !565
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.bs, align 16, !tbaa !565
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.bt, align 16, !tbaa !565
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.bu, align 16, !tbaa !565
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.bv, align 16, !tbaa !565
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.bw, align 16, !tbaa !565
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.bx, align 16, !tbaa !565
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.by, align 16, !tbaa !565
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.bz, align 16, !tbaa !565
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.ca, align 16, !tbaa !565
  %i.cb = add i32 %_ZN5boost9container4test11movable_int5countE.promoted, 400
  store i32 %i.cb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.p
  %storemerge215 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.dp, %bb.p ] ; 3 uses
  %i.cd = and i32 %storemerge215, 1
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ce = sext i32 %storemerge215 to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.271") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.cf, ptr noundef nonnull align 4 dereferenceable(4) %i.cg)
          to label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit unwind label %bb.f

_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit: ; preds = %bb.e
  %i.ch = load i8, ptr %i.cc, align 8, !tbaa !755, !range !540, !noundef !541
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.g, label %.critedge104

bb.f:                                             ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.r

bb.g:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit
  %i.ck = load ptr, ptr %10, align 8, !tbaa !743
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.cl = sext i32 %storemerge215 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cl ; 3 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !744, !noalias !13899 ; 2 uses
  %i.co = load i64, ptr %i.b, align 8, !tbaa !741, !noalias !13900 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.cp = load i32, ptr %i.cm, align 8, !tbaa !565, !noalias !13901
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.cq = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.cx, %bb.i ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.i ] ; 2 uses
  %i.cr = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !565, !noalias !13901
  %i.cu = icmp slt i32 %i.cp, %i.ct               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.neg.i.i.i = xor i64 %i.cr, -1
  %i.cw = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.cx = select i1 %i.cu, ptr %i.cq, ptr %i.cv   ; 2 uses
  %.1.i.i.i = select i1 %i.cu, i64 %i.cr, i64 %i.cw ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %bb.i, !llvm.loop !149

_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit: ; preds = %bb.i, %bb.h
  %i.cy = phi ptr [ %i.cn, %bb.h ], [ %i.cx, %bb.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !13902
  store ptr %i.cy, ptr %7, align 8, !tbaa !753, !noalias !13902
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbENSF_ISG_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.271") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 4 dereferenceable(4) %i.cm, ptr noundef nonnull align 4 dereferenceable(4) %i.cz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.da = load ptr, ptr %6, align 8, !tbaa !743, !noalias !13902
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !13902
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.g, %bb.j
  %.sroa.0180.0 = phi ptr [ %i.da, %bb.j ], [ %i.ck, %bb.g ] ; 3 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !744, !noalias !13903
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !741, !noalias !13903
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = icmp eq ptr %i.de, %.sroa.0180.0
  br i1 %i.df, label %.critedge106.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dh
  %i.dj = load i32, ptr %.sroa.0180.0, align 4, !tbaa !565 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 8, !tbaa !565
  %.not194 = icmp eq i32 %i.dj, %i.dk
  br i1 %.not194, label %bb.n, label %.critedge106.thread

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0180.0, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !565
  %.not195 = icmp eq i32 %i.dm, %i.dj
  br i1 %.not195, label %bb.o, label %.critedge106.thread

bb.o:                                             ; preds = %bb.n
  %i.dn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.dg, ptr %i.dn, align 4, !tbaa !501
  %i.do = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !501
  %i.dq = icmp sgt i32 %i.do, 48
  br i1 %i.dq, label %bb.s, label %bb.d, !llvm.loop !13851

.critedge104:                                     ; preds = %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge106.thread

bb.q:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.q ], [ %i.cj, %bb.f ], [ %i.db, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.as

.critedge106.thread:                              ; preds = %bb.n, %bb.l, %bb.m, %.critedge104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !741 ; 4 uses
  %i.dt = load i64, ptr %i.s, align 8, !tbaa !499
  %.not.i = icmp eq i64 %i.ds, %i.dt
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %0, align 8, !tbaa !744, !noalias !13904 ; 3 uses
  %.idx.i = shl nsw i64 %i.ds, 3
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %.idx.i
  %_ZN5boost9container4test11movable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4 ; 6 uses
  %.not1721.i = icmp eq i64 %i.ds, 0
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !497
  %i.dx = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.ef, %bb.v ], [ %i.du, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.09.022.i = phi ptr [ %i.eg, %bb.v ], [ %i.dw, %.lr.ph.preheader.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !694
  store i32 %i.dx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  %i.ea = load i32, ptr %.sroa.013.023.i, align 4, !tbaa !565
  %.not18.i = icmp eq i32 %i.ea, %i.dz
  br i1 %.not18.i, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !695
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !565
  %.not19.i = icmp eq i32 %i.ee, %i.ec
  store i32 %_ZN5boost9container4test11movable_int5countE.promoted.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8 ; 2 uses
  %i.eg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #25
  %.not17.i = icmp eq ptr %i.ef, %i.dv
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !144

.critedge.i:                                      ; preds = %.lr.ph.i
  store i32 %_ZN5boost9container4test11movable_int5countE.promoted.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.eh = load i64, ptr %i.g, align 8, !tbaa !741 ; 3 uses
  %i.ei = load i64, ptr %i.aa, align 8, !tbaa !499
  %.not.i116 = icmp eq i64 %i.eh, %i.ei
  br i1 %.not.i116, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit
  %i.ej = load ptr, ptr %2, align 8, !tbaa !744, !noalias !13905 ; 2 uses
  %.idx.i118 = shl nsw i64 %i.eh, 3
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i118
  %.not1721.i120 = icmp eq i64 %i.eh, 0
  br i1 %.not1721.i120, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i121

.lr.ph.preheader.i121:                            ; preds = %bb.w
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !497
  %i.em = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i, 1
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.y, %.lr.ph.preheader.i121
  %.sroa.013.023.i123 = phi ptr [ %i.eu, %bb.y ], [ %i.ej, %.lr.ph.preheader.i121 ] ; 3 uses
  %.sroa.09.022.i124 = phi ptr [ %i.ev, %bb.y ], [ %i.el, %.lr.ph.preheader.i121 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 32
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !694
  store i32 %i.em, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  %i.ep = load i32, ptr %.sroa.013.023.i123, align 4, !tbaa !565
  %.not18.i125 = icmp eq i32 %i.ep, %i.eo
  br i1 %.not18.i125, label %bb.x, label %.critedge.i126

bb.x:                                             ; preds = %.lr.ph.i122
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !695
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !565
  %.not19.i127 = icmp eq i32 %i.et, %i.er
  store i32 %_ZN5boost9container4test11movable_int5countE.promoted.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i127, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 8 ; 2 uses
  %i.ev = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i124) #25
  %.not17.i128 = icmp eq ptr %i.eu, %i.ek
  br i1 %.not17.i128, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i122, !llvm.loop !145

.critedge.i126:                                   ; preds = %.lr.ph.i122
  store i32 %_ZN5boost9container4test11movable_int5countE.promoted.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.y, %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge110, label %bb.aa, !llvm.loop !13868

bb.aa:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, %bb.z
  %i.ex = phi i64 [ %i.ds, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gj, %bb.z ] ; 4 uses
  %i.ey = phi ptr [ %i.du, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gi, %bb.z ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 6 uses
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_13flat_multimapIS4_S4_S6_SA_EESt8multimapIiiSD_SG_EEEiRT_RT0_RT1_RT2_:bb.a

_ZN5boost9container13flat_multimapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit: ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit, %.lr.ph.preheader.i.i.i.i.i114
  store i64 0, ptr %i.g, align 8, !tbaa !787
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.m)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container13flat_multimapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZN5boost9container13flat_multimapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !496
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !497
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.p, ptr %i.r, align 8, !tbaa !498
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !499
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.u)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !496
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !497
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !498
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false), !tbaa !792
  %i.ac = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %8, align 16, !tbaa !792
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <4 x i32> <i32 2, i32 2, i32 3, i32 3>, ptr %i.ad, align 16, !tbaa !792
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x i32> <i32 4, i32 4, i32 5, i32 5>, ptr %i.ae, align 16, !tbaa !792
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x i32> <i32 6, i32 6, i32 7, i32 7>, ptr %i.af, align 16, !tbaa !792
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <4 x i32> <i32 8, i32 8, i32 9, i32 9>, ptr %i.ag, align 16, !tbaa !792
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <4 x i32> <i32 10, i32 10, i32 11, i32 11>, ptr %i.ah, align 16, !tbaa !792
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x i32> <i32 12, i32 12, i32 13, i32 13>, ptr %i.ai, align 16, !tbaa !792
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x i32> <i32 14, i32 14, i32 15, i32 15>, ptr %i.aj, align 16, !tbaa !792
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <4 x i32> <i32 16, i32 16, i32 17, i32 17>, ptr %i.ak, align 16, !tbaa !792
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <4 x i32> <i32 18, i32 18, i32 19, i32 19>, ptr %i.al, align 16, !tbaa !792
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 160
  store <4 x i32> <i32 20, i32 20, i32 21, i32 21>, ptr %i.am, align 16, !tbaa !792
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <4 x i32> <i32 22, i32 22, i32 23, i32 23>, ptr %i.an, align 16, !tbaa !792
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 192
  store <4 x i32> <i32 24, i32 24, i32 25, i32 25>, ptr %i.ao, align 16, !tbaa !792
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <4 x i32> <i32 26, i32 26, i32 27, i32 27>, ptr %i.ap, align 16, !tbaa !792
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 224
  store <4 x i32> <i32 28, i32 28, i32 29, i32 29>, ptr %i.aq, align 16, !tbaa !792
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <4 x i32> <i32 30, i32 30, i32 31, i32 31>, ptr %i.ar, align 16, !tbaa !792
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 256
  store <4 x i32> <i32 32, i32 32, i32 33, i32 33>, ptr %i.as, align 16, !tbaa !792
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 272
  store <4 x i32> <i32 34, i32 34, i32 35, i32 35>, ptr %i.at, align 16, !tbaa !792
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 288
  store <4 x i32> <i32 36, i32 36, i32 37, i32 37>, ptr %i.au, align 16, !tbaa !792
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 304
  store <4 x i32> <i32 38, i32 38, i32 39, i32 39>, ptr %i.av, align 16, !tbaa !792
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 320
  store <4 x i32> <i32 40, i32 40, i32 41, i32 41>, ptr %i.aw, align 16, !tbaa !792
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 336
  store <4 x i32> <i32 42, i32 42, i32 43, i32 43>, ptr %i.ax, align 16, !tbaa !792
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 352
  store <4 x i32> <i32 44, i32 44, i32 45, i32 45>, ptr %i.ay, align 16, !tbaa !792
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 368
  store <4 x i32> <i32 46, i32 46, i32 47, i32 47>, ptr %i.az, align 16, !tbaa !792
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.ba, align 16, !tbaa !792
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i8 0, i64 48, i1 false), !tbaa !792
  %i.bc = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted, 300
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !792
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.bd, align 16, !tbaa !792
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.be, align 16, !tbaa !792
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.bf, align 16, !tbaa !792
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.bg, align 16, !tbaa !792
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.bh, align 16, !tbaa !792
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.bi, align 16, !tbaa !792
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.bj, align 16, !tbaa !792
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.bk, align 16, !tbaa !792
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.bl, align 16, !tbaa !792
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.bm, align 16, !tbaa !792
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.bn, align 16, !tbaa !792
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.bo, align 16, !tbaa !792
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.bp, align 16, !tbaa !792
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.bq, align 16, !tbaa !792
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.br, align 16, !tbaa !792
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.bs, align 16, !tbaa !792
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.bt, align 16, !tbaa !792
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.bu, align 16, !tbaa !792
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.bv, align 16, !tbaa !792
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.bw, align 16, !tbaa !792
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.bx, align 16, !tbaa !792
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.by, align 16, !tbaa !792
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.bz, align 16, !tbaa !792
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.ca, align 16, !tbaa !792
  %i.cb = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted, 400
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.p
  %storemerge215 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.dp, %bb.p ] ; 3 uses
  %i.cd = and i32 %storemerge215, 1
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ce = sext i32 %storemerge215 to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.334") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.cf, ptr noundef nonnull align 4 dereferenceable(4) %i.cg)
          to label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit unwind label %bb.f

_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit: ; preds = %bb.e
  %i.ch = load i8, ptr %i.cc, align 8, !tbaa !803, !range !540, !noundef !541
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.g, label %.critedge104

bb.f:                                             ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.r

bb.g:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit
  %i.ck = load ptr, ptr %10, align 8, !tbaa !789
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.cl = sext i32 %storemerge215 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cl ; 3 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !790, !noalias !17941 ; 2 uses
  %i.co = load i64, ptr %i.b, align 8, !tbaa !787, !noalias !17942 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.cp = load i32, ptr %i.cm, align 8, !tbaa !792, !noalias !17943
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.cq = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.cx, %bb.i ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.i ] ; 2 uses
  %i.cr = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !792, !noalias !17943
  %i.cu = icmp slt i32 %i.cp, %i.ct               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.neg.i.i.i = xor i64 %i.cr, -1
  %i.cw = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.cx = select i1 %i.cu, ptr %i.cq, ptr %i.cv   ; 2 uses
  %.1.i.i.i = select i1 %i.cu, i64 %i.cr, i64 %i.cw ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %bb.i, !llvm.loop !239

_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit: ; preds = %bb.i, %bb.h
  %i.cy = phi ptr [ %i.cn, %bb.h ], [ %i.cx, %bb.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !17944
  store ptr %i.cy, ptr %7, align 8, !tbaa !801, !noalias !17944
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbENSF_ISG_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.334") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 4 dereferenceable(4) %i.cm, ptr noundef nonnull align 4 dereferenceable(4) %i.cz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.da = load ptr, ptr %6, align 8, !tbaa !789, !noalias !17944
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !17944
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.g, %bb.j
  %.sroa.0180.0 = phi ptr [ %i.da, %bb.j ], [ %i.ck, %bb.g ] ; 3 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !790, !noalias !17945
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !787, !noalias !17945
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = icmp eq ptr %i.de, %.sroa.0180.0
  br i1 %i.df, label %.critedge106.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dh
  %i.dj = load i32, ptr %.sroa.0180.0, align 4, !tbaa !792 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 8, !tbaa !792
  %.not194 = icmp eq i32 %i.dj, %i.dk
  br i1 %.not194, label %bb.n, label %.critedge106.thread

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0180.0, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !792
  %.not195 = icmp eq i32 %i.dm, %i.dj
  br i1 %.not195, label %bb.o, label %.critedge106.thread

bb.o:                                             ; preds = %bb.n
  %i.dn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.dg, ptr %i.dn, align 4, !tbaa !501
  %i.do = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !501
  %i.dq = icmp sgt i32 %i.do, 48
  br i1 %i.dq, label %bb.s, label %bb.d, !llvm.loop !17893

.critedge104:                                     ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge106.thread

bb.q:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.q ], [ %i.cj, %bb.f ], [ %i.db, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.as

.critedge106.thread:                              ; preds = %bb.n, %bb.l, %bb.m, %.critedge104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !787 ; 4 uses
  %i.dt = load i64, ptr %i.s, align 8, !tbaa !499
  %.not.i = icmp eq i64 %i.ds, %i.dt
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %0, align 8, !tbaa !790, !noalias !17946 ; 3 uses
  %.idx.i = shl nsw i64 %i.ds, 3
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %.idx.i
  %_ZN5boost9container4test12copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4 ; 6 uses
  %.not1721.i = icmp eq i64 %i.ds, 0
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !497
  %i.dx = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.ef, %bb.v ], [ %i.du, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.09.022.i = phi ptr [ %i.eg, %bb.v ], [ %i.dw, %.lr.ph.preheader.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !694
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.ea = load i32, ptr %.sroa.013.023.i, align 4, !tbaa !792
  %.not18.i = icmp eq i32 %i.ea, %i.dz
  br i1 %.not18.i, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !695
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !792
  %.not19.i = icmp eq i32 %i.ee, %i.ec
  store i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8 ; 2 uses
  %i.eg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #25
  %.not17.i = icmp eq ptr %i.ef, %i.dv
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !235

.critedge.i:                                      ; preds = %.lr.ph.i
  store i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.eh = load i64, ptr %i.g, align 8, !tbaa !787 ; 3 uses
  %i.ei = load i64, ptr %i.aa, align 8, !tbaa !499
  %.not.i116 = icmp eq i64 %i.eh, %i.ei
  br i1 %.not.i116, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit
  %i.ej = load ptr, ptr %2, align 8, !tbaa !790, !noalias !17947 ; 2 uses
  %.idx.i118 = shl nsw i64 %i.eh, 3
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i118
  %.not1721.i120 = icmp eq i64 %i.eh, 0
  br i1 %.not1721.i120, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i121

.lr.ph.preheader.i121:                            ; preds = %bb.w
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !497
  %i.em = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, 1
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.y, %.lr.ph.preheader.i121
  %.sroa.013.023.i123 = phi ptr [ %i.eu, %bb.y ], [ %i.ej, %.lr.ph.preheader.i121 ] ; 3 uses
  %.sroa.09.022.i124 = phi ptr [ %i.ev, %bb.y ], [ %i.el, %.lr.ph.preheader.i121 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 32
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !694
  store i32 %i.em, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.ep = load i32, ptr %.sroa.013.023.i123, align 4, !tbaa !792
  %.not18.i125 = icmp eq i32 %i.ep, %i.eo
  br i1 %.not18.i125, label %bb.x, label %.critedge.i126

bb.x:                                             ; preds = %.lr.ph.i122
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !695
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !792
  %.not19.i127 = icmp eq i32 %i.et, %i.er
  store i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i127, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 8 ; 2 uses
  %i.ev = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i124) #25
  %.not17.i128 = icmp eq ptr %i.eu, %i.ek
  br i1 %.not17.i128, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i122, !llvm.loop !236

.critedge.i126:                                   ; preds = %.lr.ph.i122
  store i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.y, %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge110, label %bb.aa, !llvm.loop !17910

bb.aa:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, %bb.z
  %i.ex = phi i64 [ %i.ds, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gj, %bb.z ] ; 4 uses
  %i.ey = phi ptr [ %i.du, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gi, %bb.z ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 6 uses
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEENS0_13flat_multimapIS4_S4_S6_SA_EESt8multimapIiiSD_SG_EEEiRT_RT0_RT1_RT2_:bb.a

_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit: ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit, %.lr.ph.preheader.i.i.i.i.i114
  store i64 0, ptr %i.g, align 8, !tbaa !833
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.m)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !496
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !497
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.p, ptr %i.r, align 8, !tbaa !498
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !499
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.u)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !496
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !497
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !498
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false), !tbaa !838
  %i.ac = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %8, align 16, !tbaa !838
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <4 x i32> <i32 2, i32 2, i32 3, i32 3>, ptr %i.ad, align 16, !tbaa !838
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x i32> <i32 4, i32 4, i32 5, i32 5>, ptr %i.ae, align 16, !tbaa !838
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x i32> <i32 6, i32 6, i32 7, i32 7>, ptr %i.af, align 16, !tbaa !838
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <4 x i32> <i32 8, i32 8, i32 9, i32 9>, ptr %i.ag, align 16, !tbaa !838
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <4 x i32> <i32 10, i32 10, i32 11, i32 11>, ptr %i.ah, align 16, !tbaa !838
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x i32> <i32 12, i32 12, i32 13, i32 13>, ptr %i.ai, align 16, !tbaa !838
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x i32> <i32 14, i32 14, i32 15, i32 15>, ptr %i.aj, align 16, !tbaa !838
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <4 x i32> <i32 16, i32 16, i32 17, i32 17>, ptr %i.ak, align 16, !tbaa !838
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <4 x i32> <i32 18, i32 18, i32 19, i32 19>, ptr %i.al, align 16, !tbaa !838
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 160
  store <4 x i32> <i32 20, i32 20, i32 21, i32 21>, ptr %i.am, align 16, !tbaa !838
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <4 x i32> <i32 22, i32 22, i32 23, i32 23>, ptr %i.an, align 16, !tbaa !838
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 192
  store <4 x i32> <i32 24, i32 24, i32 25, i32 25>, ptr %i.ao, align 16, !tbaa !838
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <4 x i32> <i32 26, i32 26, i32 27, i32 27>, ptr %i.ap, align 16, !tbaa !838
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 224
  store <4 x i32> <i32 28, i32 28, i32 29, i32 29>, ptr %i.aq, align 16, !tbaa !838
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <4 x i32> <i32 30, i32 30, i32 31, i32 31>, ptr %i.ar, align 16, !tbaa !838
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 256
  store <4 x i32> <i32 32, i32 32, i32 33, i32 33>, ptr %i.as, align 16, !tbaa !838
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 272
  store <4 x i32> <i32 34, i32 34, i32 35, i32 35>, ptr %i.at, align 16, !tbaa !838
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 288
  store <4 x i32> <i32 36, i32 36, i32 37, i32 37>, ptr %i.au, align 16, !tbaa !838
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 304
  store <4 x i32> <i32 38, i32 38, i32 39, i32 39>, ptr %i.av, align 16, !tbaa !838
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 320
  store <4 x i32> <i32 40, i32 40, i32 41, i32 41>, ptr %i.aw, align 16, !tbaa !838
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 336
  store <4 x i32> <i32 42, i32 42, i32 43, i32 43>, ptr %i.ax, align 16, !tbaa !838
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 352
  store <4 x i32> <i32 44, i32 44, i32 45, i32 45>, ptr %i.ay, align 16, !tbaa !838
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 368
  store <4 x i32> <i32 46, i32 46, i32 47, i32 47>, ptr %i.az, align 16, !tbaa !838
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.ba, align 16, !tbaa !838
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i8 0, i64 48, i1 false), !tbaa !838
  %i.bc = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 300
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !838
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.bd, align 16, !tbaa !838
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.be, align 16, !tbaa !838
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.bf, align 16, !tbaa !838
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.bg, align 16, !tbaa !838
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.bh, align 16, !tbaa !838
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.bi, align 16, !tbaa !838
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.bj, align 16, !tbaa !838
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.bk, align 16, !tbaa !838
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.bl, align 16, !tbaa !838
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.bm, align 16, !tbaa !838
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.bn, align 16, !tbaa !838
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.bo, align 16, !tbaa !838
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.bp, align 16, !tbaa !838
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.bq, align 16, !tbaa !838
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.br, align 16, !tbaa !838
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.bs, align 16, !tbaa !838
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.bt, align 16, !tbaa !838
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.bu, align 16, !tbaa !838
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.bv, align 16, !tbaa !838
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.bw, align 16, !tbaa !838
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.bx, align 16, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.by, align 16, !tbaa !838
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.bz, align 16, !tbaa !838
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.ca, align 16, !tbaa !838
  %i.cb = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 400
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.p
  %storemerge215 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.dp, %bb.p ] ; 3 uses
  %i.cd = and i32 %storemerge215, 1
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ce = sext i32 %storemerge215 to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.cf, ptr noundef nonnull align 4 dereferenceable(4) %i.cg)
          to label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit unwind label %bb.f

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit: ; preds = %bb.e
  %i.ch = load i8, ptr %i.cc, align 8, !tbaa !849, !range !540, !noundef !541
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.g, label %.critedge104

bb.f:                                             ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.r

bb.g:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit
  %i.ck = load ptr, ptr %10, align 8, !tbaa !835
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.cl = sext i32 %storemerge215 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cl ; 3 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !836, !noalias !22765 ; 2 uses
  %i.co = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !22766 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.cp = load i32, ptr %i.cm, align 8, !tbaa !838, !noalias !22767
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.cq = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.cx, %bb.i ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.i ] ; 2 uses
  %i.cr = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !838, !noalias !22767
  %i.cu = icmp slt i32 %i.cp, %i.ct               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.neg.i.i.i = xor i64 %i.cr, -1
  %i.cw = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.cx = select i1 %i.cu, ptr %i.cq, ptr %i.cv   ; 2 uses
  %.1.i.i.i = select i1 %i.cu, i64 %i.cr, i64 %i.cw ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %bb.i, !llvm.loop !323

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit: ; preds = %bb.i, %bb.h
  %i.cy = phi ptr [ %i.cn, %bb.h ], [ %i.cx, %bb.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !22768
  store ptr %i.cy, ptr %7, align 8, !tbaa !847, !noalias !22768
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbENSF_ISG_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 4 dereferenceable(4) %i.cm, ptr noundef nonnull align 4 dereferenceable(4) %i.cz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.da = load ptr, ptr %6, align 8, !tbaa !835, !noalias !22768
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !22768
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.g, %bb.j
  %.sroa.0180.0 = phi ptr [ %i.da, %bb.j ], [ %i.ck, %bb.g ] ; 3 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !836, !noalias !22769
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !22769
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = icmp eq ptr %i.de, %.sroa.0180.0
  br i1 %i.df, label %.critedge106.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dh
  %i.dj = load i32, ptr %.sroa.0180.0, align 4, !tbaa !838 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 8, !tbaa !838
  %.not194 = icmp eq i32 %i.dj, %i.dk
  br i1 %.not194, label %bb.n, label %.critedge106.thread

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0180.0, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !838
  %.not195 = icmp eq i32 %i.dm, %i.dj
  br i1 %.not195, label %bb.o, label %.critedge106.thread

bb.o:                                             ; preds = %bb.n
  %i.dn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.dg, ptr %i.dn, align 4, !tbaa !501
  %i.do = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !501
  %i.dq = icmp sgt i32 %i.do, 48
  br i1 %i.dq, label %bb.s, label %bb.d, !llvm.loop !22717

.critedge104:                                     ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES7_INS0_12vec_iteratorIPS8_Lb0EEEbEOS3_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge106.thread

bb.q:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.q ], [ %i.cj, %bb.f ], [ %i.db, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.as

.critedge106.thread:                              ; preds = %bb.n, %bb.l, %bb.m, %.critedge104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !833 ; 4 uses
  %i.dt = load i64, ptr %i.s, align 8, !tbaa !499
  %.not.i = icmp eq i64 %i.ds, %i.dt
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %0, align 8, !tbaa !836, !noalias !22770 ; 3 uses
  %.idx.i = shl nsw i64 %i.ds, 3
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %.idx.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4 ; 6 uses
  %.not1721.i = icmp eq i64 %i.ds, 0
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !497
  %i.dx = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.ef, %bb.v ], [ %i.du, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.09.022.i = phi ptr [ %i.eg, %bb.v ], [ %i.dw, %.lr.ph.preheader.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !694
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.ea = load i32, ptr %.sroa.013.023.i, align 4, !tbaa !838
  %.not18.i = icmp eq i32 %i.ea, %i.dz
  br i1 %.not18.i, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !695
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !838
  %.not19.i = icmp eq i32 %i.ee, %i.ec
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8 ; 2 uses
  %i.eg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #25
  %.not17.i = icmp eq ptr %i.ef, %i.dv
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !318

.critedge.i:                                      ; preds = %.lr.ph.i
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.eh = load i64, ptr %i.g, align 8, !tbaa !833 ; 3 uses
  %i.ei = load i64, ptr %i.aa, align 8, !tbaa !499
  %.not.i116 = icmp eq i64 %i.eh, %i.ei
  br i1 %.not.i116, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit
  %i.ej = load ptr, ptr %2, align 8, !tbaa !836, !noalias !22771 ; 2 uses
  %.idx.i118 = shl nsw i64 %i.eh, 3
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i118
  %.not1721.i120 = icmp eq i64 %i.eh, 0
  br i1 %.not1721.i120, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i121

.lr.ph.preheader.i121:                            ; preds = %bb.w
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !497
  %i.em = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 1
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.y, %.lr.ph.preheader.i121
  %.sroa.013.023.i123 = phi ptr [ %i.eu, %bb.y ], [ %i.ej, %.lr.ph.preheader.i121 ] ; 3 uses
  %.sroa.09.022.i124 = phi ptr [ %i.ev, %bb.y ], [ %i.el, %.lr.ph.preheader.i121 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 32
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !694
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.ep = load i32, ptr %.sroa.013.023.i123, align 4, !tbaa !838
  %.not18.i125 = icmp eq i32 %i.ep, %i.eo
  br i1 %.not18.i125, label %bb.x, label %.critedge.i126

bb.x:                                             ; preds = %.lr.ph.i122
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !695
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !838
  %.not19.i127 = icmp eq i32 %i.et, %i.er
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i127, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 8 ; 2 uses
  %i.ev = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i124) #25
  %.not17.i128 = icmp eq ptr %i.eu, %i.ek
  br i1 %.not17.i128, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i122, !llvm.loop !319

.critedge.i126:                                   ; preds = %.lr.ph.i122
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.y, %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge110, label %bb.aa, !llvm.loop !22734

bb.aa:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit, %bb.z
  %i.ex = phi i64 [ %i.ds, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gj, %bb.z ] ; 4 uses
  %i.ey = phi ptr [ %i.du, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gi, %bb.z ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiS5_IiESaIS8_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 6 uses
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEENS0_13flat_multimapIS4_S4_S5_S9_EESt8multimapIiiSD_SG_EEEiRT_RT0_RT1_RT2_:bb.a

_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit: ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit, %.lr.ph.preheader.i.i.i.i.i114
  store i64 0, ptr %i.g, align 8, !tbaa !833
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.m)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !496
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !497
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.p, ptr %i.r, align 8, !tbaa !498
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !499
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !496
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.u)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !496
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !497
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !498
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false), !tbaa !838
  %i.ac = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %8, align 16, !tbaa !838
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <4 x i32> <i32 2, i32 2, i32 3, i32 3>, ptr %i.ad, align 16, !tbaa !838
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x i32> <i32 4, i32 4, i32 5, i32 5>, ptr %i.ae, align 16, !tbaa !838
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x i32> <i32 6, i32 6, i32 7, i32 7>, ptr %i.af, align 16, !tbaa !838
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <4 x i32> <i32 8, i32 8, i32 9, i32 9>, ptr %i.ag, align 16, !tbaa !838
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <4 x i32> <i32 10, i32 10, i32 11, i32 11>, ptr %i.ah, align 16, !tbaa !838
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x i32> <i32 12, i32 12, i32 13, i32 13>, ptr %i.ai, align 16, !tbaa !838
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x i32> <i32 14, i32 14, i32 15, i32 15>, ptr %i.aj, align 16, !tbaa !838
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <4 x i32> <i32 16, i32 16, i32 17, i32 17>, ptr %i.ak, align 16, !tbaa !838
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <4 x i32> <i32 18, i32 18, i32 19, i32 19>, ptr %i.al, align 16, !tbaa !838
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 160
  store <4 x i32> <i32 20, i32 20, i32 21, i32 21>, ptr %i.am, align 16, !tbaa !838
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <4 x i32> <i32 22, i32 22, i32 23, i32 23>, ptr %i.an, align 16, !tbaa !838
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 192
  store <4 x i32> <i32 24, i32 24, i32 25, i32 25>, ptr %i.ao, align 16, !tbaa !838
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <4 x i32> <i32 26, i32 26, i32 27, i32 27>, ptr %i.ap, align 16, !tbaa !838
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 224
  store <4 x i32> <i32 28, i32 28, i32 29, i32 29>, ptr %i.aq, align 16, !tbaa !838
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <4 x i32> <i32 30, i32 30, i32 31, i32 31>, ptr %i.ar, align 16, !tbaa !838
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 256
  store <4 x i32> <i32 32, i32 32, i32 33, i32 33>, ptr %i.as, align 16, !tbaa !838
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 272
  store <4 x i32> <i32 34, i32 34, i32 35, i32 35>, ptr %i.at, align 16, !tbaa !838
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 288
  store <4 x i32> <i32 36, i32 36, i32 37, i32 37>, ptr %i.au, align 16, !tbaa !838
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 304
  store <4 x i32> <i32 38, i32 38, i32 39, i32 39>, ptr %i.av, align 16, !tbaa !838
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 320
  store <4 x i32> <i32 40, i32 40, i32 41, i32 41>, ptr %i.aw, align 16, !tbaa !838
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 336
  store <4 x i32> <i32 42, i32 42, i32 43, i32 43>, ptr %i.ax, align 16, !tbaa !838
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 352
  store <4 x i32> <i32 44, i32 44, i32 45, i32 45>, ptr %i.ay, align 16, !tbaa !838
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 368
  store <4 x i32> <i32 46, i32 46, i32 47, i32 47>, ptr %i.az, align 16, !tbaa !838
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <4 x i32> <i32 48, i32 48, i32 49, i32 49>, ptr %i.ba, align 16, !tbaa !838
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i8 0, i64 48, i1 false), !tbaa !838
  %i.bc = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 300
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store <4 x i32> <i32 0, i32 50, i32 1, i32 49>, ptr %9, align 16, !tbaa !838
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x i32> <i32 2, i32 48, i32 3, i32 47>, ptr %i.bd, align 16, !tbaa !838
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i32> <i32 4, i32 46, i32 5, i32 45>, ptr %i.be, align 16, !tbaa !838
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> <i32 6, i32 44, i32 7, i32 43>, ptr %i.bf, align 16, !tbaa !838
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i32> <i32 8, i32 42, i32 9, i32 41>, ptr %i.bg, align 16, !tbaa !838
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x i32> <i32 10, i32 40, i32 11, i32 39>, ptr %i.bh, align 16, !tbaa !838
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i32> <i32 12, i32 38, i32 13, i32 37>, ptr %i.bi, align 16, !tbaa !838
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i32> <i32 14, i32 36, i32 15, i32 35>, ptr %i.bj, align 16, !tbaa !838
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i32> <i32 16, i32 34, i32 17, i32 33>, ptr %i.bk, align 16, !tbaa !838
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 18, i32 32, i32 19, i32 31>, ptr %i.bl, align 16, !tbaa !838
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i32> <i32 20, i32 30, i32 21, i32 29>, ptr %i.bm, align 16, !tbaa !838
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 176
  store <4 x i32> <i32 22, i32 28, i32 23, i32 27>, ptr %i.bn, align 16, !tbaa !838
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 192
  store <4 x i32> <i32 24, i32 26, i32 25, i32 25>, ptr %i.bo, align 16, !tbaa !838
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 208
  store <4 x i32> <i32 26, i32 24, i32 27, i32 23>, ptr %i.bp, align 16, !tbaa !838
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 224
  store <4 x i32> <i32 28, i32 22, i32 29, i32 21>, ptr %i.bq, align 16, !tbaa !838
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 240
  store <4 x i32> <i32 30, i32 20, i32 31, i32 19>, ptr %i.br, align 16, !tbaa !838
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 256
  store <4 x i32> <i32 32, i32 18, i32 33, i32 17>, ptr %i.bs, align 16, !tbaa !838
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 272
  store <4 x i32> <i32 34, i32 16, i32 35, i32 15>, ptr %i.bt, align 16, !tbaa !838
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 288
  store <4 x i32> <i32 36, i32 14, i32 37, i32 13>, ptr %i.bu, align 16, !tbaa !838
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 304
  store <4 x i32> <i32 38, i32 12, i32 39, i32 11>, ptr %i.bv, align 16, !tbaa !838
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 320
  store <4 x i32> <i32 40, i32 10, i32 41, i32 9>, ptr %i.bw, align 16, !tbaa !838
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 336
  store <4 x i32> <i32 42, i32 8, i32 43, i32 7>, ptr %i.bx, align 16, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 352
  store <4 x i32> <i32 44, i32 6, i32 45, i32 5>, ptr %i.by, align 16, !tbaa !838
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 368
  store <4 x i32> <i32 46, i32 4, i32 47, i32 3>, ptr %i.bz, align 16, !tbaa !838
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 384
  store <4 x i32> <i32 48, i32 2, i32 49, i32 1>, ptr %i.ca, align 16, !tbaa !838
  %i.cb = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 400
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.p
  %storemerge215 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.dp, %bb.p ] ; 3 uses
  %i.cd = and i32 %storemerge215, 1
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ce = sext i32 %storemerge215 to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EENS4_16less_transparentENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.cf, ptr noundef nonnull align 4 dereferenceable(4) %i.cg)
          to label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES6_INS0_12vec_iteratorIPS7_Lb0EEEbEOS3_DpOT_.exit unwind label %bb.f

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES6_INS0_12vec_iteratorIPS7_Lb0EEEbEOS3_DpOT_.exit: ; preds = %bb.e
  %i.ch = load i8, ptr %i.cc, align 8, !tbaa !849, !range !540, !noundef !541
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.g, label %.critedge104

bb.f:                                             ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.r

bb.g:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES6_INS0_12vec_iteratorIPS7_Lb0EEEbEOS3_DpOT_.exit
  %i.ck = load ptr, ptr %10, align 8, !tbaa !835
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.cl = sext i32 %storemerge215 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cl ; 3 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !836, !noalias !27191 ; 2 uses
  %i.co = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !27192 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.cp = load i32, ptr %i.cm, align 8, !tbaa !838, !noalias !27193
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.cq = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.cx, %bb.i ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.i ] ; 2 uses
  %i.cr = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !838, !noalias !27193
  %i.cu = icmp slt i32 %i.cp, %i.ct               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.neg.i.i.i = xor i64 %i.cr, -1
  %i.cw = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.cx = select i1 %i.cu, ptr %i.cq, ptr %i.cv   ; 2 uses
  %.1.i.i.i = select i1 %i.cu, i64 %i.cr, i64 %i.cw ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit, label %bb.i, !llvm.loop !418

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit: ; preds = %bb.i, %bb.h
  %i.cy = phi ptr [ %i.cn, %bb.h ], [ %i.cx, %bb.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !27194
  store ptr %i.cy, ptr %7, align 8, !tbaa !847, !noalias !27194
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EENS4_16less_transparentENS0_13new_allocatorIS6_EEE11try_emplaceIS5_JS5_EEES3_INS0_12vec_iteratorIPS6_Lb0EEEbENSE_ISF_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 4 dereferenceable(4) %i.cm, ptr noundef nonnull align 4 dereferenceable(4) %i.cz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.da = load ptr, ptr %6, align 8, !tbaa !835, !noalias !27194
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !27194
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11upper_boundERKS3_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.g, %bb.j
  %.sroa.0180.0 = phi ptr [ %i.da, %bb.j ], [ %i.ck, %bb.g ] ; 3 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !836, !noalias !27195
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !27195
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = icmp eq ptr %i.de, %.sroa.0180.0
  br i1 %i.df, label %.critedge106.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dh
  %i.dj = load i32, ptr %.sroa.0180.0, align 4, !tbaa !838 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 8, !tbaa !838
  %.not194 = icmp eq i32 %i.dj, %i.dk
  br i1 %.not194, label %bb.n, label %.critedge106.thread

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0180.0, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !838
  %.not195 = icmp eq i32 %i.dm, %i.dj
  br i1 %.not195, label %bb.o, label %.critedge106.thread

bb.o:                                             ; preds = %bb.n
  %i.dn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.dg, ptr %i.dn, align 4, !tbaa !501
  %i.do = load i32, ptr %i.a, align 4, !tbaa !501 ; 2 uses
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !501
  %i.dq = icmp sgt i32 %i.do, 48
  br i1 %i.dq, label %bb.s, label %bb.d, !llvm.loop !27143

.critedge104:                                     ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE11try_emplaceIJS3_EEES6_INS0_12vec_iteratorIPS7_Lb0EEEbEOS3_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge106.thread

bb.q:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.q ], [ %i.cj, %bb.f ], [ %i.db, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.as

.critedge106.thread:                              ; preds = %bb.n, %bb.l, %bb.m, %.critedge104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit165

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !833 ; 4 uses
  %i.dt = load i64, ptr %i.s, align 8, !tbaa !499
  %.not.i = icmp eq i64 %i.ds, %i.dt
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit165

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %0, align 8, !tbaa !836, !noalias !27196 ; 3 uses
  %.idx.i = shl nsw i64 %i.ds, 3
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %.idx.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4 ; 6 uses
  %.not1721.i = icmp eq i64 %i.ds, 0
  br i1 %.not1721.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !497
  %i.dx = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.ef, %bb.v ], [ %i.du, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.09.022.i = phi ptr [ %i.eg, %bb.v ], [ %i.dw, %.lr.ph.preheader.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 32
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !694
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.ea = load i32, ptr %.sroa.013.023.i, align 4, !tbaa !838
  %.not18.i = icmp eq i32 %i.ea, %i.dz
  br i1 %.not18.i, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !695
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !838
  %.not19.i = icmp eq i32 %i.ee, %i.ec
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit165

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8 ; 2 uses
  %i.eg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i) #25
  %.not17.i = icmp eq ptr %i.ef, %i.dv
  br i1 %.not17.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !414

.critedge.i:                                      ; preds = %.lr.ph.i
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.eh = load i64, ptr %i.g, align 8, !tbaa !833 ; 3 uses
  %i.ei = load i64, ptr %i.aa, align 8, !tbaa !499
  %.not.i116 = icmp eq i64 %i.eh, %i.ei
  br i1 %.not.i116, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit165

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt3mapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.ej = load ptr, ptr %2, align 8, !tbaa !836, !noalias !27197 ; 2 uses
  %.idx.i118 = shl nsw i64 %i.eh, 3
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i118
  %.not1721.i120 = icmp eq i64 %i.eh, 0
  br i1 %.not1721.i120, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i121

.lr.ph.preheader.i121:                            ; preds = %bb.w
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !497
  %i.em = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 1
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.y, %.lr.ph.preheader.i121
  %.sroa.013.023.i123 = phi ptr [ %i.eu, %bb.y ], [ %i.ej, %.lr.ph.preheader.i121 ] ; 3 uses
  %.sroa.09.022.i124 = phi ptr [ %i.ev, %bb.y ], [ %i.el, %.lr.ph.preheader.i121 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 32
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !694
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.ep = load i32, ptr %.sroa.013.023.i123, align 4, !tbaa !838
  %.not18.i125 = icmp eq i32 %i.ep, %i.eo
  br i1 %.not18.i125, label %bb.x, label %.critedge.i126

bb.x:                                             ; preds = %.lr.ph.i122
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i124, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !695
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !838
  %.not19.i127 = icmp eq i32 %i.et, %i.er
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br i1 %.not19.i127, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit165

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i123, i64 8 ; 2 uses
  %i.ev = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.022.i124) #25
  %.not17.i128 = icmp eq ptr %i.eu, %i.ek
  br i1 %.not17.i128, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i122, !llvm.loop !415

.critedge.i126:                                   ; preds = %.lr.ph.i122
  store i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit165

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.y, %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge110, label %bb.aa, !llvm.loop !27160

bb.aa:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit, %bb.z
  %i.ex = phi i64 [ %i.ds, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gj, %bb.z ] ; 4 uses
  %i.ey = phi ptr [ %i.du, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.gi, %bb.z ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEESt8multimapIiiSt4lessIiESaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 6 uses
end_hunk_6
