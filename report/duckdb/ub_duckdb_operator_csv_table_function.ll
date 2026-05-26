inline.NumInlined: 5256
inline.NumDeleted: 2728
begin_hunk_0_@_ZN6duckdb11CSVFileScan24InitializeFileNamesTypesEv:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207  ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !241
  %.not.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 noundef zeroext 25)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !207
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.u, ptr %i.q, align 8, !tbaa !207
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.r, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType7VARCHARE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit: ; preds = %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !223 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17
  %.not = icmp eq i64 %i.z, 0                     ; 2 uses
  %.in.v.i.i.i = select i1 %.not, i64 24, i64 16
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !367

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %.not, label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !195
  %i.ac = icmp eq ptr %.019.lcssa29.i.i.i, %i.ab
  br i1 %i.ac, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

select.unfold.i.i:                                ; preds = %._crit_edge.thread.i.i.i
  %i.ad = icmp eq ptr %.019.lcssa29.i.i.i, %i.x
  br i1 %i.ad, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.lcssa29.i.i.i, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = icmp ne i64 %i.af, 0
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.e, %select.unfold.i.i
  %i.ah = phi i1 [ %i.ag, %bb.e ], [ true, %select.unfold.i.i ]
  %i.ai = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 0, ptr %i.aj, align 8, !tbaa !17
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %.019.lcssa29.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !225
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !225
  br label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

_ZNSt3setImSt4lessImESaImEE6insertEOm.exit:       ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !368 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !369
  %.not.i23 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !368
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJiiEEEvDpOT_.exit

bb.g:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !220 ; 5 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.h, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ay = ashr exact i64 %i.aw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 576460752303423487)
  %i.bc = select i1 %i.ba, i64 576460752303423487, i64 %i.bb ; 3 uses
  %.not.i.i.i24 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i24)
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #25 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ap
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !370
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !374

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #26
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !220
  store ptr %i.bi, ptr %i.ao, align 8, !tbaa !368
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bj, ptr %i.aq, align 8, !tbaa !369
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJiiEEEvDpOT_.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmRN6duckdb19MultiFileLocalIndexEEEEvDpOT_.exit
  %i.bk = icmp eq ptr %i.dh, %i.dg
  br i1 %i.bk, label %bb.t, label %bb.u

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmRN6duckdb19MultiFileLocalIndexEEEEvDpOT_.exit
  %.020102 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmRN6duckdb19MultiFileLocalIndexEEEEvDpOT_.exit ] ; 4 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_22MultiFileLocalColumnIdELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.020102)
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !17 ; 7 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bm) ; 2 uses
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !207 ; 3 uses
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !241
  %.not.i25 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !207
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.br, ptr %i.h, align 8, !tbaa !207
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit: ; preds = %bb.k, %bb.l
  %.02022.i.i.i26 = load ptr, ptr %i.j, align 8, !tbaa !223 ; 2 uses
  %.not23.i.i.i27 = icmp eq ptr %.02022.i.i.i26, null
  br i1 %.not23.i.i.i27, label %._crit_edge.thread.i.i.i46, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit, %.lr.ph.i.i.i29
  %.02024.i.i.i30 = phi ptr [ %.020.i.i.i33, %.lr.ph.i.i.i29 ], [ %.02022.i.i.i26, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02024.i.i.i30, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !17 ; 2 uses
  %i.bu = icmp ult i64 %i.bm, %i.bt               ; 2 uses
  %.in.v.i.i.i31 = select i1 %i.bu, i64 16, i64 24
  %.in.i.i.i32 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i30, i64 %.in.v.i.i.i31
  %.020.i.i.i33 = load ptr, ptr %.in.i.i.i32, align 8, !tbaa !223 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %.020.i.i.i33, null
  br i1 %.not.i.i.i34, label %._crit_edge.i.i.i35, label %.lr.ph.i.i.i29, !llvm.loop !367

._crit_edge.i.i.i35:                              ; preds = %.lr.ph.i.i.i29
  br i1 %i.bu, label %._crit_edge.thread.i.i.i46, label %bb.n

._crit_edge.thread.i.i.i46:                       ; preds = %._crit_edge.i.i.i35, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit
  %.019.lcssa29.i.i.i47 = phi ptr [ %.02024.i.i.i30, %._crit_edge.i.i.i35 ], [ %i.k, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit ] ; 4 uses
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !195
  %i.bw = icmp eq ptr %.019.lcssa29.i.i.i47, %i.bv
  br i1 %i.bw, label %select.unfold.i.i43, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i46
  %i.bx = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i47) #29
  %.phi.trans.insert.i.i48 = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.pre.i.i49 = load i64, ptr %.phi.trans.insert.i.i48, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i35
  %i.by = phi i64 [ %.pre.i.i49, %bb.m ], [ %i.bt, %._crit_edge.i.i.i35 ]
  %.019.lcssa28.i.i.i36 = phi ptr [ %.019.lcssa29.i.i.i47, %bb.m ], [ %.02024.i.i.i30, %._crit_edge.i.i.i35 ]
  %i.bz = icmp ult i64 %i.by, %i.bm
  br i1 %i.bz, label %select.unfold.i.i43, label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit50

select.unfold.i.i43:                              ; preds = %bb.n, %._crit_edge.thread.i.i.i46
  %.sroa.4.0.i.ph.i.i44 = phi ptr [ %.019.lcssa29.i.i.i47, %._crit_edge.thread.i.i.i46 ], [ %.019.lcssa28.i.i.i36, %bb.n ] ; 3 uses
  %i.ca = icmp eq ptr %.sroa.4.0.i.ph.i.i44, %i.k
  br i1 %i.ca, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i45, label %bb.o

bb.o:                                             ; preds = %select.unfold.i.i43
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i44, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.cd = icmp ult i64 %i.bm, %i.cc
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i45

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i45: ; preds = %bb.o, %select.unfold.i.i43
  %i.ce = phi i1 [ %i.cd, %bb.o ], [ true, %select.unfold.i.i43 ]
  %i.cf = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store i64 %i.bm, ptr %i.cg, align 8, !tbaa !17
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ce, ptr noundef nonnull %i.cf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i44, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #24
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !225
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.m, align 8, !tbaa !225
  br label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit50

_ZNSt3setImSt4lessImESaImEE6insertEOm.exit50:     ; preds = %bb.n, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i45
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !368 ; 7 uses
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !369
  %.not.i51 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit50
  store i64 %i.bm, ptr %i.cj, align 8, !tbaa !375
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %.020102, ptr %i.cl, align 8, !tbaa !377
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.cm, ptr %i.o, align 8, !tbaa !368
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmRN6duckdb19MultiFileLocalIndexEEEEvDpOT_.exit

bb.q:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit50
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !220 ; 5 uses
  %i.co = ptrtoint ptr %i.cj to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775792
  br i1 %i.cr, label %bb.r, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i52

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i52: ; preds = %bb.q
  %i.cs = ashr exact i64 %i.cq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i53, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 576460752303423487)
  %i.cw = select i1 %i.cu, i64 576460752303423487, i64 %i.cv ; 3 uses
  %.not.i.i.i54 = icmp ne i64 %i.cw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i54)
  %i.cx = shl nuw nsw i64 %i.cw, 4
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #25 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq ; 2 uses
  store i64 %i.bm, ptr %i.cz, align 8, !tbaa !375
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.020102, ptr %i.da, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i55 = icmp eq ptr %i.cn, %i.cj
  br i1 %.not10.i.i.i.i.i.i55, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i60, label %.lr.ph.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i56:                             ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i52, %.lr.ph.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i57 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i56 ], [ %i.cy, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i52 ] ; 2 uses
  %.0911.i.i.i.i.i.i58 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i56 ], [ %i.cn, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i52 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i57, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i58, i64 16, i1 false), !alias.scope !378
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i58, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq ptr %i.db, %i.cj
  br i1 %.not.i.i.i.i.i.i59, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i60, label %.lr.ph.i.i.i.i.i.i56, !llvm.loop !374

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i56, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i52
  %.0.lcssa.i.i.i.i.i.i61 = phi ptr [ %i.cy, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i52 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i56 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i61, i64 16
  %.not.i34.i.i62 = icmp eq ptr %i.cn, null
  br i1 %.not.i34.i.i62, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmRN6duckdb19MultiFileLocalIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i60
  tail call void @_ZdlPv(ptr noundef nonnull %i.cn) #26
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmRN6duckdb19MultiFileLocalIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmRN6duckdb19MultiFileLocalIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i60
  store ptr %i.cy, ptr %i.n, align 8, !tbaa !220
  store ptr %i.dd, ptr %i.o, align 8, !tbaa !368
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.de, ptr %i.p, align 8, !tbaa !369
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmRN6duckdb19MultiFileLocalIndexEEEEvDpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmRN6duckdb19MultiFileLocalIndexEEEEvDpOT_.exit: ; preds = %bb.p, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmRN6duckdb19MultiFileLocalIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.df = add nuw i64 %.020102, 1                 ; 2 uses
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !382 ; 2 uses
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !306 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = icmp ult i64 %i.df, %i.dl
  br i1 %i.dm, label %bb.j, label %._crit_edge, !llvm.loop !383

bb.t:                                             ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dp = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.dn) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !384
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !382
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !306
  %.not110 = icmp eq ptr %i.du, %i.dv
  br i1 %.not110, label %.loopexit, label %.lr.ph105

.lr.ph105:                                        ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph105, %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %.021104 = phi i64 [ 0, %.lr.ph105 ], [ %i.gb, %_ZN6duckdb11LogicalTypeaSERKS0_.exit ] ; 3 uses
  %i.dz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_22MultiFileLocalColumnIdELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.021104)
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !385 ; 4 uses
  %i.eb = load i64, ptr %i.dr, align 8, !tbaa !384
  %.not.not.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.not.i.i, label %.preheader112, label %bb.x

.preheader112:                                    ; preds = %bb.v, %bb.w
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.w ], [ %i.dx, %bb.v ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !231 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.w

bb.w:                                             ; preds = %.preheader112
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !17
  %i.ee = icmp eq i64 %i.ea, %i.ed
  br i1 %i.ee, label %_ZNSt13unordered_mapImN6duckdb11LogicalTypeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.preheader112, !llvm.loop !387

bb.x:                                             ; preds = %bb.v
  %i.ef = load i64, ptr %i.dw, align 8, !tbaa !42 ; 2 uses
  %i.eg = urem i64 %i.ea, %i.ef                   ; 2 uses
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !238 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !231 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !17
  %i.en = icmp eq i64 %i.ea, %i.em
  br i1 %i.en, label %_ZNSt13unordered_mapImN6duckdb11LogicalTypeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %bb.aa
  %i.eo = icmp eq i64 %i.ea, %i.er
  br i1 %i.eo, label %_ZNSt13unordered_mapImN6duckdb11LogicalTypeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !388

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.z
  %.020.i.i.i.i = phi ptr [ %i.ep, %bb.z ], [ %i.ek, %bb.y ]
  %i.ep = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !231 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not18.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !17 ; 2 uses
  %i.es = urem i64 %i.er, %i.ef
  %.not19.i.i.i.i = icmp eq i64 %i.es, %i.eg
  br i1 %.not19.i.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !388

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.aa
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !llvm.loop !388

_ZNSt13unordered_mapImN6duckdb11LogicalTypeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit: ; preds = %bb.z, %bb.w, %bb.y
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.w ], [ %i.ek, %bb.y ], [ %i.ep, %bb.z ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.eu = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 noundef %.021104) ; 5 uses
  %i.ev = icmp eq ptr %i.eu, %i.et
  br i1 %i.ev, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb11LogicalTypeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit
  %i.ew = load i8, ptr %i.et, align 8, !tbaa !389
  store i8 %i.ew, ptr %i.eu, align 8, !tbaa !389
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 17
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !397
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !397
end_hunk_0
begin_hunk_1_@_ZN6duckdb14DialectOptionsC2Ev:bb.a
  %i.aw = load ptr, ptr %.05.i.i.i.i25, align 8, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i25, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i26: ; preds = %.lr.ph.i.i.i.i24
  call void @_ZdlPv(ptr noundef %i.aw) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27: ; preds = %.lr.ph.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i26
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i25, i64 32 ; 2 uses
  %.not.i.i.i1.i28 = icmp eq ptr %i.az, %i.av
  br i1 %.not.i.i.i1.i28, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i29, label %.lr.ph.i.i.i.i24, !llvm.loop !204

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i29: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27
  %.pr.i.i30 = load ptr, ptr %i.as, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i31

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i31: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i29, %_ZNSt6vectorIiSaIiEED2Ev.exit.i22
  %i.ba = phi ptr [ %.pr.i.i30, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i29 ], [ %i.at, %_ZNSt6vectorIiSaIiEED2Ev.exit.i22 ] ; 2 uses
  %.not.i.i1.i.i32 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i32, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i33, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i31
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i33

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i33: ; preds = %bb.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i31
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !679 ; 2 uses
  %.not.i.i.i2.i34 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i2.i34, label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i35, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i33
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #26
  br label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i35

_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i35: ; preds = %bb.j, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i33
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN6duckdb13StrTimeFormatD2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i35
  call void @_ZdlPv(ptr noundef %i.be) #26
  br label %_ZN6duckdb13StrTimeFormatD2Ev.exit39

_ZN6duckdb13StrTimeFormatD2Ev.exit39:             ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.bh, align 8, !tbaa !1160
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  ret void

.thread:                                          ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

.thread46:                                        ; preds = %_ZN6duckdb9CSVOptionINS_14StrpTimeFormatEEC2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

.thread70:                                        ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.preheader.preheader

bb.k:                                             ; preds = %_ZN6duckdb9CSVOptionINS_14StrpTimeFormatEEC2Ev.exit19
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit51.loopexit:                             ; preds = %bb.c
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.bo) #24
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.bp) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit51.loopexit
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %.loopexit51.loopexit ] ; 2 uses
  %i.bq = phi i1 [ false, %bb.k ], [ true, %.loopexit51.loopexit ]
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.bq, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread70, %bb.l
  %.pn.pn73 = phi { ptr, i32 } [ %i.bl, %.thread70 ], [ %.pn, %bb.l ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.br) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.thread46, %.thread, %bb.l
  %.pn.pn.pn.pn45 = phi { ptr, i32 } [ %i.bj, %.thread ], [ %i.bk, %.thread46 ], [ %.pn, %bb.l ], [ %.pn.pn73, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.b
  br i1 %i.bt, label %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.bs) #26
  br label %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit

_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit:      ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %.pn.pn.pn.pn45
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_5ValueESt4lessIS1_ESaISt4pairIKS1_S2_EEEC2ESt16initializer_listIS7_ERKS4_RKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<duckdb::LogicalTypeId, std::pair<const duckdb::LogicalTypeId, duckdb::Value>, std::_Select1st<std::pair<const duckdb::LogicalTypeId, duckdb::Value>>, std::less<duckdb::LogicalTypeId>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !225
  %.idx = mul nuw nsw i64 %2, 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %0, ptr %5, align 8, !tbaa !332
  %.not6.i = icmp eq i64 %2, 0
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i
  %.07.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !225
  %.not.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 1, !tbaa !676
  %i.k = load i8, ptr %.07.i, align 1, !tbaa !676
  %i.l = icmp ult i8 %i.j, %i.k
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !223 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = load i8, ptr %.07.i, align 1, !tbaa !676 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.o = load i8, ptr %i.n, align 1, !tbaa !676   ; 2 uses
  %i.p = icmp ult i8 %i.m, %i.o                   ; 2 uses
  %.in.v.i.i = select i1 %i.p, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !1170

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.p, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.r = icmp eq ptr %.019.lcssa29.i.i, %i.q
  br i1 %i.r, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.s = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #29
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81.i = load i8, ptr %.phi.trans.insert80.i, align 1, !tbaa !676
  %.pre82.i = load i8, ptr %.07.i, align 1, !tbaa !676
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i8 [ %.pre82.i, %bb.e ], [ %i.m, %._crit_edge.i.i ]
  %i.u = phi i8 [ %.pre81.i, %bb.e ], [ %i.o, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.v = icmp ult i8 %i.u, %i.t
  br i1 %i.v, label %select.unfold, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.h, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ]
  %i.w = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(72) %.07.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i unwind label %bb.g ; 0 uses

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i: ; preds = %bb.f, %select.unfold
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1171

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.g:                                             ; preds = %select.unfold
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #24
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3mapIN6duckdb13LogicalTypeIdEbSt4lessIS1_ESaISt4pairIKS1_bEEEC2ESt16initializer_listIS6_ERKS3_RKS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !225
  %.idx = shl nuw nsw i64 %2, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_insert_range_uniqueIPKS4_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESF_SF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i
  %.pr20 = phi i64 [ %.pr, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ag, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i7 = icmp eq i64 %.pr20, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i8, ptr %i.h, align 1, !tbaa !676
  %i.j = load i8, ptr %.08.i, align 1, !tbaa !676
  %i.k = icmp ult i8 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !223 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i8, ptr %.08.i, align 1, !tbaa !676 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i8, ptr %i.m, align 1, !tbaa !676   ; 2 uses
  %i.o = icmp ult i8 %i.l, %i.n                   ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !1172

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #29
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i8, ptr %.phi.trans.insert80.i, align 1, !tbaa !676
  %.pre82.i = load i8, ptr %.08.i, align 1, !tbaa !676
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i8 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i8 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp ult i8 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i8, ptr %.08.i, align 1, !tbaa !676
  %i.y = load i8, ptr %i.w, align 1, !tbaa !676
  %i.z = icmp ult i8 %i.x, %i.y
  br label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i16, ptr %.08.i, align 1
  store i16 %i.ad, ptr %i.ac, align 1
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #24
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !225
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.e, align 8, !tbaa !225
  br label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc6
  %.pr = phi i64 [ %.pr20, %bb.f ], [ %i.af, %.noexc6 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_insert_range_uniqueIPKS4_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESF_SF_.exit, label %.lr.ph.i, !llvm.loop !1173

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_insert_range_uniqueIPKS4_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESF_SF_.exit: ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #24
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEEC2ESt16initializer_listIS9_ERKS6_RKSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<duckdb::LogicalTypeId, std::pair<const duckdb::LogicalTypeId, duckdb::CSVOption<duckdb::StrpTimeFormat>>, std::_Select1st<std::pair<const duckdb::LogicalTypeId, duckdb::CSVOption<duckdb::StrpTimeFormat>>>, std::less<duckdb::LogicalTypeId>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !225
  %.idx = mul nuw nsw i64 %2, 136
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %0, ptr %5, align 8, !tbaa !976
  %.not6.i = icmp eq i64 %2, 0
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i
  %.07.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !225
  %.not.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 1, !tbaa !676
  %i.k = load i8, ptr %.07.i, align 1, !tbaa !676
  %i.l = icmp ult i8 %i.j, %i.k
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !223 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = load i8, ptr %.07.i, align 1, !tbaa !676 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.o = load i8, ptr %i.n, align 1, !tbaa !676   ; 2 uses
  %i.p = icmp ult i8 %i.m, %i.o                   ; 2 uses
  %.in.v.i.i = select i1 %i.p, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !1158

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.p, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.r = icmp eq ptr %.019.lcssa29.i.i, %i.q
  br i1 %i.r, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.s = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #29
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81.i = load i8, ptr %.phi.trans.insert80.i, align 1, !tbaa !676
  %.pre82.i = load i8, ptr %.07.i, align 1, !tbaa !676
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i8 [ %.pre82.i, %bb.e ], [ %i.m, %._crit_edge.i.i ]
  %i.u = phi i8 [ %.pre81.i, %bb.e ], [ %i.o, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.v = icmp ult i8 %i.u, %i.t
  br i1 %i.v, label %select.unfold, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.h, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ]
  %i.w = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(136) %.07.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i unwind label %bb.g ; 0 uses

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i: ; preds = %bb.f, %select.unfold
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 136 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1174

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.g:                                             ; preds = %select.unfold
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #24
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %3, align 8, !tbaa !979
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i8, ptr %3, align 8, !tbaa !676     ; 2 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !676
  %i.f = icmp ult i8 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.g = phi i8 [ %i.d, %bb.b ], [ %.pre, %._crit_edge ]
  %i.h = phi i1 [ %i.f, %bb.b ], [ true, %._crit_edge ]
  %i.i = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #25 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 %i.g, ptr %i.j, align 8, !tbaa !979
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !982, !range !55, !noundef !56
  store i8 %i.m, ptr %i.k, align 8, !tbaa !982
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZN6duckdb13StrTimeFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.n, ptr noundef nonnull align 8 dereferenceable(120) %i.o)
          to label %_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11_Alloc_nodeclIRKS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #24 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11_Alloc_nodeclIRKS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit: ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14StrpTimeFormatE, i64 16), ptr %i.n, align 8, !tbaa !23
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.h, ptr noundef nonnull %i.i, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !225
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !225
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 9 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !9
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !17
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !13
  %i.h = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.h, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = load ptr, ptr %.016, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1175

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #24 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.t) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !204

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28
end_hunk_1
