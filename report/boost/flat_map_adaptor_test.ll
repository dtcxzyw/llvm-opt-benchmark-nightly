Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 252
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.al, align 8, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.am, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.an, align 8, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.ao, align 8, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.ap, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.aq, align 8, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 392
  store i32 49, ptr %i.ar, align 8, !tbaa !362
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 396
  store i32 49, ptr %i.as, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %15, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.at, align 4, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.au, align 4, !tbaa !338
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.av, align 4, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.aw, align 4, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.ax, align 4, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ay, align 4, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.az, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.ba, align 4, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bb, align 4, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bc, align 4, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bd, align 4, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.be, align 4, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.bf, align 4, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bg, align 4, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bh, align 4, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bi, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bj, align 4, !tbaa !338
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bk, align 4, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bl, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.bm, align 4, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.bn, align 4, !tbaa !338
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.bo, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.bp, align 4, !tbaa !338
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.bq, align 4, !tbaa !338
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 388
  store i32 2, ptr %i.br, align 4, !tbaa !363
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 392
  store i32 49, ptr %i.bs, align 8, !tbaa !362
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 396
  store i32 1, ptr %i.bt, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
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
  %i.bz = load ptr, ptr %0, align 8, !tbaa !339, !noalias !1976 ; 6 uses
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !1977 ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i
  %.not12.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.cc = load i32, ptr %i.bx, align 8, !tbaa !338, !noalias !1978
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.cd = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.ck, %bb.f ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ce = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !338, !noalias !1978
  %i.ch = icmp slt i32 %i.cg, %i.cc               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.ce, -1
  %i.cj = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.ck = select i1 %i.ch, ptr %i.ci, ptr %i.cd   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ch, i64 %i.cj, i64 %i.ce ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %bb.f, !llvm.loop !16

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.cl = phi ptr [ %i.bz, %bb.e ], [ %i.ck, %bb.f ] ; 10 uses
  %i.cm = icmp eq ptr %i.cl, %i.cb
  br i1 %i.cm, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i
  %i.cn = load i32, ptr %i.bx, align 8, !tbaa !338, !noalias !1979
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !338, !noalias !1979
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %.critedge81.thread

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !1979
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !1979
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !1980
  store ptr %i.by, ptr %11, align 8, !noalias !1980
  store ptr %i.bx, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !1980
  store ptr %13, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !1980
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !330, !noalias !1981
  %.not.i.i.i.i = icmp eq i64 %i.cq, %i.ca
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g, !prof !344

bb.g:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 5 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i.i5.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.cs = load i32, ptr %i.bx, align 8, !tbaa !338, !noalias !1981
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !338, !noalias !1981
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cu = load i32, ptr %i.by, align 4, !tbaa !338, !noalias !1981
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !338, !noalias !1981
  %i.cv = add i64 %i.ca, 1
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !336, !noalias !1981
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !338, !noalias !1981
  store <2 x i32> %i.db, ptr %i.cr, align 4, !tbaa !338, !noalias !1981
  %i.dc = add i64 %i.ca, 1
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !336, !noalias !1981
  %i.dd = add nsw i64 %i.cz, -1                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.de = sub nsw i64 1, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.de
  %i.dh = shl i64 %i.dd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.dg, i64 %i.dh, i1 false), !noalias !1981
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.di = load <2 x i32>, ptr %i.bx, align 8, !tbaa !338, !noalias !1981
  store <2 x i32> %i.di, ptr %i.cl, align 4, !tbaa !338, !noalias !1981
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJNS0_13try_emplace_tEiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.cl, i64 noundef 1, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_emplace_proxy.46") align 8 %11), !noalias !1979
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !331, !noalias !1979
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %bb.k
  %i.dj = phi ptr [ %.pre.i.i, %bb.k ], [ %i.cl, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.cl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !1980
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !1979
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !1979
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.dk = load ptr, ptr %0, align 8, !tbaa !339, !noalias !1982 ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !1983 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.dm = load i32, ptr %i.bx, align 16, !tbaa !338, !noalias !1984
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %i.dn = phi ptr [ %i.dk, %.lr.ph.i.i.i ], [ %i.du, %bb.n ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.n ] ; 2 uses
  %i.do = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !338, !noalias !1984
  %i.dr = icmp slt i32 %i.dm, %i.dq               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i.i.i = xor i64 %i.do, -1
  %i.dt = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.du = select i1 %i.dr, ptr %i.dn, ptr %i.ds   ; 2 uses
  %.1.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dt ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE11upper_boundERKi.exit, label %bb.n, !llvm.loop !10

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE11upper_boundERKi.exit: ; preds = %bb.n, %bb.m
  %i.dv = phi ptr [ %i.dk, %bb.m ], [ %i.du, %bb.n ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !1985
  store ptr %i.dv, ptr %10, align 8, !tbaa !370, !noalias !1985
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11try_emplaceIiJiEEES3_INS0_12vec_iteratorIPS4_Lb0EEEbENSD_ISE_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.34") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.dw), !noalias !1985
  %i.dx = load ptr, ptr %9, align 8, !tbaa !331, !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE11upper_boundERKi.exit
  %.sroa.0165.0 = phi ptr [ %i.dx, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE11upper_boundERKi.exit ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !339, !noalias !1986
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !1986
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = icmp eq ptr %i.ea, %.sroa.0165.0
  br i1 %i.eb, label %.critedge81.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load i32, ptr %.sroa.0165.0, align 4, !tbaa !347 ; 2 uses
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %15, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !362
  %.not74 = icmp eq i32 %i.ec, %i.eg
  br i1 %.not74, label %bb.q, label %.critedge81.thread

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !348
  %.not75 = icmp eq i32 %i.ei, %i.ec
  br i1 %.not75, label %bb.r, label %.critedge81.thread

bb.r:                                             ; preds = %bb.q
  %i.ej = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !338
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !338
  %i.em = icmp sgt i32 %i.ek, 48
  br i1 %i.em, label %bb.s, label %bb.d, !llvm.loop !1918

.critedge81.thread:                               ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i, %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.en = load i64, ptr %i.b, align 8, !tbaa !336 ; 4 uses
  %i.eo = load i64, ptr %i.k, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.en, %i.eo
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %0, align 8, !tbaa !339, !noalias !1987 ; 3 uses
  %.idx.i = shl nsw i64 %i.en, 3
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.en, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !315
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.fa, %bb.v ], [ %i.er, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.ez, %bb.v ], [ %i.ep, %.lr.ph.preheader.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !365
  %i.eu = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !347
  %.not10.i = icmp eq i32 %i.eu, %i.et
  br i1 %.not10.i, label %bb.u, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.u:                                             ; preds = %.lr.ph.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !366
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !348
  %.not11.i = icmp eq i32 %i.ey, %i.ew
  br i1 %.not11.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.fa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #27
  %.not19.i = icmp eq ptr %i.ez, %i.eq
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !14

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !336 ; 3 uses
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !317
  %.not.i86 = icmp eq i64 %i.fb, %i.fc
  br i1 %.not.i86, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.fd = load ptr, ptr %2, align 8, !tbaa !339, !noalias !1988 ; 2 uses
  %.idx.i88 = shl nsw i64 %i.fb, 3
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.idx.i88
  %.not1920.i89 = icmp eq i64 %i.fb, 0
  br i1 %.not1920.i89, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i90

.lr.ph.preheader.i90:                             ; preds = %bb.w
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !315
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.y, %.lr.ph.preheader.i90
  %.sroa.0.022.i92 = phi ptr [ %i.fo, %bb.y ], [ %i.ff, %.lr.ph.preheader.i90 ] ; 3 uses
  %.sroa.015.021.i93 = phi ptr [ %i.fn, %bb.y ], [ %i.fd, %.lr.ph.preheader.i90 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 32
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !365
  %i.fi = load i32, ptr %.sroa.015.021.i93, align 4, !tbaa !347
  %.not10.i94 = icmp eq i32 %i.fi, %i.fh
  br i1 %.not10.i94, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.x:                                             ; preds = %.lr.ph.i91
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !366
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !348
  %.not11.i95 = icmp eq i32 %i.fm, %i.fk
  br i1 %.not11.i95, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 8 ; 2 uses
  %i.fo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i92) #27
  %.not19.i96 = icmp eq ptr %i.fn, %i.fe
  br i1 %.not19.i96, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i91, !llvm.loop !15

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.y, %bb.w
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.z:                                             ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, !llvm.loop !1935

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, %bb.z
  %i.fp = phi i64 [ %i.ib, %bb.z ], [ %i.en, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 10 uses
  %i.fq = phi ptr [ %i.ic, %bb.z ], [ %i.ep, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 11 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv ; 7 uses
  %.not12.i.i.i.i = icmp eq i64 %i.fp, 0          ; 3 uses
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11lower_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !338, !noalias !1989
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.ft = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.aa ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.aa ] ; 2 uses
  %i.fu = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !338, !noalias !1989
  %i.fx = icmp slt i32 %i.fw, %i.fs               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.neg.i.i.i.i = xor i64 %i.fu, -1
  %i.fz = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.ga = select i1 %i.fx, ptr %i.fy, ptr %i.ft   ; 2 uses
  %.1.i.i.i.i = select i1 %i.fx, i64 %i.fz, i64 %i.fu ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i97, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11lower_boundERKi.exit.i.i, label %bb.aa, !llvm.loop !17

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11lower_boundERKi.exit.i.i: ; preds = %bb.aa, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.gb = phi ptr [ %i.fq, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.ga, %bb.aa ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fp ; 6 uses
  %.not.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11lower_boundERKi.exit.i.i
  %i.gd = load i32, ptr %i.fr, align 8, !tbaa !338, !noalias !1990 ; 5 uses
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !338, !noalias !1990
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.gg, 0
  br i1 %.not76, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.idx.i.i.i98 = shl nsw i64 %i.fp, 3
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.al, align 8, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.am, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.an, align 8, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.ao, align 8, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.ap, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.aq, align 8, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 392
  store i32 49, ptr %i.ar, align 8, !tbaa !362
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 396
  store i32 49, ptr %i.as, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %15, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.at, align 4, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.au, align 4, !tbaa !338
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.av, align 4, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.aw, align 4, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.ax, align 4, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ay, align 4, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.az, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.ba, align 4, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bb, align 4, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bc, align 4, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bd, align 4, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.be, align 4, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.bf, align 4, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bg, align 4, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bh, align 4, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bi, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bj, align 4, !tbaa !338
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bk, align 4, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bl, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.bm, align 4, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.bn, align 4, !tbaa !338
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.bo, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.bp, align 4, !tbaa !338
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.bq, align 4, !tbaa !338
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 388
  store i32 2, ptr %i.br, align 4, !tbaa !363
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 392
  store i32 49, ptr %i.bs, align 8, !tbaa !362
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 396
  store i32 1, ptr %i.bt, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
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
  %i.bz = load ptr, ptr %0, align 8, !tbaa !422, !noalias !6830 ; 6 uses
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !6831 ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i
  %.not12.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.cc = load i32, ptr %i.bx, align 8, !tbaa !338, !noalias !6832
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.cd = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.ck, %bb.f ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ce = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !338, !noalias !6832
  %i.ch = icmp slt i32 %i.cg, %i.cc               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.ce, -1
  %i.cj = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.ck = select i1 %i.ch, ptr %i.ci, ptr %i.cd   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ch, i64 %i.cj, i64 %i.ce ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %bb.f, !llvm.loop !112

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.cl = phi ptr [ %i.bz, %bb.e ], [ %i.ck, %bb.f ] ; 10 uses
  %i.cm = icmp eq ptr %i.cl, %i.cb
  br i1 %i.cm, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i
  %i.cn = load i32, ptr %i.bx, align 8, !tbaa !338, !noalias !6833
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !338, !noalias !6833
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %.critedge81.thread

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !6833
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !6833
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !6834
  store ptr %i.by, ptr %11, align 8, !noalias !6834
  store ptr %i.bx, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !6834
  store ptr %13, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !6834
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !424, !noalias !6835
  %.not.i.i.i.i = icmp eq i64 %i.cq, %i.ca
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g, !prof !344

bb.g:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 5 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i.i5.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.cs = load i32, ptr %i.bx, align 8, !tbaa !338, !noalias !6835
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !338, !noalias !6835
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cu = load i32, ptr %i.by, align 4, !tbaa !338, !noalias !6835
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !338, !noalias !6835
  %i.cv = add i64 %i.ca, 1
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !432, !noalias !6835
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !338, !noalias !6835
  store <2 x i32> %i.db, ptr %i.cr, align 4, !tbaa !338, !noalias !6835
  %i.dc = add i64 %i.ca, 1
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !432, !noalias !6835
  %i.dd = add nsw i64 %i.cz, -1                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.de = sub nsw i64 1, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.de
  %i.dh = shl i64 %i.dd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.dg, i64 %i.dh, i1 false), !noalias !6835
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.di = load <2 x i32>, ptr %i.bx, align 8, !tbaa !338, !noalias !6835
  store <2 x i32> %i.di, ptr %i.cl, align 4, !tbaa !338, !noalias !6835
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JNS0_13try_emplace_tEiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.cl, i64 noundef 1, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_emplace_proxy.94") align 8 %11), !noalias !6833
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !331, !noalias !6833
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %bb.k
  %i.dj = phi ptr [ %.pre.i.i, %bb.k ], [ %i.cl, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.cl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !6834
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !6833
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !6833
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.dk = load ptr, ptr %0, align 8, !tbaa !422, !noalias !6836 ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !6837 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.dm = load i32, ptr %i.bx, align 16, !tbaa !338, !noalias !6838
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %i.dn = phi ptr [ %i.dk, %.lr.ph.i.i.i ], [ %i.du, %bb.n ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.n ] ; 2 uses
  %i.do = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !338, !noalias !6838
  %i.dr = icmp slt i32 %i.dm, %i.dq               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i.i.i = xor i64 %i.do, -1
  %i.dt = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.du = select i1 %i.dr, ptr %i.dn, ptr %i.ds   ; 2 uses
  %.1.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dt ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE11upper_boundERKi.exit, label %bb.n, !llvm.loop !107

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE11upper_boundERKi.exit: ; preds = %bb.n, %bb.m
  %i.dv = phi ptr [ %i.dk, %bb.m ], [ %i.du, %bb.n ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !6839
  store ptr %i.dv, ptr %10, align 8, !tbaa !370, !noalias !6839
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE11try_emplaceIiJiEEES3_INS0_12vec_iteratorIPS4_Lb0EEEbENSD_ISE_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.34") align 8 %9, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.dw), !noalias !6839
  %i.dx = load ptr, ptr %9, align 8, !tbaa !331, !noalias !6839
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !6839
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE11upper_boundERKi.exit
  %.sroa.0165.0 = phi ptr [ %i.dx, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE11upper_boundERKi.exit ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !422, !noalias !6840
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !6840
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = icmp eq ptr %i.ea, %.sroa.0165.0
  br i1 %i.eb, label %.critedge81.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load i32, ptr %.sroa.0165.0, align 4, !tbaa !347 ; 2 uses
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %15, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !362
  %.not74 = icmp eq i32 %i.ec, %i.eg
  br i1 %.not74, label %bb.q, label %.critedge81.thread

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !348
  %.not75 = icmp eq i32 %i.ei, %i.ec
  br i1 %.not75, label %bb.r, label %.critedge81.thread

bb.r:                                             ; preds = %bb.q
  %i.ej = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !338
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !338
  %i.em = icmp sgt i32 %i.ek, 48
  br i1 %i.em, label %bb.s, label %bb.d, !llvm.loop !6772

.critedge81.thread:                               ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i, %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.en = load i64, ptr %i.b, align 8, !tbaa !432 ; 4 uses
  %i.eo = load i64, ptr %i.k, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.en, %i.eo
  br i1 %.not.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %0, align 8, !tbaa !422, !noalias !6841 ; 3 uses
  %.idx.i = shl nsw i64 %i.en, 3
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.en, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !315
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.fa, %bb.v ], [ %i.er, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.ez, %bb.v ], [ %i.ep, %.lr.ph.preheader.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !365
  %i.eu = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !347
  %.not10.i = icmp eq i32 %i.eu, %i.et
  br i1 %.not10.i, label %bb.u, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.u:                                             ; preds = %.lr.ph.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !366
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !348
  %.not11.i = icmp eq i32 %i.ey, %i.ew
  br i1 %.not11.i, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.fa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #27
  %.not19.i = icmp eq ptr %i.ez, %i.eq
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !110

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.v, %bb.t
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !432 ; 3 uses
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !317
  %.not.i86 = icmp eq i64 %i.fb, %i.fc
  br i1 %.not.i86, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.w:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.fd = load ptr, ptr %2, align 8, !tbaa !422, !noalias !6842 ; 2 uses
  %.idx.i88 = shl nsw i64 %i.fb, 3
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.idx.i88
  %.not1920.i89 = icmp eq i64 %i.fb, 0
  br i1 %.not1920.i89, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i90

.lr.ph.preheader.i90:                             ; preds = %bb.w
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !315
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.y, %.lr.ph.preheader.i90
  %.sroa.0.022.i92 = phi ptr [ %i.fo, %bb.y ], [ %i.ff, %.lr.ph.preheader.i90 ] ; 3 uses
  %.sroa.015.021.i93 = phi ptr [ %i.fn, %bb.y ], [ %i.fd, %.lr.ph.preheader.i90 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 32
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !365
  %i.fi = load i32, ptr %.sroa.015.021.i93, align 4, !tbaa !347
  %.not10.i94 = icmp eq i32 %i.fi, %i.fh
  br i1 %.not10.i94, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.x:                                             ; preds = %.lr.ph.i91
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !366
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !348
  %.not11.i95 = icmp eq i32 %i.fm, %i.fk
  br i1 %.not11.i95, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 8 ; 2 uses
  %i.fo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i92) #27
  %.not19.i96 = icmp eq ptr %i.fn, %i.fe
  br i1 %.not19.i96, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i91, !llvm.loop !111

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.y, %bb.w
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.z:                                             ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, !llvm.loop !6789

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, %bb.z
  %i.fp = phi i64 [ %i.ib, %bb.z ], [ %i.en, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 10 uses
  %i.fq = phi ptr [ %i.ic, %bb.z ], [ %i.ep, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 11 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv ; 7 uses
  %.not12.i.i.i.i = icmp eq i64 %i.fp, 0          ; 3 uses
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE11lower_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !338, !noalias !6843
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.ft = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.aa ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.aa ] ; 2 uses
  %i.fu = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !338, !noalias !6843
  %i.fx = icmp slt i32 %i.fw, %i.fs               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.neg.i.i.i.i = xor i64 %i.fu, -1
  %i.fz = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.ga = select i1 %i.fx, ptr %i.fy, ptr %i.ft   ; 2 uses
  %.1.i.i.i.i = select i1 %i.fx, i64 %i.fz, i64 %i.fu ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i97, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE11lower_boundERKi.exit.i.i, label %bb.aa, !llvm.loop !113

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE11lower_boundERKi.exit.i.i: ; preds = %bb.aa, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.gb = phi ptr [ %i.fq, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.ga, %bb.aa ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fp ; 6 uses
  %.not.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE11lower_boundERKi.exit.i.i
  %i.gd = load i32, ptr %i.fr, align 8, !tbaa !338, !noalias !6844 ; 5 uses
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !338, !noalias !6844
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit147, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.gg, 0
  br i1 %.not76, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.idx.i.i.i98 = shl nsw i64 %i.fp, 3
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.y, align 8, !tbaa !338
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.z, align 8, !tbaa !338
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 120
  store <4 x i32> <i32 15, i32 15, i32 16, i32 16>, ptr %i.aa, align 8, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 136
  store <4 x i32> <i32 17, i32 17, i32 18, i32 18>, ptr %i.ab, align 8, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 152
  store <4 x i32> <i32 19, i32 19, i32 20, i32 20>, ptr %i.ac, align 8, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 168
  store <4 x i32> <i32 21, i32 21, i32 22, i32 22>, ptr %i.ad, align 8, !tbaa !338
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 184
  store <4 x i32> <i32 23, i32 23, i32 24, i32 24>, ptr %i.ae, align 8, !tbaa !338
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 200
  store <4 x i32> <i32 25, i32 25, i32 26, i32 26>, ptr %i.af, align 8, !tbaa !338
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 216
  store <4 x i32> <i32 27, i32 27, i32 28, i32 28>, ptr %i.ag, align 8, !tbaa !338
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 232
  store <4 x i32> <i32 29, i32 29, i32 30, i32 30>, ptr %i.ah, align 8, !tbaa !338
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 248
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.ai, align 8, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.aj, align 8, !tbaa !338
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.ak, align 8, !tbaa !338
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.al, align 8, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.am, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.an, align 8, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.ao, align 8, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.ap, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.aq, align 8, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 392
  store i32 49, ptr %i.ar, align 8, !tbaa !362
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 396
  store i32 49, ptr %i.as, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %9, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.at, align 4, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.au, align 4, !tbaa !338
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.av, align 4, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.aw, align 4, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.ax, align 4, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ay, align 4, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.az, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.ba, align 4, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bb, align 4, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bc, align 4, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bd, align 4, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.be, align 4, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.bf, align 4, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bg, align 4, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bh, align 4, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bi, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bj, align 4, !tbaa !338
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bk, align 4, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bl, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.bm, align 4, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.bn, align 4, !tbaa !338
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.bo, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.bp, align 4, !tbaa !338
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.bq, align 4, !tbaa !338
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 388
  store i32 2, ptr %i.br, align 4, !tbaa !363
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 392
  store i32 49, ptr %i.bs, align 8, !tbaa !362
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 396
  store i32 1, ptr %i.bt, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.q
  %storemerge200 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.ec, %bb.q ] ; 2 uses
  %i.bu = and i32 %storemerge200, 1
  %.not = icmp eq i32 %i.bu, 0
  %i.bv = sext i32 %storemerge200 to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bv ; 7 uses
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !8897 ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.bx, 3
  %i.by = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i
  %.not12.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !338, !noalias !8898
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.ca = phi ptr [ %0, %.lr.ph.i.i.i.i.i ], [ %i.ch, %bb.f ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.cb = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !338, !noalias !8898
  %i.ce = icmp slt i32 %i.cd, %i.bz               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.cb, -1
  %i.cg = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.ch = select i1 %i.ce, ptr %i.cf, ptr %i.ca   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ce, i64 %i.cg, i64 %i.cb ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, label %bb.f, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ci = phi ptr [ %0, %bb.e ], [ %i.ch, %bb.f ] ; 8 uses
  %i.cj = icmp eq ptr %i.ci, %i.by
  br i1 %i.cj, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i
  %i.ck = load i32, ptr %i.bw, align 8, !tbaa !338, !noalias !8899
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !338, !noalias !8899
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %.critedge81.thread

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i
  %.not.i.i.i.i = icmp eq i64 %i.bx, 500
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g, !prof !344

bb.g:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx ; 5 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.cn, %i.ci
  br i1 %.not.i.i.i5.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = load <2 x i32>, ptr %i.bw, align 8, !tbaa !338, !noalias !8900
  store <2 x i32> %i.co, ptr %i.ci, align 4, !tbaa !338, !noalias !8900
  %i.cp = add i64 %i.bx, 1
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !444, !noalias !8900
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cq = ptrtoint ptr %i.ci to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cr, %i.cq
  %i.ct = ashr exact i64 %i.cs, 3                 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cn, i64 -8 ; 2 uses
  %i.cv = load <2 x i32>, ptr %i.cu, align 8, !tbaa !338, !noalias !8900
  store <2 x i32> %i.cv, ptr %i.cn, align 8, !tbaa !338, !noalias !8900
  %i.cw = add i64 %i.bx, 1
  store i64 %i.cw, ptr %i.b, align 8, !tbaa !444, !noalias !8900
  %i.cx = add nsw i64 %i.ct, -1                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.cy = sub nsw i64 1, %i.ct                    ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cy
  %i.db = shl i64 %i.cx, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 8 %i.da, i64 %i.db, i1 false), !noalias !8900
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.dc = load <2 x i32>, ptr %i.bw, align 8, !tbaa !338, !noalias !8900
  store <2 x i32> %i.dc, ptr %i.ci, align 4, !tbaa !338, !noalias !8900
  br label %bb.n

bb.k:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22, !noalias !8900
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !8901 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.de = load i32, ptr %i.bw, align 16, !tbaa !338, !noalias !8902
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %i.df = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.dm, %bb.m ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.m ] ; 2 uses
  %i.dg = lshr i64 %.013.i.i.i, 1                 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !338, !noalias !8902
  %i.dj = icmp slt i32 %i.de, %i.di               ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.neg.i.i.i = xor i64 %i.dg, -1
  %i.dl = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.dm = select i1 %i.dj, ptr %i.df, ptr %i.dk   ; 2 uses
  %.1.i.i.i = select i1 %i.dj, i64 %i.dg, i64 %i.dl ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE11upper_boundERKi.exit, label %bb.m, !llvm.loop !119

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE11upper_boundERKi.exit: ; preds = %bb.m, %bb.l
  %i.dn = phi ptr [ %0, %bb.l ], [ %i.dm, %bb.m ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8903
  store ptr %i.dn, ptr %7, align 8, !tbaa !370, !noalias !8903
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11try_emplaceIiJiEEES3_INS0_12vec_iteratorIPS4_Lb0EEEbENSD_ISE_Lb1EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.34") align 8 %6, ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.do), !noalias !8903
  %i.dp = load ptr, ptr %6, align 8, !tbaa !331, !noalias !8903
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8903
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %bb.h, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE11upper_boundERKi.exit
  %.sroa.0162.0 = phi ptr [ %i.dp, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE11upper_boundERKi.exit ], [ %i.ci, %bb.h ], [ %i.ci, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ] ; 3 uses
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !8904
  %i.dr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dq
  %i.ds = icmp eq ptr %i.dr, %.sroa.0162.0
  br i1 %i.ds, label %.critedge81.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = load i32, ptr %.sroa.0162.0, align 4, !tbaa !347 ; 2 uses
  %i.du = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !362
  %.not74 = icmp eq i32 %i.dt, %i.dx
  br i1 %.not74, label %bb.p, label %.critedge81.thread

bb.p:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0162.0, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !348
  %.not75 = icmp eq i32 %i.dz, %i.dt
  br i1 %.not75, label %bb.q, label %.critedge81.thread

bb.q:                                             ; preds = %bb.p
  %i.ea = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.du, ptr %i.ea, align 4, !tbaa !338
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 2 uses
  store i32 %i.ec, ptr %i.a, align 4, !tbaa !338
  %i.ed = icmp sgt i32 %i.eb, 48
  br i1 %i.ed, label %bb.r, label %bb.d, !llvm.loop !8863

.critedge81.thread:                               ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i, %bb.p, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !444 ; 4 uses
  %i.ef = load i64, ptr %i.k, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.ee, %i.ef
  br i1 %.not.i, label %bb.s, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144

bb.s:                                             ; preds = %bb.r
  %.idx.i = shl nsw i64 %i.ee, 3
  %i.eg = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.ee, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.eh = load ptr, ptr %i.i, align 8, !tbaa !315
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.eq, %bb.u ], [ %i.eh, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.ep, %bb.u ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !365
  %i.ek = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !347
  %.not10.i = icmp eq i32 %i.ek, %i.ej
  br i1 %.not10.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144

bb.t:                                             ; preds = %.lr.ph.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.em = load i32, ptr %i.el, align 4, !tbaa !366
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !348
  %.not11.i = icmp eq i32 %i.eo, %i.em
  br i1 %.not11.i, label %bb.u, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.eq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #27
  %.not19.i = icmp eq ptr %i.ep, %i.eg
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !122

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.u, %bb.s
  %i.er = load i64, ptr %i.c, align 8, !tbaa !444 ; 3 uses
  %i.es = load i64, ptr %i.s, align 8, !tbaa !317
  %.not.i86 = icmp eq i64 %i.er, %i.es
  br i1 %.not.i86, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144

bb.v:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %.idx.i88 = shl nsw i64 %i.er, 3
  %i.et = getelementptr inbounds i8, ptr %2, i64 %.idx.i88
  %.not1920.i89 = icmp eq i64 %i.er, 0
  br i1 %.not1920.i89, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i90

.lr.ph.preheader.i90:                             ; preds = %bb.v
  %i.eu = load ptr, ptr %i.q, align 8, !tbaa !315
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.x, %.lr.ph.preheader.i90
  %.sroa.0.022.i92 = phi ptr [ %i.fd, %bb.x ], [ %i.eu, %.lr.ph.preheader.i90 ] ; 3 uses
  %.sroa.015.021.i93 = phi ptr [ %i.fc, %bb.x ], [ %2, %.lr.ph.preheader.i90 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 32
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !365
  %i.ex = load i32, ptr %.sroa.015.021.i93, align 4, !tbaa !347
  %.not10.i94 = icmp eq i32 %i.ex, %i.ew
  br i1 %.not10.i94, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144

bb.w:                                             ; preds = %.lr.ph.i91
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i92, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !366
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !348
  %.not11.i95 = icmp eq i32 %i.fb, %i.ez
  br i1 %.not11.i95, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144

bb.x:                                             ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i93, i64 8 ; 2 uses
  %i.fd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i92) #27
  %.not19.i96 = icmp eq ptr %i.fc, %i.et
  br i1 %.not19.i96, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i91, !llvm.loop !123

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.x, %bb.v
  %i.fe = ptrtoint ptr %0 to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85, label %bb.z, !llvm.loop !8864

bb.z:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, %bb.y
  %i.ff = phi i64 [ %i.ee, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.hp, %bb.y ] ; 10 uses
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 5 uses
  %.not12.i.i.i.i = icmp eq i64 %i.ff, 0          ; 3 uses
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11lower_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !338, !noalias !8905
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.fi = phi ptr [ %0, %.lr.ph.i.i.i.i ], [ %i.fp, %bb.aa ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.ff, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.aa ] ; 2 uses
  %i.fj = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !338, !noalias !8905
  %i.fm = icmp slt i32 %i.fl, %i.fh               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.neg.i.i.i.i = xor i64 %i.fj, -1
  %i.fo = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.fp = select i1 %i.fm, ptr %i.fn, ptr %i.fi   ; 2 uses
  %.1.i.i.i.i = select i1 %i.fm, i64 %i.fo, i64 %i.fj ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i97, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11lower_boundERKi.exit.i.i, label %bb.aa, !llvm.loop !124

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11lower_boundERKi.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.fq = phi ptr [ %0, %bb.z ], [ %i.fp, %bb.aa ] ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ff ; 8 uses
  %.not.i.i = icmp eq ptr %i.fq, %i.fr
  br i1 %.not.i.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11lower_boundERKi.exit.i.i
  %i.fs = load i32, ptr %i.fg, align 8, !tbaa !338, !noalias !8906 ; 6 uses
  %i.ft = load i32, ptr %i.fq, align 4, !tbaa !338, !noalias !8906
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit144, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.fv, 0
  br i1 %.not76, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.idx.i.i.i98 = shl nsw i64 %i.ff, 3
  %i.fw = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i98 ; 2 uses
  br i1 %.not12.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i105, label %.lr.ph.i.i.i.i.i100

end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
  store ptr %i.t, ptr %i.u, align 8, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.t, ptr %i.v, align 8, !tbaa !316
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.w, align 8, !tbaa !317
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.y)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !327
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !315
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !316
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.af = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %24, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.af, align 8, !tbaa !338
  %i.ag = getelementptr inbounds nuw i8, ptr %24, i64 24
  store <4 x i32> <i32 3, i32 3, i32 4, i32 4>, ptr %i.ag, align 8, !tbaa !338
  %i.ah = getelementptr inbounds nuw i8, ptr %24, i64 40
  store <4 x i32> <i32 5, i32 5, i32 6, i32 6>, ptr %i.ah, align 8, !tbaa !338
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 56
  store <4 x i32> <i32 7, i32 7, i32 8, i32 8>, ptr %i.ai, align 8, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 72
  store <4 x i32> <i32 9, i32 9, i32 10, i32 10>, ptr %i.aj, align 8, !tbaa !338
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.ak, align 8, !tbaa !338
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.al, align 8, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %24, i64 120
  store <4 x i32> <i32 15, i32 15, i32 16, i32 16>, ptr %i.am, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %24, i64 136
  store <4 x i32> <i32 17, i32 17, i32 18, i32 18>, ptr %i.an, align 8, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %24, i64 152
  store <4 x i32> <i32 19, i32 19, i32 20, i32 20>, ptr %i.ao, align 8, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %24, i64 168
  store <4 x i32> <i32 21, i32 21, i32 22, i32 22>, ptr %i.ap, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %24, i64 184
  store <4 x i32> <i32 23, i32 23, i32 24, i32 24>, ptr %i.aq, align 8, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %24, i64 200
  store <4 x i32> <i32 25, i32 25, i32 26, i32 26>, ptr %i.ar, align 8, !tbaa !338
  %i.as = getelementptr inbounds nuw i8, ptr %24, i64 216
  store <4 x i32> <i32 27, i32 27, i32 28, i32 28>, ptr %i.as, align 8, !tbaa !338
  %i.at = getelementptr inbounds nuw i8, ptr %24, i64 232
  store <4 x i32> <i32 29, i32 29, i32 30, i32 30>, ptr %i.at, align 8, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %24, i64 248
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.au, align 8, !tbaa !338
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.av, align 8, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %24, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.aw, align 8, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %24, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.ax, align 8, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %24, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.ay, align 8, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %24, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.az, align 8, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %24, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.ba, align 8, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %24, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.bb, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.bc, align 8, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %24, i64 392
  store i32 49, ptr %i.bd, align 8, !tbaa !362
  %i.be = getelementptr inbounds nuw i8, ptr %24, i64 396
  store i32 49, ptr %i.be, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %25, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.bf, align 4, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %25, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.bg, align 4, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %25, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.bh, align 4, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %25, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.bi, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %25, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.bj, align 4, !tbaa !338
  %i.bk = getelementptr inbounds nuw i8, ptr %25, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.bk, align 4, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.bl, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %25, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.bm, align 4, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bn, align 4, !tbaa !338
  %i.bo = getelementptr inbounds nuw i8, ptr %25, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bo, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bp, align 4, !tbaa !338
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.bq, align 4, !tbaa !338
  %i.br = getelementptr inbounds nuw i8, ptr %25, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.br, align 4, !tbaa !338
  %i.bs = getelementptr inbounds nuw i8, ptr %25, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bs, align 4, !tbaa !338
  %i.bt = getelementptr inbounds nuw i8, ptr %25, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bt, align 4, !tbaa !338
  %i.bu = getelementptr inbounds nuw i8, ptr %25, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bu, align 4, !tbaa !338
  %i.bv = getelementptr inbounds nuw i8, ptr %25, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bv, align 4, !tbaa !338
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bw, align 4, !tbaa !338
  %i.bx = getelementptr inbounds nuw i8, ptr %25, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bx, align 4, !tbaa !338
  %i.by = getelementptr inbounds nuw i8, ptr %25, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.by, align 4, !tbaa !338
  %i.bz = getelementptr inbounds nuw i8, ptr %25, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.bz, align 4, !tbaa !338
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.ca, align 4, !tbaa !338
  %i.cb = getelementptr inbounds nuw i8, ptr %25, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.cb, align 4, !tbaa !338
  %i.cc = getelementptr inbounds nuw i8, ptr %25, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.cc, align 4, !tbaa !338
  %i.cd = getelementptr inbounds nuw i8, ptr %25, i64 388
  store i32 2, ptr %i.cd, align 4, !tbaa !363
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 392
  store i32 49, ptr %i.ce, align 8, !tbaa !362
  %i.cf = getelementptr inbounds nuw i8, ptr %25, i64 396
  store i32 1, ptr %i.cf, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
  %i.cg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.h

.critedge81.thread:                               ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !464 ; 2 uses
  %i.cl = add i64 %i.ck, -3
  %.not.i.i.i.i89 = icmp eq i64 %i.ck, 0          ; 2 uses
  %i.cm = select i1 %.not.i.i.i.i89, i64 0, i64 %i.cl
  %i.cn = load i64, ptr %i.w, align 8, !tbaa !317
  %.not.i = icmp ne i64 %i.cm, %i.cn              ; 2 uses
  %brmerge.i = or i1 %.not.i.i.i.i89, %.not.i
  br i1 %brmerge.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i

bb.h:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.z
  %storemerge212 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.fi, %bb.z ] ; 3 uses
  %i.co = and i32 %storemerge212, 1
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.cp = sext i32 %storemerge212 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %24, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE11try_emplaceIiJiEEES3_INS0_22stable_vector_iteratorIPS4_Lb0EEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.182") align 8 %26, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %i.cr)
  %i.cs = load i8, ptr %i.cg, align 8, !tbaa !487, !range !389, !noundef !345
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.j, label %.critedge81.thread182

bb.j:                                             ; preds = %bb.i
  %i.cu = load ptr, ptr %26, align 8, !tbaa !478
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.w

bb.k:                                             ; preds = %bb.h
  %i.cv = sext i32 %storemerge212 to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %24, i64 %i.cv ; 4 uses
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !464, !noalias !11213
  %.not.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = load ptr, ptr %i.ch, align 8, !tbaa !465, !noalias !11213
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !466, !noalias !11213
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i: ; preds = %bb.k, %bb.l
  %storemerge.i.i.i.i = phi ptr [ %i.cz, %bb.l ], [ %i.h, %bb.k ] ; 3 uses
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !468, !noalias !11214 ; 2 uses
  %i.db = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !468, !noalias !11214 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not12.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dd, %i.dc
  %i.df = ashr exact i64 %i.de, 3
  %i.dg = load i32, ptr %i.cw, align 16, !tbaa !338, !noalias !11214
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %i.dh = phi ptr [ %storemerge.i.i.i.i, %.lr.ph.i.i.i ], [ %i.dt, %bb.p ] ; 3 uses
  %.013.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.p ] ; 2 uses
  %i.di = lshr i64 %.013.i.i.i, 1                 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !468, !noalias !11214
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !466, !noalias !11214
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i.i = phi ptr [ %i.dh, %bb.m ], [ %i.dl, %bb.n ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !338, !noalias !11214
  %i.do = icmp slt i32 %i.dg, %i.dn
  br i1 %i.do, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i
  %i.dp = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !468, !noalias !11214
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !466, !noalias !11214
  %.neg.i.i.i = xor i64 %i.di, -1
  %i.ds = add i64 %.013.i.i.i, %.neg.i.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i
  %i.dt = phi ptr [ %i.dr, %bb.o ], [ %i.dh, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.ds, %bb.o ], [ %i.di, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11upper_boundERKi.exit, label %bb.m, !llvm.loop !133

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11upper_boundERKi.exit: ; preds = %bb.p, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i
  %i.du = phi ptr [ %storemerge.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i ], [ %i.dt, %bb.p ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !11215
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !11216
  store ptr null, ptr %15, align 8, !tbaa !459, !noalias !11216
  store ptr %i.du, ptr %16, align 8, !tbaa !459, !noalias !11216
  %i.dw = call noundef zeroext i1 @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE26priv_insert_unique_prepareIiEEbNS0_22stable_vector_iteratorIPS4_Lb1EEERKT_RNSB_18insert_commit_dataE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 4 dereferenceable(4) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %15), !noalias !11216
  br i1 %i.dw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11upper_boundERKi.exit
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !464, !noalias !11217
  %.not.i.i.i.i.i88 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i88, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11try_emplaceIJiEEENS0_22stable_vector_iteratorIPS6_Lb0EEENSA_ISB_Lb1EEEOiDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.ch, align 8, !tbaa !465, !noalias !11217 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !466, !noalias !11217
  %i.ea = load ptr, ptr %15, align 8, !tbaa !459, !noalias !11216
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !468, !noalias !11216
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !468, !noalias !11216
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.dy, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !466, !noalias !11218
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11try_emplaceIJiEEENS0_22stable_vector_iteratorIPS6_Lb0EEENSA_ISB_Lb1EEEOiDpOT_.exit

bb.s:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11upper_boundERKi.exit
  %i.ei = load ptr, ptr %15, align 8, !tbaa !459, !noalias !11216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !11216
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !11216
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !11216
  %i.ej = load i64, ptr %i.b, align 8, !tbaa !464, !noalias !11219
  %.not.i.i.i.i5.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i5.i.i, label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE6cbeginEv.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = load ptr, ptr %i.ch, align 8, !tbaa !465, !noalias !11219
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !466, !noalias !11219
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE6cbeginEv.exit.i.i.i

_ZNK5boost9container13stable_vectorISt4pairIiiEvE6cbeginEv.exit.i.i.i: ; preds = %bb.s, %bb.t
  %storemerge.i.i.i6.i.i = phi ptr [ %i.el, %bb.t ], [ %i.h, %bb.s ]
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !468, !noalias !11220 ; 2 uses
  %i.en = load ptr, ptr %storemerge.i.i.i6.i.i, align 8, !tbaa !468, !noalias !11220 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !11220
  store ptr %i.dv, ptr %11, align 8, !tbaa !476, !noalias !11220
  store ptr %i.cw, ptr %i.ci, align 8, !tbaa !476, !noalias !11220
  store ptr %17, ptr %i.cj, align 8, !tbaa !489, !noalias !11220
  store ptr %i.ei, ptr %12, align 8, !tbaa !459, !noalias !11220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !noalias !11220
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !11220
  call void @_ZN5boost9container13stable_vectorISt4pairIiiEvE6insertINS0_16emplace_iteratorIS3_NS0_15emplace_functorIJNS0_13try_emplace_tEiiEEEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSB_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSB_5bool_ILb0EEESN_E4typeENSD_ISE_Lb1EEESH_SH_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %12, i64 1, ptr nonnull %11, ptr noundef nonnull byval(%"class.boost::container::emplace_iterator.191") align 8 %13), !noalias !11220
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !11220
  %i.er = load i64, ptr %i.b, align 8, !tbaa !464, !noalias !11221
  %.not.i.i.i7.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i7.i.i, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE6cbeginEv.exit.i.i.i
  %i.es = load ptr, ptr %i.ch, align 8, !tbaa !465, !noalias !11221
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !466, !noalias !11221
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i.i.i

_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i.i.i: ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE6cbeginEv.exit.i.i.i, %bb.u
  %storemerge.i.i8.i.i = phi ptr [ %i.et, %bb.u ], [ %i.h, %_ZNK5boost9container13stable_vectorISt4pairIiiEvE6cbeginEv.exit.i.i.i ] ; 2 uses
  %.not.i.i5.i.i.i = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i5.i.i.i, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE7emplaceIJNS0_13try_emplace_tEiiEEENS0_22stable_vector_iteratorIPS3_Lb0EEENS7_IS8_Lb1EEEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i.i.i
  %i.eu = load ptr, ptr %storemerge.i.i8.i.i, align 8, !tbaa !468, !noalias !11222
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.eq
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !466, !noalias !11222
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE7emplaceIJNS0_13try_emplace_tEiiEEENS0_22stable_vector_iteratorIPS3_Lb0EEENS7_IS8_Lb1EEEDpOT_.exit.i.i

_ZN5boost9container13stable_vectorISt4pairIiiEvE7emplaceIJNS0_13try_emplace_tEiiEEENS0_22stable_vector_iteratorIPS3_Lb0EEENS7_IS8_Lb1EEEDpOT_.exit.i.i: ; preds = %bb.v, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i.i.i
  %.sroa.09.0.i.i = phi ptr [ %storemerge.i.i8.i.i, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i.i.i ], [ %i.ew, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !11220
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !11216
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !11216
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !11216
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11try_emplaceIJiEEENS0_22stable_vector_iteratorIPS6_Lb0EEENSA_ISB_Lb1EEEOiDpOT_.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11try_emplaceIJiEEENS0_22stable_vector_iteratorIPS6_Lb0EEENSA_ISB_Lb1EEEOiDpOT_.exit: ; preds = %bb.q, %bb.r, %_ZN5boost9container13stable_vectorISt4pairIiiEvE7emplaceIJNS0_13try_emplace_tEiiEEENS0_22stable_vector_iteratorIPS3_Lb0EEENS7_IS8_Lb1EEEDpOT_.exit.i.i
  %.sroa.03.0.i = phi ptr [ %.sroa.09.0.i.i, %_ZN5boost9container13stable_vectorISt4pairIiiEvE7emplaceIJNS0_13try_emplace_tEiiEEENS0_22stable_vector_iteratorIPS3_Lb0EEENS7_IS8_Lb1EEEDpOT_.exit.i.i ], [ %i.eh, %bb.r ], [ %i.h, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !11216
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !11215
  br label %bb.w

bb.w:                                             ; preds = %bb.j, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11try_emplaceIJiEEENS0_22stable_vector_iteratorIPS6_Lb0EEENSA_ISB_Lb1EEEOiDpOT_.exit
  %.sroa.0175.0 = phi ptr [ %.sroa.03.0.i, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE11try_emplaceIJiEEENS0_22stable_vector_iteratorIPS6_Lb0EEENSA_ISB_Lb1EEEOiDpOT_.exit ], [ %i.cu, %bb.j ] ; 3 uses
  %i.ex = icmp eq ptr %i.h, %.sroa.0175.0
  br i1 %i.ex, label %.critedge81, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !347 ; 2 uses
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %25, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !362
  %.not74 = icmp eq i32 %i.ez, %i.fd
  br i1 %.not74, label %bb.y, label %.critedge81

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !348
  %.not75 = icmp eq i32 %i.ff, %i.ez
  br i1 %.not75, label %bb.z, label %.critedge81

bb.z:                                             ; preds = %bb.y
  %i.fg = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.fa, ptr %i.fg, align 4, !tbaa !338
  %i.fh = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.fi = add nsw i32 %i.fh, 1                    ; 2 uses
  store i32 %i.fi, ptr %i.a, align 4, !tbaa !338
  %i.fj = icmp sgt i32 %i.fh, 48
  br i1 %i.fj, label %.critedge81.thread, label %bb.h, !llvm.loop !11125

.critedge81.thread182:                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread186

.critedge81:                                      ; preds = %bb.y, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread186

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i: ; preds = %.critedge81.thread
  %i.fk = load ptr, ptr %i.ch, align 8, !tbaa !465, !noalias !11223
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !466, !noalias !11223 ; 2 uses
  %.not1920.i = icmp eq ptr %i.fl, %i.h
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i
  %i.fm = load ptr, ptr %i.u, align 8, !tbaa !315
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.fy, %bb.ab ], [ %i.fm, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.fx, %bb.ab ], [ %i.fl, %.lr.ph.preheader.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !365
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !347
  %.not10.i = icmp eq i32 %i.fq, %i.fo
  br i1 %.not10.i, label %bb.aa, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread186

bb.aa:                                            ; preds = %.lr.ph.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !366
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !348
  %.not11.i = icmp eq i32 %i.fu, %i.fs
  br i1 %.not11.i, label %bb.ab, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread186

bb.ab:                                            ; preds = %bb.aa
  %i.fv = load ptr, ptr %.sroa.015.021.i, align 8, !tbaa !468
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !466 ; 2 uses
  %i.fy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #27
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ao)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !327
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !315
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !316
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.au, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %14, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.av, align 8, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 24
  store <4 x i32> <i32 3, i32 3, i32 4, i32 4>, ptr %i.aw, align 8, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 40
  store <4 x i32> <i32 5, i32 5, i32 6, i32 6>, ptr %i.ax, align 8, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 56
  store <4 x i32> <i32 7, i32 7, i32 8, i32 8>, ptr %i.ay, align 8, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 72
  store <4 x i32> <i32 9, i32 9, i32 10, i32 10>, ptr %i.az, align 8, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.ba, align 8, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.bb, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 120
  store <4 x i32> <i32 15, i32 15, i32 16, i32 16>, ptr %i.bc, align 8, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 136
  store <4 x i32> <i32 17, i32 17, i32 18, i32 18>, ptr %i.bd, align 8, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 152
  store <4 x i32> <i32 19, i32 19, i32 20, i32 20>, ptr %i.be, align 8, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 168
  store <4 x i32> <i32 21, i32 21, i32 22, i32 22>, ptr %i.bf, align 8, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 184
  store <4 x i32> <i32 23, i32 23, i32 24, i32 24>, ptr %i.bg, align 8, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 200
  store <4 x i32> <i32 25, i32 25, i32 26, i32 26>, ptr %i.bh, align 8, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 216
  store <4 x i32> <i32 27, i32 27, i32 28, i32 28>, ptr %i.bi, align 8, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 232
  store <4 x i32> <i32 29, i32 29, i32 30, i32 30>, ptr %i.bj, align 8, !tbaa !338
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 248
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.bk, align 8, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.bl, align 8, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.bm, align 8, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.bn, align 8, !tbaa !338
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.bo, align 8, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.bp, align 8, !tbaa !338
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.bq, align 8, !tbaa !338
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.br, align 8, !tbaa !338
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.bs, align 8, !tbaa !338
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 392
  store i32 49, ptr %i.bt, align 8, !tbaa !362
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 396
  store i32 49, ptr %i.bu, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %15, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.bv, align 4, !tbaa !338
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.bw, align 4, !tbaa !338
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.bx, align 4, !tbaa !338
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.by, align 4, !tbaa !338
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.bz, align 4, !tbaa !338
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.ca, align 4, !tbaa !338
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.cb, align 4, !tbaa !338
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.cc, align 4, !tbaa !338
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.cd, align 4, !tbaa !338
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.ce, align 4, !tbaa !338
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.cf, align 4, !tbaa !338
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.cg, align 4, !tbaa !338
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.ch, align 4, !tbaa !338
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.ci, align 4, !tbaa !338
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.cj, align 4, !tbaa !338
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.ck, align 4, !tbaa !338
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.cl, align 4, !tbaa !338
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.cm, align 4, !tbaa !338
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.cn, align 4, !tbaa !338
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.co, align 4, !tbaa !338
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.cp, align 4, !tbaa !338
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.cq, align 4, !tbaa !338
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.cr, align 4, !tbaa !338
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.cs, align 4, !tbaa !338
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 388
  store i32 2, ptr %i.ct, align 4, !tbaa !363
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 392
  store i32 49, ptr %i.cu, align 8, !tbaa !362
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 396
  store i32 1, ptr %i.cv, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.h

.critedge81.thread:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !521 ; 3 uses
  %i.da = load i64, ptr %i.d, align 8, !tbaa !520 ; 3 uses
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = load i64, ptr %i.am, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.db, %i.dc
  br i1 %.not.i, label %bb.z, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.h:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.y
  %storemerge272 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.hk, %bb.y ] ; 3 uses
  %i.dd = and i32 %storemerge272, 1
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.de = sext i32 %storemerge272 to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %14, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE11try_emplaceIiJiEEES3_INS0_14deque_iteratorIPS4_Lb0ELj0ELj0EmEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.218") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.df, ptr noundef nonnull align 4 dereferenceable(4) %i.dg)
  %i.dh = load i8, ptr %i.cw, align 8, !tbaa !536, !range !389, !noundef !345
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.j, label %.critedge81.thread249

bb.j:                                             ; preds = %bb.i
  %i.dj = load ptr, ptr %16, align 8, !tbaa !525
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.v

bb.k:                                             ; preds = %bb.h
  %i.dk = sext i32 %storemerge272 to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %14, i64 %i.dk ; 4 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !519, !noalias !20353 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i: ; preds = %bb.k
  %i.dn = load i64, ptr %i.d, align 8, !tbaa !520, !noalias !20354 ; 2 uses
  %i.do = lshr i64 %i.dn, 4
  %.idx15.i.i = and i64 %i.do, 1152921504606846968 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx15.i.i ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !331, !noalias !20353 ; 2 uses
  %i.dr = and i64 %i.dn, 127                      ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr ; 4 uses
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !521, !noalias !20355 ; 2 uses
  %i.du = lshr i64 %i.dt, 4
  %.idx.i.i = and i64 %i.du, 1152921504606846968  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !331, !noalias !20356
  %i.dx = and i64 %i.dt, 127                      ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = icmp eq ptr %i.dy, %i.ds
  br i1 %i.dz, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i
  %gepdiff.i.i = sub nsw i64 %.idx.i.i, %.idx15.i.i
  %i.ea = shl nsw i64 %gepdiff.i.i, 4
  %i.eb = sub nsw i64 %i.dx, %i.dr
  %i.ec = add i64 %i.ea, %i.eb                    ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not15.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i96

.lr.ph.i.i.i96:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i
  %i.ed = load i32, ptr %i.dl, align 16, !tbaa !338, !noalias !20357
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %.lr.ph.i.i.i96
  %i.ee = phi ptr [ %i.dq, %.lr.ph.i.i.i96 ], [ %i.ff, %bb.r ] ; 2 uses
  %.sroa.11.221.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i96 ], [ %.sroa.11.220.i.i.i, %bb.r ] ; 4 uses
  %.sroa.0.118.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i96 ], [ %.sroa.0.117.i.i.i, %bb.r ] ; 4 uses
  %.016.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i96 ], [ %.1.i.i.i, %bb.r ] ; 2 uses
  %i.ef = lshr i64 %.016.i.i.i, 1                 ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eg = ptrtoint ptr %.sroa.0.118.i.i.i to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3
  %i.ek = add nsw i64 %i.ej, %i.ef                ; 4 uses
  %or.cond.i.i.i.i = icmp ult i64 %i.ek, 128
  br i1 %or.cond.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.118.i.i.i, i64 %i.ef
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.em = icmp sgt i64 %i.ek, 0
  %i.en = lshr i64 %i.ek, 7                       ; 2 uses
  %i.eo = or disjoint i64 %i.en, -144115188075855872
  %i.ep = select i1 %i.em, i64 %i.en, i64 %i.eo   ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %.sroa.11.221.i.i.i, i64 %i.ep ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !331, !noalias !20357
  %i.es = shl nsw i64 %i.ep, 7
  %i.et = sub nsw i64 %i.ek, %i.es
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.et
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.118.i.i.i, %bb.l ], [ %i.eu, %bb.o ], [ %i.el, %bb.n ] ; 2 uses
  %.sroa.11.1.i.i.i = phi ptr [ %.sroa.11.221.i.i.i, %bb.l ], [ %i.eq, %bb.o ], [ %.sroa.11.221.i.i.i, %bb.n ] ; 3 uses
  %i.ev = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !338, !noalias !20357
  %i.ew = icmp slt i32 %i.ed, %i.ev
  br i1 %i.ew, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %.sroa.11.1.i.i.i, align 8, !tbaa !331, !noalias !20357 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1024
  %i.fa = icmp eq ptr %i.ex, %i.ez
  br i1 %i.fa, label %bb.q, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i, !prof !344

bb.q:                                             ; preds = %bb.p
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !331, !noalias !20357 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.fd = phi ptr [ %i.fc, %bb.q ], [ %i.ey, %bb.p ]
  %.sroa.0.1.i.i.i = phi ptr [ %i.fc, %bb.q ], [ %i.ex, %bb.p ]
  %.sroa.11.2.i.i.i = phi ptr [ %i.fb, %bb.q ], [ %.sroa.11.1.i.i.i, %bb.p ]
  %.neg.i.i.i = xor i64 %i.ef, -1
  %i.fe = add i64 %.016.i.i.i, %.neg.i.i.i
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i
  %i.ff = phi ptr [ %i.fd, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %i.ee, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i ]
  %.sroa.11.220.i.i.i = phi ptr [ %.sroa.11.2.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %.sroa.11.221.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i ] ; 2 uses
  %.sroa.0.117.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %.sroa.0.118.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.fe, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %i.ef, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i ] ; 2 uses
  %.not.i.i.i97 = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i97, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit, label %bb.l, !llvm.loop !210

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit: ; preds = %bb.r, %bb.k, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i
  %i.fg = phi ptr [ null, %bb.k ], [ %i.dp, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i ], [ %i.dp, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i ], [ %.sroa.11.220.i.i.i, %bb.r ]
  %i.fh = phi ptr [ null, %bb.k ], [ %i.ds, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i ], [ %i.ds, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i ], [ %.sroa.0.117.i.i.i, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !20358
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !20358
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !20359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !20359
  store ptr %i.fh, ptr %10, align 8, !tbaa !532, !noalias !20359
  store ptr %i.fg, ptr %i.cx, align 8, !tbaa !533, !noalias !20359
  %i.fi = call noundef zeroext i1 @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE26priv_insert_unique_prepareIiEEbNS0_14deque_iteratorIPS4_Lb1ELj0ELj0EmEERKT_RNSB_18insert_commit_dataE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 4 dereferenceable(4) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %9), !noalias !20359
  br i1 %i.fi, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit
  %i.fj = load ptr, ptr %0, align 8, !tbaa !519, !noalias !20360 ; 3 uses
  %.not.i.i.i.i.i.i98 = icmp eq ptr %i.fj, null   ; 2 uses
  br i1 %.not.i.i.i.i.i.i98, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.s
  %i.fk = load i64, ptr %i.d, align 8, !tbaa !520, !noalias !20361 ; 2 uses
  %i.fl = lshr i64 %i.fk, 7
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fl ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !331, !noalias !20360
  %i.fo = and i64 %i.fk, 127
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  br label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i: ; preds = %.split.i.i.i.i.i.i, %bb.s
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.fm, %.split.i.i.i.i.i.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fp, %.split.i.i.i.i.i.i ], [ null, %bb.s ] ; 2 uses
  %i.fq = load ptr, ptr %9, align 16, !tbaa !532, !noalias !20359 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %.sroa.0.0.i.i.i.i
  br i1 %i.fr, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i
  %i.fs = load ptr, ptr %i.cy, align 8, !tbaa !533, !noalias !20359 ; 2 uses
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %.sroa.5.0.i.i.i.i to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = shl nsw i64 %i.fv, 4
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !331, !noalias !20359
  %i.fy = ptrtoint ptr %i.fq to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3
  %i.gc = add nsw i64 %i.gb, %i.fw
  %i.gd = load ptr, ptr %.sroa.5.0.i.i.i.i, align 8, !tbaa !331, !noalias !20359
  %i.ge = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3
  %i.gi = sub i64 %i.gc, %i.gh
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i: ; preds = %bb.t, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i
  %.0.i.i.i99 = phi i64 [ %i.gi, %bb.t ], [ 0, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i ]
  br i1 %.not.i.i.i.i.i.i98, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i
  %i.gj = load i64, ptr %i.d, align 8, !tbaa !520, !noalias !20362
  %i.gk = add i64 %i.gj, %.0.i.i.i99              ; 2 uses
  %i.gl = lshr i64 %i.gk, 7
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !331, !noalias !20363
  %i.go = and i64 %i.gk, 127
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.go
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit

bb.u:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !20359
  %i.gr = load <2 x ptr>, ptr %9, align 16, !tbaa !534, !noalias !20359
  store <2 x ptr> %i.gr, ptr %12, align 16, !tbaa !534, !noalias !20359
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !20359
  call void @_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE7emplaceIJNS0_13try_emplace_tEiiEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS7_IS8_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.gq), !noalias !20359
  %i.gs = load ptr, ptr %11, align 8, !tbaa !525, !noalias !20359
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !20359
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !20359
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i, %.split.i.i.i.i.i.i.i, %bb.u
  %.sroa.03.0.i = phi ptr [ %i.gs, %bb.u ], [ %i.gp, %.split.i.i.i.i.i.i.i ], [ null, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !20359
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !20358
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !20358
  br label %bb.v

bb.v:                                             ; preds = %bb.j, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit
  %.sroa.0241.0 = phi ptr [ %.sroa.03.0.i, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit ], [ %i.dj, %bb.j ] ; 3 uses
  %i.gt = load ptr, ptr %0, align 8, !tbaa !519, !noalias !20364 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i100, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.v
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !521, !noalias !20365 ; 2 uses
  %i.gv = lshr i64 %i.gu, 7
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !331, !noalias !20364
  %i.gy = and i64 %i.gu, 127
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gy
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit: ; preds = %bb.v, %.split.i.i.i.i
  %.sink1.i.i.i = phi ptr [ %i.gz, %.split.i.i.i.i ], [ null, %bb.v ]
  %i.ha = icmp eq ptr %.sink1.i.i.i, %.sroa.0241.0
  br i1 %i.ha, label %.critedge81, label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit
  %i.hb = load i32, ptr %.sroa.0241.0, align 4, !tbaa !347 ; 2 uses
  %i.hc = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %15, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !362
  %.not74 = icmp eq i32 %i.hb, %i.hf
  br i1 %.not74, label %bb.x, label %.critedge81

bb.x:                                             ; preds = %bb.w
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0241.0, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !348
  %.not75 = icmp eq i32 %i.hh, %i.hb
  br i1 %.not75, label %bb.y, label %.critedge81

bb.y:                                             ; preds = %bb.x
  %i.hi = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.hc, ptr %i.hi, align 4, !tbaa !338
  %i.hj = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.hk = add nsw i32 %i.hj, 1                    ; 2 uses
  store i32 %i.hk, ptr %i.a, align 4, !tbaa !338
  %i.hl = icmp sgt i32 %i.hj, 48
  br i1 %i.hl, label %.critedge81.thread, label %bb.h, !llvm.loop !20187
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !365
  %i.jg = load i32, ptr %.sroa.019.030.i108, align 4, !tbaa !347
  %.not10.i110 = icmp eq i32 %i.jg, %i.jf
  br i1 %.not10.i110, label %bb.ae, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.ae:                                            ; preds = %.lr.ph.i106
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i107, i64 36
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !366
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.019.030.i108, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !348
  %.not11.i111 = icmp eq i32 %i.jk, %i.ji
  br i1 %.not11.i111, label %bb.af, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.019.030.i108, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 1024
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %bb.ag, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit.i112, !prof !344

bb.ag:                                            ; preds = %bb.af
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.9.029.i109, i64 8 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !331 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit.i112

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit.i112: ; preds = %bb.ag, %bb.af
  %i.jq = phi ptr [ %i.jp, %bb.ag ], [ %i.jd, %bb.af ]
  %.sroa.9.1.i113 = phi ptr [ %i.jo, %bb.ag ], [ %.sroa.9.029.i109, %bb.af ]
  %.sroa.019.1.i114 = phi ptr [ %i.jp, %bb.ag ], [ %i.jl, %bb.af ] ; 2 uses
  %i.jr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.031.i107) #27
  %.not27.i115 = icmp eq ptr %.sroa.019.1.i114, %i.jb
  br i1 %.not27.i115, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i106, !llvm.loop !208

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit.i112, %bb.ad, %_ZNK5boost9container13flat_multimapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit.i
  %i.js = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge85.thread, label %bb.ai, !llvm.loop !20236

bb.ai:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, %bb.ah
  %i.jv = phi ptr [ %i.hm, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.ow, %bb.ah ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %indvars.iv.next, %bb.ah ] ; 4 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv ; 8 uses
  %.not.i.i.i.i.i.i196 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i196, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i197

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i197: ; preds = %bb.ai
  %i.jx = load i64, ptr %i.d, align 8, !tbaa !520, !noalias !20370 ; 2 uses
  %i.jy = lshr i64 %i.jx, 4
  %.idx15.i.i198 = and i64 %i.jy, 1152921504606846968 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.idx15.i.i198 ; 5 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !331, !noalias !20371 ; 3 uses
  %i.kb = and i64 %i.jx, 127                      ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.kb ; 7 uses
  %i.kd = load i64, ptr %i.b, align 8, !tbaa !521, !noalias !20372 ; 3 uses
  %i.ke = lshr i64 %i.kd, 4
  %.idx.i.i199 = and i64 %i.ke, 1152921504606846968 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.idx.i.i199
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !331, !noalias !20373
  %i.kh = and i64 %i.kd, 127                      ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kh
  %i.kj = icmp eq ptr %i.ki, %i.kc                ; 2 uses
  br i1 %i.kj, label %.split.i.i.i.i216, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i200

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i200: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i197
  %gepdiff.i.i201 = sub nsw i64 %.idx.i.i199, %.idx15.i.i198
  %i.kk = shl nsw i64 %gepdiff.i.i201, 4
  %i.kl = sub nsw i64 %i.kh, %i.kb
  %i.km = add i64 %i.kk, %i.kl                    ; 2 uses
  %.not15.i.i.i202 = icmp eq i64 %i.km, 0
  br i1 %.not15.i.i.i202, label %.split.i.i.i.i216, label %.lr.ph.i.i.i203

.lr.ph.i.i.i203:                                  ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i200
  %i.kn = load i32, ptr %i.jw, align 8, !tbaa !338, !noalias !20374
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ap, %.lr.ph.i.i.i203
  %i.ko = phi ptr [ %i.ka, %.lr.ph.i.i.i203 ], [ %i.lp, %bb.ap ] ; 2 uses
  %.sroa.11.221.i.i.i204 = phi ptr [ %i.jz, %.lr.ph.i.i.i203 ], [ %.sroa.11.220.i.i.i212, %bb.ap ] ; 4 uses
  %.sroa.0.118.i.i.i205 = phi ptr [ %i.kc, %.lr.ph.i.i.i203 ], [ %.sroa.0.117.i.i.i213, %bb.ap ] ; 4 uses
  %.016.i.i.i206 = phi i64 [ %i.km, %.lr.ph.i.i.i203 ], [ %.1.i.i.i214, %bb.ap ] ; 2 uses
  %i.kp = lshr i64 %.016.i.i.i206, 1              ; 5 uses
  %.not.i.i.i.i207 = icmp eq i64 %i.kp, 0
  br i1 %.not.i.i.i.i207, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kq = ptrtoint ptr %.sroa.0.118.i.i.i205 to i64
  %i.kr = ptrtoint ptr %i.ko to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 3
  %i.ku = add nsw i64 %i.kt, %i.kp                ; 4 uses
  %or.cond.i.i.i.i208 = icmp ult i64 %i.ku, 128
  br i1 %or.cond.i.i.i.i208, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.118.i.i.i205, i64 %i.kp
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209

bb.am:                                            ; preds = %bb.ak
  %i.kw = icmp sgt i64 %i.ku, 0
  %i.kx = lshr i64 %i.ku, 7                       ; 2 uses
  %i.ky = or disjoint i64 %i.kx, -144115188075855872
  %i.kz = select i1 %i.kw, i64 %i.kx, i64 %i.ky   ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %.sroa.11.221.i.i.i204, i64 %i.kz ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !331, !noalias !20374
  %i.lc = shl nsw i64 %i.kz, 7
  %i.ld = sub nsw i64 %i.ku, %i.lc
  %i.le = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.ld
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209: ; preds = %bb.am, %bb.al, %bb.aj
  %.sroa.0.0.i.i.i210 = phi ptr [ %.sroa.0.118.i.i.i205, %bb.aj ], [ %i.le, %bb.am ], [ %i.kv, %bb.al ] ; 2 uses
  %.sroa.11.1.i.i.i211 = phi ptr [ %.sroa.11.221.i.i.i204, %bb.aj ], [ %i.la, %bb.am ], [ %.sroa.11.221.i.i.i204, %bb.al ] ; 3 uses
  %i.lf = load i32, ptr %.sroa.0.0.i.i.i210, align 4, !tbaa !338, !noalias !20374
  %i.lg = icmp slt i32 %i.lf, %i.kn
  br i1 %i.lg, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i210, i64 8 ; 2 uses
  %i.li = load ptr, ptr %.sroa.11.1.i.i.i211, align 8, !tbaa !331, !noalias !20374 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 1024
  %i.lk = icmp eq ptr %i.lh, %i.lj
  br i1 %i.lk, label %bb.ao, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218, !prof !344

bb.ao:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i211, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !331, !noalias !20374 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218: ; preds = %bb.ao, %bb.an
  %i.ln = phi ptr [ %i.lm, %bb.ao ], [ %i.li, %bb.an ]
  %.sroa.0.1.i.i.i219 = phi ptr [ %i.lm, %bb.ao ], [ %i.lh, %bb.an ]
  %.sroa.11.2.i.i.i220 = phi ptr [ %i.ll, %bb.ao ], [ %.sroa.11.1.i.i.i211, %bb.an ]
  %.neg.i.i.i221 = xor i64 %i.kp, -1
  %i.lo = add i64 %.016.i.i.i206, %.neg.i.i.i221
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209
  %i.lp = phi ptr [ %i.ln, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218 ], [ %i.ko, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209 ]
  %.sroa.11.220.i.i.i212 = phi ptr [ %.sroa.11.2.i.i.i220, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218 ], [ %.sroa.11.221.i.i.i204, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209 ]
  %.sroa.0.117.i.i.i213 = phi ptr [ %.sroa.0.1.i.i.i219, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218 ], [ %.sroa.0.118.i.i.i205, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209 ] ; 2 uses
  %.1.i.i.i214 = phi i64 [ %i.lo, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i218 ], [ %i.kp, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i209 ] ; 2 uses
  %.not.i.i.i215 = icmp eq i64 %.1.i.i.i214, 0
  br i1 %.not.i.i.i215, label %.split.i.i.i.i216, label %bb.aj, !llvm.loop !209

.split.i.i.i.i216:                                ; preds = %bb.ap, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i200, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i197
  %.sroa.0.117.i.i.lcssa.sink.i = phi ptr [ %i.kc, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i200 ], [ %i.kc, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i197 ], [ %.sroa.0.117.i.i.i213, %bb.ap ] ; 4 uses
  %i.lq = lshr i64 %i.kd, 7
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.lq
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !331, !noalias !20375
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.kh ; 3 uses
  %.not.i217 = icmp eq ptr %.sroa.0.117.i.i.lcssa.sink.i, %i.lt
  br i1 %.not.i217, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit120, label %bb.aq

bb.aq:                                            ; preds = %.split.i.i.i.i216
  %i.lu = load i32, ptr %i.jw, align 8, !tbaa !338, !noalias !20376
  %i.lv = load i32, ptr %.sroa.0.117.i.i.lcssa.sink.i, align 4, !tbaa !338, !noalias !20376
  %i.lw = icmp slt i32 %i.lu, %i.lv
  %spec.select = select i1 %i.lw, ptr %i.lt, ptr %.sroa.0.117.i.i.lcssa.sink.i
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit120

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit120: ; preds = %bb.aq, %.split.i.i.i.i216
  %.sroa.0228.0.ph = phi ptr [ %spec.select, %bb.aq ], [ %.sroa.0.117.i.i.lcssa.sink.i, %.split.i.i.i.i216 ] ; 2 uses
  %i.lx = icmp eq ptr %.sroa.0228.0.ph, %i.lt
  br i1 %i.lx, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit120
  %i.ly = and i64 %indvars.iv, 1
  %.not76 = icmp eq i64 %i.ly, 0
  br i1 %.not76, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i122, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  call void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE11try_emplaceIiJiEEES3_INS0_14deque_iteratorIPS4_Lb0ELj0ELj0EmEEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.218") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.jw, ptr noundef nonnull align 4 dereferenceable(4) %i.lz)
  %i.ma = load i8, ptr %i.js, align 8, !tbaa !536, !range !389, !noundef !345
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %.critedge83, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mc = load ptr, ptr %17, align 8, !tbaa !525
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.be

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i122: ; preds = %bb.ar
  br i1 %i.kj, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit145, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i125

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i125: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i122
  %gepdiff.i.i126 = sub nsw i64 %.idx.i.i199, %.idx15.i.i198
  %i.md = shl nsw i64 %gepdiff.i.i126, 4
  %i.me = sub nsw i64 %i.kh, %i.kb
  %i.mf = add i64 %i.md, %i.me                    ; 2 uses
  %.not15.i.i.i127 = icmp eq i64 %i.mf, 0
  br i1 %.not15.i.i.i127, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit145, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i125
  %i.mg = load i32, ptr %i.jw, align 16, !tbaa !338, !noalias !20377
  br label %bb.au

bb.au:                                            ; preds = %bb.ba, %.lr.ph.i.i.i128
  %i.mh = phi ptr [ %i.ka, %.lr.ph.i.i.i128 ], [ %i.ni, %bb.ba ] ; 2 uses
  %.sroa.11.221.i.i.i129 = phi ptr [ %i.jz, %.lr.ph.i.i.i128 ], [ %.sroa.11.220.i.i.i141, %bb.ba ] ; 4 uses
  %.sroa.0.118.i.i.i130 = phi ptr [ %i.kc, %.lr.ph.i.i.i128 ], [ %.sroa.0.117.i.i.i142, %bb.ba ] ; 4 uses
  %.016.i.i.i131 = phi i64 [ %i.mf, %.lr.ph.i.i.i128 ], [ %.1.i.i.i143, %bb.ba ] ; 2 uses
  %i.mi = lshr i64 %.016.i.i.i131, 1              ; 5 uses
  %.not.i.i.i.i132 = icmp eq i64 %i.mi, 0
  br i1 %.not.i.i.i.i132, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mj = ptrtoint ptr %.sroa.0.118.i.i.i130 to i64
  %i.mk = ptrtoint ptr %i.mh to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = ashr exact i64 %i.ml, 3
  %i.mn = add nsw i64 %i.mm, %i.mi                ; 4 uses
  %or.cond.i.i.i.i133 = icmp ult i64 %i.mn, 128
  br i1 %or.cond.i.i.i.i133, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.118.i.i.i130, i64 %i.mi
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134

bb.ax:                                            ; preds = %bb.av
  %i.mp = icmp sgt i64 %i.mn, 0
  %i.mq = lshr i64 %i.mn, 7                       ; 2 uses
  %i.mr = or disjoint i64 %i.mq, -144115188075855872
  %i.ms = select i1 %i.mp, i64 %i.mq, i64 %i.mr   ; 2 uses
  %i.mt = getelementptr inbounds [8 x i8], ptr %.sroa.11.221.i.i.i129, i64 %i.ms ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !331, !noalias !20377
  %i.mv = shl nsw i64 %i.ms, 7
  %i.mw = sub nsw i64 %i.mn, %i.mv
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mu, i64 %i.mw
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134: ; preds = %bb.ax, %bb.aw, %bb.au
  %.sroa.0.0.i.i.i135 = phi ptr [ %.sroa.0.118.i.i.i130, %bb.au ], [ %i.mx, %bb.ax ], [ %i.mo, %bb.aw ] ; 2 uses
  %.sroa.11.1.i.i.i136 = phi ptr [ %.sroa.11.221.i.i.i129, %bb.au ], [ %i.mt, %bb.ax ], [ %.sroa.11.221.i.i.i129, %bb.aw ] ; 3 uses
  %i.my = load i32, ptr %.sroa.0.0.i.i.i135, align 4, !tbaa !338, !noalias !20377
  %i.mz = icmp slt i32 %i.mg, %i.my
  br i1 %i.mz, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i135, i64 8 ; 2 uses
  %i.nb = load ptr, ptr %.sroa.11.1.i.i.i136, align 8, !tbaa !331, !noalias !20377 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 1024
  %i.nd = icmp eq ptr %i.na, %i.nc
  br i1 %i.nd, label %bb.az, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137, !prof !344

bb.az:                                            ; preds = %bb.ay
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i136, i64 8 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !331, !noalias !20377 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137: ; preds = %bb.az, %bb.ay
  %i.ng = phi ptr [ %i.nf, %bb.az ], [ %i.nb, %bb.ay ]
  %.sroa.0.1.i.i.i138 = phi ptr [ %i.nf, %bb.az ], [ %i.na, %bb.ay ]
  %.sroa.11.2.i.i.i139 = phi ptr [ %i.ne, %bb.az ], [ %.sroa.11.1.i.i.i136, %bb.ay ]
  %.neg.i.i.i140 = xor i64 %i.mi, -1
  %i.nh = add i64 %.016.i.i.i131, %.neg.i.i.i140
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134
  %i.ni = phi ptr [ %i.ng, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137 ], [ %i.mh, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134 ]
  %.sroa.11.220.i.i.i141 = phi ptr [ %.sroa.11.2.i.i.i139, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137 ], [ %.sroa.11.221.i.i.i129, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134 ] ; 2 uses
  %.sroa.0.117.i.i.i142 = phi ptr [ %.sroa.0.1.i.i.i138, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137 ], [ %.sroa.0.118.i.i.i130, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134 ] ; 2 uses
  %.1.i.i.i143 = phi i64 [ %i.nh, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i137 ], [ %i.mi, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i.i.i134 ] ; 2 uses
  %.not.i.i.i144 = icmp eq i64 %.1.i.i.i143, 0
  br i1 %.not.i.i.i144, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit145, label %bb.au, !llvm.loop !210

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit145: ; preds = %bb.ba, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i122, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i125
  %i.nj = phi ptr [ %i.jz, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i125 ], [ %i.jz, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i122 ], [ %.sroa.11.220.i.i.i141, %bb.ba ]
  %i.nk = phi ptr [ %i.kc, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i125 ], [ %i.kc, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE3endEv.exit.i.i122 ], [ %.sroa.0.117.i.i.i142, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !20378
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !20378
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !20379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !20379
  store ptr %i.nk, ptr %5, align 8, !tbaa !532, !noalias !20379
  store ptr %i.nj, ptr %i.jt, align 8, !tbaa !533, !noalias !20379
  %i.nl = call noundef zeroext i1 @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE26priv_insert_unique_prepareIiEEbNS0_14deque_iteratorIPS4_Lb1ELj0ELj0EmEERKT_RNSB_18insert_commit_dataE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 4 dereferenceable(4) %i.jw, ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !20379
  br i1 %i.nl, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit145
  %i.nm = load ptr, ptr %0, align 8, !tbaa !519, !noalias !20380 ; 3 uses
  %.not.i.i.i.i.i.i146 = icmp eq ptr %i.nm, null  ; 2 uses
  br i1 %.not.i.i.i.i.i.i146, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i148, label %.split.i.i.i.i.i.i147

.split.i.i.i.i.i.i147:                            ; preds = %bb.bb
  %i.nn = load i64, ptr %i.d, align 8, !tbaa !520, !noalias !20381 ; 2 uses
  %i.no = lshr i64 %i.nn, 7
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.no ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !331, !noalias !20380
  %i.nr = and i64 %i.nn, 127
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.nr
  br label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i148

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i148: ; preds = %.split.i.i.i.i.i.i147, %bb.bb
  %.sroa.5.0.i.i.i.i149 = phi ptr [ %i.np, %.split.i.i.i.i.i.i147 ], [ null, %bb.bb ] ; 2 uses
  %.sroa.0.0.i.i.i.i150 = phi ptr [ %i.ns, %.split.i.i.i.i.i.i147 ], [ null, %bb.bb ] ; 2 uses
  %i.nt = load ptr, ptr %4, align 16, !tbaa !532, !noalias !20379 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %.sroa.0.0.i.i.i.i150
  br i1 %i.nu, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i151, label %bb.bc

bb.bc:                                            ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i148
  %i.nv = load ptr, ptr %i.ju, align 8, !tbaa !533, !noalias !20379 ; 2 uses
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %.sroa.5.0.i.i.i.i149 to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = shl nsw i64 %i.ny, 4
  %i.oa = load ptr, ptr %i.nv, align 8, !tbaa !331, !noalias !20379
  %i.ob = ptrtoint ptr %i.nt to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = ashr exact i64 %i.od, 3
  %i.of = add nsw i64 %i.oe, %i.nz
  %i.og = load ptr, ptr %.sroa.5.0.i.i.i.i149, align 8, !tbaa !331, !noalias !20379
  %i.oh = ptrtoint ptr %.sroa.0.0.i.i.i.i150 to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = ashr exact i64 %i.oj, 3
  %i.ol = sub i64 %i.of, %i.ok
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i151

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i151: ; preds = %bb.bc, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i148
  %.0.i.i.i152 = phi i64 [ %i.ol, %bb.bc ], [ 0, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_5dequeIS4_vvEEE6cbeginEv.exit.i.i148 ]
  br i1 %.not.i.i.i.i.i.i146, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit156, label %.split.i.i.i.i.i.i.i153

.split.i.i.i.i.i.i.i153:                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i151
  %i.om = load i64, ptr %i.d, align 8, !tbaa !520, !noalias !20382
  %i.on = add i64 %i.om, %.0.i.i.i152             ; 2 uses
  %i.oo = lshr i64 %i.on, 7
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !331, !noalias !20383
  %i.or = and i64 %i.on, 127
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.or
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit156

bb.bd:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11upper_boundERKi.exit145
  %i.ot = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !20379
  %i.ou = load <2 x ptr>, ptr %4, align 16, !tbaa !534, !noalias !20379
  store <2 x ptr> %i.ou, ptr %7, align 16, !tbaa !534, !noalias !20379
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !20379
  call void @_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE7emplaceIJNS0_13try_emplace_tEiiEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS7_IS8_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.jw, ptr noundef nonnull align 4 dereferenceable(4) %i.ot), !noalias !20379
  %i.ov = load ptr, ptr %6, align 8, !tbaa !525, !noalias !20379
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !20379
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !20379
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit156

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit156: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i151, %.split.i.i.i.i.i.i.i153, %bb.bd
  %.sroa.03.0.i155 = phi ptr [ %i.ov, %bb.bd ], [ %i.os, %.split.i.i.i.i.i.i.i153 ], [ null, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEmiERKS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !20379
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !20378
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !20378
  br label %bb.be

bb.be:                                            ; preds = %bb.at, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit156
  %.sroa.0230.0 = phi ptr [ %.sroa.03.0.i155, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE11try_emplaceIJiEEENS0_14deque_iteratorIPS6_Lb0ELj0ELj0EmEENSA_ISB_Lb1ELj0ELj0EmEEOiDpOT_.exit156 ], [ %i.mc, %bb.at ] ; 3 uses
  %i.ow = load ptr, ptr %0, align 8, !tbaa !519, !noalias !20384 ; 5 uses
  %.not.i.i.i.i157 = icmp eq ptr %i.ow, null      ; 2 uses
  br i1 %.not.i.i.i.i157, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit161, label %.split.i.i.i.i158

.split.i.i.i.i158:                                ; preds = %bb.be
  %i.ox = load i64, ptr %i.b, align 8, !tbaa !521, !noalias !20385 ; 2 uses
  %i.oy = lshr i64 %i.ox, 7
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.oy
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !331, !noalias !20384
  %i.pb = and i64 %i.ox, 127
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.pb
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit161

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit161: ; preds = %bb.be, %.split.i.i.i.i158
  %.sink1.i.i.i159 = phi ptr [ %i.pc, %.split.i.i.i.i158 ], [ null, %bb.be ]
  %i.pd = icmp eq ptr %.sink1.i.i.i159, %.sroa.0230.0
  %i.pe = icmp ne ptr %.sroa.0230.0, %.sroa.0228.0.ph
  %or.cond = or i1 %i.pe, %i.pd
  br i1 %or.cond, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit161
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0230.0, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !348
  %i.ph = zext i32 %i.pg to i64
  %.not77 = icmp eq i64 %indvars.iv, %i.ph
  br i1 %.not77, label %bb.ah, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

.critedge83:                                      ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

.critedge85.thread:                               ; preds = %bb.ah
  %i.pi = load i64, ptr %i.b, align 8, !tbaa !521 ; 3 uses
  %i.pj = load i64, ptr %i.d, align 8, !tbaa !520 ; 3 uses
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = load i64, ptr %i.am, align 8, !tbaa !317
  %.not.i162 = icmp eq i64 %i.pk, %i.pl
  br i1 %.not.i162, label %bb.bg, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.bg:                                            ; preds = %.critedge85.thread
  br i1 %.not.i.i.i.i157, label %.loopexit, label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit.i165
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test20map_test_try_emplaceINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a

bb.c:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !327
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.t, ptr %i.v, align 8, !tbaa !316
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.w, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %8, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.x, align 8, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <4 x i32> <i32 3, i32 3, i32 4, i32 4>, ptr %i.y, align 8, !tbaa !338
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 40
  store <4 x i32> <i32 5, i32 5, i32 6, i32 6>, ptr %i.z, align 8, !tbaa !338
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 56
  store <4 x i32> <i32 7, i32 7, i32 8, i32 8>, ptr %i.aa, align 8, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 72
  store <4 x i32> <i32 9, i32 9, i32 10, i32 10>, ptr %i.ab, align 8, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.ac, align 8, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.ad, align 8, !tbaa !338
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 120
  store <4 x i32> <i32 15, i32 15, i32 16, i32 16>, ptr %i.ae, align 8, !tbaa !338
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 136
  store <4 x i32> <i32 17, i32 17, i32 18, i32 18>, ptr %i.af, align 8, !tbaa !338
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 152
  store <4 x i32> <i32 19, i32 19, i32 20, i32 20>, ptr %i.ag, align 8, !tbaa !338
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 168
  store <4 x i32> <i32 21, i32 21, i32 22, i32 22>, ptr %i.ah, align 8, !tbaa !338
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 184
  store <4 x i32> <i32 23, i32 23, i32 24, i32 24>, ptr %i.ai, align 8, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 200
  store <4 x i32> <i32 25, i32 25, i32 26, i32 26>, ptr %i.aj, align 8, !tbaa !338
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 216
  store <4 x i32> <i32 27, i32 27, i32 28, i32 28>, ptr %i.ak, align 8, !tbaa !338
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 232
  store <4 x i32> <i32 29, i32 29, i32 30, i32 30>, ptr %i.al, align 8, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 248
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.am, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.an, align 8, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.ao, align 8, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.ap, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.aq, align 8, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.ar, align 8, !tbaa !338
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.as, align 8, !tbaa !338
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.at, align 8, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.au, align 8, !tbaa !338
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 392
  store i32 49, ptr %i.av, align 8, !tbaa !362
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 396
  store i32 49, ptr %i.aw, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %9, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.ax, align 4, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.ay, align 4, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.az, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.ba, align 4, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.bb, align 4, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.bc, align 4, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.bd, align 4, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.be, align 4, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.bf, align 4, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.bg, align 4, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.bh, align 4, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.bi, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.bj, align 4, !tbaa !338
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.bk, align 4, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.bl, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.bm, align 4, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.bn, align 4, !tbaa !338
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.bo, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.bp, align 4, !tbaa !338
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.bq, align 4, !tbaa !338
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.br, align 4, !tbaa !338
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.bs, align 4, !tbaa !338
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.bt, align 4, !tbaa !338
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.bu, align 4, !tbaa !338
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 388
  store i32 2, ptr %i.bv, align 4, !tbaa !363
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 392
  store i32 49, ptr %i.bw, align 8, !tbaa !362
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 396
  store i32 1, ptr %i.bx, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.q
  %storemerge230 = phi i32 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.fm, %bb.q ] ; 2 uses
  %i.by = and i32 %storemerge230, 1
  %.not = icmp eq i32 %i.by, 0
  %i.bz = sext i32 %storemerge230 to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bz ; 9 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load ptr, ptr %0, align 8, !tbaa !548   ; 2 uses
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !551 ; 2 uses
  %.idx3.i.i.i = shl nuw nsw i64 %i.cd, 3         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx3.i.i.i ; 2 uses
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !550 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.cf, 3          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i.i
  %.not17.i.i.i.i.i = icmp samesign eq i64 %i.cf, %i.cd
  br i1 %.not17.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %gepdiff.i.i.i = sub nsw i64 %.idx.i.i.i, %.idx3.i.i.i
  %i.ch = ashr exact i64 %gepdiff.i.i.i, 3
  %i.ci = load i32, ptr %i.ca, align 8, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 2 uses
  %.01518.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.116.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.cj = lshr i64 %.019.i.i.i.i.i, 1             ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i.i.i.i, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !338
  %i.cm = icmp slt i32 %i.cl, %i.ci               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.cj, -1
  %i.co = add i64 %.019.i.i.i.i.i, %.neg.i.i.i.i.i
  %.116.i.i.i.i.i = select i1 %i.cm, ptr %i.cn, ptr %.01518.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.cm, i64 %i.co, i64 %i.cj ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i, label %bb.f, !llvm.loop !279

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.015.lcssa.i.i.i.i.i = phi ptr [ %i.ce, %bb.e ], [ %.116.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.cp = icmp eq ptr %.015.lcssa.i.i.i.i.i, %i.cg
  br i1 %i.cp, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit.thread, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i
  %i.cq = load i32, ptr %i.ca, align 8, !tbaa !338
  %i.cr = load i32, ptr %.015.lcssa.i.i.i.i.i, align 4, !tbaa !338
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit.thread, label %.critedge.thread

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit.thread: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ct = call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE7emplaceIJNS0_13try_emplace_tEiiEEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.015.lcssa.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit

bb.g:                                             ; preds = %bb.d
  %i.cu = load ptr, ptr %0, align 8, !tbaa !548   ; 4 uses
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !551 ; 5 uses
  %.idx2.i.i = shl nuw nsw i64 %i.cv, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx2.i.i ; 2 uses
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !550 ; 3 uses
  %.not17.i.i.i = icmp samesign eq i64 %i.cx, %i.cv
  br i1 %.not17.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.cy = sub nsw i64 %i.cx, %i.cv
  %i.cz = load i32, ptr %i.ca, align 16, !tbaa !338
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.h ] ; 2 uses
  %.01518.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.116.i.i.i, %bb.h ] ; 2 uses
  %i.da = lshr i64 %.019.i.i.i, 1                 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i.i, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !338
  %i.dd = icmp slt i32 %i.cz, %i.dc               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.neg.i.i.i = xor i64 %i.da, -1
  %i.df = add i64 %.019.i.i.i, %.neg.i.i.i
  %.116.i.i.i = select i1 %i.dd, ptr %.01518.i.i.i, ptr %i.de ; 2 uses
  %.1.i.i.i = select i1 %i.dd, i64 %i.da, i64 %i.df ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit, label %bb.h, !llvm.loop !283

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit: ; preds = %bb.h, %bb.g
  %.015.lcssa.i.i.i = phi ptr [ %i.cw, %bb.g ], [ %.116.i.i.i, %bb.h ] ; 8 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx ; 4 uses
  %i.di = icmp eq ptr %.015.lcssa.i.i.i, %i.dh
  br i1 %i.di, label %.critedge.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit
  %i.dj = load i32, ptr %i.ca, align 16, !tbaa !338 ; 3 uses
  %i.dk = load i32, ptr %.015.lcssa.i.i.i, align 4, !tbaa !338
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %.critedge.i.i.i, label %.lr.ph.i.i34.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.i, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv ; 5 uses
  %i.dn = icmp eq ptr %.015.lcssa.i.i.i, %i.dm
  br i1 %i.dn, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i.i
  %i.do = getelementptr inbounds i8, ptr %.015.lcssa.i.i.i, i64 -8 ; 6 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !338 ; 2 uses
  %i.dq = load i32, ptr %i.ca, align 16, !tbaa !338 ; 4 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ds = icmp slt i32 %i.dq, %i.dp
  br i1 %i.ds, label %bb.l, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i

bb.l:                                             ; preds = %bb.k
  %.not17.i.i.i.i.i102 = icmp eq ptr %i.do, %i.dm
  br i1 %.not17.i.i.i.i.i102, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i110, label %.lr.ph.i.i.i.i.i103

.lr.ph.i.i.i.i.i103:                              ; preds = %bb.l
  %i.dt = ptrtoint ptr %i.dm to i64
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = sub i64 %i.du, %i.dt
  %i.dw = ashr exact i64 %i.dv, 3
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i103
  %.019.i.i.i.i.i104 = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i103 ], [ %.1.i.i.i.i.i108, %bb.m ] ; 2 uses
  %.01518.i.i.i.i.i105 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i103 ], [ %.116.i.i.i.i.i107, %bb.m ] ; 2 uses
  %i.dx = lshr i64 %.019.i.i.i.i.i104, 1          ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i.i.i.i105, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !338
  %i.ea = icmp slt i32 %i.dz, %i.dq               ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.neg.i.i.i.i.i106 = xor i64 %i.dx, -1
  %i.ec = add i64 %.019.i.i.i.i.i104, %.neg.i.i.i.i.i106
  %.116.i.i.i.i.i107 = select i1 %i.ea, ptr %i.eb, ptr %.01518.i.i.i.i.i105 ; 2 uses
  %.1.i.i.i.i.i108 = select i1 %i.ea, i64 %i.ec, i64 %i.dx ; 2 uses
  %.not.i.i.i.i.i109 = icmp eq i64 %.1.i.i.i.i.i108, 0
  br i1 %.not.i.i.i.i.i109, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i110, label %bb.m, !llvm.loop !279

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i110: ; preds = %bb.m, %bb.l
  %.015.lcssa.i.i.i.i.i111 = phi ptr [ %i.dm, %bb.l ], [ %.116.i.i.i.i.i107, %bb.m ] ; 4 uses
  %i.ed = icmp eq ptr %.015.lcssa.i.i.i.i.i111, %i.do
  br i1 %i.ed, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i110
  %i.ee = load i32, ptr %.015.lcssa.i.i.i.i.i111, align 4, !tbaa !338
  %i.ef = icmp slt i32 %i.dq, %i.ee
  br i1 %i.ef, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i

.lr.ph.i.i34.i.i.i:                               ; preds = %bb.i
  %i.eg = ptrtoint ptr %.015.lcssa.i.i.i to i64
  %i.eh = ptrtoint ptr %i.dh to i64
  %i.ei = sub i64 %i.eh, %i.eg
  %i.ej = ashr exact i64 %i.ei, 3
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i34.i.i.i
  %.019.i.i35.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i34.i.i.i ], [ %.1.i.i39.i.i.i, %bb.n ] ; 2 uses
  %.01518.i.i36.i.i.i = phi ptr [ %.015.lcssa.i.i.i, %.lr.ph.i.i34.i.i.i ], [ %.116.i.i38.i.i.i, %bb.n ] ; 2 uses
  %i.ek = lshr i64 %.019.i.i35.i.i.i, 1           ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i36.i.i.i, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !338
  %i.en = icmp slt i32 %i.em, %i.dj               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.neg.i.i37.i.i.i = xor i64 %i.ek, -1
  %i.ep = add i64 %.019.i.i35.i.i.i, %.neg.i.i37.i.i.i
  %.116.i.i38.i.i.i = select i1 %i.en, ptr %i.eo, ptr %.01518.i.i36.i.i.i ; 5 uses
  %.1.i.i39.i.i.i = select i1 %i.en, i64 %i.ep, i64 %i.ek ; 2 uses
  %.not.i.i40.i.i.i = icmp eq i64 %.1.i.i39.i.i.i, 0
  br i1 %.not.i.i40.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i, label %bb.n, !llvm.loop !279

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i: ; preds = %bb.n
  %i.eq = icmp eq ptr %.116.i.i38.i.i.i, %i.dh
  br i1 %i.eq, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i
  %i.er = load i32, ptr %.116.i.i38.i.i.i, align 4, !tbaa !338
  %i.es = icmp slt i32 %i.dj, %i.er
  br i1 %i.es, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i, %.split.i.i, %bb.k
  %.sroa.0.014.i.i = phi ptr [ %.015.lcssa.i.i.i.i.i111, %.split.i.i ], [ %i.do, %bb.k ], [ %.116.i.i38.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i ]
  %i.et = getelementptr [8 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.eu = ptrtoint ptr %.sroa.0.014.i.i to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr i8, ptr %i.et, i64 %i.ew
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i, %.split.i.i, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i110, %bb.j, %.critedge.i.i.i
  %.sroa.0.010.i.i = phi ptr [ %.015.lcssa.i.i.i.i.i111, %.split.i.i ], [ %.116.i.i38.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i ], [ %i.dh, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i ], [ %i.do, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i110 ], [ %.015.lcssa.i.i.i, %bb.j ], [ %.015.lcssa.i.i.i, %.critedge.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ey = call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE7emplaceIJNS0_13try_emplace_tEiiEEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.010.i.i, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit.thread
  %.186 = phi ptr [ %i.ct, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit.thread ], [ %i.ey, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i ], [ %i.ex, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i ] ; 3 uses
  %i.ez = load ptr, ptr %0, align 8, !tbaa !548
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !550
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = icmp eq ptr %i.fb, %.186
  br i1 %i.fc, label %.critedge.thread, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit
  %i.fd = load i32, ptr %.186, align 4, !tbaa !347 ; 2 uses
  %i.fe = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !362
  %.not95 = icmp eq i32 %i.fd, %i.fh
  br i1 %.not95, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.fi = getelementptr inbounds nuw i8, ptr %.186, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !348
  %.not96 = icmp eq i32 %i.fj, %i.fd
  br i1 %.not96, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.fk = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i32 %i.fe, ptr %i.fk, align 4, !tbaa !338
  %i.fl = load i32, ptr %i.a, align 4, !tbaa !338 ; 2 uses
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  store i32 %i.fm, ptr %i.a, align 4, !tbaa !338
  %i.fn = icmp sgt i32 %i.fl, 48
  br i1 %i.fn, label %bb.r, label %bb.d, !llvm.loop !30219

.critedge.thread:                                 ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i, %bb.p, %bb.o, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.fo = load i64, ptr %i.d, align 8, !tbaa !550 ; 4 uses
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !551 ; 3 uses
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = load i64, ptr %i.o, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.fq, %i.fr
  br i1 %.not.i, label %bb.s, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.s:                                             ; preds = %bb.r
  %i.fs = load ptr, ptr %0, align 8, !tbaa !548   ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fo
  %.not1621.i = icmp samesign eq i64 %i.fp, %i.fo
  br i1 %.not1621.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !315
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fp
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %.01323.i = phi ptr [ %i.gd, %bb.u ], [ %i.fv, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.022.i = phi ptr [ %i.ge, %bb.u ], [ %i.fu, %.lr.ph.preheader.i ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !365
  %i.fy = load i32, ptr %.01323.i, align 4, !tbaa !347
  %.not17.i = icmp eq i32 %i.fy, %i.fx
  br i1 %.not17.i, label %bb.t, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.t:                                             ; preds = %.lr.ph.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !366
  %i.gb = getelementptr inbounds nuw i8, ptr %.01323.i, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !348
  %.not18.i = icmp eq i32 %i.gc, %i.ga
  br i1 %.not18.i, label %bb.u, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.u:                                             ; preds = %bb.t
  %i.gd = getelementptr inbounds nuw i8, ptr %.01323.i, i64 8 ; 2 uses
  %i.ge = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #27
  %.not16.i = icmp eq ptr %i.gd, %i.ft
  br i1 %.not16.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !286

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.u, %bb.s
  %i.gf = load i64, ptr %i.g, align 8, !tbaa !550 ; 3 uses
  %i.gg = load i64, ptr %i.e, align 8, !tbaa !551 ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = load i64, ptr %i.w, align 8, !tbaa !317
  %.not.i112 = icmp eq i64 %i.gh, %i.gi
  br i1 %.not.i112, label %bb.v, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.v:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.gj = load ptr, ptr %2, align 8, !tbaa !548   ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gf
  %.not1621.i114 = icmp samesign eq i64 %i.gg, %i.gf
  br i1 %.not1621.i114, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i115

.lr.ph.preheader.i115:                            ; preds = %bb.v
  %i.gl = load ptr, ptr %i.u, align 8, !tbaa !315
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gg
  br label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %bb.x, %.lr.ph.preheader.i115
  %.01323.i117 = phi ptr [ %i.gu, %bb.x ], [ %i.gm, %.lr.ph.preheader.i115 ] ; 3 uses
  %.sroa.0.022.i118 = phi ptr [ %i.gv, %bb.x ], [ %i.gl, %.lr.ph.preheader.i115 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i118, i64 32
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !365
  %i.gp = load i32, ptr %.01323.i117, align 4, !tbaa !347
  %.not17.i119 = icmp eq i32 %i.gp, %i.go
  br i1 %.not17.i119, label %bb.w, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.w:                                             ; preds = %.lr.ph.i116
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i118, i64 36
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !366
  %i.gs = getelementptr inbounds nuw i8, ptr %.01323.i117, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !348
  %.not18.i120 = icmp eq i32 %i.gt, %i.gr
  br i1 %.not18.i120, label %bb.x, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %.01323.i117, i64 8 ; 2 uses
  %i.gv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i118) #27
  %.not16.i121 = icmp eq ptr %i.gu, %i.gk
  br i1 %.not16.i121, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i116, !llvm.loop !287

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.x, %bb.v
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit

bb.y:                                             ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond, label %.critedge101, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, !llvm.loop !30220

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader, %bb.y
  %i.gw = phi i64 [ %i.kj, %bb.y ], [ %i.fo, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 7 uses
  %i.gx = phi ptr [ %i.kk, %bb.y ], [ %i.fs, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 8 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.preheader ] ; 4 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv ; 11 uses
  %i.gz = load i64, ptr %i.b, align 8, !tbaa !551 ; 7 uses
  %.idx2.i.i.i = shl nuw nsw i64 %i.gz, 3         ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx2.i.i.i ; 6 uses
  %.not17.i.i.i.i = icmp samesign eq i64 %i.gw, %i.gz ; 3 uses
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE11lower_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.hb = sub nsw i64 %i.gw, %i.gz
  %i.hc = load i32, ptr %i.gy, align 8, !tbaa !338
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i64 [ %i.hb, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.z ] ; 2 uses
  %.01518.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i ], [ %.116.i.i.i.i, %bb.z ] ; 2 uses
  %i.hd = lshr i64 %.019.i.i.i.i, 1               ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i.i.i, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !338
  %i.hg = icmp slt i32 %i.hf, %i.hc               ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.neg.i.i.i.i = xor i64 %i.hd, -1
  %i.hi = add i64 %.019.i.i.i.i, %.neg.i.i.i.i
  %.116.i.i.i.i = select i1 %i.hg, ptr %i.hh, ptr %.01518.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.hg, i64 %i.hi, i64 %i.hd ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE11lower_boundERKi.exit.i.i, label %bb.z, !llvm.loop !289

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE11lower_boundERKi.exit.i.i: ; preds = %bb.z, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %.015.lcssa.i.i.i.i = phi ptr [ %i.ha, %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %.116.i.i.i.i, %bb.z ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw ; 6 uses
  %.not.i.i = icmp eq ptr %.015.lcssa.i.i.i.i, %i.hj
  br i1 %.not.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE4findERKi.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE11lower_boundERKi.exit.i.i
  %i.hk = load i32, ptr %i.gy, align 8, !tbaa !338
  %i.hl = load i32, ptr %.015.lcssa.i.i.i.i, align 4, !tbaa !338
  %i.hm = icmp slt i32 %i.hk, %i.hl
  %spec.select.i.i = select i1 %i.hm, ptr %i.hj, ptr %.015.lcssa.i.i.i.i
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE4findERKi.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE4findERKi.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE11lower_boundERKi.exit.i.i, %bb.aa
  %.0.i.i = phi ptr [ %spec.select.i.i, %bb.aa ], [ %.015.lcssa.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE11lower_boundERKi.exit.i.i ] ; 2 uses
  %i.hn = icmp eq ptr %.0.i.i, %i.hj
  br i1 %i.hn, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE4findERKi.exit
  %i.ho = and i64 %indvars.iv, 1
  %.not97 = icmp eq i64 %i.ho, 0
  br i1 %.not97, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.idx.i.i.i123 = shl nuw nsw i64 %i.gw, 3       ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx.i.i.i123
  br i1 %.not17.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i133, label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %bb.ac
  %gepdiff.i.i.i126 = sub nsw i64 %.idx.i.i.i123, %.idx2.i.i.i
  %i.hq = ashr exact i64 %gepdiff.i.i.i126, 3
  %i.hr = load i32, ptr %i.gy, align 8, !tbaa !338
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i125
  %.019.i.i.i.i.i127 = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i125 ], [ %.1.i.i.i.i.i131, %bb.ad ] ; 2 uses
  %.01518.i.i.i.i.i128 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i125 ], [ %.116.i.i.i.i.i130, %bb.ad ] ; 2 uses
  %i.hs = lshr i64 %.019.i.i.i.i.i127, 1          ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i.i.i.i128, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !338
  %i.hv = icmp slt i32 %i.hu, %i.hr               ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.neg.i.i.i.i.i129 = xor i64 %i.hs, -1
  %i.hx = add i64 %.019.i.i.i.i.i127, %.neg.i.i.i.i.i129
  %.116.i.i.i.i.i130 = select i1 %i.hv, ptr %i.hw, ptr %.01518.i.i.i.i.i128 ; 2 uses
  %.1.i.i.i.i.i131 = select i1 %i.hv, i64 %i.hx, i64 %i.hs ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq i64 %.1.i.i.i.i.i131, 0
  br i1 %.not.i.i.i.i.i132, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i133, label %bb.ad, !llvm.loop !279

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i133: ; preds = %bb.ad, %bb.ac
  %.015.lcssa.i.i.i.i.i134 = phi ptr [ %i.ha, %bb.ac ], [ %.116.i.i.i.i.i130, %bb.ad ] ; 4 uses
  %i.hy = icmp eq ptr %.015.lcssa.i.i.i.i.i134, %i.hp
  br i1 %i.hy, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140.thread, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i135

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i135: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i133
  %i.hz = load i32, ptr %i.gy, align 8, !tbaa !338
  %i.ia = load i32, ptr %.015.lcssa.i.i.i.i.i134, align 4, !tbaa !338
  %i.ib = icmp slt i32 %i.hz, %i.ia
  br i1 %i.ib, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140.thread, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140.thread: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i133, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i135
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.id = call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE7emplaceIJNS0_13try_emplace_tEiiEEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.015.lcssa.i.i.i.i.i134, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.gy, ptr noundef nonnull align 4 dereferenceable(4) %i.ic) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i135
  %i.ie = getelementptr [8 x i8], ptr %i.gx, i64 %i.gz ; 2 uses
  %i.if = ptrtoint ptr %.015.lcssa.i.i.i.i.i134 to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.ih
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit181

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit151, label %.lr.ph.i.i.i143

.lr.ph.i.i.i143:                                  ; preds = %bb.ae
  %i.ij = sub nsw i64 %i.gw, %i.gz
  %i.ik = load i32, ptr %i.gy, align 16, !tbaa !338
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i.i.i143
  %.019.i.i.i144 = phi i64 [ %i.ij, %.lr.ph.i.i.i143 ], [ %.1.i.i.i148, %bb.af ] ; 2 uses
  %.01518.i.i.i145 = phi ptr [ %i.ha, %.lr.ph.i.i.i143 ], [ %.116.i.i.i147, %bb.af ] ; 2 uses
  %i.il = lshr i64 %.019.i.i.i144, 1              ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i.i145, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !338
  %i.io = icmp slt i32 %i.ik, %i.in               ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.neg.i.i.i146 = xor i64 %i.il, -1
  %i.iq = add i64 %.019.i.i.i144, %.neg.i.i.i146
  %.116.i.i.i147 = select i1 %i.io, ptr %.01518.i.i.i145, ptr %i.ip ; 2 uses
  %.1.i.i.i148 = select i1 %i.io, i64 %i.il, i64 %i.iq ; 2 uses
  %.not.i.i.i149 = icmp eq i64 %.1.i.i.i148, 0
  br i1 %.not.i.i.i149, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit151, label %bb.af, !llvm.loop !283

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit151: ; preds = %bb.af, %bb.ae
  %.015.lcssa.i.i.i150 = phi ptr [ %i.ha, %bb.ae ], [ %.116.i.i.i147, %bb.af ] ; 8 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.is = icmp eq ptr %.015.lcssa.i.i.i150, %i.hj
  br i1 %i.is, label %.critedge.i.i.i169, label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit151
  %i.it = load i32, ptr %i.gy, align 16, !tbaa !338 ; 3 uses
  %i.iu = load i32, ptr %.015.lcssa.i.i.i150, align 4, !tbaa !338
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.critedge.i.i.i169, label %.lr.ph.i.i34.i.i.i152

.critedge.i.i.i169:                               ; preds = %bb.ag, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11upper_boundERKi.exit151
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gz ; 5 uses
  %i.ix = icmp eq ptr %.015.lcssa.i.i.i150, %i.iw
  br i1 %i.ix, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i.i169
  %i.iy = getelementptr inbounds i8, ptr %.015.lcssa.i.i.i150, i64 -8 ; 5 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !338 ; 2 uses
  %i.ja = load i32, ptr %i.gy, align 16, !tbaa !338 ; 4 uses
  %i.jb = icmp slt i32 %i.iz, %i.ja
  br i1 %i.jb, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jc = icmp slt i32 %i.ja, %i.iz
  br i1 %i.jc, label %bb.aj, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164

bb.aj:                                            ; preds = %bb.ai
  %.not17.i.i.i.i.i170 = icmp eq ptr %i.iy, %i.iw
  br i1 %.not17.i.i.i.i.i170, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i178, label %.lr.ph.i.i.i.i.i171

.lr.ph.i.i.i.i.i171:                              ; preds = %bb.aj
  %i.jd = ptrtoint ptr %i.iw to i64
  %i.je = ptrtoint ptr %i.iy to i64
  %i.jf = sub i64 %i.je, %i.jd
  %i.jg = ashr exact i64 %i.jf, 3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i.i171
  %.019.i.i.i.i.i172 = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i171 ], [ %.1.i.i.i.i.i176, %bb.ak ] ; 2 uses
  %.01518.i.i.i.i.i173 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i171 ], [ %.116.i.i.i.i.i175, %bb.ak ] ; 2 uses
  %i.jh = lshr i64 %.019.i.i.i.i.i172, 1          ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i.i.i.i173, i64 %i.jh ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !338
  %i.jk = icmp slt i32 %i.jj, %i.ja               ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %.neg.i.i.i.i.i174 = xor i64 %i.jh, -1
  %i.jm = add i64 %.019.i.i.i.i.i172, %.neg.i.i.i.i.i174
  %.116.i.i.i.i.i175 = select i1 %i.jk, ptr %i.jl, ptr %.01518.i.i.i.i.i173 ; 2 uses
  %.1.i.i.i.i.i176 = select i1 %i.jk, i64 %i.jm, i64 %i.jh ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq i64 %.1.i.i.i.i.i176, 0
  br i1 %.not.i.i.i.i.i177, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i178, label %bb.ak, !llvm.loop !279

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i178: ; preds = %bb.ak, %bb.aj
  %.015.lcssa.i.i.i.i.i179 = phi ptr [ %i.iw, %bb.aj ], [ %.116.i.i.i.i.i175, %bb.ak ] ; 5 uses
  %i.jn = icmp eq ptr %.015.lcssa.i.i.i.i.i179, %i.iy
  br i1 %i.jn, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167, label %.split.i.i180

.split.i.i180:                                    ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i178
  %i.jo = load i32, ptr %.015.lcssa.i.i.i.i.i179, align 4, !tbaa !338
  %i.jp = icmp slt i32 %i.ja, %i.jo
  br i1 %i.jp, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164

.lr.ph.i.i34.i.i.i152:                            ; preds = %bb.ag
  %i.jq = ptrtoint ptr %.015.lcssa.i.i.i150 to i64
  %i.jr = ptrtoint ptr %i.hj to i64
  %i.js = sub i64 %i.jr, %i.jq
  %i.jt = ashr exact i64 %i.js, 3
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i34.i.i.i152
  %.019.i.i35.i.i.i153 = phi i64 [ %i.jt, %.lr.ph.i.i34.i.i.i152 ], [ %.1.i.i39.i.i.i157, %bb.al ] ; 2 uses
  %.01518.i.i36.i.i.i154 = phi ptr [ %.015.lcssa.i.i.i150, %.lr.ph.i.i34.i.i.i152 ], [ %.116.i.i38.i.i.i156, %bb.al ] ; 2 uses
  %i.ju = lshr i64 %.019.i.i35.i.i.i153, 1        ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.01518.i.i36.i.i.i154, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !338
  %i.jx = icmp slt i32 %i.jw, %i.it               ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.neg.i.i37.i.i.i155 = xor i64 %i.ju, -1
  %i.jz = add i64 %.019.i.i35.i.i.i153, %.neg.i.i37.i.i.i155
  %.116.i.i38.i.i.i156 = select i1 %i.jx, ptr %i.jy, ptr %.01518.i.i36.i.i.i154 ; 6 uses
  %.1.i.i39.i.i.i157 = select i1 %i.jx, i64 %i.jz, i64 %i.ju ; 2 uses
  %.not.i.i40.i.i.i158 = icmp eq i64 %.1.i.i39.i.i.i157, 0
  br i1 %.not.i.i40.i.i.i158, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i159, label %bb.al, !llvm.loop !279

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i159: ; preds = %bb.al
  %i.ka = icmp eq ptr %.116.i.i38.i.i.i156, %i.hj
  br i1 %i.ka, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i160

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i160: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i159
  %i.kb = load i32, ptr %.116.i.i38.i.i.i156, align 4, !tbaa !338
  %i.kc = icmp slt i32 %i.it, %i.kb
  br i1 %i.kc, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i160, %.split.i.i180, %bb.ai
  %.sroa.0.014.i.i165 = phi ptr [ %.015.lcssa.i.i.i.i.i179, %.split.i.i180 ], [ %i.iy, %bb.ai ], [ %.116.i.i38.i.i.i156, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i160 ]
  %i.kd = getelementptr [8 x i8], ptr %i.gx, i64 %i.gz ; 2 uses
  %i.ke = ptrtoint ptr %.sroa.0.014.i.i165 to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = getelementptr i8, ptr %i.kd, i64 %i.kg
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit181

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i160, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i159, %.split.i.i180, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i178, %bb.ah, %.critedge.i.i.i169
  %.sroa.0.010.i.i168 = phi ptr [ %.015.lcssa.i.i.i.i.i179, %.split.i.i180 ], [ %.116.i.i38.i.i.i156, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.i.i160 ], [ %.116.i.i38.i.i.i156, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i41.i.i.i159 ], [ %.015.lcssa.i.i.i.i.i179, %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE16priv_lower_boundIPKS4_iEET_SF_SF_RKT0_.exit.i.i.i.i178 ], [ %.015.lcssa.i.i.i150, %bb.ah ], [ %.015.lcssa.i.i.i150, %.critedge.i.i.i169 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ki = call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE7emplaceIJNS0_13try_emplace_tEiiEEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.010.i.i168, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.gy, ptr noundef nonnull align 4 dereferenceable(4) %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre = load ptr, ptr %0, align 8, !tbaa !548
  %.pre242 = load i64, ptr %i.d, align 8, !tbaa !550
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit181

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit181: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140
  %i.kj = phi i64 [ %i.gw, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140 ], [ %.pre242, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167 ], [ %i.gw, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164 ] ; 4 uses
  %i.kk = phi ptr [ %i.gx, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140 ], [ %.pre, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167 ], [ %i.gx, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164 ] ; 3 uses
  %.175 = phi ptr [ %i.ii, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140 ], [ %i.ki, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread.i.i167 ], [ %i.kh, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE26priv_insert_unique_prepareIiEEbPKS4_RKT_RNSB_18insert_commit_dataE.exit.thread11.i.i164 ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kj ; 2 uses
  %i.km = icmp ne ptr %i.kl, %.175
  %.not98 = icmp eq ptr %.175, %.0.i.i
  %or.cond = and i1 %.not98, %i.km
  br i1 %or.cond, label %bb.am, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.am:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit181
  %i.kn = getelementptr inbounds nuw i8, ptr %.175, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !348
  %i.kp = zext i32 %i.ko to i64
  %.not99 = icmp eq i64 %indvars.iv, %i.kp
  br i1 %.not99, label %bb.y, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

.critedge101:                                     ; preds = %bb.y
  %i.kq = load i64, ptr %i.b, align 8, !tbaa !551 ; 3 uses
  %i.kr = sub i64 %i.kj, %i.kq
  %i.ks = load i64, ptr %i.o, align 8, !tbaa !317
  %.not.i182 = icmp eq i64 %i.kr, %i.ks
  br i1 %.not.i182, label %bb.an, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.an:                                            ; preds = %.critedge101
  %.not1621.i184 = icmp samesign eq i64 %i.kq, %i.kj
  br i1 %.not1621.i184, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit192, label %.lr.ph.preheader.i185

.lr.ph.preheader.i185:                            ; preds = %bb.an
  %i.kt = load ptr, ptr %i.m, align 8, !tbaa !315
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kq
  br label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %bb.ap, %.lr.ph.preheader.i185
  %.01323.i187 = phi ptr [ %i.lc, %bb.ap ], [ %i.ku, %.lr.ph.preheader.i185 ] ; 3 uses
  %.sroa.0.022.i188 = phi ptr [ %i.ld, %bb.ap ], [ %i.kt, %.lr.ph.preheader.i185 ] ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i188, i64 32
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !365
  %i.kx = load i32, ptr %.01323.i187, align 4, !tbaa !347
  %.not17.i189 = icmp eq i32 %i.kx, %i.kw
  br i1 %.not17.i189, label %bb.ao, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.ao:                                            ; preds = %.lr.ph.i186
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i188, i64 36
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !366
  %i.la = getelementptr inbounds nuw i8, ptr %.01323.i187, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !348
  %.not18.i190 = icmp eq i32 %i.lb, %i.kz
  br i1 %.not18.i190, label %bb.ap, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.ap:                                            ; preds = %bb.ao
  %i.lc = getelementptr inbounds nuw i8, ptr %.01323.i187, i64 8 ; 2 uses
  %i.ld = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i188) #27
  %.not16.i191 = icmp eq ptr %i.lc, %i.kl
  br i1 %.not16.i191, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit192, label %.lr.ph.i186, !llvm.loop !286

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit192: ; preds = %bb.ap, %bb.an
  %i.le = load i64, ptr %i.g, align 8, !tbaa !550 ; 3 uses
  %i.lf = load i64, ptr %i.e, align 8, !tbaa !551 ; 3 uses
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = load i64, ptr %i.w, align 8, !tbaa !317
  %.not.i193 = icmp eq i64 %i.lg, %i.lh
  br i1 %.not.i193, label %bb.aq, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.aq:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit192
  %i.li = load ptr, ptr %2, align 8, !tbaa !548   ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.le
  %.not1621.i195 = icmp samesign eq i64 %i.lf, %i.le
  br i1 %.not1621.i195, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203, label %.lr.ph.preheader.i196

.lr.ph.preheader.i196:                            ; preds = %bb.aq
  %i.lk = load ptr, ptr %i.u, align 8, !tbaa !315
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lf
  br label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.as, %.lr.ph.preheader.i196
  %.01323.i198 = phi ptr [ %i.lt, %bb.as ], [ %i.ll, %.lr.ph.preheader.i196 ] ; 3 uses
  %.sroa.0.022.i199 = phi ptr [ %i.lu, %bb.as ], [ %i.lk, %.lr.ph.preheader.i196 ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i199, i64 32
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !365
  %i.lo = load i32, ptr %.01323.i198, align 4, !tbaa !347
  %.not17.i200 = icmp eq i32 %i.lo, %i.ln
  br i1 %.not17.i200, label %bb.ar, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.ar:                                            ; preds = %.lr.ph.i197
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i199, i64 36
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !366
  %i.lr = getelementptr inbounds nuw i8, ptr %.01323.i198, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !348
  %.not18.i201 = icmp eq i32 %i.ls, %i.lq
  br i1 %.not18.i201, label %bb.as, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203

bb.as:                                            ; preds = %bb.ar
  %i.lt = getelementptr inbounds nuw i8, ptr %.01323.i198, i64 8 ; 2 uses
  %i.lu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i199) #27
  %.not16.i202 = icmp eq ptr %i.lt, %i.lj
  br i1 %.not16.i202, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203, label %.lr.ph.i197, !llvm.loop !287

_ZN5boost9container4test24CheckEqualPairContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit203: ; preds = %bb.t, %.lr.ph.i, %bb.w, %.lr.ph.i116, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit181, %bb.am, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE4findERKi.exit, %bb.ao, %.lr.ph.i186, %bb.ar, %.lr.ph.i197, %bb.as, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit192, %.critedge101, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140.thread, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, %bb.r, %bb.aq, %.critedge.thread
  %.784 = phi i32 [ 1, %bb.w ], [ 1, %.critedge.thread ], [ 1, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEES5_IPS6_bEOiDpOT_.exit140.thread ], [ 1, %.critedge101 ], [ 0, %bb.aq ], [ 0, %bb.as ], [ 1, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit192 ], [ 1, %bb.r ], [ 1, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE11try_emplaceIJiEEEPS6_PKS6_OiDpOT_.exit181 ], [ 1, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ 1, %bb.ao ], [ 1, %bb.ar ], [ 1, %.lr.ph.i197 ], [ 1, %.lr.ph.i186 ], [ 1, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE4findERKi.exit ], [ 1, %bb.am ], [ 1, %.lr.ph.i116 ], [ 1, %.lr.ph.i ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret i32 %.784
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test14map_test_mergeINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_6
begin_hunk_7_@_ZN5boost9container8devectorISt4pairIiiEvvE12insert_rangeINS_13move_iteratorIPS3_EEEES7_PKS3_T_SB_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !550  ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !549
  %i.s = sub i64 %i.r, %i.n
  %.not49 = icmp ult i64 %i.s, %i.d
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, !prof !367

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre80 = load i64, ptr %i.m, align 8, !tbaa !550
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre80, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !551  ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not48 = icmp ult i64 %i.y, %i.d
  br i1 %.not48, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not77 = icmp eq ptr %2, null
  br i1 %.not77, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !551
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre79, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !553
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not72 = icmp ult i64 %i.ak, %i.am
  br i1 %.not72, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !549
  %i.ap = sub i64 %i.ao, %i.n
  %.not47 = icmp ult i64 %i.ap, %i.d
  br i1 %.not47, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not76 = icmp eq ptr %i.e, null
  br i1 %.not76, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %bb.o, !prof !433

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.p, !prof !344

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.r:                                             ; preds = %bb.m
  %.not94 = icmp eq ptr %1, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i: ; preds = %bb.r, %bb.s, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.not78 = icmp eq ptr %i.e, null
  br i1 %.not78, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !550
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not46 = icmp ult i64 %i.y, %i.d
  br i1 %.not46, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i54 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not75 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i54, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not73 = icmp eq ptr %i.bk, %1
  br i1 %.not73, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.x, !prof !445

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ]
  %.not74 = icmp eq ptr %2, null
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.not.i = icmp eq ptr %2, null
  br i1 %.not52.not.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread: ; preds = %bb.z
  %.not52.not.i67 = icmp eq ptr %2, null
  br i1 %.not52.not.i67, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !551
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !553
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEESB_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEESB_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !548    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !553
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !554
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !548
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 1152921504606846975, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !550
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !551
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ null, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = add i64 %2, %i.aj                       ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i52, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %1
  %i.ar = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.ar, %i.aq
  %i.as = icmp ne ptr %i.ag, null                 ; 2 uses
  %spec.select.i.i.i = and i1 %i.as, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %i.at = ptrtoint ptr %1 to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 4 %i.ao, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.an, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %bb.n, !prof !344

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ax = icmp ne ptr %.0.i.i.i, null
  %i.ay = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i

bb.o:                                             ; preds = %bb.n
  %i.az = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.az, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i: ; preds = %bb.o, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ba = icmp ne ptr %1, %i.ap
  %i.bb = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.ba, %i.bb
  %i.bc = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bc, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.p, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit, !prof !367

bb.p:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %2
  %i.be = ptrtoint ptr %i.ap to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 4 %1, i64 %i.bg, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit: ; preds = %bb.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i
  br i1 %i.as, label %bb.q, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

bb.q:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !549
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bi) #23
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %bb.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !555
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !548
  %i.bj = add i64 %i.ak, %i.am
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !554
  store i64 %i.am, ptr %i.f, align 8, !tbaa !553
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit
  %i.bk = phi i64 [ %i.am, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit ]
end_hunk_7
begin_hunk_8_@_ZN5boost9container8devectorISt4pairIiiEvvE12insert_rangeIPKS3_EEPS3_S7_T_S9_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !550  ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !549
  %i.s = sub i64 %i.r, %i.n
  %.not48 = icmp ult i64 %i.s, %i.d
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, !prof !367

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre79 = load i64, ptr %i.m, align 8, !tbaa !550
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre79, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !551  ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not47 = icmp ult i64 %i.y, %i.d
  br i1 %.not47, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not76 = icmp eq ptr %2, null
  br i1 %.not76, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !551
  %.pre78 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre78, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !553
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not71 = icmp ult i64 %i.ak, %i.am
  br i1 %.not71, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !549
  %i.ap = sub i64 %i.ao, %i.n
  %.not46 = icmp ult i64 %i.ap, %i.d
  br i1 %.not46, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not75 = icmp eq ptr %i.e, null
  br i1 %.not75, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %bb.o, !prof !433

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.p, !prof !344

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.r:                                             ; preds = %bb.m
  %.not93 = icmp eq ptr %1, null
  br i1 %.not93, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i: ; preds = %bb.r, %bb.s, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.not77 = icmp eq ptr %i.e, null
  br i1 %.not77, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !550
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not45 = icmp ult i64 %i.y, %i.d
  br i1 %.not45, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i53 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not74 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i53, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not72 = icmp eq ptr %i.bk, %1
  br i1 %.not72, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.x, !prof !445

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ]
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.not.i = icmp eq ptr %2, null
  br i1 %.not52.not.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread: ; preds = %bb.z
  %.not52.not.i66 = icmp eq ptr %2, null
  br i1 %.not52.not.i66, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !551
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !553
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EEEEPS3_SB_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EEEEPS3_SB_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !548    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !553
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !554
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !548
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 1152921504606846975, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !550
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !551
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ null, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = add i64 %2, %i.aj                       ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i52, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %1
  %i.ar = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.ar, %i.aq
  %i.as = icmp ne ptr %i.ag, null                 ; 2 uses
  %spec.select.i.i.i = and i1 %i.as, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %i.at = ptrtoint ptr %1 to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 4 %i.ao, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.an, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %bb.n, !prof !344

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ax = icmp ne ptr %.0.i.i.i, null
  %i.ay = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i

bb.o:                                             ; preds = %bb.n
  %i.az = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.az, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i: ; preds = %bb.o, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ba = icmp ne ptr %1, %i.ap
  %i.bb = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.ba, %i.bb
  %i.bc = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bc, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.p, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, !prof !367

bb.p:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %2
  %i.be = ptrtoint ptr %i.ap to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 4 %1, i64 %i.bg, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit: ; preds = %bb.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  br i1 %i.as, label %bb.q, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

bb.q:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !549
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bi) #23
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %bb.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !555
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !548
  %i.bj = add i64 %i.ak, %i.am
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !554
  store i64 %i.am, ptr %i.f, align 8, !tbaa !553
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit
  %i.bk = phi i64 [ %i.am, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit ]
end_hunk_8
begin_hunk_9_@_ZN5boost9container8devectorISt4pairIiiEvvE12insert_rangeIPS3_EES6_PKS3_T_S9_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !550  ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !549
  %i.s = sub i64 %i.r, %i.n
  %.not48 = icmp ult i64 %i.s, %i.d
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, !prof !367

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre79 = load i64, ptr %i.m, align 8, !tbaa !550
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre79, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !551  ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not47 = icmp ult i64 %i.y, %i.d
  br i1 %.not47, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not76 = icmp eq ptr %2, null
  br i1 %.not76, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !551
  %.pre78 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre78, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !553
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not71 = icmp ult i64 %i.ak, %i.am
  br i1 %.not71, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !549
  %i.ap = sub i64 %i.ao, %i.n
  %.not46 = icmp ult i64 %i.ap, %i.d
  br i1 %.not46, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not75 = icmp eq ptr %i.e, null
  br i1 %.not75, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %bb.o, !prof !433

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.p, !prof !344

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.r:                                             ; preds = %bb.m
  %.not93 = icmp eq ptr %1, null
  br i1 %.not93, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i: ; preds = %bb.r, %bb.s, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.not77 = icmp eq ptr %i.e, null
  br i1 %.not77, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !550
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not45 = icmp ult i64 %i.y, %i.d
  br i1 %.not45, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i53 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not74 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i53, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not72 = icmp eq ptr %i.bk, %1
  br i1 %.not72, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.x, !prof !445

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ]
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.not.i = icmp eq ptr %2, null
  br i1 %.not52.not.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread: ; preds = %bb.z
  %.not52.not.i66 = icmp eq ptr %2, null
  br i1 %.not52.not.i66, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !551
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !553
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPS3_EEEESA_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPS3_EEEESA_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !548    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !553
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !554
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !548
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 1152921504606846975, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !550
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !551
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ null, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = add i64 %2, %i.aj                       ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i52, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %1
  %i.ar = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.ar, %i.aq
  %i.as = icmp ne ptr %i.ag, null                 ; 2 uses
  %spec.select.i.i.i = and i1 %i.as, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %i.at = ptrtoint ptr %1 to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 4 %i.ao, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.an, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i, label %bb.n, !prof !344

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ax = icmp ne ptr %.0.i.i.i, null
  %i.ay = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i

bb.o:                                             ; preds = %bb.n
  %i.az = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.az, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i: ; preds = %bb.o, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ba = icmp ne ptr %1, %i.ap
  %i.bb = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.ba, %i.bb
  %i.bc = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bc, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.p, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit, !prof !367

bb.p:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %2
  %i.be = ptrtoint ptr %i.ap to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 4 %1, i64 %i.bg, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit: ; preds = %bb.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i
  br i1 %i.as, label %bb.q, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

bb.q:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !549
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bi) #23
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %bb.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !555
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !548
  %i.bj = add i64 %i.ak, %i.am
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !554
  store i64 %i.am, ptr %i.f, align 8, !tbaa !553
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit
  %i.bk = phi i64 [ %i.am, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit ]
end_hunk_9
