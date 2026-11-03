Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_palette?download=true
inline.NumInlined: 3168
inline.NumDeleted: 1664
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3jxl19FwdPaletteIterationERNS_5ImageEjjRjS2_bbRNS_9PredictorERKNS_8weighted6HeaderERNS_20PaletteIterationDataE:bb.a

bb.f:                                             ; preds = %bb.e
  %.not847 = icmp eq i32 %2, %1
  br i1 %.not847, label %bb.g, label %bb.ah

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @_ZN3jxl14compute_minmaxERKNS_7ChannelEPiS3_(ptr noundef nonnull align 8 dereferenceable(84) %i.w, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #19
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !35  ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !35  ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sub nsw i64 %i.ah, %i.aj                ; 2 uses
  %i.al = add nsw i64 %i.ak, 1                    ; 5 uses
  %i.am = icmp ugt i64 %i.al, 65536
  br i1 %i.am, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.an, ptr %27, align 8, !tbaa !56
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %.not592949.not = icmp eq i64 %i.ao, 0
  br i1 %.not592949.not, label %.thread805, label %.lr.ph953

.lr.ph953:                                        ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %.pre1283 = load i64, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph953, %.thread800
  %i.aq = phi i64 [ %i.ao, %.lr.ph953 ], [ %i.ca, %.thread800 ]
  %i.ar = phi i64 [ %.pre1283, %.lr.ph953 ], [ %i.cb, %.thread800 ] ; 2 uses
  %i.as = phi i64 [ %.pre1283, %.lr.ph953 ], [ %i.cc, %.thread800 ]
  %.0482951 = phi i32 [ 0, %.lr.ph953 ], [ %.1483.lcssa, %.thread800 ] ; 2 uses
  %.0500950 = phi i64 [ 0, %.lr.ph953 ], [ %i.cd, %.thread800 ] ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.at, i64 %i.p ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !245
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !246
  %i.az = mul i64 %i.ay, %.0500950
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %.not591942.not = icmp eq i64 %i.as, 0
  br i1 %.not591942.not, label %.thread800, label %.lr.ph947

.lr.ph947:                                        ; preds = %bb.i, %_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit
  %i.bb = phi i64 [ %i.by, %_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit ], [ %i.ar, %bb.i ]
  %.1483944 = phi i32 [ %.3485.ph, %_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit ], [ %.0482951, %bb.i ] ; 3 uses
  %.0518943 = phi i64 [ %i.bz, %_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit ], [ 0, %bb.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.0518943 ; 2 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph947
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !35 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.preheader.i.i.i.i
  %.pr.i.i.i = phi ptr [ %i.bd, %.preheader.i.i.i.i ], [ %.pr.i.i.i.be, %.backedge ] ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !35 ; 2 uses
  %i.bh = icmp slt i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !58 ; 2 uses
  %.not31.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not31.i.i.i.i, label %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i, label %.backedge

bb.l:                                             ; preds = %bb.j
  %i.bj = icmp slt i32 %i.bg, %i.be
  br i1 %i.bj, label %bb.m, label %_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  %.not30.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not30.i.i.i.i, label %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.k
  %.pr.i.i.i.be = phi ptr [ %i.bi, %bb.k ], [ %i.bl, %bb.m ]
  br label %bb.j, !llvm.loop !160

_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  br label %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i

_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i: ; preds = %bb.k, %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit, %.lr.ph947
  %.026.i16.i.i.i = phi ptr [ %i.an, %.lr.ph947 ], [ %i.bm, %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit ], [ %.pr.i.i.i, %bb.k ]
  %.sink.i15.i.i.i = phi ptr [ %i.an, %.lr.ph947 ], [ %.pr.i.i.i, %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit ], [ %.pr.i.i.i, %bb.k ]
  %i.bn = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21, !noalias !247 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.bp = load i32, ptr %i.bc, align 4, !tbaa !35, !noalias !247
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !35, !noalias !247
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  store ptr %.sink.i15.i.i.i, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.bn, ptr %.026.i16.i.i.i, align 8, !tbaa !58
  %i.br = load ptr, ptr %27, align 8, !tbaa !56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !62 ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i7.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i
  store ptr %i.bs, ptr %27, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i, %bb.n
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !62
  call void @_ZNSt3__127__tree_balance_after_insertB8nn180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %i.bt, ptr noundef nonnull %i.bn) #19
  %i.bu = load i64, ptr %i.ap, align 8, !tbaa !54
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.ap, align 8, !tbaa !54
  %i.bw = load i32, ptr %3, align 4, !tbaa !35
  %.not590 = icmp slt i32 %.1483944, %i.bw
  br i1 %.not590, label %._ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit_crit_edge, label %.loopexit878

._ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit_crit_edge: ; preds = %bb.o
  %i.bx = add nsw i32 %.1483944, 1
  %.pre1284 = load i64, ptr %i.b, align 8, !tbaa !54
  br label %_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit

_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit: ; preds = %bb.l, %._ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit_crit_edge
  %i.by = phi i64 [ %.pre1284, %._ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit_crit_edge ], [ %i.bb, %bb.l ] ; 4 uses
  %.3485.ph = phi i32 [ %i.bx, %._ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit_crit_edge ], [ %.1483944, %bb.l ] ; 2 uses
  %i.bz = add nuw i64 %.0518943, 1                ; 2 uses
  %.not591 = icmp ult i64 %i.bz, %i.by
  br i1 %.not591, label %.lr.ph947, label %.thread800.loopexit, !llvm.loop !163

.thread800.loopexit:                              ; preds = %_ZNSt3__13setIiNS_4lessIiEENS_9allocatorIiEEE6insertB8nn180100ERKi.exit
  %.pre1285 = load i64, ptr %i.c, align 8, !tbaa !54
  br label %.thread800

.thread800:                                       ; preds = %.thread800.loopexit, %bb.i
  %i.ca = phi i64 [ %i.aq, %bb.i ], [ %.pre1285, %.thread800.loopexit ] ; 2 uses
  %i.cb = phi i64 [ %i.ar, %bb.i ], [ %i.by, %.thread800.loopexit ]
  %i.cc = phi i64 [ 0, %bb.i ], [ %i.by, %.thread800.loopexit ]
  %.1483.lcssa = phi i32 [ %.0482951, %bb.i ], [ %.3485.ph, %.thread800.loopexit ] ; 2 uses
  %i.cd = add nuw i64 %.0500950, 1                ; 2 uses
  %.not592 = icmp ult i64 %i.cd, %i.ca
  br i1 %.not592, label %bb.i, label %.thread805, !llvm.loop !164

.thread805:                                       ; preds = %.thread800, %bb.h
  %.0482.lcssa = phi i32 [ 0, %bb.h ], [ %.1483.lcssa, %.thread800 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.ce = sext i32 %.0482.lcssa to i64
  call void @_ZN3jxl7Channel6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %28, ptr noundef %i.t, i64 noundef %i.ce, i64 noundef 1, i32 noundef 0, i32 noundef 0) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 88 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !249 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.p, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

bb.p:                                             ; preds = %.thread805
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %29, ptr noundef nonnull align 8 dereferenceable(92) %28, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cj) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !64, !noalias !250
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !64, !alias.scope !250
  %i.cn = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.co = getelementptr inbounds nuw i8, ptr %28, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cn, ptr noundef nonnull align 8 dereferenceable(28) %i.co, i64 28, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %29, i64 72
  store i32 -1, ptr %i.cp, align 8, !tbaa !251
  %i.cq = getelementptr inbounds nuw i8, ptr %29, i64 76
  store i32 -1, ptr %i.cq, align 4, !tbaa !252
  store i32 %.0482.lcssa, ptr %3, align 4, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !245 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cs, i64 64) ]
  %i.ct = load ptr, ptr %27, align 8, !tbaa !56   ; 2 uses
  %.not848955 = icmp eq ptr %i.ct, %i.an
  br i1 %.not848955, label %.preheader876, label %.lr.ph959

.preheader876:                                    ; preds = %_ZNSt3__121__tree_const_iteratorIiPNS_11__tree_nodeIiPvEElEppB8nn180100Ev.exit, %bb.p
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %.not1108 = icmp eq i64 %i.cu, 0
  %.pre1286 = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  br i1 %.not1108, label %._crit_edge970, label %.lr.ph969

.lr.ph969:                                        ; preds = %.preheader876
  %i.cv = getelementptr inbounds nuw [88 x i8], ptr %.pre1286, i64 %i.p ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !245
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !246
  %i.da = load i64, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %.not1109 = icmp eq i64 %i.da, 0
  br i1 %.not1109, label %._crit_edge970, label %bb.q

.lr.ph959:                                        ; preds = %bb.p, %_ZNSt3__121__tree_const_iteratorIiPNS_11__tree_nodeIiPvEElEppB8nn180100Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt3__121__tree_const_iteratorIiPNS_11__tree_nodeIiPvEElEppB8nn180100Ev.exit ], [ 0, %bb.p ] ; 2 uses
  %.sroa.0768.0956 = phi ptr [ %.06.i.i, %_ZNSt3__121__tree_const_iteratorIiPNS_11__tree_nodeIiPvEElEppB8nn180100Ev.exit ], [ %i.ct, %bb.p ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0768.0956, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !35
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0768.0956, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader8.i.i

.preheader8.i.i:                                  ; preds = %.lr.ph959, %.preheader8.i.i
  %.0.i.i.i603 = phi ptr [ %i.dg, %.preheader8.i.i ], [ %i.df, %.lr.ph959 ] ; 2 uses
  %i.dg = load ptr, ptr %.0.i.i.i603, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %_ZNSt3__121__tree_const_iteratorIiPNS_11__tree_nodeIiPvEElEppB8nn180100Ev.exit, label %.preheader8.i.i, !llvm.loop !0

.preheader.i.i:                                   ; preds = %.lr.ph959, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.di, %.preheader.i.i ], [ %.sroa.0768.0956, %.lr.ph959 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !61 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !62
  %i.dk = icmp eq ptr %.0.i.i, %i.dj
  br i1 %i.dk, label %_ZNSt3__121__tree_const_iteratorIiPNS_11__tree_nodeIiPvEElEppB8nn180100Ev.exit, label %.preheader.i.i, !llvm.loop !1

_ZNSt3__121__tree_const_iteratorIiPNS_11__tree_nodeIiPvEElEppB8nn180100Ev.exit: ; preds = %.preheader8.i.i, %.preheader.i.i
  %.06.i.i = phi ptr [ %i.di, %.preheader.i.i ], [ %.0.i.i.i603, %.preheader8.i.i ] ; 2 uses
  %.not848 = icmp eq ptr %.06.i.i, %i.an
  br i1 %.not848, label %.preheader876, label %.lr.ph959

bb.q:                                             ; preds = %.lr.ph969, %._crit_edge967
  %.0522968 = phi i64 [ %i.dr, %._crit_edge967 ], [ 0, %.lr.ph969 ] ; 2 uses
  %i.dl = mul i64 %i.cz, %.0522968
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dm, i64 64) ]
  br label %.preheader875

.preheader875:                                    ; preds = %bb.q, %.critedge
  %.0525966 = phi i64 [ 0, %bb.q ], [ %i.du, %.critedge ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.0525966 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !35 ; 2 uses
  %i.dp = load i32, ptr %i.cs, align 64, !tbaa !35
  %.not593960 = icmp eq i32 %i.do, %i.dp
  br i1 %.not593960, label %.critedge, label %.lr.ph962

.lr.ph962:                                        ; preds = %.preheader875
  %i.dq = load i32, ptr %3, align 4, !tbaa !35    ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.dq, i32 0) ; 3 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond1172.not1660 = icmp slt i32 %i.dq, 1
  br i1 %exitcond1172.not1660, label %.critedge, label %.lr.ph1662

._crit_edge967:                                   ; preds = %.critedge
  %i.dr = add nuw i64 %.0522968, 1                ; 2 uses
  %exitcond1174.not = icmp eq i64 %i.dr, %i.cu
  br i1 %exitcond1174.not, label %._crit_edge970, label %bb.q, !llvm.loop !167

bb.r:                                             ; preds = %.lr.ph1662
  %exitcond1172.not = icmp eq i64 %indvars.iv.next1170, %wide.trip.count
  br i1 %exitcond1172.not, label %.critedge, label %.lr.ph1662, !llvm.loop !168

.lr.ph1662:                                       ; preds = %.lr.ph962, %bb.r
  %indvars.iv11691661 = phi i64 [ %indvars.iv.next1170, %bb.r ], [ 0, %.lr.ph962 ]
  %indvars.iv.next1170 = add nuw nsw i64 %indvars.iv11691661, 1 ; 4 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next1170
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !35
  %.not593 = icmp eq i32 %i.do, %i.dt
  br i1 %.not593, label %.critedge.loopexit.split.loop.exit, label %bb.r, !llvm.loop !168

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph1662
  %indvars.le = trunc i64 %indvars.iv.next1170 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.lr.ph962, %.critedge.loopexit.split.loop.exit, %.preheader875
  %.7489.lcssa = phi i32 [ 0, %.preheader875 ], [ %indvars.le, %.critedge.loopexit.split.loop.exit ], [ %smax, %.lr.ph962 ], [ %smax, %bb.r ]
  store i32 %.7489.lcssa, ptr %i.dn, align 4, !tbaa !35
  %i.du = add nuw i64 %.0525966, 1                ; 2 uses
  %exitcond1173.not = icmp eq i64 %i.du, %i.da
  br i1 %exitcond1173.not, label %._crit_edge967, label %.preheader875, !llvm.loop !169

._crit_edge970:                                   ; preds = %._crit_edge967, %.lr.ph969, %.preheader876
  store i32 0, ptr %7, align 4, !tbaa !253
  %i.dv = load i64, ptr %i.q, align 8, !tbaa !240
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.q, align 8, !tbaa !240
  %i.dx = call ptr @_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE6insertENS_11__wrap_iterIPKS2_EEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.pre1286, ptr noundef nonnull align 8 dereferenceable(84) %29) #22 ; 0 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %.pr = load i32, ptr %i.cf, align 8, !tbaa !249
  %i.dy = icmp eq i32 %.pr, 0
  br i1 %i.dy, label %bb.s, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

bb.s:                                             ; preds = %._crit_edge970
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cj) #19
  br label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit

_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit:          ; preds = %.thread805, %._crit_edge970, %bb.s
  %.sroa.0772.5811 = phi i32 [ 0, %bb.s ], [ 0, %._crit_edge970 ], [ %i.cg, %.thread805 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %.loopexit878

.loopexit878:                                     ; preds = %bb.o, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit
  %.sroa.0772.6 = phi i32 [ %.sroa.0772.5811, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit ], [ 1, %bb.o ]
  %i.dz = load ptr, ptr %i.an, align 8, !tbaa !62
  call void @_ZNSt3__16__treeIiNS_4lessIiEENS_9allocatorIiEEE7destroyEPNS_11__tree_nodeIiPvEE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef %i.dz) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %.loopexit880

bb.t:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 0, ptr %i.f, align 4, !tbaa !35
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %.not588922.not = icmp eq i64 %i.ea, 0
  br i1 %.not588922.not, label %.thread815, label %.lr.ph926

.lr.ph926:                                        ; preds = %bb.t
  %i.eb = load ptr, ptr %0, align 8, !tbaa !49
  %i.ec = getelementptr inbounds nuw [88 x i8], ptr %i.eb, i64 %i.p ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !245
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !246
  %i.eh = load i64, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %.not587919.not = icmp eq i64 %i.eh, 0
  %i.ei = load ptr, ptr %26, align 8
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph926, %._crit_edge
  %.0526924 = phi i32 [ 0, %.lr.ph926 ], [ %.1527.lcssa, %._crit_edge ] ; 2 uses
  %.0533923 = phi i64 [ 0, %.lr.ph926 ], [ %i.ex, %._crit_edge ] ; 2 uses
  %i.ej = mul i64 %i.eg, %.0533923
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ej ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ek, i64 64) ]
  br i1 %.not587919.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %.pre1281 = load i32, ptr %i.d, align 4, !tbaa !35
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %i.el = phi i32 [ %i.ev, %bb.w ], [ %.pre1281, %.lr.ph.preheader ] ; 2 uses
  %.1527921 = phi i32 [ %.2528, %bb.w ], [ %.0526924, %.lr.ph.preheader ] ; 3 uses
  %.0546920 = phi i64 [ %i.ew, %bb.w ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.0546920
  %i.en = load i32, ptr %i.em, align 4, !tbaa !35
  %i.eo = sub nsw i32 %i.en, %i.el
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !35
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  store i32 1, ptr %i.eq, align 4, !tbaa !35
  %i.et = add nsw i32 %.1527921, 1
  %i.eu = load i32, ptr %3, align 4, !tbaa !35
  %.not586 = icmp slt i32 %.1527921, %i.eu
  %.pre = load i32, ptr %i.d, align 4, !tbaa !35
  br i1 %.not586, label %bb.w, label %.loopexit880

bb.w:                                             ; preds = %.lr.ph, %bb.v
  %i.ev = phi i32 [ %.pre, %bb.v ], [ %i.el, %.lr.ph ]
  %.2528 = phi i32 [ %i.et, %bb.v ], [ %.1527921, %.lr.ph ] ; 2 uses
  %i.ew = add nuw i64 %.0546920, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ew, %i.eh
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.w, %bb.u
  %.1527.lcssa = phi i32 [ %.0526924, %bb.u ], [ %.2528, %bb.w ] ; 2 uses
  %i.ex = add nuw i64 %.0533923, 1                ; 2 uses
  %exitcond1164.not = icmp eq i64 %i.ex, %i.ea
  br i1 %exitcond1164.not, label %.thread815, label %bb.u, !llvm.loop !171

.thread815:                                       ; preds = %._crit_edge, %bb.t
  %.0526.lcssa = phi i32 [ 0, %bb.t ], [ %.1527.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.ey = sext i32 %.0526.lcssa to i64
  call void @_ZN3jxl7Channel6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %30, ptr noundef %i.t, i64 noundef %i.ey, i64 noundef 1, i32 noundef 0, i32 noundef 0) #19
  %i.ez = getelementptr inbounds nuw i8, ptr %30, i64 88 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !249 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.x, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit604

bb.x:                                             ; preds = %.thread815
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %31, ptr noundef nonnull align 8 dereferenceable(92) %30, i64 24, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.fd) #19
  %i.fe = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !64, !noalias !254
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !64, !alias.scope !254
  %i.fh = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %30, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fh, ptr noundef nonnull align 8 dereferenceable(28) %i.fi, i64 28, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %31, i64 72
  store i32 -1, ptr %i.fj, align 8, !tbaa !251
  %i.fk = getelementptr inbounds nuw i8, ptr %31, i64 76
  store i32 -1, ptr %i.fk, align 4, !tbaa !252
  store i32 %.0526.lcssa, ptr %3, align 4, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !245 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %.not1105 = icmp eq i64 %i.al, 0
  br i1 %.not1105, label %.preheader879, label %.lr.ph931

.lr.ph931:                                        ; preds = %bb.x
  %i.fn = load ptr, ptr %26, align 8, !tbaa !34   ; 3 uses
  %i.fo = icmp eq i32 %i.ag, %i.ai
  br i1 %i.fo, label %.epil.preheader, label %.lr.ph931.new

.lr.ph931.new:                                    ; preds = %.lr.ph931
  %unroll_iter = and i64 %i.al, 131070
  br label %bb.z

.preheader879.loopexit.unr-lcssa:                 ; preds = %bb.ad
  %i.fp = and i64 %i.ak, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fp, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.preheader879

.epil.preheader:                                  ; preds = %.preheader879.loopexit.unr-lcssa, %.lr.ph931
  %.5531929.epil.init = phi i32 [ 0, %.lr.ph931 ], [ %.6532.1, %.preheader879.loopexit.unr-lcssa ] ; 2 uses
  %.0559928.epil.init = phi i64 [ 0, %.lr.ph931 ], [ %i.gv, %.preheader879.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1746 = trunc i64 %i.al to i1
  call void @llvm.assume(i1 %lcmp.mod1746)
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0559928.epil.init ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !35
  %.not589.epil = icmp eq i32 %i.fr, 0
  br i1 %.not589.epil, label %.preheader879, label %bb.y

bb.y:                                             ; preds = %.epil.preheader
  %i.fs = load i32, ptr %i.d, align 4, !tbaa !35
  %i.ft = trunc i64 %.0559928.epil.init to i32
  %i.fu = add i32 %i.fs, %i.ft
  %i.fv = sext i32 %.5531929.epil.init to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fv
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !35
  store i32 %.5531929.epil.init, ptr %i.fq, align 4, !tbaa !35
  br label %.preheader879

.preheader879:                                    ; preds = %.preheader879.loopexit.unr-lcssa, %bb.y, %.epil.preheader, %bb.x
  %i.fx = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %.not1106 = icmp eq i64 %i.fx, 0
  %.pre1282 = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  br i1 %.not1106, label %._crit_edge938, label %.lr.ph937

.lr.ph937:                                        ; preds = %.preheader879
  %i.fy = getelementptr inbounds nuw [88 x i8], ptr %.pre1282, i64 %i.p ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !245
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !246
  %i.gd = load i64, ptr %i.b, align 8, !tbaa !54  ; 5 uses
  %lcmp.mod1748.not = icmp eq i64 %i.gd, 0
  %56 = load ptr, ptr %26, align 8                ; 3 uses
  br i1 %lcmp.mod1748.not, label %._crit_edge938, label %.lr.ph934.preheader

.lr.ph934.preheader:                              ; preds = %.lr.ph937
  %xtraiter1748 = and i64 %i.gd, 1
  %57 = icmp eq i64 %i.gd, 1
  %unroll_iter1751 = and i64 %i.gd, -2
  %lcmp.mod1749.not = icmp eq i64 %xtraiter1748, 0
  %lcmp.mod1750 = trunc i64 %i.gd to i1
  br label %bb.ae

bb.z:                                             ; preds = %bb.ad, %.lr.ph931.new
  %.5531929 = phi i32 [ 0, %.lr.ph931.new ], [ %.6532.1, %bb.ad ] ; 4 uses
  %.0559928 = phi i64 [ 0, %.lr.ph931.new ], [ %i.gv, %bb.ad ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph931.new ], [ %niter.next.1, %bb.ad ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0559928 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !35
  %.not589 = icmp eq i32 %i.gf, 0
  br i1 %.not589, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gg = load i32, ptr %i.d, align 4, !tbaa !35
  %i.gh = trunc i64 %.0559928 to i32
  %i.gi = add i32 %i.gg, %i.gh
  %i.gj = sext i32 %.5531929 to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gj
  store i32 %i.gi, ptr %i.gk, align 4, !tbaa !35
  store i32 %.5531929, ptr %i.ge, align 4, !tbaa !35
  %i.gl = add nsw i32 %.5531929, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.6532 = phi i32 [ %i.gl, %bb.aa ], [ %.5531929, %bb.z ] ; 4 uses
  %i.gm = or disjoint i64 %.0559928, 1            ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !35
  %.not589.1 = icmp eq i32 %i.go, 0
  br i1 %.not589.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gp = load i32, ptr %i.d, align 4, !tbaa !35
  %i.gq = trunc i64 %i.gm to i32
  %i.gr = add i32 %i.gp, %i.gq
  %i.gs = sext i32 %.6532 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gs
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !35
  store i32 %.6532, ptr %i.gn, align 4, !tbaa !35
  %i.gu = add nsw i32 %.6532, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.6532.1 = phi i32 [ %i.gu, %bb.ac ], [ %.6532, %bb.ab ] ; 2 uses
  %i.gv = add nuw nsw i64 %.0559928, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader879.loopexit.unr-lcssa, label %bb.z, !llvm.loop !174

bb.ae:                                            ; preds = %.lr.ph934.preheader, %._crit_edge935
  %.0560936 = phi i64 [ %i.hf, %._crit_edge935 ], [ 0, %.lr.ph934.preheader ] ; 2 uses
  %i.gw = mul i64 %i.gc, %.0560936
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gw ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gx, i64 64) ]
  br i1 %57, label %.lr.ph934.epil.preheader, label %.lr.ph934

._crit_edge935.loopexit.unr-lcssa:                ; preds = %.lr.ph934
  br i1 %lcmp.mod1749.not, label %._crit_edge935, label %.lr.ph934.epil.preheader

.lr.ph934.epil.preheader:                         ; preds = %._crit_edge935.loopexit.unr-lcssa, %bb.ae
  %.0562932.epil.init = phi i64 [ 0, %bb.ae ], [ %i.hv, %._crit_edge935.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1750)
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.0562932.epil.init ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !35
  %i.ha = load i32, ptr %i.d, align 4, !tbaa !35
  %i.hb = sub nsw i32 %i.gz, %i.ha
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %56, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !35
  store i32 %i.he, ptr %i.gy, align 4, !tbaa !35
  br label %._crit_edge935

._crit_edge935:                                   ; preds = %._crit_edge935.loopexit.unr-lcssa, %.lr.ph934.epil.preheader
  %i.hf = add nuw i64 %.0560936, 1                ; 2 uses
  %exitcond1167.not = icmp eq i64 %i.hf, %i.fx
  br i1 %exitcond1167.not, label %._crit_edge938, label %bb.ae, !llvm.loop !175

.lr.ph934:                                        ; preds = %bb.ae, %.lr.ph934
  %.0562932 = phi i64 [ %i.hv, %.lr.ph934 ], [ 0, %bb.ae ] ; 3 uses
  %niter1751 = phi i64 [ %niter1751.next.1, %.lr.ph934 ], [ 0, %bb.ae ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.0562932 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !35
  %i.hi = load i32, ptr %i.d, align 4, !tbaa !35
  %i.hj = sub nsw i32 %i.hh, %i.hi
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %56, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !35
  store i32 %i.hm, ptr %i.hg, align 8, !tbaa !35
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.0562932
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !35
  %i.hq = load i32, ptr %i.d, align 4, !tbaa !35
  %i.hr = sub nsw i32 %i.hp, %i.hq
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %56, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !35
  store i32 %i.hu, ptr %i.ho, align 4, !tbaa !35
  %i.hv = add nuw i64 %.0562932, 2                ; 2 uses
  %niter1751.next.1 = add nuw i64 %niter1751, 2   ; 2 uses
  %niter1751.ncmp.1 = icmp eq i64 %niter1751.next.1, %unroll_iter1751
  br i1 %niter1751.ncmp.1, label %._crit_edge935.loopexit.unr-lcssa, label %.lr.ph934, !llvm.loop !176

._crit_edge938:                                   ; preds = %._crit_edge935, %.lr.ph937, %.preheader879
  store i32 0, ptr %7, align 4, !tbaa !253
  %i.hw = load i64, ptr %i.q, align 8, !tbaa !240
  %i.hx = add i64 %i.hw, 1
  store i64 %i.hx, ptr %i.q, align 8, !tbaa !240
  %i.hy = call ptr @_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE6insertENS_11__wrap_iterIPKS2_EEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.pre1282, ptr noundef nonnull align 8 dereferenceable(84) %31) #22 ; 0 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %.pr819 = load i32, ptr %i.ez, align 8, !tbaa !249
  %i.hz = icmp eq i32 %.pr819, 0
  br i1 %i.hz, label %bb.af, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit604

bb.af:                                            ; preds = %._crit_edge938
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fd) #19
  br label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit604

_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit604:       ; preds = %.thread815, %._crit_edge938, %bb.af
  %.sroa.0772.10822 = phi i32 [ 0, %bb.af ], [ 0, %._crit_edge938 ], [ %i.fa, %.thread815 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %.loopexit880

.loopexit880:                                     ; preds = %bb.v, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit604, %.loopexit878
  %.sroa.0772.11 = phi i32 [ %.sroa.0772.6, %.loopexit878 ], [ %.sroa.0772.10822, %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit604 ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ia = load ptr, ptr %26, align 8, !tbaa !34   ; 4 uses
  %.not.i.i605 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i605, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %.loopexit880
  %i.ib = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !67
  %i.ic = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !68
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ia to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.ig) #23
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit: ; preds = %.loopexit880, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.fz

bb.ah:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @_ZN3jxl5ImageC1EP22JxlMemoryManagerStruct(ptr noundef nonnull align 8 dereferenceable(96) %32, ptr noundef %i.t) #19
  br label %bb.am

bb.ai:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @_ZN3jxl5ImageC1EP22JxlMemoryManagerStruct(ptr noundef nonnull align 8 dereferenceable(96) %32, ptr noundef %i.t) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ii = load i64, ptr %i.c, align 8, !tbaa !54
  %i.ij = load i32, ptr %i.ab, align 8, !tbaa !244
  %i.ik = load i32, ptr %i.a, align 4, !tbaa !35
  call void @_ZN3jxl5Image6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.32") align 8 %33, ptr noundef %i.t, i64 noundef %i.ih, i64 noundef %i.ii, i32 noundef %i.ij, i32 noundef %i.ik) #19
  %i.il = getelementptr inbounds nuw i8, ptr %33, i64 96
  %i.im = load i32, ptr %i.il, align 16, !tbaa !70 ; 2 uses
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.aj, label %.critedge595

.critedge595:                                     ; preds = %bb.ai
  call void @_ZN3jxl8StatusOrINS_5ImageEED2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.fw

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.io = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.ip = load <2 x ptr>, ptr %33, align 16, !tbaa !71, !noalias !255
  store <2 x ptr> %i.ip, ptr %34, align 16, !tbaa !71, !alias.scope !255
  %i.iq = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.it = load ptr, ptr %i.iq, align 16, !tbaa !71, !noalias !255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %33, i8 0, i64 24, i1 false), !noalias !255
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !72, !noalias !255
  %i.iv = load <2 x ptr>, ptr %i.is, align 16, !tbaa !73, !noalias !255
  %i.iw = insertelement <4 x ptr> poison, ptr %i.it, i64 0
  %i.ix = insertelement <4 x ptr> %i.iw, ptr %i.iu, i64 1
  %i.iy = shufflevector <2 x ptr> %i.iv, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iz = shufflevector <4 x ptr> %i.ix, <4 x ptr> %i.iy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.iz, ptr %i.io, align 16, !tbaa !256, !alias.scope !255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i8 0, i64 24, i1 false), !noalias !255
  %i.ja = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.jb = getelementptr inbounds nuw i8, ptr %33, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ja, ptr noundef nonnull align 16 dereferenceable(48) %i.jb, i64 48, i1 false)
  %i.jc = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3jxl5ImageaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %32, ptr noundef nonnull align 8 dereferenceable(96) %34) #19 ; 0 uses
  call void @_ZN3jxl5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  %i.jd = load i32, ptr %i.a, align 4, !tbaa !35  ; 2 uses
  %.not.not971.not = icmp eq i32 %i.jd, 0
  br i1 %.not.not971.not, label %.critedge597, label %.lr.ph974

.lr.ph974:                                        ; preds = %bb.aj, %.loopexit874
  %i.je = phi i32 [ %i.ko, %.loopexit874 ], [ %i.jd, %bb.aj ]
  %.0561972 = phi i64 [ %i.kp, %.loopexit874 ], [ 0, %bb.aj ] ; 3 uses
  %i.jf = load ptr, ptr %0, align 8, !tbaa !49
  %i.jg = getelementptr inbounds nuw [88 x i8], ptr %i.jf, i64 %.0561972
  %i.jh = getelementptr inbounds nuw [88 x i8], ptr %i.jg, i64 %i.p ; 5 uses
  %i.ji = load ptr, ptr %32, align 8, !tbaa !49
  %i.jj = getelementptr inbounds nuw [88 x i8], ptr %i.ji, i64 %.0561972 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !258, !noalias !257 ; 2 uses
  %i.jl = load i32, ptr %i.jj, align 8, !tbaa !258, !alias.scope !257
  %i.jm = icmp eq i32 %i.jk, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !noalias !257 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !alias.scope !257
  %i.jr = icmp eq i32 %i.jo, %i.jq
  %i.js = select i1 %i.jm, i1 %i.jr, i1 false
  br i1 %i.js, label %bb.ak, label %_ZN3jxl11CopyImageToIiEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit

bb.ak:                                            ; preds = %.lr.ph974
  %i.jt = icmp ne i32 %i.jo, 0
  %i.ju = icmp ne i32 %i.jk, 0
  %or.cond.not20.i = and i1 %i.ju, %i.jt
  br i1 %or.cond.not20.i, label %.lr.ph.i, label %.loopexit874

.lr.ph.i:                                         ; preds = %bb.ak
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !245, !alias.scope !257
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !246, !alias.scope !257
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i
  %.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.kk, %bb.al ] ; 3 uses
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !245, !noalias !257
  %i.kc = load i64, ptr %i.jw, align 8, !tbaa !246, !noalias !257
  %i.kd = mul i64 %i.kc, %.015.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ke, i64 64) ]
  %i.kf = mul i64 %.015.i, %i.ka
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kg, i64 64) ]
  %i.kh = load i32, ptr %i.jh, align 8, !tbaa !258, !noalias !257
  %i.ki = zext i32 %i.kh to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.kg, ptr align 64 %i.ke, i64 %i.kj, i1 false), !noalias !257
  %i.kk = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.kl = load i32, ptr %i.jn, align 4, !tbaa !259, !noalias !257
  %i.km = zext i32 %i.kl to i64
  %i.kn = icmp samesign ult i64 %i.kk, %i.km
  br i1 %i.kn, label %bb.al, label %.loopexit874.loopexit, !llvm.loop !181

_ZN3jxl11CopyImageToIiEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit: ; preds = %.lr.ph974
  call void @_ZN3jxl8StatusOrINS_5ImageEED2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.fw

.loopexit874.loopexit:                            ; preds = %bb.al
  %.pre1287 = load i32, ptr %i.a, align 4, !tbaa !35
  br label %.loopexit874

.loopexit874:                                     ; preds = %.loopexit874.loopexit, %bb.ak
  %i.ko = phi i32 [ %.pre1287, %.loopexit874.loopexit ], [ %i.je, %bb.ak ] ; 2 uses
  %i.kp = add nuw nsw i64 %.0561972, 1            ; 2 uses
  %i.kq = zext i32 %i.ko to i64
  %.not.not = icmp samesign ult i64 %i.kp, %i.kq
  br i1 %.not.not, label %.lr.ph974, label %.critedge597, !llvm.loop !182

.critedge597:                                     ; preds = %.loopexit874, %bb.aj
  call void @_ZN3jxl8StatusOrINS_5ImageEED2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %.critedge597
  store i32 0, ptr %4, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.kr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, i8 0, i64 16, i1 false)
  store ptr %i.kr, ptr %35, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.ks = load i32, ptr %i.a, align 4, !tbaa !35  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 7 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %.not.i606 = icmp eq i32 %i.ks, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  br i1 %.not.i606, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread: ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.kv = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit:    ; preds = %bb.am
  %i.kx = zext i32 %i.ks to i64                   ; 2 uses
  %i.ky = shl nuw nsw i64 %i.kx, 2                ; 3 uses
  %i.kz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #21 ; 4 uses
  store ptr %i.kz, ptr %37, align 8, !tbaa !34
end_hunk_0
