inline.NumInlined: 2373
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5powerERKNS3_8intervalEjRS6_:bb.a
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit116

bb.ap:                                            ; preds = %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit113
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit116

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit116: ; preds = %bb.ao, %bb.ap
  %.0.i.i114 = phi ptr [ %i.mr, %bb.ap ], [ %spec.select.i.i115, %bb.ao ]
  %i.ms = load ptr, ptr %i.me, align 8, !tbaa !15, !nonnull !22, !align !23
  tail call void @_ZN11mpf_manager3setER3mpfRKS0_(ptr noundef nonnull align 8 dereferenceable(840) %i.ms, ptr noundef nonnull align 8 dereferenceable(32) %i.ls, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i114)
  %i.mt = load ptr, ptr %i.me, align 8, !tbaa !15, !nonnull !22, !align !23 ; 2 uses
  %i.mu = load i32, ptr %i.ls, align 8
  %i.mv = and i32 %i.mu, 2147450880
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit118, label %bb.aq

bb.aq:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit116
  %i.mx = tail call noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %i.ls)
  br i1 %i.mx, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit118, label %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i117

_ZN11mpf_manager10is_regularERK3mpf.exit.i.i117:  ; preds = %bb.aq
  %i.my = tail call noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %i.ls)
  br i1 %i.my, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit118, label %bb.ar

bb.ar:                                            ; preds = %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i117
  %i.mz = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.mz, ptr nonnull @_ZTIN3f2nI11mpf_managerE9exceptionE, ptr null) #23
  unreachable

_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit118:    ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit116, %bb.aq, %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i117
  %i.na = load ptr, ptr %i.d, align 8, !tbaa !109, !nonnull !22, !align !23 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store i32 2, ptr %i.nb, align 8, !tbaa !111
  br i1 %i.lv, label %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit, label %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread

_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit: ; preds = %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit118
  br i1 %i.lu, label %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit119.thread, label %bb.as

_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread: ; preds = %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit118
  tail call void @_ZN3f2nI11mpf_managerE5powerERK3mpfjRS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.na, ptr noundef nonnull align 8 dereferenceable(32) %i.lt, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.lt)
  br i1 %i.lu, label %_Z2eqI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread, label %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit

bb.as:                                            ; preds = %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit
  %i.nc = load ptr, ptr %i.d, align 8, !tbaa !109, !nonnull !22, !align !23
  tail call void @_ZN3f2nI11mpf_managerE5powerERK3mpfjRS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ls)
  br label %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread150

_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit: ; preds = %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread
  %i.nd = load ptr, ptr %i.d, align 8, !tbaa !109, !nonnull !22, !align !23
  tail call void @_ZN3f2nI11mpf_managerE5powerERK3mpfjRS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.nd, ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ls)
  %i.ne = load ptr, ptr %i.d, align 8, !tbaa !109, !nonnull !22, !align !23
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !15, !nonnull !22, !align !23
  %i.ng = tail call noundef zeroext i1 @_ZN11mpf_manager2ltERK3mpfS2_(ptr noundef nonnull align 8 dereferenceable(840) %i.nf, ptr noundef nonnull align 8 dereferenceable(32) %i.ls, ptr noundef nonnull align 8 dereferenceable(32) %i.lt)
  br i1 %i.ng, label %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread150, label %.thread159

.thread159:                                       ; preds = %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit
  %i.nh = load ptr, ptr %i.d, align 8, !tbaa !109, !nonnull !22, !align !23
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !15, !nonnull !22, !align !23
  %i.nj = tail call noundef zeroext i1 @_ZN11mpf_manager2eqERK3mpfS2_(ptr noundef nonnull align 8 dereferenceable(840) %i.ni, ptr noundef nonnull align 8 dereferenceable(32) %i.lt, ptr noundef nonnull align 8 dereferenceable(32) %i.ls)
  br i1 %i.nj, label %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit119.thread, label %_Z2eqI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread

_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit119.thread: ; preds = %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit, %.thread159
  %.0146149155166 = phi i32 [ 1, %.thread159 ], [ 2, %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit ] ; 2 uses
  %i.nk = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(98) %1)
  br i1 %i.nk, label %_Z2eqI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit119.thread
  %i.nl = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13upper_is_openERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(98) %1)
  br i1 %i.nl, label %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread150, label %_Z2eqI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread

_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread150: ; preds = %bb.as, %bb.at, %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @_ZN3mpf4swapERS_(ptr noundef nonnull align 8 dereferenceable(32) %i.nm, ptr noundef nonnull align 8 dereferenceable(32) %i.lt) #21
  %i.nn = zext i1 %i.lv to i8
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 %i.nn, ptr %i.no, align 8, !tbaa !114
  %i.np = load i8, ptr %1, align 8, !tbaa !102, !range !112, !noundef !22
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread150
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !105 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !106
  %i.nv = load ptr, ptr %i.ns, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.nv, ptr noundef nonnull align 8 dereferenceable(12) %i.nw, i32 noundef %i.nu)
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !60 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.ob = load i32, ptr %i.oa, align 8
  %i.oc = lshr i32 %i.ob, 30
  %i.od = trunc nuw nsw i32 %i.oc to i8
  %i.oe = and i8 %i.od, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122

bb.aw:                                            ; preds = %_Z2gtI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread150
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.og = load i8, ptr %i.of, align 1, !tbaa !115, !range !112, !noundef !22
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122

_Z2eqI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread: ; preds = %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread, %bb.at, %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit119.thread, %.thread159
  %.0146149155164 = phi i32 [ 1, %.thread159 ], [ %.0146149155166, %bb.at ], [ %.0146149155166, %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit119.thread ], [ 2, %_Z5powerI3f2nI11mpf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread ]
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @_ZN3mpf4swapERS_(ptr noundef nonnull align 8 dereferenceable(32) %i.oh, ptr noundef nonnull align 8 dereferenceable(32) %i.ls) #21
  %i.oi = icmp eq i32 %.0146149155164, 2
  %i.oj = zext i1 %i.oi to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 %i.oj, ptr %i.ok, align 8, !tbaa !114
  %i.ol = load i8, ptr %1, align 8, !tbaa !102, !range !112, !noundef !22
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_Z2eqI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !105 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !106
  %i.or = load ptr, ptr %i.oo, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.ot = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.or, ptr noundef nonnull align 8 dereferenceable(12) %i.os, i32 noundef %i.oq)
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !60 ; 2 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ox = load i32, ptr %i.ow, align 8
  %i.oy = lshr i32 %i.ox, 30
  %i.oz = trunc nuw nsw i32 %i.oy to i8
  %i.pa = and i8 %i.oz, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122

bb.az:                                            ; preds = %_Z2eqI3f2nI11mpf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !116, !range !112, !noundef !22
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au
  %.0.i.i123.sink = phi i8 [ %i.oe, %bb.av ], [ %i.og, %bb.aw ], [ 1, %bb.au ], [ %i.pc, %bb.az ], [ 1, %bb.ax ], [ %i.pa, %bb.ay ]
  %i.pd = getelementptr inbounds nuw i8, ptr %3, i64 97
  store i8 %.0.i.i123.sink, ptr %i.pd, align 1, !tbaa !116
  %i.pe = load ptr, ptr %i.d, align 8, !tbaa !109, !nonnull !22, !align !23 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pg = load ptr, ptr %i.pe, align 8, !tbaa !15, !nonnull !22, !align !23
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !277
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !278
  tail call void @_ZN11mpf_manager3setER3mpfjji(ptr noundef nonnull align 8 dereferenceable(840) %i.pg, ptr noundef nonnull align 8 dereferenceable(32) %i.pf, i32 noundef %i.pi, i32 noundef %i.pk, i32 noundef 0)
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.pl, align 8, !tbaa !113
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.pm, align 1, !tbaa !115
  br label %bb.bq

bb.ba:                                            ; preds = %bb.c
  %i.pn = load i8, ptr %1, align 8, !tbaa !102, !range !112, !noundef !22
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %.split167, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit125

.split167:                                        ; preds = %bb.ba
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !105 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !106
  %i.pt = load ptr, ptr %i.pq, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.pt, ptr noundef nonnull align 8 dereferenceable(12) %i.pu, i32 noundef %i.ps)
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !60
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.bb, label %bb.bc

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit125: ; preds = %bb.ba
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !113, !range !112, !noundef !22
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %bb.bb, label %.thread184

.thread184:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit125
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !109, !nonnull !22, !align !23
  br label %bb.be

bb.bb:                                            ; preds = %.split167, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit125
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !109, !nonnull !22, !align !23 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.qg = load ptr, ptr %i.qe, align 8, !tbaa !15, !nonnull !22, !align !23
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !277
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !278
  tail call void @_ZN11mpf_manager3setER3mpfjji(ptr noundef nonnull align 8 dereferenceable(840) %i.qg, ptr noundef nonnull align 8 dereferenceable(32) %i.qf, i32 noundef %i.qi, i32 noundef %i.qk, i32 noundef 0)
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 1, ptr %i.ql, align 1, !tbaa !115
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 1, ptr %4, align 8, !tbaa !113
  br label %bb.bi

bb.bc:                                            ; preds = %.split167
  %.pre = load i8, ptr %1, align 8, !tbaa !102, !range !112
  %i.qm = trunc nuw i8 %.pre to i1
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !109, !nonnull !22, !align !23 ; 2 uses
  br i1 %i.qm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !105 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !106
  %i.qt = load ptr, ptr %i.qq, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.qt, ptr noundef nonnull align 8 dereferenceable(12) %i.qu, i32 noundef %i.qs)
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !60 ; 2 uses
  %i.qx = icmp eq ptr %i.qw, null
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %spec.select.i.i127 = select i1 %i.qx, ptr %i.qy, ptr %i.qw
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit128

bb.be:                                            ; preds = %.thread184, %bb.bc
  %i.qz = phi ptr [ %i.qc, %.thread184 ], [ %i.qo, %bb.bc ]
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit128

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit128: ; preds = %bb.bd, %bb.be
  %i.rb = phi ptr [ %i.qz, %bb.be ], [ %i.qo, %bb.bd ]
  %.0.i.i126 = phi ptr [ %i.ra, %bb.be ], [ %spec.select.i.i127, %bb.bd ]
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN3f2nI11mpf_managerE5powerERK3mpfjRS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.rb, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i126, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.rc)
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.rd, align 8, !tbaa !113
  %i.re = load i8, ptr %1, align 8, !tbaa !102, !range !112, !noundef !22
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit128
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !105 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !106
  %i.rk = load ptr, ptr %i.rh, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.rk, ptr noundef nonnull align 8 dereferenceable(12) %i.rl, i32 noundef %i.rj)
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !60 ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit130, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rq = load i32, ptr %i.rp, align 8
  %i.rr = lshr i32 %i.rq, 30
  %i.rs = trunc nuw nsw i32 %i.rr to i8
  %i.rt = and i8 %i.rs, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit130

bb.bh:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit128
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !115, !range !112, !noundef !22
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit130

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit130: ; preds = %bb.bf, %bb.bg, %bb.bh
  %.0.i.i129 = phi i8 [ %i.rv, %bb.bh ], [ 1, %bb.bf ], [ %i.rt, %bb.bg ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 %.0.i.i129, ptr %5, align 1, !tbaa !115
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit130, %bb.bb
  %i.rw = load i8, ptr %1, align 8, !tbaa !102, !range !112, !noundef !22
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %.split168, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit131

.split168:                                        ; preds = %bb.bi
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !105 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !106
  %i.sc = load ptr, ptr %i.rz, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.se = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.sc, ptr noundef nonnull align 8 dereferenceable(12) %i.sd, i32 noundef %i.sb)
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !60
  %i.sg = icmp eq ptr %i.sf, null
  br i1 %i.sg, label %bb.bj, label %bb.bk

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit131: ; preds = %bb.bi
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.si = load i8, ptr %i.sh, align 8, !tbaa !114, !range !112, !noundef !22
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.bj, label %.thread185

.thread185:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit131
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !109, !nonnull !22, !align !23
  br label %bb.bm

bb.bj:                                            ; preds = %.split168, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit131
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !109, !nonnull !22, !align !23 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.sp = load ptr, ptr %i.sn, align 8, !tbaa !15, !nonnull !22, !align !23
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !277
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !278
  tail call void @_ZN11mpf_manager3setER3mpfjji(ptr noundef nonnull align 8 dereferenceable(840) %i.sp, ptr noundef nonnull align 8 dereferenceable(32) %i.so, i32 noundef %i.sr, i32 noundef %i.st, i32 noundef 0)
  %i.su = getelementptr inbounds nuw i8, ptr %3, i64 97
  store i8 1, ptr %i.su, align 1, !tbaa !116
  %i.sv = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 1, ptr %i.sv, align 8, !tbaa !114
  br label %bb.bq

bb.bk:                                            ; preds = %.split168
  %.pre170 = load i8, ptr %1, align 8, !tbaa !102, !range !112
  %i.sw = trunc nuw i8 %.pre170 to i1
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !109, !nonnull !22, !align !23 ; 2 uses
  br i1 %i.sw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !105 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !106
  %i.td = load ptr, ptr %i.ta, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.td, ptr noundef nonnull align 8 dereferenceable(12) %i.te, i32 noundef %i.tc)
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !60 ; 2 uses
  %i.th = icmp eq ptr %i.tg, null
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 64
  %spec.select.i.i133 = select i1 %i.th, ptr %i.ti, ptr %i.tg
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit134

bb.bm:                                            ; preds = %.thread185, %bb.bk
  %i.tj = phi ptr [ %i.sl, %.thread185 ], [ %i.sy, %bb.bk ]
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit134

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit134: ; preds = %bb.bl, %bb.bm
  %i.tl = phi ptr [ %i.tj, %bb.bm ], [ %i.sy, %bb.bl ]
  %.0.i.i132 = phi ptr [ %i.tk, %bb.bm ], [ %spec.select.i.i133, %bb.bl ]
  %i.tm = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @_ZN3f2nI11mpf_managerE5powerERK3mpfjRS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.tl, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i132, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.tm)
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 0, ptr %i.tn, align 8, !tbaa !114
  %i.to = load i8, ptr %1, align 8, !tbaa !102, !range !112, !noundef !22
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit134
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !105 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !106
  %i.tu = load ptr, ptr %i.tr, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.tu, ptr noundef nonnull align 8 dereferenceable(12) %i.tv, i32 noundef %i.tt)
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !60 ; 2 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit136, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.ua = load i32, ptr %i.tz, align 8
  %i.ub = lshr i32 %i.ua, 30
  %i.uc = trunc nuw nsw i32 %i.ub to i8
  %i.ud = and i8 %i.uc, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit136

bb.bp:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5upperERKNS3_8intervalE.exit134
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !116, !range !112, !noundef !22
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit136

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit136: ; preds = %bb.bn, %bb.bo, %bb.bp
  %.0.i.i135 = phi i8 [ %i.uf, %bb.bp ], [ 1, %bb.bn ], [ %i.ud, %bb.bo ]
  %i.ug = getelementptr inbounds nuw i8, ptr %3, i64 97
  store i8 %.0.i.i135, ptr %i.ug, align 1, !tbaa !116
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ai, %bb.aj, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit122, %bb.l, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit136, %bb.bj, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE3setERNS3_8intervalERKS6_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(98) %1, ptr noundef nonnull align 8 dereferenceable(98) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 8, !tbaa !102, !range !112, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.split, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit

.split:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !106
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i32 noundef %i.g)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit, label %bb.c

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !113, !range !112, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit, label %.thread

.thread:                                          ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109, !nonnull !22, !align !23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.c:                                             ; preds = %.split
  %.pre = load i8, ptr %2, align 8, !tbaa !102, !range !112
  %i.s = trunc nuw i8 %.pre to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109, !nonnull !22, !align !23 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !59, !nonnull !22, !align !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i32 noundef %i.z)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ad
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit

bb.e:                                             ; preds = %.thread, %bb.c
  %i.ag = phi ptr [ %i.r, %.thread ], [ %i.v, %bb.c ]
  %i.ah = phi ptr [ %i.q, %.thread ], [ %i.u, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi ptr [ %i.ag, %bb.e ], [ %i.v, %bb.d ] ; 4 uses
  %i.ak = phi ptr [ %i.ah, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %bb.e ], [ %spec.select.i.i, %bb.d ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15, !nonnull !22, !align !23
  tail call void @_ZN11mpf_manager3setER3mpfRKS0_(ptr noundef nonnull align 8 dereferenceable(840) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i)
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !15, !nonnull !22, !align !23 ; 2 uses
  %i.an = load i32, ptr %i.aj, align 8
  %i.ao = and i32 %i.an, 2147450880
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpfEE15interval_configEE5lowerERKNS3_8intervalE.exit
  %i.aq = tail call noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  br i1 %i.aq, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit, label %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i

_ZN11mpf_manager10is_regularERK3mpf.exit.i.i:     ; preds = %bb.f
  %i.ar = tail call noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  br i1 %i.ar, label %_ZN3f2nI11mpf_managerE3setER3mpfRKS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i
  %i.as = tail call ptr @__cxa_allocate_exception(i64 1) #21
end_hunk_0
