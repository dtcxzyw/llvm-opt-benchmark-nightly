Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeyECsgZAIVb0XKpv_9ssservice:bb.a

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i56, i64 8 ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i55, 1
  %i.q = icmp eq ptr %i.o, %i.m
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i56 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i55 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.val6.i.i.i = load i64, ptr %.sroa.0.03.i.i.i56, align 8, !noalias !5748, !noundef !178
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.0.val, i64 %.val6.i.i.i)
  switch i8 %i.r, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i55, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11632
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5748, !nonnull !178, !noundef !178
  %i.x = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5750
  store i8 0, ptr %i.e, align 1, !noalias !5750
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5751
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !5751
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !5751
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.i.i.i55, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !5751
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4p_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.e) #53, !noalias !5750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5751
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.h:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5751
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11632
  %i.ab = icmp samesign ult i64 %.sroa.8.0.i.i.i55, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.8.0.i.i.i55
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !5752, !nonnull !178, !noundef !178 ; 3 uses
  %i.ae = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 11626
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 11632
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 3 uses
  %i.ap = add i64 %.sroa.05.07.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !5735

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa61.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 7
  br i1 %i.aq, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 11626
  %i.as = load i16, ptr %i.ar, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 11632
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 11626
  %i.az = load i16, ptr %i.ay, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 11632
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 11626
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 11632
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 11626
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 11632
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11626
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 11632
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 11626
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11632
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 11626
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 11632
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 11626
  %i.cp = load i16, ptr %i.co, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 11632
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !5753, !nonnull !178, !noundef !178 ; 2 uses
  %i.cv = add i64 %.sroa.05.07.i.i.i.i.i, -8      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa61.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i, i64 11626
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !5753, !noundef !178 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5752
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !noalias !5752
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !5752
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.db, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !5752
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4p_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1080) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e) #53, !noalias !5752
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !5752
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !5752, !nonnull !178, !noundef !178 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !5752 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !5752 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 11626
  %i.de = load i16, ptr %i.dd, align 2, !noalias !5754, !noundef !178
  %i.df = zext i16 %i.de to i64
  %i.dg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.df
  br i1 %i.dg, label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %.lr.ph.i15.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i15.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i15.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %i.dh = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !5755, !noundef !178 ; 3 uses
  %i.di = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 11624
  %i.dk = load i16, ptr %i.dj, align 8, !noalias !5755 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 11626
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !5754, !noundef !178
  %i.dn = icmp ult i16 %i.dk, %i.dm
  br i1 %i.dn, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i15.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i15.i.i.i.i
  %i.do = zext i16 %i.dk to i64
  br label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.do, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 3 uses
  %.sroa.531.0.i.i.i.i = phi i64 [ %i.di, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.dh, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.0.i.i.i.i) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 96
  %i.ds = getelementptr inbounds nuw [1048 x i8], ptr %i.dr, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dt = load i64, ptr %i.dq, align 8, !noalias !5756, !noundef !178
  store i64 %.sroa.01.0.copyload.i.i.i.i, ptr %i.dq, align 8, !noalias !5756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.433.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %i.ds, i64 1048, i1 false), !noalias !5752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %i.ds, ptr noundef nonnull readonly align 8 dereferenceable(1048) %i.z, i64 1048, i1 false), !noalias !5752
  %i.du = icmp eq i64 %.sroa.531.0.i.i.i.i, 0
  br i1 %i.du, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i: ; preds = %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.dv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dv)
  br label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i, %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  store i64 %i.dt, ptr %i.d, align 8, !noalias !5750
  %.sroa.441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.441.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.433.i.i.i.i, i64 1048, i1 false), !noalias !5750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5751
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5746, !noalias !5757, !noundef !178
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8, !alias.scope !5746, !noalias !5757
  %i.dz = load i8, ptr %i.e, align 1, !range !181, !noalias !5750, !noundef !178
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5758)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i, !prof !187

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #63, !noalias !5759
  unreachable

_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 11632
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !5759, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.ec, ptr %1, align 8, !alias.scope !5760, !noalias !5757
  %i.ed = add i64 %i.h, -1
  store i64 %i.ed, ptr %i.g, align 8, !alias.scope !5760, !noalias !5757
  store ptr null, ptr %i.ec, align 8, !noalias !5759
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 11728, i64 noundef 8) #53, !noalias !5759
  br label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(1048) %i.d, i64 1048, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.d, i64 1048 ; 2 uses
  %i.ee = load <2 x i32>, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !5746
  %.sroa.4.0.copyload2 = load i32, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !5746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5749
  %.not = icmp eq i32 %.sroa.4.0.copyload2, -1
  br i1 %.not, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(1040) %i.ef, i64 1040, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store <2 x i32> %i.ee, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.l

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._crit_edge, %bb.a, %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i32 -1, ptr %i.eg, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeyECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.433.i.i.i.i = alloca [32 x i8], align 8  ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5788)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !5788, !noalias !5789, !noundef !178 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5788, !noalias !5789, !noundef !178 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.x, %bb.f ], [ %i.h, %bb.b ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.w, %bb.f ], [ %i.f, %bb.b ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 360 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 450
  %i.k = load i16, ptr %i.j, align 2, !noalias !5790, !noundef !178 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i56, i64 8 ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i55, 1
  %i.q = icmp eq ptr %i.o, %i.m
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i56 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i55 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.val6.i.i.i = load i64, ptr %.sroa.0.03.i.i.i56, align 8, !noalias !5790, !noundef !178
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.0.val, i64 %.val6.i.i.i)
  switch i8 %i.r, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i55, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 456
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5790, !nonnull !178, !noundef !178
  %i.x = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5792
  store i8 0, ptr %i.e, align 1, !noalias !5792
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5793
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !5793
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !5793
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.i.i.i55, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !5793
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4i_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.e) #53, !noalias !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5793
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.h:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5793
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 456
  %i.ab = icmp samesign ult i64 %.sroa.8.0.i.i.i55, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.8.0.i.i.i55
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !5794, !nonnull !178, !noundef !178 ; 3 uses
  %i.ae = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 450
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 456
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 3 uses
  %i.ap = add i64 %.sroa.05.07.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !5777

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa61.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 7
  br i1 %i.aq, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 450
  %i.as = load i16, ptr %i.ar, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 456
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 450
  %i.az = load i16, ptr %i.ay, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 456
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 450
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 456
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 450
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 456
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 450
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 456
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 450
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 456
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 450
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 456
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 450
  %i.cp = load i16, ptr %i.co, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 456
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !5795, !nonnull !178, !noundef !178 ; 2 uses
  %i.cv = add i64 %.sroa.05.07.i.i.i.i.i, -8      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa61.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i, i64 450
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !5795, !noundef !178 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5794
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !noalias !5794
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !5794
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.db, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !5794
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4i_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e) #53, !noalias !5794
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !5794
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !5794, !nonnull !178, !noundef !178 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !5794 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !5794 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 450
  %i.de = load i16, ptr %i.dd, align 2, !noalias !5796, !noundef !178
  %i.df = zext i16 %i.de to i64
  %i.dg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.df
  br i1 %i.dg, label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %.lr.ph.i15.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i15.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i15.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 352
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !5797, !noundef !178 ; 3 uses
  %i.dj = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 448
  %i.dl = load i16, ptr %i.dk, align 8, !noalias !5797 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 450
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !5796, !noundef !178
  %i.do = icmp ult i16 %i.dl, %i.dn
  br i1 %i.do, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i15.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i15.i.i.i.i
  %i.dp = zext i16 %i.dl to i64
  br label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.dp, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 3 uses
  %.sroa.531.0.i.i.i.i = phi i64 [ %i.dj, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.di, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.0.i.i.i.i) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 360
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.sroa.030.0.i.i.i.i, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dt = load i64, ptr %i.dr, align 8, !noalias !5798, !noundef !178
  store i64 %.sroa.01.0.copyload.i.i.i.i, ptr %i.dr, align 8, !noalias !5798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 32, i1 false), !noalias !5794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !5794
  %i.du = icmp eq i64 %.sroa.531.0.i.i.i.i, 0
  br i1 %i.du, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i: ; preds = %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.dv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dv)
  br label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i, %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  store i64 %i.dt, ptr %i.d, align 8, !noalias !5792
  %.sroa.441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.441.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.i.i.i, i64 32, i1 false), !noalias !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5793
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5788, !noalias !5799, !noundef !178
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8, !alias.scope !5788, !noalias !5799
  %i.dz = load i8, ptr %i.e, align 1, !range !181, !noalias !5792, !noundef !178
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5800)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i, !prof !187

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #63, !noalias !5801
  unreachable

_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !5801, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.ec, ptr %1, align 8, !alias.scope !5802, !noalias !5799
  %i.ed = add i64 %i.h, -1
  store i64 %i.ed, ptr %i.g, align 8, !alias.scope !5802, !noalias !5799
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 352
  store ptr null, ptr %i.ee, align 8, !noalias !5801
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 552, i64 noundef 8) #53, !noalias !5801
  br label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ef = load <2 x i32>, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !5788
  %.sroa.4.0.copyload2 = load i32, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !5788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5791
  %.not = icmp eq i32 %.sroa.4.0.copyload2, -1
  br i1 %.not, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.ef, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.l

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._crit_edge, %bb.a, %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.eh, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeyECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1048) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.433.i.i.i.i = alloca [1048 x i8], align 8 ; 4 uses
  %i.a = alloca [1080 x i8], align 8              ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [1080 x i8], align 8              ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.0 = alloca [1048 x i8], align 8          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5830)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !5830, !noalias !5831, !noundef !178 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5830, !noalias !5831, !noundef !178 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.x, %bb.f ], [ %i.h, %bb.b ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.w, %bb.f ], [ %i.f, %bb.b ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11626
  %i.k = load i16, ptr %i.j, align 2, !noalias !5832, !noundef !178 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i56, i64 8 ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i55, 1
  %i.q = icmp eq ptr %i.o, %i.m
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i56 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i55 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.val6.i.i.i = load i64, ptr %.sroa.0.03.i.i.i56, align 8, !noalias !5832, !noundef !178
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.0.val, i64 %.val6.i.i.i)
  switch i8 %i.r, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i55, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11632
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5832, !nonnull !178, !noundef !178
  %i.x = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5834
  store i8 0, ptr %i.e, align 1, !noalias !5834
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5835
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !5835
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !5835
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.i.i.i55, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !5835
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4w_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.e) #53, !noalias !5834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5835
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4J_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.h:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5835
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11632
  %i.ab = icmp samesign ult i64 %.sroa.8.0.i.i.i55, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.8.0.i.i.i55
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !5836, !nonnull !178, !noundef !178 ; 3 uses
  %i.ae = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 11626
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 11632
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 3 uses
  %i.ap = add i64 %.sroa.05.07.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !5819

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa61.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 7
  br i1 %i.aq, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 11626
  %i.as = load i16, ptr %i.ar, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 11632
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 11626
  %i.az = load i16, ptr %i.ay, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 11632
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 11626
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 11632
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 11626
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 11632
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11626
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 11632
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 11626
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11632
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 11626
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 11632
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 11626
  %i.cp = load i16, ptr %i.co, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 11632
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !5837, !nonnull !178, !noundef !178 ; 2 uses
  %i.cv = add i64 %.sroa.05.07.i.i.i.i.i, -8      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa61.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i, i64 11626
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !5837, !noundef !178 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5836
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !noalias !5836
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !5836
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.db, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !5836
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4w_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1080) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e) #53, !noalias !5836
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !5836
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !5836, !nonnull !178, !noundef !178 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !5836 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !5836 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 11626
  %i.de = load i16, ptr %i.dd, align 2, !noalias !5838, !noundef !178
  %i.df = zext i16 %i.de to i64
  %i.dg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.df
  br i1 %i.dg, label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %.lr.ph.i15.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i15.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i15.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %i.dh = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !5839, !noundef !178 ; 3 uses
  %i.di = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 11624
  %i.dk = load i16, ptr %i.dj, align 8, !noalias !5839 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 11626
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !5838, !noundef !178
  %i.dn = icmp ult i16 %i.dk, %i.dm
  br i1 %i.dn, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i15.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i15.i.i.i.i
  %i.do = zext i16 %i.dk to i64
  br label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.do, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 3 uses
  %.sroa.531.0.i.i.i.i = phi i64 [ %i.di, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.dh, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.0.i.i.i.i) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 96
  %i.ds = getelementptr inbounds nuw [1048 x i8], ptr %i.dr, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dt = load i64, ptr %i.dq, align 8, !noalias !5840, !noundef !178
  store i64 %.sroa.01.0.copyload.i.i.i.i, ptr %i.dq, align 8, !noalias !5840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.433.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %i.ds, i64 1048, i1 false), !noalias !5836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %i.ds, ptr noundef nonnull readonly align 8 dereferenceable(1048) %i.z, i64 1048, i1 false), !noalias !5836
  %i.du = icmp eq i64 %.sroa.531.0.i.i.i.i, 0
  br i1 %i.du, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4F_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4F_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4F_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i: ; preds = %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.dv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dv)
  br label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4F_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4F_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4F_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.loopexit.i, %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  store i64 %i.dt, ptr %i.d, align 8, !noalias !5834
  %.sroa.441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.441.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.433.i.i.i.i, i64 1048, i1 false), !noalias !5834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5835
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4J_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4J_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4F_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5830, !noalias !5841, !noundef !178
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8, !alias.scope !5830, !noalias !5841
  %i.dz = load i8, ptr %i.e, align 1, !range !181, !noalias !5834, !noundef !178
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4J_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5842)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i, !prof !187

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #63, !noalias !5843
  unreachable

_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 11632
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !5843, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.ec, ptr %1, align 8, !alias.scope !5844, !noalias !5841
  %i.ed = add i64 %i.h, -1
  store i64 %i.ed, ptr %i.g, align 8, !alias.scope !5844, !noalias !5841
  store ptr null, ptr %i.ec, align 8, !noalias !5843
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 11728, i64 noundef 8) #53, !noalias !5843
  br label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4J_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(1048) %i.d, i64 1048, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.d, i64 1048 ; 2 uses
  %i.ee = load <2 x i32>, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !5830
  %.sroa.4.0.copyload2 = load i32, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !5830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5833
  %.not = icmp eq i32 %.sroa.4.0.copyload2, -1
  br i1 %.not, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(1040) %i.ef, i64 1040, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store <2 x i32> %i.ee, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.l

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._crit_edge, %bb.a, %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i32 -1, ptr %i.eg, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association13ServerContextNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsgZAIVb0XKpv_9ssservice.exit.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMsk_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB6_6Config14load_from_fileRNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i8 noundef range(i8 0, 2) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 2 uses
  %.sroa.626 = alloca [1064 x i8], align 8        ; 2 uses
  %.sroa.10.sroa.6 = alloca [344 x i8], align 8   ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1488 x i8], align 8              ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.h, align 8, !noundef !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i128 18446745954905227264, ptr %i.d, align 16
  call void @_RNvMsj_NtCs5Xr050g3D4S_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #53
  %i.i = load i32, ptr %i.e, align 8, !range !196, !noundef !178
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !178, !noundef !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs20_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtB14_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull %i.l) #53
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.o = load i32, ptr %i.n, align 4, !range !225, !noundef !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.o, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  %i.p = call { i64, ptr } @_RNvXsa_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_to_string(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #53 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, ptr } %i.p, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs20_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtB14_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noundef nonnull %i.s) #53
  store i64 2, ptr %0, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !nonnull !178, !noundef !178
  %i.v = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !noundef !178
  call void @_RNvMsk_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB5_6Config13load_from_str(ptr noalias nofree noundef nonnull sret([1488 x i8]) align 8 captures(address) dereferenceable(1488) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.v, i8 noundef %2) #53
  %i.w = load i64, ptr %i.b, align 8, !range !191, !noundef !178 ; 2 uses
  %i.x = icmp eq i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1064) %.sroa.626, ptr noundef nonnull align 8 dereferenceable(1064) %.sroa.518.0..sroa_idx, i64 1064, i1 false)
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %.sroa.518.sroa.4.0.copyload = load i64, ptr %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %.sroa.518.sroa.5.0.copyload = load ptr, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #53
  %.sroa.027.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.428.0.copyload = load ptr, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.529.0.copyload = load i64, ptr %.sroa.529.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = icmp sgt i64 %.sroa.518.sroa.4.0.copyload, 0
  br i1 %i.aa, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.sroa.5.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.518.sroa.5.0.copyload, i64 noundef %.sroa.518.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !5857
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.g, %bb.h
  store i64 %i.w, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.432.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1064) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1064) %.sroa.626, i64 1064, i1 false)
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %.sroa.027.0.copyload, ptr %.sroa.634.0..sroa_idx, align 8
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store ptr %.sroa.428.0.copyload, ptr %.sroa.735.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %.sroa.529.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.936.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1144
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE10can_bufferCsgZAIVb0XKpv_9ssservice:bb.a
bb.j:                                             ; preds = %bb.i
  %i.at = sub nuw nsw i64 %i.g, %i.as
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsgZAIVb0XKpv_9ssservice.exit9

bb.k:                                             ; preds = %bb.i
  %i.au = add i64 %.sroa.04.0.i.i4, %i.g
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsgZAIVb0XKpv_9ssservice.exit9

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsgZAIVb0XKpv_9ssservice.exit9: ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.0.0.i6 = phi i64 [ %.sroa.04.0.i.i4, %bb.k ], [ %.sroa.04.0.i.i4, %bb.j ], [ 0, %bb.h ]
  %.sroa.5.0.i7 = phi i64 [ %i.au, %bb.k ], [ %.val.i1, %bb.j ], [ 0, %bb.h ]
  %.sroa.11.0.i8 = phi i64 [ 0, %bb.k ], [ %i.at, %bb.j ], [ 0, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !92010, !noalias !92009, !nonnull !178, !noundef !178 ; 4 uses
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %.sroa.0.0.i6
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %.sroa.5.0.i7
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %.sroa.11.0.i8
  store ptr %i.ax, ptr %i.a, align 8, !alias.scope !92009, !noalias !92010
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ay, ptr %i.ba, align 8, !alias.scope !92009, !noalias !92010
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aw, ptr %i.bb, align 8, !alias.scope !92009, !noalias !92010
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.az, ptr %i.bc, align 8, !alias.scope !92009, !noalias !92010
  %i.bd = call fastcc noundef i64 @_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2M_8adapters3map8map_foldRB19_jjNCNvXs_NtNtB1i_6common3bufINtB4u_7BufListB19_ENtNtNtB28_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2K_5accumjNtB5S_3Sum3sumINtB3M_3MapBY_B4n_EE0E0ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = add i64 %i.ao, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !178
  %i.bh = icmp ult i64 %i.be, %i.bg
  br label %bb.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtNtCsaI3lGUjttVO_5hyper5proto2h26clientINtB5_10ClientTaskNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB1H_7TokioIoINtNtNtB1N_3net11http_stream15ProxyHttpStreamNtNtNtNtB1L_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE9poll_pipeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3 = alloca [16 x i8], align 8            ; 2 uses
  %i.a = alloca [6112 x i8], align 16             ; 12 uses
  %i.b = alloca [6112 x i8], align 16             ; 11 uses
  %i.c = alloca [96 x i8], align 8                ; 15 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !noundef !178 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !92079
  %i.i = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !92079 ; 13 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !183

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #62, !noalias !92079
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.c
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %.sroa.614.0..sroa_idx.i, align 8
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.715.0..sroa_idx.i, align 8
  %.sroa.816.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 0, ptr %.sroa.816.0..sroa_idx.i, align 8
  %.sroa.917.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 0, ptr %.sroa.917.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 65
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 66
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 2
  %i.k = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  tail call void @llvm.trap()
  unreachable

_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load i8, ptr %i.m, align 8, !range !181, !noundef !178
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.q = load i8, ptr %i.p, align 1, !range !181, !noundef !178
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.h:                                             ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.07.0.copyload = load ptr, ptr %i.s, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx, i64 16, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i8 0, ptr %i.w, align 8
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store i8 2, ptr %.sroa.327.0..sroa_idx, align 8
  %i.x = call fastcc { i64, ptr } @_RNvXs_NtNtCsaI3lGUjttVO_5hyper5proto2h2INtB4_16PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #53 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 4 uses
  %i.aa = trunc nuw i64 %i.y to i1                ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load i8, ptr %i.ab, align 8, !range !199, !noundef !178
  %.not42 = icmp eq i8 %i.ac, 2
  br i1 %.not42, label %bb.ab, label %bb.t

bb.k:                                             ; preds = %bb.i
  call void @_RNvXsa_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !92080)
  call void @llvm.experimental.noalias.scope.decl(metadata !92081)
  %i.ad = load ptr, ptr %i.v, align 8, !alias.scope !92082, !nonnull !178, !noundef !178
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !92083
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92084)
  call void @llvm.experimental.noalias.scope.decl(metadata !92085)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !92086, !nonnull !178, !noundef !178
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !92087
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams10SendBufferINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !92088)
  %i.ak = load i8, ptr %.sroa.327.0..sroa_idx, align 8, !range !199, !alias.scope !92089, !noundef !178
  %i.al = icmp eq i8 %i.ak, 2
  br i1 %i.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaI3lGUjttVO_5hyper5proto2h26PeekedNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !92090)
  call void @llvm.experimental.noalias.scope.decl(metadata !92091)
  call void @llvm.experimental.noalias.scope.decl(metadata !92092)
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !92093, !noundef !178
  %i.ap = load ptr, ptr %i.am, align 8, !alias.scope !92093, !nonnull !178, !align !186, !noundef !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !92094, !nonnull !178, !noundef !178
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !92093, !noundef !178
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !92093, !noundef !178
  call void %i.ar(ptr noundef %i.ao, ptr noundef %i.at, i64 noundef %i.av) #53, !noalias !92094, !inline_history !92037
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaI3lGUjttVO_5hyper5proto2h26PeekedNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaI3lGUjttVO_5hyper5proto2h26PeekedNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !92095)
  call void @llvm.experimental.noalias.scope.decl(metadata !92096)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !92097 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.aw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaI3lGUjttVO_5hyper5proto2h26PeekedNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !92097, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !92098
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaI3lGUjttVO_5hyper5proto2h26PeekedNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i, %bb.ad
  %.sroa.022.1 = xor i1 %i.aa, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = icmp ne i64 %i.y, 0
  %i.az = icmp eq ptr %i.z, null
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit
  %.val.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !92099, !noundef !178 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.z, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !92099 ; 4 uses
  %i.bb = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.bb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.bc = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !178, !noalias !92099 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.bc(ptr noundef nonnull %.val.i.i.i.i) #61, !noalias !92099, !inline_history !164
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !180, !invariant.load !178, !noalias !92099 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !184, !invariant.load !178, !noalias !92099
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) %i.bh) #53, !noalias !92099
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.s, %bb.p
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 24, i64 noundef 8) #53, !noalias !92099
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit

bb.t:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !92100)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !92100, !noalias !92101, !nonnull !178, !noundef !178 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 2 uses
  %i.bl = load atomic i64, ptr %i.bk seq_cst, align 8, !noalias !92102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.04.0.i = phi i64 [ %i.bl, %bb.t ], [ %.sroa.01.0.i.i, %bb.v ] ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !92102, !noundef !178
  %i.bo = sub i64 9223372036854775807, %i.bn
  %i.bp = icmp eq i64 %.sroa.04.0.i, %i.bo
  br i1 %i.bp, label %bb.w, label %bb.v, !prof !187

bb.v:                                             ; preds = %bb.u
  %i.bq = add i64 %.sroa.04.0.i, 1
  %i.br = cmpxchg ptr %i.bk, i64 %.sroa.04.0.i, i64 %i.bq seq_cst seq_cst, align 8, !noalias !92102 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.br, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.br, 0
  br i1 %.sroa.18.0.in.i.i, label %bb.x, label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3698, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3699) #63, !noalias !92102
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bs = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8, !noalias !92102
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !92103
  %i.bu = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !92103 ; 8 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.z, label %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit, !prof !183

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #62, !noalias !92103
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.trap()
  unreachable

_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.y
  store i64 1, ptr %i.bu, align 8, !noalias !92102
  %.sroa.4.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i46, align 8, !noalias !92102
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx.i47, align 8, !noalias !92102
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !92102
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr null, ptr %.sroa.721.0..sroa_idx.i, align 8, !noalias !92102
  %.sroa.822.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i8 0, ptr %.sroa.822.0..sroa_idx.i, align 8, !noalias !92102
  br label %bb.ab

bb.ab:                                            ; preds = %bb.j, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.029.sroa.4.0 = phi ptr [ undef, %bb.j ], [ %i.bu, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.029.sroa.0.0 = phi ptr [ undef, %bb.j ], [ %i.bj, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.430.0 = phi i8 [ 2, %bb.j ], [ 0, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit ]
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.by = load ptr, ptr %i.d, align 8, !nonnull !178, !noundef !178
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.bz, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %.sroa.029.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.6.sroa.0.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %.sroa.029.sroa.4.0, ptr %.sroa.6.sroa.0.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i8 %.sroa.430.0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr %i.by, ptr %.sroa.7.0..sroa_idx, align 8
  store i128 2, ptr %i.b, align 16
  call fastcc void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper2rt6bounds9h2_clientNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB2_19Http2ClientConnExecNtNtCsgCecv3eZDcN_5alloc6string6StringINtBO_7TokioIoINtNtNtBU_3net11http_stream15ProxyHttpStreamNtNtNtNtBS_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE17execute_h2_futureCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(6112) %i.b) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit, %bb.g, %bb.h
  %.sroa.022.2 = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ %.sroa.022.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.023.1 = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.024.1 = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.03.0 = phi ptr [ %.sroa.07.0.copyload, %bb.h ], [ null, %bb.g ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.617.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.cb, align 16
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.sroa.516.0..sroa_idx, align 16
  %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.03.0, ptr %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.i, ptr %.sroa.718.0..sroa_idx, align 8
  store i128 3, ptr %i.a, align 16
  call fastcc void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper2rt6bounds9h2_clientNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB2_19Http2ClientConnExecNtNtCsgCecv3eZDcN_5alloc6string6StringINtBO_7TokioIoINtNtNtBU_3net11http_stream15ProxyHttpStreamNtNtNtNtBS_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE17execute_h2_futureCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(6112) %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.022.2, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.ak, %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.023.1, label %bb.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !92104)
  call void @llvm.experimental.noalias.scope.decl(metadata !92105)
  %i.cc = load ptr, ptr %i.d, align 8, !alias.scope !92106, !nonnull !178, !noundef !178 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 66
  store atomic i8 1, ptr %i.cd seq_cst, align 1, !noalias !92106
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.cf = atomicrmw xchg ptr %i.ce, i8 1 seq_cst, align 1, !noalias !92106
  %.not.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !92106, !align !186, !noundef !178 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !92106
  store ptr null, ptr %i.cg, align 8, !noalias !92106
  store atomic i8 0, ptr %i.ce seq_cst, align 8, !noalias !92107
  %i.ck = icmp eq ptr %i.ch, null
  br i1 %i.ck, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !92106, !nonnull !178, !noundef !178
  call void %i.cm(ptr noundef %i.cj) #53, !noalias !92106, !inline_history !165
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 2 uses
  %i.co = atomicrmw xchg ptr %i.cn, i8 1 seq_cst, align 1, !noalias !92106
  %.not5.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not5.i.i.i, label %bb.ai, label %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !92106, !align !186, !noundef !178 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !92106
  store ptr null, ptr %i.cp, align 8, !noalias !92106
  %.not6.i.i.i = icmp eq ptr %i.cq, null
  store atomic i8 0, ptr %i.cn seq_cst, align 8, !noalias !92106
  br i1 %.not6.i.i.i, label %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !92106, !nonnull !178, !noundef !178
  call void %i.cu(ptr noundef %i.cs) #53, !noalias !92106, !inline_history !166
  br label %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i

_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.aj, %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !92108)
  call void @llvm.experimental.noalias.scope.decl(metadata !92109)
  %i.cv = load ptr, ptr %i.d, align 8, !alias.scope !92110, !nonnull !178, !noundef !178
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !92110
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit

bb.ak:                                            ; preds = %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCslXgxf2tUV4p_15futures_channel7oneshot5InneruEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.an, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %.sroa.024.1, label %bb.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  call void @_RNvXsa_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !92111)
  call void @llvm.experimental.noalias.scope.decl(metadata !92112)
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !92113, !nonnull !178, !noundef !178
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !92114
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.am, %bb.al
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92115)
  call void @llvm.experimental.noalias.scope.decl(metadata !92116)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !92117, !nonnull !178, !noundef !178
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !92118
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.an, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams10SendBufferINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dc) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.ap, %bb.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !92119)
  call void @llvm.experimental.noalias.scope.decl(metadata !92120)
  %.val.i.i = load i64, ptr %i.dg, align 8, !alias.scope !92121 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i, 0
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i = load ptr, ptr %i.di, align 8, !alias.scope !92121, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !92121
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtNtCsaI3lGUjttVO_5hyper5proto2h26clientINtB5_10ClientTaskNtNtNtBb_4body8incoming8IncomingNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB1B_7TokioIoINtNtNtB1H_3net11http_stream15ProxyHttpStreamNtNtNtNtB1F_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE9poll_pipeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3 = alloca [16 x i8], align 8            ; 2 uses
  %i.a = alloca [6112 x i8], align 16             ; 12 uses
  %i.b = alloca [6112 x i8], align 16             ; 11 uses
  %i.c = alloca [112 x i8], align 8               ; 14 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !noundef !178 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !92182
  %i.i = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !92182 ; 13 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !183

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #62, !noalias !92182
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.c
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %.sroa.614.0..sroa_idx.i, align 8
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.715.0..sroa_idx.i, align 8
  %.sroa.816.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 0, ptr %.sroa.816.0..sroa_idx.i, align 8
  %.sroa.917.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 0, ptr %.sroa.917.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 65
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 66
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 2
  %i.k = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  tail call void @llvm.trap()
  unreachable

_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load i8, ptr %i.m, align 8, !range !181, !noundef !178
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.q = load i8, ptr %i.p, align 1, !range !181, !noundef !178
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.h:                                             ; preds = %_RINvNtCslXgxf2tUV4p_15futures_channel7oneshot7channeluECsgZAIVb0XKpv_9ssservice.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.07.0.copyload = load ptr, ptr %i.s, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx, i64 16, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i8 0, ptr %i.w, align 8
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store i8 2, ptr %.sroa.327.0..sroa_idx, align 8
  %i.x = call fastcc { i64, ptr } @_RNvXs_NtNtCsaI3lGUjttVO_5hyper5proto2h2INtB4_16PipeToSendStreamNtNtNtB8_4body8incoming8IncomingENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(112) %i.c, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #53 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 4 uses
  %i.aa = trunc nuw i64 %i.y to i1                ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load i8, ptr %i.ab, align 8, !range !199, !noundef !178
  %.not42 = icmp eq i8 %i.ac, 2
  br i1 %.not42, label %bb.ab, label %bb.t

bb.k:                                             ; preds = %bb.i
  call void @_RNvXsa_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !92183)
  call void @llvm.experimental.noalias.scope.decl(metadata !92184)
  %i.ad = load ptr, ptr %i.v, align 8, !alias.scope !92185, !nonnull !178, !noundef !178
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !92186
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92187)
  call void @llvm.experimental.noalias.scope.decl(metadata !92188)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !92189, !nonnull !178, !noundef !178
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !92190
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams10SendBufferINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !92191)
  %i.ak = load i8, ptr %.sroa.327.0..sroa_idx, align 8, !range !199, !alias.scope !92192, !noundef !178
  %i.al = icmp eq i8 %i.ak, 2
  br i1 %i.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtNtBI_4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !92193)
  call void @llvm.experimental.noalias.scope.decl(metadata !92194)
  call void @llvm.experimental.noalias.scope.decl(metadata !92195)
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !92196, !noundef !178
  %i.ap = load ptr, ptr %i.am, align 8, !alias.scope !92196, !nonnull !178, !align !186, !noundef !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !92197, !nonnull !178, !noundef !178
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !92196, !noundef !178
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !92196, !noundef !178
  call void %i.ar(ptr noundef %i.ao, ptr noundef %i.at, i64 noundef %i.av) #53, !noalias !92197, !inline_history !92148
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtNtBI_4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtNtBI_4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit.i, %bb.n
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c) #53
  br label %bb.o

bb.o:                                             ; preds = %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper5proto2h216PipeToSendStreamNtNtNtBI_4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.022.1 = xor i1 %i.aa, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = icmp ne i64 %i.y, 0
  %i.ax = icmp eq ptr %i.z, null
  %or.cond.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !92198, !noundef !178 ; 3 uses
  %i.ay = getelementptr i8, ptr %i.z, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !92198 ; 4 uses
  %i.az = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.az, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.ba = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !178, !noalias !92198 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.ba(ptr noundef nonnull %.val.i.i.i.i) #61, !noalias !92198, !inline_history !164
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !180, !invariant.load !178, !noalias !92198 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !184, !invariant.load !178, !noalias !92198
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) %i.bf) #53, !noalias !92198
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.s, %bb.p
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 24, i64 noundef 8) #53, !noalias !92198
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit

bb.t:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !92199)
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !92199, !noalias !92200, !nonnull !178, !noundef !178 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  %i.bj = load atomic i64, ptr %i.bi seq_cst, align 8, !noalias !92201
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.04.0.i = phi i64 [ %i.bj, %bb.t ], [ %.sroa.01.0.i.i, %bb.v ] ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !92201, !noundef !178
  %i.bm = sub i64 9223372036854775807, %i.bl
  %i.bn = icmp eq i64 %.sroa.04.0.i, %i.bm
  br i1 %i.bn, label %bb.w, label %bb.v, !prof !187

bb.v:                                             ; preds = %bb.u
  %i.bo = add i64 %.sroa.04.0.i, 1
  %i.bp = cmpxchg ptr %i.bi, i64 %.sroa.04.0.i, i64 %i.bo seq_cst seq_cst, align 8, !noalias !92201 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bp, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.bp, 0
  br i1 %.sroa.18.0.in.i.i, label %bb.x, label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3698, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3699) #63, !noalias !92201
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bq = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !noalias !92201
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !92202
  %i.bs = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !92202 ; 8 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.z, label %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit, !prof !183

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #62, !noalias !92202
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.trap()
  unreachable

_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.y
  store i64 1, ptr %i.bs, align 8, !noalias !92201
  %.sroa.4.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i46, align 8, !noalias !92201
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx.i47, align 8, !noalias !92201
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !92201
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr null, ptr %.sroa.721.0..sroa_idx.i, align 8, !noalias !92201
  %.sroa.822.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i8 0, ptr %.sroa.822.0..sroa_idx.i, align 8, !noalias !92201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.j, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.029.sroa.4.0 = phi ptr [ undef, %bb.j ], [ %i.bs, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.029.sroa.0.0 = phi ptr [ undef, %bb.j ], [ %i.bh, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.430.0 = phi i8 [ 2, %bb.j ], [ 0, %_RNvXsm_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerzENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit ]
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bu = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  %i.bw = load ptr, ptr %i.d, align 8, !nonnull !178, !noundef !178
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.bx, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %.sroa.029.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.6.sroa.0.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr %.sroa.029.sroa.4.0, ptr %.sroa.6.sroa.0.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i8 %.sroa.430.0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %i.bw, ptr %.sroa.7.0..sroa_idx, align 8
  store i128 2, ptr %i.b, align 16
  call fastcc void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper2rt6bounds9h2_clientNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB2_19Http2ClientConnExecNtNtNtB8_4body8incoming8IncomingINtBO_7TokioIoINtNtNtBU_3net11http_stream15ProxyHttpStreamNtNtNtNtBS_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE17execute_h2_futureCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(6112) %i.b) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.o, %bb.g, %bb.h
  %.sroa.022.2 = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ %.sroa.022.1, %bb.o ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.023.1 = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ false, %bb.o ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.024.1 = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.o ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.03.0 = phi ptr [ %.sroa.07.0.copyload, %bb.h ], [ null, %bb.g ], [ null, %bb.o ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.617.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.bz, align 16
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.sroa.516.0..sroa_idx, align 16
  %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.03.0, ptr %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.i, ptr %.sroa.718.0..sroa_idx, align 8
  store i128 3, ptr %i.a, align 16
  call fastcc void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper2rt6bounds9h2_clientNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorINtB2_19Http2ClientConnExecNtNtNtB8_4body8incoming8IncomingINtBO_7TokioIoINtNtNtBU_3net11http_stream15ProxyHttpStreamNtNtNtNtBS_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEE17execute_h2_futureCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 captures(address) dereferenceable(6112) %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.022.2, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.ak, %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.023.1, label %bb.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !92203)
  call void @llvm.experimental.noalias.scope.decl(metadata !92204)
  %i.ca = load ptr, ptr %i.d, align 8, !alias.scope !92205, !nonnull !178, !noundef !178 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 66
  store atomic i8 1, ptr %i.cb seq_cst, align 1, !noalias !92205
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.cd = atomicrmw xchg ptr %i.cc, i8 1 seq_cst, align 1, !noalias !92205
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !92205, !align !186, !noundef !178 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !92205
  store ptr null, ptr %i.ce, align 8, !noalias !92205
  store atomic i8 0, ptr %i.cc seq_cst, align 8, !noalias !92206
  %i.ci = icmp eq ptr %i.cf, null
  br i1 %i.ci, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !92205, !nonnull !178, !noundef !178
  call void %i.ck(ptr noundef %i.ch) #53, !noalias !92205, !inline_history !165
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 56 ; 2 uses
  %i.cm = atomicrmw xchg ptr %i.cl, i8 1 seq_cst, align 1, !noalias !92205
  %.not5.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not5.i.i.i, label %bb.ai, label %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !92205, !align !186, !noundef !178 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !92205
  store ptr null, ptr %i.cn, align 8, !noalias !92205
  %.not6.i.i.i = icmp eq ptr %i.co, null
  store atomic i8 0, ptr %i.cl seq_cst, align 8, !noalias !92205
  br i1 %.not6.i.i.i, label %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !92205, !nonnull !178, !noundef !178
  call void %i.cs(ptr noundef %i.cq) #53, !noalias !92205, !inline_history !166
  br label %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i

_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.aj, %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !92207)
  call void @llvm.experimental.noalias.scope.decl(metadata !92208)
  %i.ct = load ptr, ptr %i.d, align 8, !alias.scope !92209, !nonnull !178, !noundef !178
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !92209
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit

bb.ak:                                            ; preds = %_RNvXsa_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCslXgxf2tUV4p_15futures_channel7oneshot5InneruEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.an, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %.sroa.024.1, label %bb.ap, label %bb.ao

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot8ReceiveruEECsgZAIVb0XKpv_9ssservice.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @_RNvXsa_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !92210)
  call void @llvm.experimental.noalias.scope.decl(metadata !92211)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !92212, !nonnull !178, !noundef !178
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !92213
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.am, %bb.al
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92214)
  call void @llvm.experimental.noalias.scope.decl(metadata !92215)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !92216, !nonnull !178, !noundef !178
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !92217
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.an, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams15OpaqueStreamRefECsgZAIVb0XKpv_9ssservice.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams10SendBufferINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.da) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit

bb.ao:                                            ; preds = %bb.ap, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2dlyTE5y14r_2h25share10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.de) #53
  br label %bb.ao
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs2dlyTE5y14r_2h25shareINtB4_10SendStreamINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE13poll_capacityCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92229)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !92229, !noalias !92230, !nonnull !178, !noundef !178 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.e = cmpxchg ptr %i.d, i32 0, i32 1 acquire monotonic, align 4, !noalias !92231
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.d) #53, !noalias !92231
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !92231
  %i.h = and i64 %i.g, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !92231
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.n = load atomic i8, ptr %i.m monotonic, align 1, !noalias !92231
  %.not.i.i.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.e, !prof !192

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92232
  store ptr %i.d, ptr %i.a, align 8, !noalias !92232
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.o, align 8, !noalias !92232
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1973, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2255) #63, !noalias !92233
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i
  %i.p = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92234
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load <2 x i32>, ptr %i.r, align 8, !alias.scope !92229, !noalias !92230
  store <2 x i32> %i.t, ptr %i.s, align 8, !noalias !92234
  store ptr %i.q, ptr %i.b, align 8, !noalias !92234
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.v = call i64 @_RNvMNtNtNtCs2dlyTE5y14r_2h25proto7streams4sendNtB2_4Send13poll_capacity(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #53, !noalias !92229 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92234
  br i1 %i.p, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i
  %i.w = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !92234
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g, !prof !192

bb.g:                                             ; preds = %bb.f
  %i.z = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !92229
  br i1 %i.z, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_21DnsExchangeBackgroundINtNtB7_15dns_multiplexer14DnsMultiplexerINtNtNtB9_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB2S_17AsyncIoStdAsTokioIB2Q_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEEENtB2U_9TokioTimeENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice:bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %.sroa.645.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 30
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %.sroa.628.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %.sroa.729.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %.sroa.729.sroa.4.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %.sroa.729.sroa.5.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 34
  %.sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 52
  %.sroa.729.sroa.7.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %.sroa.729.sroa.8.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %.sroa.729.sroa.9.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 62
  %.sroa.4292.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.4296.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dz, i64 134 ; 2 uses
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.031.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.031.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.041.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.041.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %.sroa.6.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.ig = getelementptr inbounds nuw i8, ptr %i.em, i64 272 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %.sroa.785.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %.sroa.886.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ek, i64 72 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ef, i64 184
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ef, i64 192
  %i.il = getelementptr inbounds nuw i8, ptr %i.ef, i64 200
  %i.im = getelementptr inbounds nuw i8, ptr %i.ef, i64 224
  %i.in = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.io = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ae, i64 134
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.is = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.iv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.029.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.432.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.432.i, i64 7
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.09.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jf = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.jj = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.el, i64 72 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.033.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %.sroa.3.sroa.2.sroa.3.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.sroa.3.i.i.i, i64 4
  %.sroa.3.sroa.2.sroa.3.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.sroa.3.i.i.i, i64 2
  br label %bb.b

bb.b:                                             ; preds = %bb.jj, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !99924)
  call void @llvm.experimental.noalias.scope.decl(metadata !99925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.experimental.noalias.scope.decl(metadata !99926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !99927
  %i.jm = load i8, ptr %i.er, align 8, !range !181, !noalias !99928, !noundef !178
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !192

._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i: ; preds = %bb.b
  %.pre.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !99929
  %.pre1.i.i.i.i = load i64, ptr %i.es, align 8, !noalias !99929
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.b
  %i.jo = call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() #53, !noalias !99930 ; 2 uses
  %i.jp = extractvalue { i64, i64 } %i.jo, 0
  %i.jq = extractvalue { i64, i64 } %i.jo, 1      ; 2 uses
  store i64 %i.jq, ptr %i.es, align 8, !noalias !99931
  store i8 1, ptr %i.er, align 8, !noalias !99931
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i
  %.pre-phi137.i.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i ], [ %i.jq, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %i.jr = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i ], [ %i.jp, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %i.js = add i64 %i.jr, 1
  store i64 %i.js, ptr %i.eq, align 8, !noalias !99929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) @530, i64 32, i1 false), !noalias !99927
  store i64 %i.jr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !99927
  store i64 %.pre-phi137.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !99927
  call void @llvm.experimental.noalias.scope.decl(metadata !99932)
  %i.jt = load i64, ptr %i.eu, align 8, !alias.scope !99933, !noalias !99934, !noundef !178 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i, label %.lr.ph.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.865.i.i)
  br label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.jv = load ptr, ptr %i.et, align 8, !alias.scope !99933, !noalias !99934, !nonnull !178, !noundef !178 ; 3 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.jv, align 16, !noalias !99935
  %i.jw = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.jx = bitcast <16 x i1> %i.jw to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %.lr.ph.i.i
  %.sroa.0.0116.i.i = phi ptr [ %i.jv, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %bb.v ] ; 2 uses
  %.sroa.6.0115.i.i = phi ptr [ %i.jy, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.v ] ; 2 uses
  %.sroa.841.0114.i.i = phi i16 [ %i.jx, %.lr.ph.i.i ], [ %i.kh, %bb.v ] ; 2 uses
  %.sroa.1042.0113.i.i = phi i64 [ %i.jt, %.lr.ph.i.i ], [ %i.kk, %bb.v ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.841.0114.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.jz = phi ptr [ %i.kd, %.lr.ph.i.i.i.i ], [ %.sroa.6.0115.i.i, %bb.c ] ; 2 uses
  %i.ka = phi ptr [ %i.kc, %.lr.ph.i.i.i.i ], [ %.sroa.0.0116.i.i, %bb.c ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.jz, align 16, !noalias !99936
  %i.kb = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1)
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 -896 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.kb to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.0115.i.i, %bb.c ], [ %i.kd, %.lr.ph.i.i.i.i ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0116.i.i, %bb.c ], [ %i.kc, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.841.0114.i.i, %bb.c ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ke = add i16 %.lcssa.i.i.i.i, -1
  %i.kf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.kg = zext nneg i16 %i.kf to i64
  %i.kh = and i16 %i.ke, %.lcssa.i.i.i.i
  %i.ki = sub nsw i64 0, %i.kg
  %i.kj = getelementptr inbounds [56 x i8], ptr %.sroa.0.1.i.i, i64 %i.ki ; 2 uses
  %i.kk = add i64 %.sroa.1042.0113.i.i, -1        ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -56
  %i.km = getelementptr inbounds i8, ptr %i.kj, i64 -48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !99927
  %i.kn = load i16, ptr %i.kl, align 2, !noalias !99937, !noundef !178
  store i16 %i.kn, ptr %i.dj, align 2, !noalias !99927
  %i.ko = call noundef zeroext i1 @_RNvMNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexerNtB2_13ActiveRequest11is_canceled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.km) #53, !noalias !99937
  br i1 %i.ko, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit166, label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.v
  %.sroa.079.0.copyload.pre.i.i = load ptr, ptr %i.dk, align 8, !noalias !99927 ; 4 uses
  %.sroa.480.0.copyload.pre.i.i = load i64, ptr %i.ey, align 8, !noalias !99927 ; 3 uses
  %.sroa.582.0.copyload.pre.i.i = load i64, ptr %i.ez, align 8, !noalias !99927 ; 2 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.079.0.copyload.pre.i.i, align 16, !noalias !99938
  %i.kp = icmp eq i64 %.sroa.480.0.copyload.pre.i.i, 0 ; 5 uses
  br i1 %i.kp, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.kq = mul i64 %.sroa.480.0.copyload.pre.i.i, -80
  %2 = mul i64 %.sroa.480.0.copyload.pre.i.i, 81
  %i.kr = add i64 %2, 97
  %3 = getelementptr i8, ptr %.sroa.079.0.copyload.pre.i.i, i64 %i.kq
  %i.ks = getelementptr i8, ptr %3, i64 -80
  br label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %._crit_edge.i.i
  %.sroa.49.0.i.i.i.i = phi i64 [ undef, %._crit_edge.i.i ], [ %i.kr, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.510.0.i.i.i.i = phi ptr [ undef, %._crit_edge.i.i ], [ %i.ks, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.865.i.i)
  %i.kt = icmp eq i64 %.sroa.582.0.copyload.pre.i.i, 0
  br i1 %i.kt, label %.thread.i.i, label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ku = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.kv = bitcast <16 x i1> %i.ku to i16
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.pre.i.i, i64 16
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.l, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i
  %.sink.i.i.i161.i.i = phi i64 [ 0, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.sink.i.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sink.i.i.i.i.i, %bb.l ]
  %.sroa.510.0.i.i159.i.i = phi ptr [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.sroa.510.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.510.0.i.i.i.i, %bb.l ]
  %.sroa.49.0.i.i157.i.i = phi i64 [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.sroa.49.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.49.0.i.i.i.i, %bb.l ]
  %i.kx = phi i1 [ true, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.kp, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.kp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.865.i.i)
  br label %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13drop_elementsCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.l, %.lr.ph121.i.i
  %.sroa.651.0120.i.i = phi ptr [ %.sroa.079.0.copyload.pre.i.i, %.lr.ph121.i.i ], [ %.sroa.651.1.i.i, %bb.l ] ; 2 uses
  %.sroa.12.0119.i.i = phi ptr [ %i.kw, %.lr.ph121.i.i ], [ %.sroa.12.1.i.i, %bb.l ] ; 2 uses
  %.sroa.1652.0118.i.i = phi i16 [ %i.kv, %.lr.ph121.i.i ], [ %i.lg, %bb.l ] ; 2 uses
  %.sroa.2053.0117.i.i = phi i64 [ %.sroa.582.0.copyload.pre.i.i, %.lr.ph121.i.i ], [ %i.lj, %bb.l ]
  %.not11.i.i27.i.i = icmp eq i16 %.sroa.1652.0118.i.i, 0
  br i1 %.not11.i.i27.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i31.i.i
  %i.ky = phi ptr [ %i.lc, %.lr.ph.i.i31.i.i ], [ %.sroa.12.0119.i.i, %bb.d ] ; 2 uses
  %i.kz = phi ptr [ %i.lb, %.lr.ph.i.i31.i.i ], [ %.sroa.651.0120.i.i, %bb.d ]
  %.val9.i.i34.i.i = load <16 x i8>, ptr %i.ky, align 16, !noalias !99939
  %i.la = icmp sgt <16 x i8> %.val9.i.i34.i.i, splat (i8 -1)
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -1280 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 2 uses
  %.cast.i.i35.i.i = bitcast <16 x i1> %i.la to i16 ; 2 uses
  %.not.i.i36.i.i = icmp eq i16 %.cast.i.i35.i.i, 0
  br i1 %.not.i.i36.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %.lr.ph.i.i31.i.i, %bb.d
  %.sroa.12.1.i.i = phi ptr [ %.sroa.12.0119.i.i, %bb.d ], [ %i.lc, %.lr.ph.i.i31.i.i ] ; 2 uses
  %.sroa.651.1.i.i = phi ptr [ %.sroa.651.0120.i.i, %bb.d ], [ %i.lb, %.lr.ph.i.i31.i.i ] ; 3 uses
  %.lcssa.i.i30.i.i = phi i16 [ %.sroa.1652.0118.i.i, %bb.d ], [ %.cast.i.i35.i.i, %.lr.ph.i.i31.i.i ] ; 3 uses
  %i.ld = add i16 %.lcssa.i.i30.i.i, -1
  %i.le = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i30.i.i, i1 true)
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = and i16 %i.ld, %.lcssa.i.i30.i.i        ; 2 uses
  %i.lh = sub nsw i64 0, %i.lf
  %i.li = getelementptr inbounds [80 x i8], ptr %.sroa.651.1.i.i, i64 %i.lh ; 3 uses
  %i.lj = add i64 %.sroa.2053.0117.i.i, -1        ; 4 uses
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 -80
  %.sroa.062.0.copyload.i.i = load i16, ptr %i.lk, align 8, !noalias !99940 ; 2 uses
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.li, i64 -72
  %.sroa.564.0.copyload.i.i = load i8, ptr %.sroa.564.0..sroa_idx.i.i, align 8, !noalias !99940 ; 2 uses
  %.sroa.865.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.li, i64 -71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.0..sroa_idx.i.i, i64 71, i1 false), !noalias !99940
  %.not23.i.i = icmp eq i8 %.sroa.564.0.copyload.i.i, -1
  br i1 %.not23.i.i, label %bb.i, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit191

_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit191: ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !99927
  store i8 %.sroa.564.0.copyload.i.i, ptr %i.dd, align 8, !noalias !99927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.8..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.i.i, i64 71, i1 false), !noalias !99927
  call void @llvm.experimental.noalias.scope.decl(metadata !99941)
  call void @llvm.experimental.noalias.scope.decl(metadata !99942), !noalias !99943
  %.val.i.i103 = load i64, ptr %i.fa, align 8, !alias.scope !99944, !noalias !99945, !noundef !178 ; 2 uses
  %.val1.i.i = load i64, ptr %i.fb, align 8, !alias.scope !99944, !noalias !99945, !noundef !178 ; 2 uses
  %i.ll = xor i64 %.val.i.i103, 8317987319222330741
  %i.lm = xor i64 %.val1.i.i, 7237128888997146477 ; 3 uses
  %i.ln = xor i64 %.val.i.i103, 7816392313619706465
  %i.lo = zext i16 %.sroa.062.0.copyload.i.i to i64 ; 2 uses
  %i.lp = or disjoint i64 %i.lo, 144115188075855872
  %i.lq = xor i64 %.val1.i.i, %i.lo
  %i.lr = xor i64 %i.lq, 8531335443230516595      ; 3 uses
  %i.ls = add i64 %i.lm, %i.ll                    ; 3 uses
  %i.lt = add i64 %i.lr, %i.ln                    ; 2 uses
  %i.lu = call noundef i64 @llvm.fshl.i64(i64 %i.lm, i64 %i.lm, i64 13)
  %i.lv = xor i64 %i.lu, %i.ls                    ; 3 uses
  %i.lw = call noundef i64 @llvm.fshl.i64(i64 %i.lr, i64 %i.lr, i64 16)
  %i.lx = xor i64 %i.lw, %i.lt                    ; 3 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 32)
  %i.lz = add i64 %i.lv, %i.lt                    ; 3 uses
  %i.ma = add i64 %i.lx, %i.ly                    ; 2 uses
  %i.mb = call noundef i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 17)
  %i.mc = xor i64 %i.lz, %i.mb                    ; 3 uses
  %i.md = call noundef i64 @llvm.fshl.i64(i64 %i.lx, i64 %i.lx, i64 21)
  %i.me = xor i64 %i.md, %i.ma                    ; 3 uses
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %i.lz, i64 %i.lz, i64 32)
  %i.mg = xor i64 %i.ma, %i.lp
  %i.mh = xor i64 %i.mf, 255
  %i.mi = add i64 %i.mg, %i.mc                    ; 3 uses
  %i.mj = add i64 %i.mh, %i.me                    ; 2 uses
  %i.mk = call noundef i64 @llvm.fshl.i64(i64 %i.mc, i64 %i.mc, i64 13)
  %i.ml = xor i64 %i.mi, %i.mk                    ; 3 uses
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.me, i64 %i.me, i64 16)
  %i.mn = xor i64 %i.mj, %i.mm                    ; 3 uses
  %i.mo = call noundef i64 @llvm.fshl.i64(i64 %i.mi, i64 %i.mi, i64 32)
  %i.mp = add i64 %i.ml, %i.mj                    ; 3 uses
  %i.mq = add i64 %i.mn, %i.mo                    ; 2 uses
  %i.mr = call noundef i64 @llvm.fshl.i64(i64 %i.ml, i64 %i.ml, i64 17)
  %i.ms = xor i64 %i.mp, %i.mr                    ; 3 uses
  %i.mt = call noundef i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 21)
  %i.mu = xor i64 %i.mt, %i.mq                    ; 3 uses
  %i.mv = call noundef i64 @llvm.fshl.i64(i64 %i.mp, i64 %i.mp, i64 32)
  %i.mw = add i64 %i.ms, %i.mq                    ; 3 uses
  %i.mx = add i64 %i.mu, %i.mv                    ; 2 uses
  %i.my = call noundef i64 @llvm.fshl.i64(i64 %i.ms, i64 %i.ms, i64 13)
  %i.mz = xor i64 %i.my, %i.mw                    ; 3 uses
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 16)
  %i.nb = xor i64 %i.na, %i.mx                    ; 3 uses
  %i.nc = call noundef i64 @llvm.fshl.i64(i64 %i.mw, i64 %i.mw, i64 32)
  %i.nd = add i64 %i.mz, %i.mx                    ; 3 uses
  %i.ne = add i64 %i.nb, %i.nc                    ; 2 uses
  %i.nf = call noundef i64 @llvm.fshl.i64(i64 %i.mz, i64 %i.mz, i64 17)
  %i.ng = xor i64 %i.nf, %i.nd                    ; 3 uses
  %i.nh = call noundef i64 @llvm.fshl.i64(i64 %i.nb, i64 %i.nb, i64 21)
  %i.ni = xor i64 %i.nh, %i.ne                    ; 3 uses
  %i.nj = call noundef i64 @llvm.fshl.i64(i64 %i.nd, i64 %i.nd, i64 32)
  %i.nk = add i64 %i.ng, %i.ne
  %i.nl = add i64 %i.ni, %i.nj                    ; 2 uses
  %i.nm = call noundef i64 @llvm.fshl.i64(i64 %i.ng, i64 %i.ng, i64 13)
  %i.nn = xor i64 %i.nm, %i.nk                    ; 3 uses
  %i.no = call noundef i64 @llvm.fshl.i64(i64 %i.ni, i64 %i.ni, i64 16)
  %i.np = xor i64 %i.no, %i.nl                    ; 2 uses
  %i.nq = add i64 %i.nn, %i.nl                    ; 3 uses
  %i.nr = call noundef i64 @llvm.fshl.i64(i64 %i.nn, i64 %i.nn, i64 17)
  %i.ns = call noundef i64 @llvm.fshl.i64(i64 %i.np, i64 %i.np, i64 21)
  %i.nt = call noundef i64 @llvm.fshl.i64(i64 %i.nq, i64 %i.nq, i64 32)
  %i.nu = xor i64 %i.nr, %i.ns
  %i.nv = xor i64 %i.nu, %i.nt
  %i.nw = xor i64 %i.nv, %i.nq                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99946), !noalias !99943
  call void @llvm.experimental.noalias.scope.decl(metadata !99947), !noalias !99943
  call void @llvm.experimental.noalias.scope.decl(metadata !99948), !noalias !99943
  %i.nx = lshr i64 %i.nw, 57
  %i.ny = trunc nuw nsw i64 %i.nx to i8
  %i.nz = load i64, ptr %i.fc, align 8, !alias.scope !99949, !noalias !99950, !noundef !178 ; 3 uses
  %i.oa = load ptr, ptr %i.et, align 8, !alias.scope !99949, !noalias !99950, !nonnull !178, !noundef !178 ; 4 uses
  %i.ob = insertelement <16 x i8> poison, i8 %i.ny, i64 0
  %i.oc = shufflevector <16 x i8> %i.ob, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit191
  %.sroa.9.0.i.i.i.i.i104 = phi i64 [ 0, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit191 ], [ %i.ot, %bb.g ]
  %.pn.i.i.i.i105 = phi i64 [ %i.nw, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit191 ], [ %i.ou, %bb.g ]
  %.sroa.01.0.i.i.i.i.i106 = and i64 %.pn.i.i.i.i105, %i.nz ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.sroa.01.0.i.i.i.i.i106
  %.sroa.0.0.copyload.i24.i.i.i.i107 = load <16 x i8>, ptr %i.od, align 1, !noalias !99951 ; 2 uses
  %i.oe = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i107, %i.oc
  %i.of = bitcast <16 x i1> %i.oe to i16          ; 2 uses
  %.not.i.not30.i.i.i.i108 = icmp eq i16 %i.of, 0
  br i1 %.not.i.not30.i.i.i.i108, label %._crit_edge.i.i.i.i113, label %.lr.ph.i.i.i.i109

.lr.ph.i.i.i.i109:                                ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i.i110 = phi i16 [ %i.os, %bb.f ], [ %i.of, %bb.e ] ; 3 uses
  %i.og = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i110, i1 true)
  %i.oh = zext nneg i16 %i.og to i64
  %i.oi = add i64 %.sroa.01.0.i.i.i.i.i106, %i.oh
  %i.oj = and i64 %i.oi, %i.nz                    ; 2 uses
  %i.ok = sub nsw i64 0, %i.oj
  %i.ol = getelementptr inbounds [56 x i8], ptr %i.oa, i64 %i.ok ; 4 uses
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 -56
  %.val2.i.i.i.i.i111 = load i16, ptr %i.om, align 2, !noalias !99952, !noundef !178
  %i.on = icmp eq i16 %.sroa.062.0.copyload.i.i, %.val2.i.i.i.i.i111
  br i1 %i.on, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.f, !prof !192

._crit_edge.i.i.i.i113:                           ; preds = %bb.f, %bb.e
  %i.oo = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i107, splat (i8 -1)
  %i.op = bitcast <16 x i1> %i.oo to i16
  %i.oq = icmp eq i16 %i.op, 0
  br i1 %i.oq, label %bb.g, label %.loopexit, !prof !187

bb.f:                                             ; preds = %.lr.ph.i.i.i.i109
  %i.or = add i16 %.sroa.06.0.i31.i.i.i.i110, -1
  %i.os = and i16 %i.or, %.sroa.06.0.i31.i.i.i.i110 ; 2 uses
  %.not.i.not.i.i.i.i112 = icmp eq i16 %i.os, 0
  br i1 %.not.i.not.i.i.i.i112, label %._crit_edge.i.i.i.i113, label %.lr.ph.i.i.i.i109

bb.g:                                             ; preds = %._crit_edge.i.i.i.i113
  %i.ot = add i64 %.sroa.9.0.i.i.i.i.i104, 16     ; 2 uses
  %i.ou = add i64 %.sroa.01.0.i.i.i.i.i106, %i.ot
  br label %bb.e

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i109
  call void @llvm.experimental.noalias.scope.decl(metadata !99953), !noalias !99943
  call void @llvm.experimental.noalias.scope.decl(metadata !99954), !noalias !99943
  %.idx.neg.i.i.i = mul i64 %i.oj, 56
  %i.ov = sdiv exact i64 %.idx.neg.i.i.i, 56      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99955), !noalias !99943
  %i.ow = add nsw i64 %i.ov, -16
  %i.ox = and i64 %i.ow, %i.nz
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ox ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i = load <16 x i8>, ptr %i.oy, align 1, !noalias !99956
  %i.oz = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i, splat (i8 -1)
  %i.pa = bitcast <16 x i1> %i.oz to i16
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ov ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_21DnsExchangeBackgroundINtNtB7_15dns_multiplexer14DnsMultiplexerINtNtNtB9_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2U_9TokioTimeENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice:bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %.sroa.645.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 30
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  %.sroa.628.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.sroa.729.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  %.sroa.729.sroa.4.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %.sroa.729.sroa.5.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 34
  %.sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 52
  %.sroa.729.sroa.7.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %.sroa.729.sroa.8.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 60
  %.sroa.729.sroa.9.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 62
  %.sroa.4291.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.4295.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dv, i64 134 ; 2 uses
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 176
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.031.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.031.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dv, i64 152
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dv, i64 160
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sroa.041.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.041.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.sroa.6.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ei, i64 272 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.785.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %.sroa.886.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.eg, i64 72 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.eb, i64 184
  %i.hx = getelementptr inbounds nuw i8, ptr %i.eb, i64 192
  %i.hy = getelementptr inbounds nuw i8, ptr %i.eb, i64 200
  %i.hz = getelementptr inbounds nuw i8, ptr %i.eb, i64 224
  %i.ia = getelementptr inbounds nuw i8, ptr %i.eb, i64 232
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eb, i64 240
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ae, i64 134
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.if = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ii = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.029.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.432.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.432.i, i64 7
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.09.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.is = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.eh, i64 72 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.033.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.sroa.3.sroa.2.sroa.3.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.sroa.3.i.i.i, i64 4
  %.sroa.3.sroa.2.sroa.3.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.sroa.3.i.i.i, i64 2
  br label %bb.b

bb.b:                                             ; preds = %bb.iw, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !100398)
  call void @llvm.experimental.noalias.scope.decl(metadata !100399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.experimental.noalias.scope.decl(metadata !100400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !100401
  %i.iz = load i8, ptr %i.en, align 8, !range !181, !noalias !100402, !noundef !178
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !192

._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i: ; preds = %bb.b
  %.pre.i.i.i.i = load i64, ptr %i.em, align 8, !noalias !100403
  %.pre1.i.i.i.i = load i64, ptr %i.eo, align 8, !noalias !100403
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.b
  %i.jb = call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() #53, !noalias !100404 ; 2 uses
  %i.jc = extractvalue { i64, i64 } %i.jb, 0
  %i.jd = extractvalue { i64, i64 } %i.jb, 1      ; 2 uses
  store i64 %i.jd, ptr %i.eo, align 8, !noalias !100405
  store i8 1, ptr %i.en, align 8, !noalias !100405
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i
  %.pre-phi155.i.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i ], [ %i.jd, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %i.je = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i ], [ %i.jc, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.em, align 8, !noalias !100403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) @530, i64 32, i1 false), !noalias !100401
  store i64 %i.je, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !100401
  store i64 %.pre-phi155.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !100401
  call void @llvm.experimental.noalias.scope.decl(metadata !100406)
  %i.jg = load i64, ptr %i.er, align 8, !alias.scope !100407, !noalias !100408, !noundef !178 ; 3 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i, label %.lr.ph.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868.i.i)
  br label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ji = load ptr, ptr %i.ep, align 8, !alias.scope !100407, !noalias !100408, !nonnull !178, !noundef !178 ; 7 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ji, align 16, !noalias !100409
  %i.jj = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.jk = bitcast <16 x i1> %i.jj to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %.lr.ph.i.i
  %.sroa.0.0129.i.i = phi ptr [ %i.ji, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %bb.v ] ; 2 uses
  %.sroa.6.0128.i.i = phi ptr [ %i.jl, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.v ] ; 2 uses
  %.sroa.844.0127.i.i = phi i16 [ %i.jk, %.lr.ph.i.i ], [ %i.ju, %bb.v ] ; 2 uses
  %.sroa.1045.0126.i.i = phi i64 [ %i.jg, %.lr.ph.i.i ], [ %i.jx, %bb.v ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.844.0127.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit114.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.jm = phi ptr [ %i.jq, %.lr.ph.i.i.i.i ], [ %.sroa.6.0128.i.i, %bb.c ] ; 2 uses
  %i.jn = phi ptr [ %i.jp, %.lr.ph.i.i.i.i ], [ %.sroa.0.0129.i.i, %bb.c ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.jm, align 16, !noalias !100410
  %i.jo = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1)
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -896 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.jo to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit114.i.i

.loopexit114.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.0128.i.i, %bb.c ], [ %i.jq, %.lr.ph.i.i.i.i ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0129.i.i, %bb.c ], [ %i.jp, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.844.0127.i.i, %bb.c ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.jr = add i16 %.lcssa.i.i.i.i, -1
  %i.js = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.jt = zext nneg i16 %i.js to i64
  %i.ju = and i16 %i.jr, %.lcssa.i.i.i.i
  %i.jv = sub nsw i64 0, %i.jt
  %i.jw = getelementptr inbounds [56 x i8], ptr %.sroa.0.1.i.i, i64 %i.jv ; 2 uses
  %i.jx = add i64 %.sroa.1045.0126.i.i, -1        ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 -56
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 -48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !100401
  %i.ka = load i16, ptr %i.jy, align 2, !noalias !100411, !noundef !178
  store i16 %i.ka, ptr %i.df, align 2, !noalias !100401
  %i.kb = call noundef zeroext i1 @_RNvMNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexerNtB2_13ActiveRequest11is_canceled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jz) #53, !noalias !100411
  br i1 %i.kb, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit177, label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.v
  %.sroa.085.0.copyload.pre.i.i = load ptr, ptr %i.dg, align 8, !noalias !100401 ; 4 uses
  %.sroa.486.0.copyload.pre.i.i = load i64, ptr %i.ev, align 8, !noalias !100401 ; 3 uses
  %.sroa.588.0.copyload.pre.i.i = load i64, ptr %i.ew, align 8, !noalias !100401 ; 2 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.085.0.copyload.pre.i.i, align 16, !noalias !100412
  %i.kc = icmp eq i64 %.sroa.486.0.copyload.pre.i.i, 0 ; 5 uses
  br i1 %i.kc, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.kd = mul i64 %.sroa.486.0.copyload.pre.i.i, -80
  %2 = mul i64 %.sroa.486.0.copyload.pre.i.i, 81
  %i.ke = add i64 %2, 97
  %3 = getelementptr i8, ptr %.sroa.085.0.copyload.pre.i.i, i64 %i.kd
  %i.kf = getelementptr i8, ptr %3, i64 -80
  br label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %._crit_edge.i.i
  %.sroa.49.0.i.i.i.i = phi i64 [ undef, %._crit_edge.i.i ], [ %i.ke, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.510.0.i.i.i.i = phi ptr [ undef, %._crit_edge.i.i ], [ %i.kf, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868.i.i)
  %i.kg = icmp eq i64 %.sroa.588.0.copyload.pre.i.i, 0
  br i1 %i.kg, label %.thread.i.i, label %.lr.ph134.i.i

.lr.ph134.i.i:                                    ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.kh = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.ki = bitcast <16 x i1> %i.kh to i16
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.085.0.copyload.pre.i.i, i64 16
  %.val.i.i.i.i = load i64, ptr %i.ex, align 8, !alias.scope !100413, !noalias !100414 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !100413, !noalias !100414 ; 2 uses
  %i.kk = load i64, ptr %i.eq, align 8, !alias.scope !100413, !noalias !100414 ; 3 uses
  %.promoted135.i.i = load i64, ptr %i.ez, align 8, !alias.scope !100413, !noalias !100414
  %i.kl = xor i64 %.val.i.i.i.i, 8317987319222330741
  %i.km = xor i64 %.val1.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.kn = xor i64 %.val.i.i.i.i, 7816392313619706465
  %i.ko = add i64 %i.km, %i.kl                    ; 3 uses
  %i.kp = call i64 @llvm.fshl.i64(i64 %i.km, i64 %i.km, i64 13)
  %i.kq = xor i64 %i.kp, %i.ko                    ; 3 uses
  %i.kr = call i64 @llvm.fshl.i64(i64 %i.ko, i64 %i.ko, i64 32)
  %i.ks = call i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 17)
  %invariant.op = xor i64 %.val1.i.i.i.i, 8387220255154660723
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.l, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i
  %.sink.i.i.i182.i.i = phi i64 [ 0, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.sink.i.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sink.i.i.i.i.i, %bb.l ]
  %.sroa.510.0.i.i180.i.i = phi ptr [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.sroa.510.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.510.0.i.i.i.i, %bb.l ]
  %.sroa.49.0.i.i178.i.i = phi i64 [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.sroa.49.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.49.0.i.i.i.i, %bb.l ]
  %i.kt = phi i1 [ true, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %i.kc, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.kc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.i.i)
  br label %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13drop_elementsCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.l, %.lr.ph134.i.i
  %i.ku = phi i64 [ %.promoted135.i.i, %.lr.ph134.i.i ], [ %i.ps, %bb.l ] ; 3 uses
  %.sroa.654.0133.i.i = phi ptr [ %.sroa.085.0.copyload.pre.i.i, %.lr.ph134.i.i ], [ %.sroa.654.1.i.i, %bb.l ] ; 2 uses
  %.sroa.12.0132.i.i = phi ptr [ %i.kj, %.lr.ph134.i.i ], [ %.sroa.12.1.i.i, %bb.l ] ; 2 uses
  %.sroa.1655.0131.i.i = phi i16 [ %i.ki, %.lr.ph134.i.i ], [ %i.le, %bb.l ] ; 2 uses
  %.sroa.2056.0130.i.i = phi i64 [ %.sroa.588.0.copyload.pre.i.i, %.lr.ph134.i.i ], [ %i.lh, %bb.l ]
  %i.kv = phi i64 [ %i.jg, %.lr.ph134.i.i ], [ %i.pt, %bb.l ] ; 2 uses
  %.not11.i.i27.i.i = icmp eq i16 %.sroa.1655.0131.i.i, 0
  br i1 %.not11.i.i27.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i31.i.i
  %i.kw = phi ptr [ %i.la, %.lr.ph.i.i31.i.i ], [ %.sroa.12.0132.i.i, %bb.d ] ; 2 uses
  %i.kx = phi ptr [ %i.kz, %.lr.ph.i.i31.i.i ], [ %.sroa.654.0133.i.i, %bb.d ]
  %.val9.i.i34.i.i = load <16 x i8>, ptr %i.kw, align 16, !noalias !100415
  %i.ky = icmp sgt <16 x i8> %.val9.i.i34.i.i, splat (i8 -1)
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 -1280 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %.cast.i.i35.i.i = bitcast <16 x i1> %i.ky to i16 ; 2 uses
  %.not.i.i36.i.i = icmp eq i16 %.cast.i.i35.i.i, 0
  br i1 %.not.i.i36.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %.lr.ph.i.i31.i.i, %bb.d
  %.sroa.12.1.i.i = phi ptr [ %.sroa.12.0132.i.i, %bb.d ], [ %i.la, %.lr.ph.i.i31.i.i ] ; 2 uses
  %.sroa.654.1.i.i = phi ptr [ %.sroa.654.0133.i.i, %bb.d ], [ %i.kz, %.lr.ph.i.i31.i.i ] ; 3 uses
  %.lcssa.i.i30.i.i = phi i16 [ %.sroa.1655.0131.i.i, %bb.d ], [ %.cast.i.i35.i.i, %.lr.ph.i.i31.i.i ] ; 3 uses
  %i.lb = add i16 %.lcssa.i.i30.i.i, -1
  %i.lc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i30.i.i, i1 true)
  %i.ld = zext nneg i16 %i.lc to i64
  %i.le = and i16 %i.lb, %.lcssa.i.i30.i.i        ; 2 uses
  %i.lf = sub nsw i64 0, %i.ld
  %i.lg = getelementptr inbounds [80 x i8], ptr %.sroa.654.1.i.i, i64 %i.lf ; 3 uses
  %i.lh = add i64 %.sroa.2056.0130.i.i, -1        ; 4 uses
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 -80
  %.sroa.065.0.copyload.i.i = load i16, ptr %i.li, align 8, !noalias !100416 ; 2 uses
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.lg, i64 -72
  %.sroa.567.0.copyload.i.i = load i8, ptr %.sroa.567.0..sroa_idx.i.i, align 8, !noalias !100416 ; 2 uses
  %.sroa.868.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.lg, i64 -71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.0..sroa_idx.i.i, i64 71, i1 false), !noalias !100416
  %.not23.i.i = icmp eq i8 %.sroa.567.0.copyload.i.i, -1
  br i1 %.not23.i.i, label %bb.i, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit

_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !100401
  store i8 %.sroa.567.0.copyload.i.i, ptr %i.cz, align 8, !noalias !100401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.8..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.i.i, i64 71, i1 false), !noalias !100401
  call void @llvm.experimental.noalias.scope.decl(metadata !100417)
  call void @llvm.experimental.noalias.scope.decl(metadata !100418)
  %i.lj = zext i16 %.sroa.065.0.copyload.i.i to i64
  %i.lk = or disjoint i64 %i.lj, 144115188075855872 ; 2 uses
  %.reass.reass = xor i64 %i.lk, %invariant.op    ; 3 uses
  %i.ll = add i64 %.reass.reass, %i.kn            ; 2 uses
  %i.lm = call noundef i64 @llvm.fshl.i64(i64 %.reass.reass, i64 %.reass.reass, i64 16)
  %i.ln = xor i64 %i.lm, %i.ll                    ; 3 uses
  %i.lo = add i64 %i.ll, %i.kq                    ; 3 uses
  %i.lp = add i64 %i.ln, %i.kr                    ; 2 uses
  %i.lq = xor i64 %i.lo, %i.ks                    ; 3 uses
  %i.lr = call noundef i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 21)
  %i.ls = xor i64 %i.lr, %i.lp                    ; 3 uses
  %i.lt = call noundef i64 @llvm.fshl.i64(i64 %i.lo, i64 %i.lo, i64 32)
  %i.lu = xor i64 %i.lp, %i.lk
  %i.lv = xor i64 %i.lt, 255
  %i.lw = add i64 %i.lu, %i.lq                    ; 3 uses
  %i.lx = add i64 %i.ls, %i.lv                    ; 2 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.lq, i64 %i.lq, i64 13)
  %i.lz = xor i64 %i.lw, %i.ly                    ; 3 uses
  %i.ma = call noundef i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 16)
  %i.mb = xor i64 %i.ma, %i.lx                    ; 3 uses
  %i.mc = call noundef i64 @llvm.fshl.i64(i64 %i.lw, i64 %i.lw, i64 32)
  %i.md = add i64 %i.lz, %i.lx                    ; 3 uses
  %i.me = add i64 %i.mb, %i.mc                    ; 2 uses
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %i.lz, i64 %i.lz, i64 17)
  %i.mg = xor i64 %i.md, %i.mf                    ; 3 uses
  %i.mh = call noundef i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 21)
  %i.mi = xor i64 %i.mh, %i.me                    ; 3 uses
  %i.mj = call noundef i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 32)
  %i.mk = add i64 %i.mg, %i.me                    ; 3 uses
  %i.ml = add i64 %i.mi, %i.mj                    ; 2 uses
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 13)
  %i.mn = xor i64 %i.mm, %i.mk                    ; 3 uses
  %i.mo = call noundef i64 @llvm.fshl.i64(i64 %i.mi, i64 %i.mi, i64 16)
  %i.mp = xor i64 %i.mo, %i.ml                    ; 3 uses
  %i.mq = call noundef i64 @llvm.fshl.i64(i64 %i.mk, i64 %i.mk, i64 32)
  %i.mr = add i64 %i.mn, %i.ml                    ; 3 uses
  %i.ms = add i64 %i.mp, %i.mq                    ; 2 uses
  %i.mt = call noundef i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 17)
  %i.mu = xor i64 %i.mt, %i.mr                    ; 3 uses
  %i.mv = call noundef i64 @llvm.fshl.i64(i64 %i.mp, i64 %i.mp, i64 21)
  %i.mw = xor i64 %i.mv, %i.ms                    ; 3 uses
  %i.mx = call noundef i64 @llvm.fshl.i64(i64 %i.mr, i64 %i.mr, i64 32)
  %i.my = add i64 %i.mu, %i.ms
  %i.mz = add i64 %i.mw, %i.mx                    ; 2 uses
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 13)
  %i.nb = xor i64 %i.na, %i.my                    ; 3 uses
  %i.nc = call noundef i64 @llvm.fshl.i64(i64 %i.mw, i64 %i.mw, i64 16)
  %i.nd = xor i64 %i.nc, %i.mz                    ; 2 uses
  %i.ne = add i64 %i.nb, %i.mz                    ; 3 uses
  %i.nf = call noundef i64 @llvm.fshl.i64(i64 %i.nb, i64 %i.nb, i64 17)
  %i.ng = call noundef i64 @llvm.fshl.i64(i64 %i.nd, i64 %i.nd, i64 21)
  %i.nh = call noundef i64 @llvm.fshl.i64(i64 %i.ne, i64 %i.ne, i64 32)
  %i.ni = xor i64 %i.ng, %i.nf
  %i.nj = xor i64 %i.ni, %i.nh
  %i.nk = xor i64 %i.nj, %i.ne                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100419)
  %i.nl = lshr i64 %i.nk, 57
  %i.nm = trunc nuw nsw i64 %i.nl to i8
  %i.nn = insertelement <16 x i8> poison, i8 %i.nm, i64 0
  %i.no = shufflevector <16 x i8> %i.nn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit ], [ %i.of, %bb.g ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.nk, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice.exit ], [ %i.og, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.kk ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.np, align 1, !noalias !100420 ; 2 uses
  %i.nq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.no
  %i.nr = bitcast <16 x i1> %i.nq to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i = icmp eq i16 %i.nr, 0
  br i1 %.not.i.not30.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i.i.i.i = phi i16 [ %i.oe, %bb.f ], [ %i.nr, %bb.e ] ; 3 uses
  %i.ns = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i, i1 true)
  %i.nt = zext nneg i16 %i.ns to i64
  %i.nu = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.nt
  %i.nv = and i64 %i.nu, %i.kk                    ; 2 uses
  %i.nw = sub nsw i64 0, %i.nv
  %i.nx = getelementptr inbounds [56 x i8], ptr %i.ji, i64 %i.nw ; 4 uses
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -56
  %.val2.i.i.i.i.i.i.i = load i16, ptr %i.ny, align 2, !noalias !100421, !noundef !178
  %i.nz = icmp eq i16 %.sroa.065.0.copyload.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.nz, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %bb.f, !prof !192

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.f, %bb.e
  %i.oa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.ob = bitcast <16 x i1> %i.oa to i16
  %i.oc = icmp eq i16 %i.ob, 0
  br i1 %i.oc, label %bb.g, label %.loopexit.i.i, !prof !187

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.od = add i16 %.sroa.06.0.i31.i.i.i.i.i.i, -1
  %i.oe = and i16 %i.od, %.sroa.06.0.i31.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.oe, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.of = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.og = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.of
  br label %bb.e

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100422)
  call void @llvm.experimental.noalias.scope.decl(metadata !100423)
  %.idx.neg.i.i.i.i.i = mul i64 %i.nv, 56
  %i.oh = sdiv exact i64 %.idx.neg.i.i.i.i.i, 56  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100424)
  %i.oi = add nsw i64 %i.oh, -16
  %i.oj = and i64 %i.oi, %i.kk
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.oj ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ok, align 1, !noalias !100425
  %i.ol = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.om = bitcast <16 x i1> %i.ol to i16
  %i.on = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.oh ; 2 uses
end_hunk_3
