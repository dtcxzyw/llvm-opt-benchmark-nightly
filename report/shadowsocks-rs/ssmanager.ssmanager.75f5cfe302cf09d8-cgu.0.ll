Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeyECsa7TLgTh0CeG_9ssmanager:bb.a

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i56, i64 8 ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i55, 1
  %i.q = icmp eq ptr %i.o, %i.m
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i56 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i55 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.val6.i.i.i = load i64, ptr %.sroa.0.03.i.i.i56, align 8, !noalias !1535, !noundef !80
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.0.val, i64 %.val6.i.i.i)
  switch i8 %i.r, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i55, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11632
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1535, !nonnull !80, !noundef !80
  %i.x = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1537
  store i8 0, ptr %i.e, align 1, !noalias !1537
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1538
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !1538
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1538
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.i.i.i55, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !1538
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4p_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.e) #46, !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1538
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.h:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1538
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11632
  %i.ab = icmp samesign ult i64 %.sroa.8.0.i.i.i55, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.8.0.i.i.i55
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1539, !nonnull !80, !noundef !80 ; 3 uses
  %i.ae = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 11632
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 3 uses
  %i.ap = add i64 %.sroa.05.07.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1522

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa61.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 7
  br i1 %i.aq, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 11626
  %i.as = load i16, ptr %i.ar, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 11632
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 11626
  %i.az = load i16, ptr %i.ay, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 11632
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 11626
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 11632
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 11626
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 11632
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11626
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 11632
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 11626
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11632
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 11626
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 11632
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 11626
  %i.cp = load i16, ptr %i.co, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 11632
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !1540, !nonnull !80, !noundef !80 ; 2 uses
  %i.cv = add i64 %.sroa.05.07.i.i.i.i.i, -8      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa61.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i, i64 11626
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !1540, !noundef !80 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1539
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !noalias !1539
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !1539
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.db, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !1539
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4p_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1080) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e) #46, !noalias !1539
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1539
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !1539, !nonnull !80, !noundef !80 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !1539 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1539 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 11626
  %i.de = load i16, ptr %i.dd, align 2, !noalias !1541, !noundef !80
  %i.df = zext i16 %i.de to i64
  %i.dg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.df
  br i1 %i.dg, label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %.lr.ph.i15.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i15.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i15.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %i.dh = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !1542, !nonnull !80, !noundef !80 ; 3 uses
  %i.di = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 11624
  %i.dk = load i16, ptr %i.dj, align 8, !noalias !1542 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 11626
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !1541, !noundef !80
  %i.dn = icmp ult i16 %i.dk, %i.dm
  br i1 %i.dn, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i15.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i15.i.i.i.i
  %i.do = zext i16 %i.dk to i64
  br label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.do, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 3 uses
  %.sroa.531.0.i.i.i.i = phi i64 [ %i.di, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.dh, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 96
  %i.ds = getelementptr inbounds nuw [1048 x i8], ptr %i.dr, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dt = load i64, ptr %i.dq, align 8, !noalias !1543, !noundef !80
  store i64 %.sroa.01.0.copyload.i.i.i.i, ptr %i.dq, align 8, !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.433.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %i.ds, i64 1048, i1 false), !noalias !1539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %i.ds, ptr noundef nonnull readonly align 8 dereferenceable(1048) %i.z, i64 1048, i1 false), !noalias !1539
  %i.du = icmp eq i64 %.sroa.531.0.i.i.i.i, 0
  br i1 %i.du, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.loopexit.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.loopexit.i: ; preds = %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.dv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dv)
  br label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.loopexit.i, %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  store i64 %i.dt, ptr %i.d, align 8, !noalias !1537
  %.sroa.441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.441.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.433.i.i.i.i, i64 1048, i1 false), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1538
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4y_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !1533, !noalias !1544, !noundef !80
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8, !alias.scope !1533, !noalias !1544
  %i.dz = load i8, ptr %i.e, align 1, !range !93, !noalias !1537, !noundef !80
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit

bb.i:                                             ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i, !prof !92

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @299) #56, !noalias !1546
  unreachable

_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 11632
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !1546, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.ec, ptr %1, align 8, !alias.scope !1547, !noalias !1544
  %i.ed = add i64 %i.h, -1
  store i64 %i.ed, ptr %i.g, align 8, !alias.scope !1547, !noalias !1544
  store ptr null, ptr %i.ec, align 8, !noalias !1546
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 11728, i64 noundef 8) #46, !noalias !1546
  br label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4C_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i, %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(1048) %i.d, i64 1048, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.d, i64 1048 ; 2 uses
  %i.ee = load <2 x i32>, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !1533
  %.sroa.4.0.copyload2 = load i32, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !1533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1536
  %.not = icmp eq i32 %.sroa.4.0.copyload2, -1
  br i1 %.not, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(1040) %i.ef, i64 1040, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store <2 x i32> %i.ee, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.l

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %._crit_edge, %bb.a, %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i32 -1, ptr %i.eg, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeyECsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.433.i.i.i.i = alloca [32 x i8], align 8  ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !1575, !noalias !1576, !noundef !80 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1575, !noalias !1576, !noundef !80 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.x, %bb.f ], [ %i.h, %bb.b ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.w, %bb.f ], [ %i.f, %bb.b ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 360 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 450
  %i.k = load i16, ptr %i.j, align 2, !noalias !1577, !noundef !80 ; 2 uses
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
  %.val6.i.i.i = load i64, ptr %.sroa.0.03.i.i.i56, align 8, !noalias !1577, !noundef !80
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.0.val, i64 %.val6.i.i.i)
  switch i8 %i.r, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i55, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 456
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1577, !nonnull !80, !noundef !80
  %i.x = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1579
  store i8 0, ptr %i.e, align 1, !noalias !1579
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1580
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !1580
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1580
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.i.i.i55, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !1580
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4i_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.e) #46, !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1580
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.h:                                             ; preds = %_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeyECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1580
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 456
  %i.ab = icmp samesign ult i64 %.sroa.8.0.i.i.i55, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.8.0.i.i.i55
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1581, !nonnull !80, !noundef !80 ; 3 uses
  %i.ae = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 456
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 3 uses
  %i.ap = add i64 %.sroa.05.07.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1564

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa61.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 7
  br i1 %i.aq, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 450
  %i.as = load i16, ptr %i.ar, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 456
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 450
  %i.az = load i16, ptr %i.ay, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 456
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 450
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 456
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 450
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 456
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 450
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 456
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 450
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 456
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 450
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 456
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 450
  %i.cp = load i16, ptr %i.co, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 456
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !1582, !nonnull !80, !noundef !80 ; 2 uses
  %i.cv = add i64 %.sroa.05.07.i.i.i.i.i, -8      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa61.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i, i64 450
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !1582, !noundef !80 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1581
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !noalias !1581
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !1581
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.db, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !1581
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4i_13OccupiedEntryyB1M_E9remove_kv0NtNtBb_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e) #46, !noalias !1581
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1581
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !1581, !nonnull !80, !noundef !80 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !1581 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1581 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 450
  %i.de = load i16, ptr %i.dd, align 2, !noalias !1583, !noundef !80
  %i.df = zext i16 %i.de to i64
  %i.dg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.df
  br i1 %i.dg, label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %.lr.ph.i15.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i15.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i15.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 352
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !1584, !nonnull !80, !noundef !80 ; 3 uses
  %i.dj = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 448
  %i.dl = load i16, ptr %i.dk, align 8, !noalias !1584 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 450
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !1583, !noundef !80
  %i.do = icmp ult i16 %i.dl, %i.dn
  br i1 %i.do, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i15.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i15.i.i.i.i
  %i.dp = zext i16 %i.dl to i64
  br label %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.dp, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 3 uses
  %.sroa.531.0.i.i.i.i = phi i64 [ %i.dj, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.di, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalE14last_leaf_edgeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 360
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.sroa.030.0.i.i.i.i, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.dt = load i64, ptr %i.dr, align 8, !noalias !1585, !noundef !80
  store i64 %.sroa.01.0.copyload.i.i.i.i, ptr %i.dr, align 8, !noalias !1585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 32, i1 false), !noalias !1581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !1581
  %i.du = icmp eq i64 %.sroa.531.0.i.i.i.i, 0
  br i1 %i.du, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.loopexit.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.loopexit.i: ; preds = %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.dv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dv)
  br label %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.loopexit.i, %_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1y_4LeafENtB1y_4EdgeE7next_kvCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  store i64 %i.dt, ptr %i.d, align 8, !noalias !1579
  %.sroa.441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.441.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.i.i.i, i64 32, i1 false), !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1581
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1580
  br label %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4r_13OccupiedEntryyB1N_E9remove_kv0NtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !1575, !noalias !1586, !noundef !80
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8, !alias.scope !1575, !noalias !1586
  %i.dz = load i8, ptr %i.e, align 1, !range !93, !noalias !1579, !noundef !80
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.i, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit

bb.i:                                             ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i, !prof !92

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @299) #56, !noalias !1588
  unreachable

_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !1588, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.ec, ptr %1, align 8, !alias.scope !1589, !noalias !1586
  %i.ed = add i64 %i.h, -1
  store i64 %i.ed, ptr %i.g, align 8, !alias.scope !1589, !noalias !1586
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 352
  store ptr null, ptr %i.ee, align 8, !noalias !1588
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 552, i64 noundef 8) #46, !noalias !1588
  br label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4v_13OccupiedEntryyB1K_E9remove_kv0NtNtB9_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i, %_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ef = load <2 x i32>, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !1575
  %.sroa.4.0.copyload2 = load i32, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !1575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1578
  %.not = icmp eq i32 %.sroa.4.0.copyload2, -1
  br i1 %.not, label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.ef, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.l

_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %._crit_edge, %bb.a, %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.eh, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12remove_entryyECsa7TLgTh0CeG_9ssmanager.exit.thread, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtCs3Ol6WPi9G6e_12tokio_rustls6client22poll_handle_early_dataINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB14_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %4, i64 noundef range(i64 0, 65) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !106, !noundef !80
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %.loopexit40

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !80, !align !86, !noundef !80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 880
  %i.h = load i8, ptr %i.g, align 8, !range !107, !noundef !80
  %.off = add nsw i8 %i.h, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.c, label %.preheader133

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit, %bb.c
  %.sroa.05.0.ph = phi ptr [ %i.m, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit ], [ %4, %bb.c ]
  %.sroa.02.0.ph = phi i64 [ %i.x, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit ], [ 0, %bb.c ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.e
  %.sroa.05.0 = phi ptr [ %i.m, %bb.e ], [ %.sroa.05.0.ph, %.outer ] ; 4 uses
  %i.l = icmp eq ptr %.sroa.05.0, %i.i
  br i1 %i.l, label %.loopexit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !80 ; 5 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %.sroa.05.0, align 8, !noundef !80 ; 2 uses
  %i.r = call { i64, ptr } @_RNvXs_NtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connectionNtB4_14WriteEarlyDataNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.o) #46 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 8 uses
  %i.v = trunc nuw i64 %i.s to i1
  br i1 %i.v, label %.loopexit42, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %i.t, null
  br i1 %i.w, label %.loopexit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i64 %.sroa.02.0.ph, %i.u             ; 2 uses
  %.not = icmp ult i64 %i.o, %i.u
  br i1 %.not, label %bb.i, label %bb.j, !prof !98

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  %i.y = load i64, ptr %i.j, align 8, !alias.scope !1597, !noundef !80 ; 3 uses
  %i.z = load i64, ptr %0, align 8, !range !82, !alias.scope !1597, !noundef !80
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp ult i64 %i.aa, %i.u
  br i1 %i.ab, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit, !prof !92

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %bb.j
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.y, i64 noundef %i.u, i64 noundef 1, i64 noundef 1) #46
  %i.ac = load i64, ptr %i.j, align 8, !alias.scope !1596, !noundef !80
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.j, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i
  %.sink107 = phi i64 [ %i.ac, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i ], [ %i.y, %bb.j ] ; 3 uses
  %i.ad = icmp sgt i64 %.sink107, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %i.k, align 8, !alias.scope !1596, !nonnull !80, !noundef !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink107
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.q, i64 %i.u, i1 false), !noalias !1596
  %i.ag = add i64 %.sink107, %i.u
  store i64 %i.ag, ptr %i.j, align 8, !alias.scope !1596
  %i.ah = icmp ugt i64 %i.o, %i.u
  br i1 %i.ah, label %.loopexit43, label %.outer

.loopexit43:                                      ; preds = %bb.g, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit, %bb.d
  %.sroa.02.1 = phi i64 [ %.sroa.02.0.ph, %bb.d ], [ %i.x, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.02.0.ph, %bb.g ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.02.1, 0
  br i1 %i.ai, label %bb.k, label %bb.l

.loopexit42:                                      ; preds = %bb.f, %bb.l
  %.sroa.8.0 = phi ptr [ %i.aj, %bb.l ], [ %i.t, %bb.f ]
  %.sroa.0.0 = phi i64 [ 0, %bb.l ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit40

bb.k:                                             ; preds = %.loopexit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader133

.preheader133:                                    ; preds = %bb.b, %bb.k
  br label %bb.m

bb.l:                                             ; preds = %.loopexit43
  %i.aj = inttoptr i64 %.sroa.02.1 to ptr
  br label %.loopexit42

.loopexit40:                                      ; preds = %bb.s, %bb.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsa7TLgTh0CeG_9ssmanager.exit, %bb.r, %bb.a, %.loopexit41, %.loopexit42
  %.sroa.8.1 = phi ptr [ %.sroa.8.3, %.loopexit41 ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.8.0, %.loopexit42 ], [ null, %bb.a ], [ null, %bb.r ], [ %i.bp, %bb.t ], [ undef, %bb.s ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.3, %.loopexit41 ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.0.0, %.loopexit42 ], [ 0, %bb.a ], [ 0, %bb.r ], [ 1, %bb.t ], [ %i.bo, %bb.s ]
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %.sroa.8.1, 1
  ret { i64, ptr } %i.al

bb.m:                                             ; preds = %.preheader133, %bb.w
  %i.am = phi ptr [ %.pre, %bb.w ], [ %i.f, %.preheader133 ] ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_21DnsExchangeBackgroundINtNtB7_15dns_multiplexer14DnsMultiplexerINtNtNtB9_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB2S_17AsyncIoStdAsTokioIB2Q_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEEENtB2U_9TokioTimeENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager:bb.a
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
  call void @llvm.experimental.noalias.scope.decl(metadata !42233)
  call void @llvm.experimental.noalias.scope.decl(metadata !42234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.experimental.noalias.scope.decl(metadata !42235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !42236
  %i.jm = load i8, ptr %i.er, align 8, !range !93, !noalias !42237, !noundef !80
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, !prof !89

._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i: ; preds = %bb.b
  %.pre.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !42238
  %.pre1.i.i.i.i = load i64, ptr %i.es, align 8, !noalias !42238
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.b
  %i.jo = call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() #46, !noalias !42239 ; 2 uses
  %i.jp = extractvalue { i64, i64 } %i.jo, 0
  %i.jq = extractvalue { i64, i64 } %i.jo, 1      ; 2 uses
  store i64 %i.jq, ptr %i.es, align 8, !noalias !42240
  store i8 1, ptr %i.er, align 8, !noalias !42240
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i
  %.pre-phi137.i.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i ], [ %i.jq, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %i.jr = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i ], [ %i.jp, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %i.js = add i64 %i.jr, 1
  store i64 %i.js, ptr %i.eq, align 8, !noalias !42238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) @390, i64 32, i1 false), !noalias !42236
  store i64 %i.jr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !42236
  store i64 %.pre-phi137.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !42236
  call void @llvm.experimental.noalias.scope.decl(metadata !42241)
  %i.jt = load i64, ptr %i.eu, align 8, !alias.scope !42242, !noalias !42243, !noundef !80 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i, label %.lr.ph.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.865.i.i)
  br label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.jv = load ptr, ptr %i.et, align 8, !alias.scope !42242, !noalias !42243, !nonnull !80, !noundef !80 ; 3 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.jv, align 16, !noalias !42244
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
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.jz, align 16, !noalias !42245
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !42236
  %i.kn = load i16, ptr %i.kl, align 2, !noalias !42246, !noundef !80
  store i16 %i.kn, ptr %i.dj, align 2, !noalias !42236
  %i.ko = call noundef zeroext i1 @_RNvMNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexerNtB2_13ActiveRequest11is_canceled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.km) #46, !noalias !42246
  br i1 %i.ko, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit166, label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.v
  %.sroa.079.0.copyload.pre.i.i = load ptr, ptr %i.dk, align 8, !noalias !42236 ; 4 uses
  %.sroa.480.0.copyload.pre.i.i = load i64, ptr %i.ey, align 8, !noalias !42236 ; 3 uses
  %.sroa.582.0.copyload.pre.i.i = load i64, ptr %i.ez, align 8, !noalias !42236 ; 2 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.079.0.copyload.pre.i.i, align 16, !noalias !42247
  %i.kp = icmp eq i64 %.sroa.480.0.copyload.pre.i.i, 0 ; 5 uses
  br i1 %i.kp, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.kq = mul i64 %.sroa.480.0.copyload.pre.i.i, 80 ; 2 uses
  %2 = add i64 %i.kq, 80                          ; 2 uses
  %3 = add i64 %.sroa.480.0.copyload.pre.i.i, 17
  %i.kr = add i64 %3, %2                          ; 3 uses
  %4 = icmp uge i64 %i.kr, %2
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.kr, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %6 = sub i64 -80, %i.kq
  %i.ks = getelementptr inbounds i8, ptr %.sroa.079.0.copyload.pre.i.i, i64 %6
  br label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %._crit_edge.i.i
  %.sroa.49.0.i.i.i.i = phi i64 [ undef, %._crit_edge.i.i ], [ %i.kr, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.510.0.i.i.i.i = phi ptr [ undef, %._crit_edge.i.i ], [ %i.ks, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.865.i.i)
  %i.kt = icmp eq i64 %.sroa.582.0.copyload.pre.i.i, 0
  br i1 %i.kt, label %.thread.i.i, label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.ku = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.kv = bitcast <16 x i1> %i.ku to i16
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.pre.i.i, i64 16
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.l, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i
  %.sink.i.i.i161.i.i = phi i64 [ 0, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %.sink.i.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sink.i.i.i.i.i, %bb.l ]
  %.sroa.510.0.i.i159.i.i = phi ptr [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %.sroa.510.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sroa.510.0.i.i.i.i, %bb.l ]
  %.sroa.49.0.i.i157.i.i = phi i64 [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %.sroa.49.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sroa.49.0.i.i.i.i, %bb.l ]
  %i.kx = phi i1 [ true, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %i.kp, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.kp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.865.i.i)
  br label %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13drop_elementsCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.l, %.lr.ph121.i.i
  %.sroa.651.0120.i.i = phi ptr [ %.sroa.079.0.copyload.pre.i.i, %.lr.ph121.i.i ], [ %.sroa.651.1.i.i, %bb.l ] ; 2 uses
  %.sroa.12.0119.i.i = phi ptr [ %i.kw, %.lr.ph121.i.i ], [ %.sroa.12.1.i.i, %bb.l ] ; 2 uses
  %.sroa.1652.0118.i.i = phi i16 [ %i.kv, %.lr.ph121.i.i ], [ %i.lg, %bb.l ] ; 2 uses
  %.sroa.2053.0117.i.i = phi i64 [ %.sroa.582.0.copyload.pre.i.i, %.lr.ph121.i.i ], [ %i.lj, %bb.l ]
  %.not11.i.i27.i.i = icmp eq i16 %.sroa.1652.0118.i.i, 0
  br i1 %.not11.i.i27.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i31.i.i
  %i.ky = phi ptr [ %i.lc, %.lr.ph.i.i31.i.i ], [ %.sroa.12.0119.i.i, %bb.d ] ; 2 uses
  %i.kz = phi ptr [ %i.lb, %.lr.ph.i.i31.i.i ], [ %.sroa.651.0120.i.i, %bb.d ]
  %.val9.i.i34.i.i = load <16 x i8>, ptr %i.ky, align 16, !noalias !42248
  %i.la = icmp sgt <16 x i8> %.val9.i.i34.i.i, splat (i8 -1)
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -1280 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 2 uses
  %.cast.i.i35.i.i = bitcast <16 x i1> %i.la to i16 ; 2 uses
  %.not.i.i36.i.i = icmp eq i16 %.cast.i.i35.i.i, 0
  br i1 %.not.i.i36.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %.lr.ph.i.i31.i.i, %bb.d
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
  %.sroa.062.0.copyload.i.i = load i16, ptr %i.lk, align 8, !noalias !42249 ; 2 uses
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.li, i64 -72
  %.sroa.564.0.copyload.i.i = load i8, ptr %.sroa.564.0..sroa_idx.i.i, align 8, !noalias !42249 ; 2 uses
  %.sroa.865.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.li, i64 -71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.0..sroa_idx.i.i, i64 71, i1 false), !noalias !42249
  %.not23.i.i = icmp eq i8 %.sroa.564.0.copyload.i.i, -1
  br i1 %.not23.i.i, label %bb.i, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit191

_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit191: ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !42236
  store i8 %.sroa.564.0.copyload.i.i, ptr %i.dd, align 8, !noalias !42236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.8..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.865.i.i, i64 71, i1 false), !noalias !42236
  call void @llvm.experimental.noalias.scope.decl(metadata !42250)
  call void @llvm.experimental.noalias.scope.decl(metadata !42251), !noalias !42252
  %.val.i.i103 = load i64, ptr %i.fa, align 8, !alias.scope !42253, !noalias !42254, !noundef !80 ; 2 uses
  %.val1.i.i = load i64, ptr %i.fb, align 8, !alias.scope !42253, !noalias !42254, !noundef !80 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !42255), !noalias !42252
  call void @llvm.experimental.noalias.scope.decl(metadata !42256), !noalias !42252
  call void @llvm.experimental.noalias.scope.decl(metadata !42257), !noalias !42252
  %i.nx = lshr i64 %i.nw, 57
  %i.ny = trunc nuw nsw i64 %i.nx to i8
  %i.nz = load i64, ptr %i.fc, align 8, !alias.scope !42258, !noalias !42259, !noundef !80 ; 3 uses
  %i.oa = load ptr, ptr %i.et, align 8, !alias.scope !42258, !noalias !42259, !nonnull !80, !noundef !80 ; 4 uses
  %i.ob = insertelement <16 x i8> poison, i8 %i.ny, i64 0
  %i.oc = shufflevector <16 x i8> %i.ob, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit191
  %.sroa.9.0.i.i.i.i.i104 = phi i64 [ 0, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit191 ], [ %i.ot, %bb.g ]
  %.pn.i.i.i.i105 = phi i64 [ %i.nw, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit191 ], [ %i.ou, %bb.g ]
  %.sroa.01.0.i.i.i.i.i106 = and i64 %.pn.i.i.i.i105, %i.nz ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.sroa.01.0.i.i.i.i.i106
  %.sroa.0.0.copyload.i24.i.i.i.i107 = load <16 x i8>, ptr %i.od, align 1, !noalias !42260 ; 2 uses
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
  %.val2.i.i.i.i.i111 = load i16, ptr %i.om, align 2, !noalias !42261, !noundef !80
  %i.on = icmp eq i16 %.sroa.062.0.copyload.i.i, %.val2.i.i.i.i.i111
  br i1 %i.on, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.f, !prof !89

._crit_edge.i.i.i.i113:                           ; preds = %bb.f, %bb.e
  %i.oo = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i107, splat (i8 -1)
  %i.op = bitcast <16 x i1> %i.oo to i16
  %i.oq = icmp eq i16 %i.op, 0
  br i1 %i.oq, label %bb.g, label %.loopexit, !prof !92

bb.f:                                             ; preds = %.lr.ph.i.i.i.i109
  %i.or = add i16 %.sroa.06.0.i31.i.i.i.i110, -1
  %i.os = and i16 %i.or, %.sroa.06.0.i31.i.i.i.i110 ; 2 uses
  %.not.i.not.i.i.i.i112 = icmp eq i16 %i.os, 0
  br i1 %.not.i.not.i.i.i.i112, label %._crit_edge.i.i.i.i113, label %.lr.ph.i.i.i.i109

bb.g:                                             ; preds = %._crit_edge.i.i.i.i113
  %i.ot = add i64 %.sroa.9.0.i.i.i.i.i104, 16     ; 2 uses
  %i.ou = add i64 %.sroa.01.0.i.i.i.i.i106, %i.ot
  br label %bb.e

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i109
  call void @llvm.experimental.noalias.scope.decl(metadata !42262), !noalias !42252
  call void @llvm.experimental.noalias.scope.decl(metadata !42263), !noalias !42252
  %.idx.neg.i.i.i = mul i64 %i.oj, 56
  %i.ov = sdiv exact i64 %.idx.neg.i.i.i, 56      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42264), !noalias !42252
  %i.ow = add nsw i64 %i.ov, -16
  %i.ox = and i64 %i.ow, %i.nz
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ox ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i = load <16 x i8>, ptr %i.oy, align 1, !noalias !42265
  %i.oz = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i, splat (i8 -1)
  %i.pa = bitcast <16 x i1> %i.oz to i16
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ov ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_21DnsExchangeBackgroundINtNtB7_15dns_multiplexer14DnsMultiplexerINtNtNtB9_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2U_9TokioTimeENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager:bb.a
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
  call void @llvm.experimental.noalias.scope.decl(metadata !42707)
  call void @llvm.experimental.noalias.scope.decl(metadata !42708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.experimental.noalias.scope.decl(metadata !42709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !42710
  %i.iz = load i8, ptr %i.en, align 8, !range !93, !noalias !42711, !noundef !80
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, !prof !89

._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i: ; preds = %bb.b
  %.pre.i.i.i.i = load i64, ptr %i.em, align 8, !noalias !42712
  %.pre1.i.i.i.i = load i64, ptr %i.eo, align 8, !noalias !42712
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.b
  %i.jb = call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() #46, !noalias !42713 ; 2 uses
  %i.jc = extractvalue { i64, i64 } %i.jb, 0
  %i.jd = extractvalue { i64, i64 } %i.jb, 1      ; 2 uses
  store i64 %i.jd, ptr %i.eo, align 8, !noalias !42714
  store i8 1, ptr %i.en, align 8, !noalias !42714
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i
  %.pre-phi155.i.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i ], [ %i.jd, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %i.je = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i ], [ %i.jc, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.em, align 8, !noalias !42712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) @390, i64 32, i1 false), !noalias !42710
  store i64 %i.je, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !42710
  store i64 %.pre-phi155.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !42710
  call void @llvm.experimental.noalias.scope.decl(metadata !42715)
  %i.jg = load i64, ptr %i.er, align 8, !alias.scope !42716, !noalias !42717, !noundef !80 ; 3 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i, label %.lr.ph.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868.i.i)
  br label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.ji = load ptr, ptr %i.ep, align 8, !alias.scope !42716, !noalias !42717, !nonnull !80, !noundef !80 ; 7 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ji, align 16, !noalias !42718
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
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.jm, align 16, !noalias !42719
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !42710
  %i.ka = load i16, ptr %i.jy, align 2, !noalias !42720, !noundef !80
  store i16 %i.ka, ptr %i.df, align 2, !noalias !42710
  %i.kb = call noundef zeroext i1 @_RNvMNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexerNtB2_13ActiveRequest11is_canceled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jz) #46, !noalias !42720
  br i1 %i.kb, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit177, label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.v
  %.sroa.085.0.copyload.pre.i.i = load ptr, ptr %i.dg, align 8, !noalias !42710 ; 4 uses
  %.sroa.486.0.copyload.pre.i.i = load i64, ptr %i.ev, align 8, !noalias !42710 ; 3 uses
  %.sroa.588.0.copyload.pre.i.i = load i64, ptr %i.ew, align 8, !noalias !42710 ; 2 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.085.0.copyload.pre.i.i, align 16, !noalias !42721
  %i.kc = icmp eq i64 %.sroa.486.0.copyload.pre.i.i, 0 ; 5 uses
  br i1 %i.kc, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.kd = mul i64 %.sroa.486.0.copyload.pre.i.i, 80 ; 2 uses
  %2 = add i64 %i.kd, 80                          ; 2 uses
  %3 = add i64 %.sroa.486.0.copyload.pre.i.i, 17
  %i.ke = add i64 %3, %2                          ; 3 uses
  %4 = icmp uge i64 %i.ke, %2
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.ke, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %6 = sub i64 -80, %i.kd
  %i.kf = getelementptr inbounds i8, ptr %.sroa.085.0.copyload.pre.i.i, i64 %6
  br label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %._crit_edge.i.i
  %.sroa.49.0.i.i.i.i = phi i64 [ undef, %._crit_edge.i.i ], [ %i.ke, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.510.0.i.i.i.i = phi ptr [ undef, %._crit_edge.i.i ], [ %i.kf, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868.i.i)
  %i.kg = icmp eq i64 %.sroa.588.0.copyload.pre.i.i, 0
  br i1 %i.kg, label %.thread.i.i, label %.lr.ph134.i.i

.lr.ph134.i.i:                                    ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.kh = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.ki = bitcast <16 x i1> %i.kh to i16
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.085.0.copyload.pre.i.i, i64 16
  %.val.i.i.i.i = load i64, ptr %i.ex, align 8, !alias.scope !42722, !noalias !42723 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !42722, !noalias !42723 ; 2 uses
  %i.kk = load i64, ptr %i.eq, align 8, !alias.scope !42722, !noalias !42723 ; 3 uses
  %.promoted135.i.i = load i64, ptr %i.ez, align 8, !alias.scope !42722, !noalias !42723
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

.thread.i.i:                                      ; preds = %bb.l, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i
  %.sink.i.i.i182.i.i = phi i64 [ 0, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %.sink.i.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sink.i.i.i.i.i, %bb.l ]
  %.sroa.510.0.i.i180.i.i = phi ptr [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %.sroa.510.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sroa.510.0.i.i.i.i, %bb.l ]
  %.sroa.49.0.i.i178.i.i = phi i64 [ undef, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %.sroa.49.0.i.i.i.i, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sroa.49.0.i.i.i.i, %bb.l ]
  %i.kt = phi i1 [ true, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %i.kc, %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.kc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.i.i)
  br label %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13drop_elementsCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.l, %.lr.ph134.i.i
  %i.ku = phi i64 [ %.promoted135.i.i, %.lr.ph134.i.i ], [ %i.ps, %bb.l ] ; 3 uses
  %.sroa.654.0133.i.i = phi ptr [ %.sroa.085.0.copyload.pre.i.i, %.lr.ph134.i.i ], [ %.sroa.654.1.i.i, %bb.l ] ; 2 uses
  %.sroa.12.0132.i.i = phi ptr [ %i.kj, %.lr.ph134.i.i ], [ %.sroa.12.1.i.i, %bb.l ] ; 2 uses
  %.sroa.1655.0131.i.i = phi i16 [ %i.ki, %.lr.ph134.i.i ], [ %i.le, %bb.l ] ; 2 uses
  %.sroa.2056.0130.i.i = phi i64 [ %.sroa.588.0.copyload.pre.i.i, %.lr.ph134.i.i ], [ %i.lh, %bb.l ]
  %i.kv = phi i64 [ %i.jg, %.lr.ph134.i.i ], [ %i.pt, %bb.l ] ; 2 uses
  %.not11.i.i27.i.i = icmp eq i16 %.sroa.1655.0131.i.i, 0
  br i1 %.not11.i.i27.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i31.i.i
  %i.kw = phi ptr [ %i.la, %.lr.ph.i.i31.i.i ], [ %.sroa.12.0132.i.i, %bb.d ] ; 2 uses
  %i.kx = phi ptr [ %i.kz, %.lr.ph.i.i31.i.i ], [ %.sroa.654.0133.i.i, %bb.d ]
  %.val9.i.i34.i.i = load <16 x i8>, ptr %i.kw, align 16, !noalias !42724
  %i.ky = icmp sgt <16 x i8> %.val9.i.i34.i.i, splat (i8 -1)
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 -1280 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %.cast.i.i35.i.i = bitcast <16 x i1> %i.ky to i16 ; 2 uses
  %.not.i.i36.i.i = icmp eq i16 %.cast.i.i35.i.i, 0
  br i1 %.not.i.i36.i.i, label %.lr.ph.i.i31.i.i, label %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %.lr.ph.i.i31.i.i, %bb.d
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
  %.sroa.065.0.copyload.i.i = load i16, ptr %i.li, align 8, !noalias !42725 ; 2 uses
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.lg, i64 -72
  %.sroa.567.0.copyload.i.i = load i8, ptr %.sroa.567.0..sroa_idx.i.i, align 8, !noalias !42725 ; 2 uses
  %.sroa.868.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.lg, i64 -71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.0..sroa_idx.i.i, i64 71, i1 false), !noalias !42725
  %.not23.i.i = icmp eq i8 %.sroa.567.0.copyload.i.i, -1
  br i1 %.not23.i.i, label %bb.i, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit

_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !42710
  store i8 %.sroa.567.0.copyload.i.i, ptr %i.cz, align 8, !noalias !42710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.8..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.868.i.i, i64 71, i1 false), !noalias !42710
  call void @llvm.experimental.noalias.scope.decl(metadata !42726)
  call void @llvm.experimental.noalias.scope.decl(metadata !42727)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !42728)
  %i.nl = lshr i64 %i.nk, 57
  %i.nm = trunc nuw nsw i64 %i.nl to i8
  %i.nn = insertelement <16 x i8> poison, i8 %i.nm, i64 0
  %i.no = shufflevector <16 x i8> %i.nn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit ], [ %i.of, %bb.g ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.nk, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit ], [ %i.og, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.kk ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.np, align 1, !noalias !42729 ; 2 uses
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
  %.val2.i.i.i.i.i.i.i = load i16, ptr %i.ny, align 2, !noalias !42730, !noundef !80
  %i.nz = icmp eq i16 %.sroa.065.0.copyload.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.nz, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.f, !prof !89

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.f, %bb.e
  %i.oa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.ob = bitcast <16 x i1> %i.oa to i16
  %i.oc = icmp eq i16 %i.ob, 0
  br i1 %i.oc, label %bb.g, label %.loopexit.i.i, !prof !92

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.od = add i16 %.sroa.06.0.i31.i.i.i.i.i.i, -1
  %i.oe = and i16 %i.od, %.sroa.06.0.i31.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.oe, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.of = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.og = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.of
  br label %bb.e

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtNtCsi1FNhPBS7PW_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42731)
  call void @llvm.experimental.noalias.scope.decl(metadata !42732)
  %.idx.neg.i.i.i.i.i = mul i64 %i.nv, 56
  %i.oh = sdiv exact i64 %.idx.neg.i.i.i.i.i, 56  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42733)
  %i.oi = add nsw i64 %i.oh, -16
  %i.oj = and i64 %i.oi, %i.kk
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.oj ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ok, align 1, !noalias !42734
  %i.ol = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.om = bitcast <16 x i1> %i.ol to i16
  %i.on = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.oh ; 2 uses
end_hunk_2
