Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/locktree?download=true
inline.NumInlined: 366
inline.NumDeleted: 188
begin_hunk_0_@_ZN4toku8locktree8escalateEPFvmPKS0_RKNS_12range_bufferEPvES6_:bb.a
  %i.g = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef 16)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN4toku8keyrange18get_infinite_rangeEv(ptr dead_on_unwind nonnull writable sret(%"class.toku::keyrange") align 8 %6)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  call void @_ZN4toku15concurrent_tree15locked_keyrange7prepareEPS0_(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %i.j)
  call void @_ZN4toku15concurrent_tree15locked_keyrange7acquireERKNS_8keyrangeE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(81) %6)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4toku8locktree33sto_migrate_buffer_ranges_to_treeEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %5)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.n = call noundef i64 @_ZNK4toku12range_buffer17total_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(60) %i.m)
  %i.o = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4toku16locktree_manager17note_mem_releasedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.o, i64 noundef %i.n)
  br label %_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit

_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit: ; preds = %bb.b, %bb.c
  call void @_ZN4toku12range_buffer7destroyEv(ptr noundef nonnull align 8 dereferenceable(60) %i.m)
  call void @_ZN4toku12range_buffer6createEv(ptr noundef nonnull align 8 dereferenceable(60) %i.m)
  store i64 0, ptr %i.k, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.p, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit, %bb.a
  %i.q = call noundef ptr @_Z12toku_xcallocmm(i64 noundef 128, i64 noundef 112) ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.q, ptr %i.r, align 8, !tbaa !157
  store i32 128, ptr %i.s, align 4, !tbaa !159
  store i32 0, ptr %3, align 8, !tbaa !160
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.w = call noundef zeroext i1 @_ZN4toku8treenode8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(202) %i.v)
  br i1 %i.w, label %._crit_edge218, label %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph

_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 14 uses
  %i.af = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ag = shufflevector <2 x ptr> %i.af, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i

.loopexit194:                                     ; preds = %bb.bn
  %i.ah = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.q, ptr %i.r, align 8, !tbaa !157
  store i32 128, ptr %i.s, align 4, !tbaa !159
  store i32 0, ptr %3, align 8, !tbaa !160
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.aj = call noundef zeroext i1 @_ZN4toku8treenode8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(202) %i.ai)
  br i1 %i.aj, label %._crit_edge218, label %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i, !llvm.loop !161

_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i: ; preds = %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph, %.loopexit194
  %i.ak = phi ptr [ %i.u, %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph ], [ %i.ah, %.loopexit194 ] ; 2 uses
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !86
  call fastcc void @_ZN4toku8treenode17traverse_overlapsIZNS_L25extract_first_n_row_locksEPNS_15concurrent_tree15locked_keyrangeEPNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvRKNS_8keyrangeEPT_(ptr noundef nonnull align 8 dereferenceable(202) %i.al, ptr noundef nonnull align 8 dereferenceable(81) %i.x, ptr noundef nonnull %3)
  %.pre.i = load i32, ptr %3, align 8, !tbaa !160 ; 6 uses
  %i.am = icmp sgt i32 %.pre.i, 0
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge218

.lr.ph.i:                                         ; preds = %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i
  %.not.i.i79 = icmp eq ptr %i.ak, null
  %wide.trip.count17.i = zext nneg i32 %.pre.i to i64 ; 2 uses
  br i1 %.not.i.i79, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i

_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i: ; preds = %.lr.ph.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv14.i ; 2 uses
  %i.ao = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv() ; 0 uses
  %i.ap = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.an) ; 0 uses
  call void @_ZN4toku15concurrent_tree15locked_keyrange6removeERKNS_8keyrangeEm(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.an, i64 noundef -2)
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count17.i
  br i1 %exitcond18.not.i, label %.preheader192.preheader, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i, !llvm.loop !162

_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i: ; preds = %.lr.ph.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.ar = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv()
  %i.as = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aq)
  call void @_ZN4toku15concurrent_tree15locked_keyrange6removeERKNS_8keyrangeEm(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.aq, i64 noundef -2)
  %i.at = add i64 %i.as, %i.ar
  call void @_ZN4toku16locktree_manager17note_mem_releasedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.ak, i64 noundef %i.at)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count17.i
  br i1 %exitcond.not.i, label %.preheader192.preheader, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i, !llvm.loop !162

.preheader192.preheader:                          ; preds = %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.au = zext nneg i32 %.pre.i to i64            ; 2 uses
  br label %.preheader192

.lr.ph217.preheader:                              ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %wide.trip.count = zext nneg i32 %.pre.i to i64
  br label %.lr.ph217

.preheader192:                                    ; preds = %.preheader192.preheader, %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %.068215 = phi i32 [ %.067.lcssa, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ], [ 0, %.preheader192.preheader ] ; 2 uses
  %i.av = zext nneg i32 %.068215 to i64           ; 3 uses
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.av ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88 ; 2 uses
  %i.ay = add nuw nsw i32 %.068215, 1
  %smax = call i32 @llvm.smax.i32(i32 %.pre.i, i32 %i.ay) ; 2 uses
  %i.az = add nsw i32 %smax, -1
  %indvars.iv.next367 = add nuw nsw i64 %i.av, 1  ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next367, %i.au
  br i1 %i.ba, label %.lr.ph370, label %.critedge.loopexit

bb.e:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next369, 1 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.bb, label %.lr.ph370, label %.critedge.loopexit, !llvm.loop !163

.lr.ph370:                                        ; preds = %.preheader192, %bb.e
  %indvars.iv.next369 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next367, %.preheader192 ] ; 7 uses
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %bb.e ], [ %i.av, %.preheader192 ] ; 4 uses
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !108
  %i.bd = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.next369 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !108
  %i.bg = icmp eq i64 %i.bc, %i.bf
  br i1 %i.bg, label %bb.f, label %.critedge.split.loop.exit326

bb.f:                                             ; preds = %.lr.ph370
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !111, !range !70, !noundef !71
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.critedge.split.loop.exit323, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !112
  %.not75 = icmp eq ptr %i.bl, null
  br i1 %.not75, label %bb.h, label %.critedge.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.bn = call noundef ptr @_ZNK4toku8keyrange13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.aw)
  %i.bo = call noundef ptr @_ZNK4toku8keyrange12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.bd)
  %i.bp = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.bq = call noundef zeroext i1 %i.bm(ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef %i.bp)
  br i1 %i.bq, label %.critedge.split.loop.exit332, label %bb.e, !llvm.loop !163

.critedge.split.loop.exit:                        ; preds = %bb.g
  %i.br = trunc nuw nsw i64 %indvars.iv.next369 to i32
  br label %.critedge

.critedge.split.loop.exit323:                     ; preds = %bb.f
  %i.bs = trunc nuw nsw i64 %indvars.iv.next369 to i32
  br label %.critedge

.critedge.split.loop.exit326:                     ; preds = %.lr.ph370
  %i.bt = trunc nuw nsw i64 %indvars.iv.next369 to i32
  br label %.critedge

.critedge.split.loop.exit332:                     ; preds = %bb.h
  %i.bu = trunc nuw nsw i64 %indvars.iv.next369 to i32
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.e, %.preheader192
  %i.bv = zext nneg i32 %i.az to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.critedge.split.loop.exit332, %.critedge.split.loop.exit326, %.critedge.split.loop.exit323, %.critedge.split.loop.exit
  %.067.in.lcssa = phi i64 [ %indvars.iv368, %.critedge.split.loop.exit332 ], [ %indvars.iv368, %.critedge.split.loop.exit ], [ %indvars.iv368, %.critedge.split.loop.exit323 ], [ %indvars.iv368, %.critedge.split.loop.exit326 ], [ %i.bv, %.critedge.loopexit ]
  %.067.lcssa = phi i32 [ %i.bu, %.critedge.split.loop.exit332 ], [ %i.br, %.critedge.split.loop.exit ], [ %i.bs, %.critedge.split.loop.exit323 ], [ %i.bt, %.critedge.split.loop.exit326 ], [ %smax, %.critedge.loopexit ] ; 2 uses
  %i.bw = call noundef ptr @_ZNK4toku8keyrange12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.aw) ; 2 uses
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %.067.in.lcssa
  %i.by = call noundef ptr @_ZNK4toku8keyrange13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.bx) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 0, ptr %i.aa, align 8, !tbaa !164
  store ptr null, ptr %i.ab, align 8, !tbaa !149
  store <2 x ptr> %i.ag, ptr %i.ac, align 8, !tbaa !150
  store i64 0, ptr %i.ad, align 8, !tbaa !165
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !112 ; 2 uses
  %.not76 = icmp eq ptr %i.ca, null
  br i1 %.not76, label %._crit_edge.thread.i.i.i, label %bb.j

._crit_edge.thread.i.i.i:                         ; preds = %.critedge
  %i.cb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %._crit_edge.thread.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %12 = load i64, ptr %i.ax, align 8, !tbaa !40
  store i64 %12, ptr %i.cc, align 8, !tbaa !40
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #21
  %i.cd = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.ad, align 8, !tbaa !165
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.j:                                             ; preds = %.noexc, %.critedge
  %.066 = phi ptr [ %i.ca, %.critedge ], [ %7, %.noexc ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.066, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !127 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.066, i64 8 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, %bb.j
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !149
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.cl)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #24
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.co = icmp slt i32 %.067.lcssa, %.pre.i
  br i1 %i.co, label %.preheader192, label %.lr.ph217.preheader, !llvm.loop !166

bb.l:                                             ; preds = %.lr.ph, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit
  %.sroa.0157.0214 = phi ptr [ %i.ch, %.lr.ph ], [ %i.lt, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0157.0214, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !40 ; 3 uses
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.cr = load i8, ptr %4, align 8, !tbaa !154, !range !70, !noundef !71
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %i.e, align 8, !tbaa !50  ; 4 uses
  %i.cu = load i32, ptr %i.ae, align 4, !tbaa !50 ; 3 uses
  %.not38.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not38.i.i, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !50  ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.042.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.q ] ; 2 uses
  %.02441.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.125.i.i, %bb.q ] ; 2 uses
  %.02640.i.i = phi i32 [ %i.cv, %.lr.ph.i.i ], [ %.127.i.i, %bb.q ] ; 2 uses
  %.02839.i.i = phi i32 [ %i.ct, %.lr.ph.i.i ], [ %.129.i.i, %bb.q ] ; 2 uses
  %i.cx = add i32 %.02839.i.i, %.02640.i.i
  %i.cy = lshr i32 %i.cx, 1                       ; 5 uses
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !167
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !169 ; 2 uses
  %i.dd = icmp ult i64 %i.cq, %i.dc
  br i1 %i.dd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.de = add nuw i32 %i.cy, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.not37.i.i = icmp eq i64 %i.cq, %i.dc          ; 2 uses
  %.024..i.i = select i1 %.not37.i.i, i32 %.02441.i.i, i32 %i.cy
  %..0.i.i = select i1 %.not37.i.i, i32 %i.cy, i32 %.042.i.i
  %i.df = freeze i32 %.024..i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.129.i.i = phi i32 [ %i.de, %bb.o ], [ %.02839.i.i, %bb.p ] ; 2 uses
  %.127.i.i = phi i32 [ %.02640.i.i, %bb.o ], [ %i.cy, %bb.p ] ; 2 uses
  %.125.i.i = phi i32 [ %.02441.i.i, %bb.o ], [ %i.df, %bb.p ] ; 3 uses
  %.1.i.i = phi i32 [ %.042.i.i, %bb.o ], [ %..0.i.i, %bb.p ] ; 4 uses
  %.not.i.i80 = icmp eq i32 %.129.i.i, %.127.i.i
  br i1 %.not.i.i80, label %._crit_edge.i.i, label %bb.n, !llvm.loop !171

._crit_edge.i.i:                                  ; preds = %bb.q
  %.not33.i.i = icmp eq i32 %.1.i.i, -1
  br i1 %.not33.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.dg = zext nneg i32 %.1.i.i to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !167
  store ptr %i.di, ptr %i.d, align 8, !tbaa !167
  %i.dj = sub i32 %.1.i.i, %i.ct
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %.not34.i.i = icmp eq i32 %.125.i.i, -1
  %i.dk = sub i32 %.125.i.i, %i.ct
  br i1 %.not34.i.i, label %.thread.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

.thread.i.i:                                      ; preds = %bb.s, %bb.m
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i: ; preds = %.thread.i.i, %bb.s, %bb.r
  %storemerge35.i.i = phi i32 [ %i.dj, %bb.r ], [ %i.cu, %.thread.i.i ], [ %i.dk, %bb.s ]
  %.030.i.i = phi i32 [ 0, %bb.r ], [ -30989, %.thread.i.i ], [ -30989, %bb.s ]
  store i32 %storemerge35.i.i, ptr %i.c, align 4, !tbaa !51
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit

bb.t:                                             ; preds = %bb.l
  %i.dl = invoke noundef i32 @_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE18find_internal_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiRKNS_12omt_internal17subtree_templatedILb0EEES9_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
          to label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit unwind label %bb.bf

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit: ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i, %bb.t
  %.0.i = phi i32 [ %.030.i.i, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i ], [ %i.dl, %bb.t ]
  %i.dm = icmp eq i32 %.0.i, -30989
  br i1 %i.dm, label %bb.u, label %bb.bh

bb.u:                                             ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit
  %i.dn = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef 72)
          to label %bb.v unwind label %bb.bg      ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.do = load i64, ptr %i.b, align 8, !tbaa !40
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !169
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  invoke void @_ZN4toku12range_buffer6createEv(ptr noundef nonnull align 8 dereferenceable(60) %i.dp)
          to label %bb.w unwind label %bb.bg

bb.w:                                             ; preds = %bb.v
  %i.dq = load i8, ptr %i.ck, align 8, !tbaa !111, !range !70, !noundef !71
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = xor i1 %i.dr, true
  invoke void @_ZN4toku12range_buffer6appendEPK10__toku_dbtS3_b(ptr noundef nonnull align 8 dereferenceable(60) %i.dp, ptr noundef %i.bw, ptr noundef %i.by, i1 noundef zeroext %i.ds)
          to label %bb.x unwind label %bb.bg

bb.x:                                             ; preds = %bb.w
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !51  ; 8 uses
  %i.du = load i8, ptr %4, align 8, !tbaa !154, !range !70, !noundef !71
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = load i32, ptr %i.e, align 8, !tbaa !72  ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1                   ; 2 uses
  br i1 %i.dx, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread23.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i: ; preds = %bb.y
  %.not29.i = icmp eq i32 %i.dt, 0
  br i1 %.not29.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i141, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread23.i: ; preds = %bb.y
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.dz = zext i32 %i.dw to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !172 ; 3 uses
  %i.ed = icmp ugt i32 %i.dt, %i.ec
  br i1 %i.ed, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, label %bb.ad

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i: ; preds = %bb.x
  %i.ee = load i32, ptr %i.ae, align 4, !tbaa !50 ; 2 uses
  %i.ef = icmp ugt i32 %i.dt, %i.ee
  br i1 %i.ef, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i
  %i.eg = add i32 %i.ee, 1                        ; 2 uses
  %i.eh = call i32 @llvm.umax.i32(i32 %i.eg, i32 2)
  %i.ei = shl i32 %i.eh, 1                        ; 3 uses
  %i.ej = load i32, ptr %i.f, align 4, !tbaa !156 ; 2 uses
  %i.ek = load i32, ptr %i.e, align 8, !tbaa !50
  %i.el = sub i32 %i.ej, %i.ek
  %i.em = icmp uge i32 %i.el, %i.eg
  %i.en = lshr i32 %i.ej, 1
  %.not.i.i145 = icmp ult i32 %i.en, %i.ei
  %or.cond.i.i = and i1 %.not.i.i145, %i.em
  br i1 %or.cond.i.i, label %.noexc85.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = zext i32 %i.ei to i64
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ep)
          to label %.noexc146 unwind label %bb.bg ; 2 uses

.noexc146:                                        ; preds = %bb.aa
  %i.er = load i32, ptr %i.ae, align 4, !tbaa !50 ; 2 uses
  %.not9.i.i = icmp eq i32 %i.er, 0
end_hunk_0
begin_hunk_1_@_ZN4toku8locktree8escalateEPFvmPKS0_RKNS_12range_bufferEPvES6_:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !72 ; 2 uses
  %i.it = icmp eq i32 %i.is, -1
  br i1 %i.it, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iu = zext i32 %i.is to i64
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !172
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i: ; preds = %bb.au, %bb.at
  %.0.i.i33.i = phi i32 [ %i.ix, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !72 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, -1
  br i1 %i.ja, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i, label %bb.av

bb.av:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i
  %i.jb = zext i32 %i.iz to i64
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !172
  %i.jf = add i32 %i.je, 1
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i: ; preds = %bb.av, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i
  %.0.i11.i35.i = phi i32 [ %i.jf, %bb.av ], [ 1, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i ] ; 2 uses
  %i.jg = add i32 %.0.i.i33.i, 1
  %i.jh = add i32 %.0.i11.i35.i, 2
  %i.ji = lshr i32 %i.jh, 1
  %i.jj = icmp ult i32 %i.jg, %i.ji
  %i.jk = add i32 %.0.i11.i35.i, 1
  %i.jl = add i32 %.0.i.i33.i, 2
  %i.jm = lshr i32 %i.jl, 1
  %i.jn = icmp ult i32 %i.jk, %i.jm
  %i.jo = select i1 %i.jj, i1 true, i1 %i.jn
  %spec.select190 = select i1 %i.jo, ptr %.tr4049.i, ptr null
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i, %bb.as
  %.3 = phi ptr [ %.1, %bb.as ], [ %spec.select190, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i ] ; 2 uses
  br i1 %i.hi, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jp = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.jq = zext i32 %i.hh to i64
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !172
  %i.ju = xor i32 %i.jt, -1
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i: ; preds = %bb.ax, %bb.aw
  %.0.i38.i = phi i32 [ %i.ju, %bb.ax ], [ -1, %bb.aw ]
  %i.jv = add i32 %.0.i38.i, %.tr42.ph52.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 3 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !72 ; 2 uses
  %i.jy = icmp eq i32 %i.jx, -1
  br i1 %i.jy, label %.noexc89, label %.lr.ph.i137

.noexc89:                                         ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i, %tailrecurse.i, %.thread27.i
  %.4 = phi ptr [ null, %.thread27.i ], [ %.2, %tailrecurse.i ], [ %.3, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i ] ; 4 uses
  %.tr40.lcssa.i = phi ptr [ %i.e, %.thread27.i ], [ %i.hg, %tailrecurse.i ], [ %i.jw, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i ]
  %i.jz = load i32, ptr %i.ae, align 4, !tbaa !50 ; 3 uses
  %i.ka = add i32 %i.jz, 1
  store i32 %i.ka, ptr %i.ae, align 4, !tbaa !50
  %i.kb = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.kc = zext i32 %i.jz to i64
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.kb, i64 %i.kc ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i32 1, ptr %i.ke, align 8, !tbaa !172
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store i32 -1, ptr %i.kf, align 4, !tbaa !72
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i32 -1, ptr %i.kg, align 8, !tbaa !72
  store ptr %i.dn, ptr %i.kd, align 8, !tbaa !174
  store i32 %i.jz, ptr %.tr40.lcssa.i, align 4, !tbaa !72
  %.not13.i = icmp eq ptr %.4, null
  br i1 %.not13.i, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, label %bb.ay

bb.ay:                                            ; preds = %.noexc89
  %i.kh = load i32, ptr %.4, align 4, !tbaa !72   ; 4 uses
  %i.ki = load i32, ptr %i.e, align 8, !tbaa !72
  %i.kj = icmp eq i32 %i.kh, %i.ki
  br i1 %i.kj, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.kk = icmp eq i32 %i.kh, -1
  br i1 %i.kk, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.km = zext i32 %i.kh to i64
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !172
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i = phi i32 [ 0, %bb.az ], [ %i.kp, %bb.ba ] ; 2 uses
  %i.kq = shl i32 %.0.i.i.i, 1
  %i.kr = call i32 @llvm.umax.i32(i32 %i.kq, i32 4) ; 2 uses
  %i.ks = zext i32 %i.kr to i64
  %i.kt = shl nuw nsw i64 %i.ks, 3
  %i.ku = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef %i.kt)
          to label %.noexc130 unwind label %bb.bg ; 2 uses

.noexc130:                                        ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i
  invoke void @_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ku, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc131 unwind label %bb.bg

.noexc131:                                        ; preds = %.noexc130
  %i.kv = load ptr, ptr %i.h, align 8, !tbaa !50
  invoke void @_Z9toku_freePv(ptr noundef %i.kv)
          to label %.noexc132 unwind label %bb.bg

.noexc132:                                        ; preds = %.noexc131
  store i8 1, ptr %4, align 8, !tbaa !154
  store i32 %i.kr, ptr %i.f, align 4, !tbaa !156
  store i32 %.0.i.i.i, ptr %i.ae, align 4, !tbaa !50
  store ptr %i.ku, ptr %i.h, align 8, !tbaa !50
  store i32 0, ptr %i.e, align 8, !tbaa !50
  br label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit

bb.bb:                                            ; preds = %bb.ay
  %i.kw = load ptr, ptr %i.h, align 8, !tbaa !50  ; 2 uses
  %i.kx = zext i32 %i.kh to i64
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !172
  %i.lb = zext i32 %i.la to i64
  %i.lc = shl nuw nsw i64 %i.lb, 2                ; 2 uses
  %i.ld = load i32, ptr %i.f, align 4, !tbaa !156
  %i.le = load i32, ptr %i.ae, align 4, !tbaa !50 ; 2 uses
  %i.lf = sub i32 %i.ld, %i.le
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul nuw nsw i64 %i.lg, 24
  %.not.i129 = icmp samesign ugt i64 %i.lc, %i.lh ; 2 uses
  br i1 %.not.i129, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.li = zext i32 %i.le to i64
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %i.li
  br label %.noexc133

bb.bd:                                            ; preds = %bb.bb
  %i.lk = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef %i.lc)
          to label %.noexc133 unwind label %bb.bg

.noexc133:                                        ; preds = %bb.bd, %bb.bc
  %.014.i = phi ptr [ %i.lj, %bb.bc ], [ %i.lk, %bb.bd ] ; 3 uses
  invoke void @_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE28fill_array_with_subtree_idxsEPjRKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.014.i, ptr noundef nonnull align 4 dereferenceable(4) %.4)
          to label %.noexc134 unwind label %bb.bg

.noexc134:                                        ; preds = %.noexc133
  %i.ll = load i32, ptr %i.kz, align 8, !tbaa !172
  invoke void @_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE25rebuild_subtree_from_idxsEPNS_12omt_internal17subtree_templatedILb0EEEPKjj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %.4, ptr noundef %.014.i, i32 noundef %i.ll)
          to label %.noexc135 unwind label %bb.bg

.noexc135:                                        ; preds = %.noexc134
  br i1 %.not.i129, label %bb.be, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit

bb.be:                                            ; preds = %.noexc135
  invoke void @_Z9toku_freePv(ptr noundef nonnull %.014.i)
          to label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit unwind label %bb.bg

bb.bf:                                            ; preds = %bb.t, %bb.bh
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bg:                                            ; preds = %.noexc149, %.noexc148, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE16convert_to_arrayEv.exit.i, %bb.ac, %bb.aa, %bb.be, %.noexc134, %.noexc133, %bb.bd, %.noexc131, %.noexc130, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i, %.noexc87, %.noexc86, %bb.ai, %bb.w, %bb.v, %bb.u
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit
  %i.lo = load ptr, ptr %i.d, align 8, !tbaa !167
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i8, ptr %i.ck, align 8, !tbaa !111, !range !70, !noundef !71
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = xor i1 %i.lr, true
  invoke void @_ZN4toku12range_buffer6appendEPK10__toku_dbtS3_b(ptr noundef nonnull align 8 dereferenceable(60) %i.lp, ptr noundef %i.bw, ptr noundef %i.by, i1 noundef zeroext %i.ls)
          to label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit unwind label %bb.bf

_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit: ; preds = %.noexc89, %.noexc135, %.noexc132, %bb.be, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread23.i, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i, %bb.al, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.lt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0157.0214) #22 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.ci
  br i1 %i.lu, label %._crit_edge, label %bb.l

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.ln, %bb.bg ], [ %i.lm, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bi ], [ %i.cf, %bb.i ]
  %13 = load ptr, ptr %i.ab, align 8, !tbaa !149
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %13)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit91 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #24
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit91:           ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %bb.bn
  %indvars.iv243 = phi i64 [ 0, %.lr.ph217.preheader ], [ %indvars.iv.next244, %bb.bn ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv243 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 104
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !112 ; 4 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph217
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !149
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.lz, ptr noundef %i.mc)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit92 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #24
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit92:           ; preds = %bb.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.lz, i64 noundef 48) #25
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit92, %.lr.ph217
  call void @_ZN4toku8keyrange7destroyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.lx)
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit194, label %.lr.ph217, !llvm.loop !175

._crit_edge218:                                   ; preds = %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i, %.loopexit194, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_Z9toku_freePv(ptr noundef %i.q)
  %i.mf = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.mg = call noundef zeroext i1 @_ZN4toku15concurrent_tree8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.mf) ; 0 uses
  %i.mh = load i8, ptr %4, align 8, !tbaa !154, !range !70, !noundef !71 ; 4 uses
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %._crit_edge218
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !50
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit

bb.bp:                                            ; preds = %._crit_edge218
  %i.ml = load i32, ptr %i.e, align 8, !tbaa !72  ; 2 uses
  %i.mm = icmp eq i32 %i.ml, -1
  br i1 %i.mm, label %.preheader, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mn = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.mo = zext i32 %i.ml to i64
  %i.mp = getelementptr inbounds nuw [24 x i8], ptr %i.mn, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !172
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit: ; preds = %bb.bo, %bb.bq
  %.0.i93 = phi i32 [ %i.mk, %bb.bo ], [ %i.mr, %bb.bq ] ; 2 uses
  %.not225 = icmp eq i32 %.0.i93, 0
  br i1 %.not225, label %.preheader, label %.lr.ph224

.lr.ph224:                                        ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mt = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %11, i64 104
  %.not74 = icmp eq ptr %1, null
  br label %bb.br

.preheader:                                       ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread, %bb.bp, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit
  %i.mx = phi i8 [ 0, %bb.bp ], [ %i.mh, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit ], [ %i.ot, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ]
  %i.my = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  br label %bb.by

bb.br:                                            ; preds = %.lr.ph224, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread
  %i.mz = phi i8 [ %i.mh, %.lr.ph224 ], [ %i.ot, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 3 uses
  %i.na = phi i8 [ %i.mh, %.lr.ph224 ], [ %i.ou, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ]
  %.0222 = phi i32 [ 0, %.lr.ph224 ], [ %i.ov, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 5 uses
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nc = load i32, ptr %i.e, align 8, !tbaa !72  ; 3 uses
  %i.nd = icmp eq i32 %i.nc, -1
  br i1 %i.nd, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98: ; preds = %bb.br
  %i.ne = load i32, ptr %i.ms, align 4, !tbaa !50
  %.not.i99 = icmp ult i32 %.0222, %i.ne
  br i1 %.not.i99, label %bb.bt, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i: ; preds = %bb.bs
  %i.nf = load ptr, ptr %i.h, align 8, !tbaa !50  ; 3 uses
  %i.ng = zext i32 %i.nc to i64
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %i.nf, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !172
  %.not12.i94 = icmp ult i32 %.0222, %i.nj
  br i1 %.not12.i94, label %tailrecurse.outer.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread

bb.bt:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98
  %i.nk = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.nl = load i32, ptr %i.e, align 8, !tbaa !50
  %i.nm = add i32 %i.nl, %.0222
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nn
  br label %.loopexit

tailrecurse.outer.i.i:                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i, %bb.bu
  %.pre.i96 = phi i32 [ %.pre.pre.i, %bb.bu ], [ %i.nc, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i ]
  %.tr21.ph.i.i = phi i32 [ %i.od, %bb.bu ], [ %.0222, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i ] ; 3 uses
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.outer.i.i
  %i.np = phi i32 [ %i.nt, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ %.pre.i96, %tailrecurse.outer.i.i ]
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.nf, i64 %i.nq ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !72 ; 3 uses
  %i.nu = icmp eq i32 %i.nt, -1
  br i1 %i.nu, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i: ; preds = %tailrecurse.i.i
  %i.nv = zext i32 %i.nt to i64
  %i.nw = getelementptr inbounds nuw [24 x i8], ptr %i.nf, i64 %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !172 ; 2 uses
  %i.nz = icmp ult i32 %.tr21.ph.i.i, %i.ny
  br i1 %i.nz, label %tailrecurse.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i: ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.i.i
  %.0.i19.i.i = phi i32 [ %i.ny, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ 0, %tailrecurse.i.i ] ; 2 uses
  %i.oa = icmp eq i32 %.tr21.ph.i.i, %.0.i19.i.i
  br i1 %i.oa, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.oc = xor i32 %.0.i19.i.i, -1
  %i.od = add i32 %.tr21.ph.i.i, %i.oc
  %.pre.pre.i = load i32, ptr %i.ob, align 4, !tbaa !72
  br label %tailrecurse.outer.i.i

.loopexit:                                        ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, %bb.bt
  %.sink.in.i = phi ptr [ %i.no, %bb.bt ], [ %i.nr, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i ]
  %.sink.i97 = load ptr, ptr %.sink.in.i, align 8, !tbaa !167 ; 2 uses
  %i.oe = load i64, ptr %.sink.i97, align 8, !tbaa !169 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.of = getelementptr inbounds nuw i8, ptr %.sink.i97, i64 8 ; 3 uses
  call void @_ZN4toku12range_buffer8iteratorC1EPKS0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.of)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.og = call noundef zeroext i1 @_ZN4toku12range_buffer8iterator7currentEPNS1_6recordE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %9)
  br i1 %i.og, label %.lr.ph220, label %._crit_edge221

.lr.ph220:                                        ; preds = %.loopexit, %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.oh = call noundef ptr @_ZNK4toku12range_buffer8iterator6record12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  %i.oi = call noundef ptr @_ZNK4toku12range_buffer8iterator6record13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  call void @_ZN4toku8keyrange6createEPK10__toku_dbtS3_(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %i.oh, ptr noundef %i.oi)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %11, ptr noundef nonnull align 8 dereferenceable(81) %10, i64 81, i1 false), !tbaa.struct !105
  store i64 %i.oe, ptr %i.mt, align 8, !tbaa !108
  %i.oj = load i8, ptr %i.mv, align 8, !tbaa !76, !range !70, !noundef !71
  %i.ok = xor i8 %i.oj, 1
  store i8 %i.ok, ptr %i.mu, align 8, !tbaa !111
  store ptr null, ptr %i.mw, align 8, !tbaa !112
  %i.ol = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.om = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv()
  %i.on = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %11)
  %i.oo = load i64, ptr %i.mt, align 8, !tbaa !108
  %i.op = load i8, ptr %i.mu, align 8, !tbaa !111, !range !70, !noundef !71
  %i.oq = trunc nuw i8 %i.op to i1
  call void @_ZN4toku15concurrent_tree15locked_keyrange6insertERKNS_8keyrangeEmb(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(112) %11, i64 noundef %i.oo, i1 noundef zeroext %i.oq)
  %.not.i101 = icmp eq ptr %i.ol, null
  br i1 %.not.i101, label %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph220
  %i.or = add i64 %i.on, %i.om
  call void @_ZN4toku16locktree_manager13note_mem_usedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.ol, i64 noundef %i.or)
  br label %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit

_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit: ; preds = %.lr.ph220, %bb.bv
end_hunk_1
