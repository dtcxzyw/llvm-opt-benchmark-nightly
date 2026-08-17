inline.NumInlined: 2177
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5powerERKNS3_8intervalEjRS6_:bb.a
  br i1 %i.lb, label %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit113.thread, label %bb.ai

_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit.thread: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit112
  tail call void @_ZN12mpff_manager5powerERK4mpffjRS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.lr, ptr noundef nonnull align 4 dereferenceable(8) %i.la, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %i.la)
  br i1 %i.lb, label %_Z2eqI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread, label %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit

bb.ai:                                            ; preds = %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit
  %i.lt = load ptr, ptr %i.ky, align 8, !tbaa !98, !nonnull !45, !align !46
  tail call void @_ZN12mpff_manager5powerERK4mpffjRS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.lt, ptr noundef nonnull align 4 dereferenceable(8) %i.kz, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %i.kz)
  br label %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread144

_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit: ; preds = %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit.thread
  %i.lu = load ptr, ptr %i.ky, align 8, !tbaa !98, !nonnull !45, !align !46
  tail call void @_ZN12mpff_manager5powerERK4mpffjRS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.lu, ptr noundef nonnull align 4 dereferenceable(8) %i.kz, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %i.kz)
  %i.lv = load ptr, ptr %i.ky, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.lw = tail call noundef zeroext i1 @_ZNK12mpff_manager2ltERK4mpffS2_(ptr noundef nonnull align 8 dereferenceable(89) %i.lv, ptr noundef nonnull align 4 dereferenceable(8) %i.kz, ptr noundef nonnull align 4 dereferenceable(8) %i.la)
  br i1 %i.lw, label %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread144, label %.thread153

.thread153:                                       ; preds = %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit
  %i.lx = load ptr, ptr %i.ky, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.ly = tail call noundef zeroext i1 @_ZNK12mpff_manager2eqERK4mpffS2_(ptr noundef nonnull align 8 dereferenceable(89) %i.lx, ptr noundef nonnull align 4 dereferenceable(8) %i.la, ptr noundef nonnull align 4 dereferenceable(8) %i.kz)
  br i1 %i.ly, label %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit113.thread, label %_Z2eqI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread

_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit113.thread: ; preds = %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit, %.thread153
  %.0140143149160 = phi i32 [ 1, %.thread153 ], [ 2, %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit ] ; 2 uses
  %i.lz = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1)
  br i1 %i.lz, label %_Z2eqI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit113.thread
  %i.ma = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1)
  br i1 %i.ma, label %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread144, label %_Z2eqI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread

_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread144: ; preds = %bb.ai, %bb.aj, %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.mc = load i32, ptr %i.mb, align 8            ; 2 uses
  %i.md = and i32 %i.mc, 1
  %i.me = load i32, ptr %i.la, align 4
  %i.mf = and i32 %i.me, 1
  %i.mg = and i32 %i.mc, -2
  %i.mh = or disjoint i32 %i.mf, %i.mg
  store i32 %i.mh, ptr %i.mb, align 8
  %i.mi = load i32, ptr %i.la, align 4
  %i.mj = and i32 %i.mi, -2                       ; 2 uses
  %i.mk = or disjoint i32 %i.mj, %i.md
  store i32 %i.mk, ptr %i.la, align 4
  %i.ml = load i32, ptr %i.mb, align 8            ; 2 uses
  %i.mm = and i32 %i.ml, -2
  %i.mn = and i32 %i.ml, 1
  %i.mo = or disjoint i32 %i.mn, %i.mj
  store i32 %i.mo, ptr %i.mb, align 8
  %i.mp = load i32, ptr %i.la, align 4
  %i.mq = and i32 %i.mp, 1
  %i.mr = or disjoint i32 %i.mq, %i.mm
  store i32 %i.mr, ptr %i.la, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.mu = load i32, ptr %i.ms, align 4, !tbaa !35
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !35
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !35
  store i32 %i.mu, ptr %i.mt, align 4, !tbaa !35
  %i.mw = zext i1 %i.lc to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.mw, ptr %i.mx, align 8, !tbaa !109
  %i.my = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread144
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !94 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !95
  %i.ne = load ptr, ptr %i.nb, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ng = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ne, ptr noundef nonnull align 8 dereferenceable(12) %i.nf, i32 noundef %i.nd)
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !48 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nk = load i32, ptr %i.nj, align 8
  %i.nl = lshr i32 %i.nk, 30
  %i.nm = trunc nuw nsw i32 %i.nl to i8
  %i.nn = and i8 %i.nm, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116

bb.am:                                            ; preds = %_Z2gtI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread144
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.np = load i8, ptr %i.no, align 1, !tbaa !110, !range !107, !noundef !45
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116

_Z2eqI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread: ; preds = %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit.thread, %bb.aj, %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit113.thread, %.thread153
  %.0140143149158 = phi i32 [ 1, %.thread153 ], [ %.0140143149160, %bb.aj ], [ %.0140143149160, %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit113.thread ], [ 2, %_Z5powerI12mpff_managerEvRT_RNS1_7numeralER16ext_numeral_kindj.exit.thread ]
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.nr = load i32, ptr %i.nq, align 8            ; 2 uses
  %i.ns = and i32 %i.nr, 1
  %i.nt = load i32, ptr %i.kz, align 4
  %i.nu = and i32 %i.nt, 1
  %i.nv = and i32 %i.nr, -2
  %i.nw = or disjoint i32 %i.nu, %i.nv
  store i32 %i.nw, ptr %i.nq, align 8
  %i.nx = load i32, ptr %i.kz, align 4
  %i.ny = and i32 %i.nx, -2                       ; 2 uses
  %i.nz = or disjoint i32 %i.ny, %i.ns
  store i32 %i.nz, ptr %i.kz, align 4
  %i.oa = load i32, ptr %i.nq, align 8            ; 2 uses
  %i.ob = and i32 %i.oa, -2
  %i.oc = and i32 %i.oa, 1
  %i.od = or disjoint i32 %i.oc, %i.ny
  store i32 %i.od, ptr %i.nq, align 8
  %i.oe = load i32, ptr %i.kz, align 4
  %i.of = and i32 %i.oe, 1
  %i.og = or disjoint i32 %i.of, %i.ob
  store i32 %i.og, ptr %i.kz, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.oj = load i32, ptr %i.oh, align 4, !tbaa !35
  %i.ok = load i32, ptr %i.oi, align 4, !tbaa !35
  store i32 %i.ok, ptr %i.oh, align 4, !tbaa !35
  store i32 %i.oj, ptr %i.oi, align 4, !tbaa !35
  %i.ol = icmp eq i32 %.0140143149158, 2
  %i.om = zext i1 %i.ol to i8
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.om, ptr %i.on, align 8, !tbaa !109
  %i.oo = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_Z2eqI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !94 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !95
  %i.ou = load ptr, ptr %i.or, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ow = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ou, ptr noundef nonnull align 8 dereferenceable(12) %i.ov, i32 noundef %i.ot)
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !48 ; 2 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pa = load i32, ptr %i.oz, align 8
  %i.pb = lshr i32 %i.pa, 30
  %i.pc = trunc nuw nsw i32 %i.pb to i8
  %i.pd = and i8 %i.pc, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116

bb.ap:                                            ; preds = %_Z2eqI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_.exit.thread
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !111, !range !107, !noundef !45
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.i117.sink = phi i8 [ %i.nn, %bb.al ], [ %i.np, %bb.am ], [ 1, %bb.ak ], [ %i.pf, %bb.ap ], [ 1, %bb.an ], [ %i.pd, %bb.ao ]
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 %.0.i.i117.sink, ptr %i.pg, align 1, !tbaa !111
  %i.ph = load ptr, ptr %i.ky, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 20
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.ph, ptr noundef nonnull align 4 dereferenceable(8) %i.pi)
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.pj, align 4, !tbaa !108
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.pk, align 1, !tbaa !110
  br label %bb.bg

bb.aq:                                            ; preds = %bb.c
  br i1 %i.e, label %.split161, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit119

.split161:                                        ; preds = %bb.aq
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !94 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !95
  %i.pp = load ptr, ptr %i.pm, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.pr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.pp, ptr noundef nonnull align 8 dereferenceable(12) %i.pq, i32 noundef %i.po)
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !48
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %bb.ar, label %bb.as

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit119: ; preds = %bb.aq
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pv = load i8, ptr %i.pu, align 4, !tbaa !108, !range !107, !noundef !45
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.ar, label %.thread188

.thread188:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit119
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !98, !nonnull !45, !align !46
  br label %bb.au

bb.ar:                                            ; preds = %.split161, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit119
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 20
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.qa, ptr noundef nonnull align 4 dereferenceable(8) %i.qb)
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 1, ptr %i.qc, align 1, !tbaa !110
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 1, ptr %4, align 4, !tbaa !108
  br label %bb.ay

bb.as:                                            ; preds = %.split161
  %.pre = load i8, ptr %1, align 8, !tbaa !90, !range !107
  %i.qd = trunc nuw i8 %.pre to i1
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  br i1 %i.qd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !94 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !95
  %i.qk = load ptr, ptr %i.qh, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.qk, ptr noundef nonnull align 8 dereferenceable(12) %i.ql, i32 noundef %i.qj)
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !48 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, null
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %spec.select.i.i121 = select i1 %i.qo, ptr %i.qp, ptr %i.qn
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit122

bb.au:                                            ; preds = %.thread188, %bb.as
  %i.qq = phi ptr [ %i.py, %.thread188 ], [ %i.qf, %bb.as ]
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit122

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit122: ; preds = %bb.at, %bb.au
  %i.qs = phi ptr [ %i.qq, %bb.au ], [ %i.qf, %bb.at ]
  %.0.i.i120 = phi ptr [ %i.qr, %bb.au ], [ %spec.select.i.i121, %bb.at ]
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 20
  tail call void @_ZN12mpff_manager5powerERK4mpffjRS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.qs, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i120, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %i.qt)
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.qu, align 4, !tbaa !108
  %i.qv = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit122
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !94 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !95
  %i.rb = load ptr, ptr %i.qy, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.rb, ptr noundef nonnull align 8 dereferenceable(12) %i.rc, i32 noundef %i.ra)
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !48 ; 2 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit124, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rh = load i32, ptr %i.rg, align 8
  %i.ri = lshr i32 %i.rh, 30
  %i.rj = trunc nuw nsw i32 %i.ri to i8
  %i.rk = and i8 %i.rj, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit124

bb.ax:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit122
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !110, !range !107, !noundef !45
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit124

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit124: ; preds = %bb.av, %bb.aw, %bb.ax
  %.0.i.i123 = phi i8 [ %i.rm, %bb.ax ], [ 1, %bb.av ], [ %i.rk, %bb.aw ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %.0.i.i123, ptr %5, align 1, !tbaa !110
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit124, %bb.ar
  %i.rn = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %.split162, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit125

.split162:                                        ; preds = %bb.ay
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !94 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !95
  %i.rt = load ptr, ptr %i.rq, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.rt, ptr noundef nonnull align 8 dereferenceable(12) %i.ru, i32 noundef %i.rs)
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !48
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %bb.az, label %bb.ba

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit125: ; preds = %bb.ay
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.rz = load i8, ptr %i.ry, align 8, !tbaa !109, !range !107, !noundef !45
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.az, label %.thread189

.thread189:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit125
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !98, !nonnull !45, !align !46
  br label %bb.bc

bb.az:                                            ; preds = %.split162, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit125
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.se, ptr noundef nonnull align 4 dereferenceable(8) %i.sf)
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 1, ptr %i.sg, align 1, !tbaa !111
  %i.sh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.sh, align 8, !tbaa !109
  br label %bb.bg

bb.ba:                                            ; preds = %.split162
  %.pre164 = load i8, ptr %1, align 8, !tbaa !90, !range !107
  %i.si = trunc nuw i8 %.pre164 to i1
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  br i1 %i.si, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !94 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !95
  %i.sp = load ptr, ptr %i.sm, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.sr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.sp, ptr noundef nonnull align 8 dereferenceable(12) %i.sq, i32 noundef %i.so)
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !48 ; 2 uses
  %i.st = icmp eq ptr %i.ss, null
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 32
  %spec.select.i.i127 = select i1 %i.st, ptr %i.su, ptr %i.ss
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit128

bb.bc:                                            ; preds = %.thread189, %bb.ba
  %i.sv = phi ptr [ %i.sc, %.thread189 ], [ %i.sk, %bb.ba ]
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit128

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit128: ; preds = %bb.bb, %bb.bc
  %i.sx = phi ptr [ %i.sv, %bb.bc ], [ %i.sk, %bb.bb ]
  %.0.i.i126 = phi ptr [ %i.sw, %bb.bc ], [ %spec.select.i.i127, %bb.bb ]
  %i.sy = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @_ZN12mpff_manager5powerERK4mpffjRS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.sx, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i126, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %i.sy)
  %i.sz = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.sz, align 8, !tbaa !109
  %i.ta = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit128
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !94 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !95
  %i.tg = load ptr, ptr %i.td, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.ti = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.tg, ptr noundef nonnull align 8 dereferenceable(12) %i.th, i32 noundef %i.tf)
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !48 ; 2 uses
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit130, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tm = load i32, ptr %i.tl, align 8
  %i.tn = lshr i32 %i.tm, 30
  %i.to = trunc nuw nsw i32 %i.tn to i8
  %i.tp = and i8 %i.to, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit130

bb.bf:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit128
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !111, !range !107, !noundef !45
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit130

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit130: ; preds = %bb.bd, %bb.be, %bb.bf
  %.0.i.i129 = phi i8 [ %i.tr, %bb.bf ], [ 1, %bb.bd ], [ %i.tp, %bb.be ]
  %i.ts = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 %.0.i.i129, ptr %i.ts, align 1, !tbaa !111
  br label %bb.bg

bb.bg:                                            ; preds = %bb.ac, %bb.ad, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit116, %bb.k, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit130, %bb.az, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE3setERNS3_8intervalERKS6_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(42) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 8, !tbaa !90, !range !107, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.split, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit

.split:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !95
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i32 noundef %i.g)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.c

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load i8, ptr %i.m, align 4, !tbaa !108, !range !107, !noundef !45
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %.thread

.thread:                                          ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

bb.c:                                             ; preds = %.split
  %.pre = load i8, ptr %2, align 8, !tbaa !90, !range !107
  %i.s = trunc nuw i8 %.pre to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !95
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i32 noundef %i.z)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ad
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit

bb.e:                                             ; preds = %.thread, %bb.c
  %i.ag = phi ptr [ %i.r, %.thread ], [ %i.v, %bb.c ]
  %i.ah = phi ptr [ %i.q, %.thread ], [ %i.u, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi ptr [ %i.ag, %bb.e ], [ %i.v, %bb.d ]
  %i.ak = phi ptr [ %i.ah, %bb.e ], [ %i.u, %bb.d ]
  %.0.i.i = phi ptr [ %i.ai, %bb.e ], [ %spec.select.i.i, %bb.d ]
  tail call void @_ZN12mpff_manager3setER4mpffRKS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.ak, ptr noundef nonnull align 4 dereferenceable(8) %i.aj, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit, %.split, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit
  %.sink = phi i8 [ 0, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit ], [ 1, %.split ], [ 1, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %.sink, ptr %i.al, align 4, !tbaa !108
  %i.am = load i8, ptr %2, align 8, !tbaa !90, !range !107, !noundef !45
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.split22, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit

.split22:                                         ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !94 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !95
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i32 noundef %i.ar)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE3mulERKNS3_8intervalES8_RS6_:bb.a
  %i.pl = icmp ugt i32 %i.pk, 1
  %.not354 = select i1 %i.bn, i1 true, i1 %i.pl
  br i1 %.not354, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit310
  %i.pm = load i32, ptr %.0.i.i243449, align 4    ; 2 uses
  %i.pn = icmp ugt i32 %i.pm, 1                   ; 2 uses
  %.not357 = select i1 %i.dy, i1 true, i1 %i.pn
  br i1 %.not357, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit310
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.pi, ptr noundef nonnull align 4 dereferenceable(8) %i.gv)
  store i32 1, ptr %i.b, align 4, !tbaa !245
  br label %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit259

bb.dc:                                            ; preds = %bb.da
  br i1 %i.bn, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.dy, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311.thread, label %bb.df

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311.thread: ; preds = %bb.dd
  %i.po = trunc i32 %i.pk to i1
  %i.pp = icmp ult i32 %i.pk, 2
  %.not360 = or i1 %i.pp, %i.po
  %cond.fr474476 = freeze i1 %.not360
  br i1 %cond.fr474476, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312.thread, label %bb.de

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311: ; preds = %bb.dc
  br i1 %i.dy, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312.thread, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312: ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311
  %i.pq = and i32 %i.pm, 1
  %i.pr = icmp eq i32 %i.pq, 0
  %i.ps = and i1 %i.pn, %i.pr
  %cond.fr474 = freeze i1 %i.ps
  br i1 %cond.fr474, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312.thread, label %bb.de

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312.thread: ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311.thread, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312
  br label %bb.de

bb.de:                                            ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311.thread, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312.thread
  %i.pt = phi i32 [ 0, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312.thread ], [ 2, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i312 ], [ 2, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i311.thread ]
  store i32 %i.pt, ptr %i.b, align 4, !tbaa !245
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.pi, ptr noundef nonnull align 4 dereferenceable(8) %i.gv)
  br label %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit259

bb.df:                                            ; preds = %bb.dd
  store i32 1, ptr %i.b, align 4, !tbaa !245
  tail call void @_ZN12mpff_manager3mulERK4mpffS2_RS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.pi, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i424429433, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i243449, ptr noundef nonnull align 4 dereferenceable(8) %i.gv)
  br label %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit259

bb.dg:                                            ; preds = %bb.cq
  %i.pu = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE4is_MERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %2)
  br i1 %i.pu, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.pv = or i1 %.0.i.i248, %.0.i.i249
  %i.pw = zext i1 %i.pv to i8
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !110
  %i.py = or i1 %.0.i.i248, %.0.i.i251
  %i.pz = zext i1 %i.py to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !111
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 20
  store i8 0, ptr %i.qd, align 4, !tbaa !100
  call void @_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_(ptr noundef nonnull align 8 dereferenceable(89) %i.qc, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i236435, i32 noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i238438443447, i32 noundef %i.dx, ptr noundef nonnull align 4 dereferenceable(8) %i.gu, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.qe = load ptr, ptr %i.qb, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 20
  store i8 1, ptr %i.qf, align 4, !tbaa !100
  call void @_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_(ptr noundef nonnull align 8 dereferenceable(89) %i.qe, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i236435, i32 noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i243449, i32 noundef %i.dz, ptr noundef nonnull align 4 dereferenceable(8) %i.gv, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit259

bb.di:                                            ; preds = %bb.dg
  %i.qg = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5is_P0ERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1)
  br i1 %i.qg, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qh = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5is_P0ERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %2)
  %i.qi = or i1 %.0.i.i247, %.0.i.i249
  %not. = xor i1 %i.qh, true
  %spec.select235 = select i1 %not., i1 %i.qi, i1 false
  %i.qj = zext i1 %spec.select235 to i8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.qk = phi i8 [ 0, %bb.di ], [ %i.qj, %bb.dj ]
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !110
  %i.qm = or i1 %.0.i.i248, %.0.i.i251
  %i.qn = zext i1 %i.qm to i8
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !111
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 20
  store i8 0, ptr %i.qr, align 4, !tbaa !100
  call void @_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_(ptr noundef nonnull align 8 dereferenceable(89) %i.qq, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i424429433, i32 noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i238438443447, i32 noundef %i.dx, ptr noundef nonnull align 4 dereferenceable(8) %i.gu, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.qs = load ptr, ptr %i.qp, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  store i8 1, ptr %i.qt, align 4, !tbaa !100
  call void @_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_(ptr noundef nonnull align 8 dereferenceable(89) %i.qs, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i236435, i32 noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i243449, i32 noundef %i.dz, ptr noundef nonnull align 4 dereferenceable(8) %i.gv, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit259

_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit259: ; preds = %bb.df, %bb.de, %bb.db, %bb.cc, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i296.thread, %bb.by, %bb.bn, %bb.bm, %bb.bj, %bb.ay, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i268.thread, %bb.au, %bb.ak, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i254.thread, %bb.ag, %bb.co, %bb.cp, %bb.dh, %bb.dk
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.qv = load i32, ptr %i.qu, align 4            ; 2 uses
  %i.qw = and i32 %i.qv, 1
  %i.qx = load i32, ptr %i.gu, align 8
  %i.qy = and i32 %i.qx, 1
  %i.qz = and i32 %i.qv, -2
  %i.ra = or disjoint i32 %i.qy, %i.qz
  store i32 %i.ra, ptr %i.qu, align 4
  %i.rb = load i32, ptr %i.gu, align 8
  %i.rc = and i32 %i.rb, -2                       ; 2 uses
  %i.rd = or disjoint i32 %i.rc, %i.qw
  store i32 %i.rd, ptr %i.gu, align 8
  %i.re = load i32, ptr %i.qu, align 4            ; 2 uses
  %i.rf = and i32 %i.re, -2
  %i.rg = and i32 %i.re, 1
  %i.rh = or disjoint i32 %i.rg, %i.rc
  store i32 %i.rh, ptr %i.qu, align 4
  %i.ri = load i32, ptr %i.gu, align 8
  %i.rj = and i32 %i.ri, 1
  %i.rk = or disjoint i32 %i.rj, %i.rf
  store i32 %i.rk, ptr %i.gu, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.rn = load i32, ptr %i.rl, align 8, !tbaa !35
  %i.ro = load i32, ptr %i.rm, align 4, !tbaa !35
  store i32 %i.ro, ptr %i.rl, align 8, !tbaa !35
  store i32 %i.rn, ptr %i.rm, align 4, !tbaa !35
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.rq = load i32, ptr %i.rp, align 8            ; 2 uses
  %i.rr = and i32 %i.rq, 1
  %i.rs = load i32, ptr %i.gv, align 8
  %i.rt = and i32 %i.rs, 1
  %i.ru = and i32 %i.rq, -2
  %i.rv = or disjoint i32 %i.rt, %i.ru
  store i32 %i.rv, ptr %i.rp, align 8
  %i.rw = load i32, ptr %i.gv, align 8
  %i.rx = and i32 %i.rw, -2                       ; 2 uses
  %i.ry = or disjoint i32 %i.rx, %i.rr
  store i32 %i.ry, ptr %i.gv, align 8
  %i.rz = load i32, ptr %i.rp, align 8            ; 2 uses
  %i.sa = and i32 %i.rz, -2
  %i.sb = and i32 %i.rz, 1
  %i.sc = or disjoint i32 %i.sb, %i.rx
  store i32 %i.sc, ptr %i.rp, align 8
  %i.sd = load i32, ptr %i.gv, align 8
  %i.se = and i32 %i.sd, 1
  %i.sf = or disjoint i32 %i.se, %i.sa
  store i32 %i.sf, ptr %i.gv, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.si = load i32, ptr %i.sg, align 4, !tbaa !35
  %i.sj = load i32, ptr %i.sh, align 4, !tbaa !35
  store i32 %i.sj, ptr %i.sg, align 4, !tbaa !35
  store i32 %i.si, ptr %i.sh, align 4, !tbaa !35
  %i.sk = load i32, ptr %i.a, align 4, !tbaa !245
  %i.sl = icmp eq i32 %i.sk, 0
  %i.sm = zext i1 %i.sl to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 %i.sm, ptr %i.sn, align 4, !tbaa !108
  %i.so = load i32, ptr %i.b, align 4, !tbaa !245
  %i.sp = icmp eq i32 %i.so, 2
  %i.sq = zext i1 %i.sp to i8
  %i.sr = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.sq, ptr %i.sr, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.dl

bb.dl:                                            ; preds = %_Z3mulI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit259, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE3divERKNS3_8intervalES8_RS6_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull align 8 dereferenceable(42) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE7is_zeroERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %i.d)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.g, align 4, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.i, align 1, !tbaa !110
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 0, ptr %4, align 1, !tbaa !111
  br label %bb.dj

bb.c:                                             ; preds = %bb.a
  %i.j = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit.thread: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !95
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i32 noundef %i.p)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %spec.select.i.i = select i1 %i.u, ptr %i.v, ptr %i.t ; 4 uses
  %.pre = load i8, ptr %1, align 8, !tbaa !90, !range !107
  %i.w = trunc nuw i8 %.pre to i1
  br i1 %i.w, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit.thread: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit.thread
  %.0.i.i317 = phi ptr [ %i.l, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit.thread ], [ %spec.select.i.i, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.y = load i8, ptr %i.x, align 4, !tbaa !108, !range !107, !noundef !45
  %i.z = trunc nuw i8 %i.y to i1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !95
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(12) %i.af, i32 noundef %i.ad)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = icmp eq ptr %i.ah, null                 ; 3 uses
  %.pre306 = load i8, ptr %1, align 8, !tbaa !90, !range !107
  %i.aj = trunc nuw i8 %.pre306 to i1
  br i1 %i.aj, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit.thread: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit.thread
  %i.ak = phi i1 [ %i.z, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit.thread ], [ %i.ai, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit ]
  %.0.i.i316320 = phi ptr [ %.0.i.i317, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit.thread ], [ %spec.select.i.i, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.e

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !94 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !95
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i32 noundef %i.ap)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %spec.select.i.i148 = select i1 %i.au, ptr %i.av, ptr %i.at ; 2 uses
  %.pre307 = load i8, ptr %1, align 8, !tbaa !90, !range !107
  %i.aw = trunc nuw i8 %.pre307 to i1
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !94 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !95
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(12) %i.bc, i32 noundef %i.ba)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.bf = icmp eq ptr %i.be, null
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit

bb.e:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit.thread, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit
  %.0.i.i147326 = phi ptr [ %i.al, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit.thread ], [ %spec.select.i.i148, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit ]
  %.0.i.i316319324 = phi ptr [ %.0.i.i316320, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit.thread ], [ %spec.select.i.i, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit ]
  %i.bg = phi i1 [ %i.ak, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit.thread ], [ %i.ai, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !109, !range !107, !noundef !45
  %i.bj = trunc nuw i8 %i.bi to i1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i147325 = phi ptr [ %spec.select.i.i148, %bb.d ], [ %.0.i.i147326, %bb.e ] ; 12 uses
  %.0.i.i316319323 = phi ptr [ %spec.select.i.i, %bb.d ], [ %.0.i.i316319324, %bb.e ] ; 12 uses
  %i.bk = phi i1 [ %i.ai, %bb.d ], [ %i.bg, %bb.e ] ; 12 uses
  %i.bl = phi i1 [ %i.bf, %bb.d ], [ %i.bj, %bb.e ] ; 12 uses
  %i.bm = load i8, ptr %2, align 8, !tbaa !90, !range !107, !noundef !45
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151.thread: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !94 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !95
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(12) %i.bu, i32 noundef %i.bs)
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !48 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 20
  %spec.select.i.i150 = select i1 %i.bx, ptr %i.by, ptr %i.bw ; 4 uses
  %.pre308 = load i8, ptr %2, align 8, !tbaa !90, !range !107
  %i.bz = trunc nuw i8 %.pre308 to i1
  br i1 %i.bz, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153.thread: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151.thread
  %.0.i.i149329 = phi ptr [ %i.bo, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151.thread ], [ %spec.select.i.i150, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !108, !range !107, !noundef !45
  %i.cc = trunc nuw i8 %i.cb to i1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5lowerERKNS3_8intervalE.exit151
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !94 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !95
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(12) %i.ci, i32 noundef %i.cg)
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = icmp eq ptr %i.ck, null                 ; 3 uses
  %.pre309 = load i8, ptr %2, align 8, !tbaa !90, !range !107
  %i.cm = trunc nuw i8 %.pre309 to i1
  br i1 %i.cm, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156.thread: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153.thread
  %i.cn = phi i1 [ %i.cc, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153.thread ], [ %i.cl, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153 ]
  %.0.i.i149328333 = phi ptr [ %.0.i.i149329, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153.thread ], [ %spec.select.i.i150, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153 ]
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.g

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156: ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10lower_kindERKNS3_8intervalE.exit153
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !94 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !95
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(12) %i.cu, i32 noundef %i.cs)
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !48 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %spec.select.i.i155 = select i1 %i.cx, ptr %i.cy, ptr %i.cw ; 2 uses
  %.pre310 = load i8, ptr %2, align 8, !tbaa !90, !range !107
  %i.cz = trunc nuw i8 %.pre310 to i1
  br i1 %i.cz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !94 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !95
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(12) %i.df, i32 noundef %i.dd)
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !48
  %i.di = icmp eq ptr %i.dh, null
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit157

bb.g:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156.thread, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156
  %.0.i.i154339 = phi ptr [ %i.co, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156.thread ], [ %spec.select.i.i155, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156 ]
  %.0.i.i149328332337 = phi ptr [ %.0.i.i149328333, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156.thread ], [ %spec.select.i.i150, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156 ]
  %i.dj = phi i1 [ %i.cn, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156.thread ], [ %i.cl, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit156 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !109, !range !107, !noundef !45
  %i.dm = trunc nuw i8 %i.dl to i1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit157

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit157: ; preds = %bb.f, %bb.g
  %.0.i.i154338 = phi ptr [ %spec.select.i.i155, %bb.f ], [ %.0.i.i154339, %bb.g ] ; 15 uses
  %.0.i.i149328332336 = phi ptr [ %spec.select.i.i150, %bb.f ], [ %.0.i.i149328332337, %bb.g ] ; 15 uses
  %i.dn = phi i1 [ %i.cl, %bb.f ], [ %i.dj, %bb.g ] ; 12 uses
  %i.do = phi i1 [ %i.di, %bb.f ], [ %i.dm, %bb.g ] ; 12 uses
  %i.dp = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE10upper_kindERKNS3_8intervalE.exit157
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !94 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !95
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
end_hunk_1
begin_hunk_2_@_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE3divERKNS3_8intervalES8_RS6_:bb.a
bb.cp:                                            ; preds = %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit218
  br i1 %i.bk, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i219, label %bb.cr

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i219: ; preds = %bb.cp
  br i1 %i.dn, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i220, label %bb.cq

bb.cq:                                            ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i219
  %i.lq = load i32, ptr %.0.i.i149328332336, align 4 ; 2 uses
  %i.lr = and i32 %i.lq, 1
  %i.ls = icmp eq i32 %i.lr, 0
  %i.lt = icmp ugt i32 %i.lq, 1
  %i.lu = and i1 %i.lt, %i.ls
  %i.lv = select i1 %i.lu, i32 0, i32 2
  br label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i220

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i220: ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i219, %bb.cq
  %..i221 = phi i32 [ %i.lv, %bb.cq ], [ 2, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i219 ]
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.lm, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

bb.cr:                                            ; preds = %bb.cp
  br i1 %i.dn, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.lm, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

bb.ct:                                            ; preds = %bb.cr
  tail call void @_ZN12mpff_manager3divERK4mpffS2_RS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.lm, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i316319323, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i149328332336, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

bb.cu:                                            ; preds = %bb.ce
  %i.lw = or i1 %.0.i.i158, %.0.i.i162
  %i.lx = and i1 %i.lw, %not.144
  %i.ly = zext i1 %i.lx to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !110
  %i.ma = or i1 %.0.i.i159, %.0.i.i160
  %i.mb = zext i1 %i.ma to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !111
  %i.md = load ptr, ptr %i.it, align 8, !tbaa !98, !nonnull !45, !align !46 ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 20
  store i8 0, ptr %i.me, align 4, !tbaa !100
  %i.mf = load i32, ptr %.0.i.i316319323, align 4
  %i.mg = icmp ugt i32 %i.mf, 1
  %.not270 = select i1 %i.bk, i1 true, i1 %i.mg
  br i1 %.not270, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %i.gj)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit232

bb.cw:                                            ; preds = %bb.cu
  br i1 %i.bk, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i226, label %bb.cy

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i226: ; preds = %bb.cw
  br i1 %i.do, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i227, label %bb.cx

bb.cx:                                            ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i226
  %i.mh = load i32, ptr %.0.i.i154338, align 4    ; 2 uses
  %i.mi = and i32 %i.mh, 1
  %i.mj = icmp eq i32 %i.mi, 0
  %i.mk = icmp ugt i32 %i.mh, 1
  %i.ml = and i1 %i.mk, %i.mj
  %i.mm = select i1 %i.ml, i32 0, i32 2
  br label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i227

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i227: ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i226, %bb.cx
  %..i228 = phi i32 [ 0, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i226 ], [ %i.mm, %bb.cx ]
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %i.gj)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit232

bb.cy:                                            ; preds = %bb.cw
  br i1 %i.do, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %i.gj)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit232

bb.da:                                            ; preds = %bb.cy
  tail call void @_ZN12mpff_manager3divERK4mpffS2_RS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i316319323, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i154338, ptr noundef nonnull align 4 dereferenceable(8) %i.gj)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit232

_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit232: ; preds = %bb.cv, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i227, %bb.cz, %bb.da
  %.8 = phi i32 [ 1, %bb.cv ], [ %..i228, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i227 ], [ 1, %bb.da ], [ 1, %bb.cz ] ; 5 uses
  %i.mn = load i32, ptr %.0.i.i149328332336, align 4
  %i.mo = icmp ult i32 %i.mn, 2
  %i.mp = load ptr, ptr %i.it, align 8, !tbaa !98, !nonnull !45, !align !46 ; 6 uses
  br i1 %i.mo, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit232
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.mp, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

bb.dc:                                            ; preds = %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit232
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 20
  store i8 1, ptr %i.mq, align 4, !tbaa !100
  %i.mr = load i32, ptr %.0.i.i147325, align 4
  %i.ms = icmp ugt i32 %i.mr, 1
  %.not273 = select i1 %i.bl, i1 true, i1 %i.ms
  br i1 %.not273, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.mp, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

bb.de:                                            ; preds = %bb.dc
  br i1 %i.bl, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i233, label %bb.dg

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i233: ; preds = %bb.de
  br i1 %i.dn, label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i234, label %bb.df

bb.df:                                            ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i233
  %i.mt = load i32, ptr %.0.i.i149328332336, align 4 ; 2 uses
  %i.mu = trunc i32 %i.mt to i1
  %i.mv = icmp ult i32 %i.mt, 2
  %.not275 = or i1 %i.mv, %i.mu
  %i.mw = select i1 %.not275, i32 0, i32 2
  br label %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i234

_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i234: ; preds = %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i233, %bb.df
  %..i235 = phi i32 [ %i.mw, %bb.df ], [ 0, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit.i233 ]
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.mp, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

bb.dg:                                            ; preds = %bb.de
  br i1 %i.dn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.mp, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

bb.di:                                            ; preds = %bb.dg
  tail call void @_ZN12mpff_manager3divERK4mpffS2_RS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.mp, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i147325, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i149328332336, ptr noundef nonnull align 4 dereferenceable(8) %i.gk)
  br label %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169

_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169: ; preds = %bb.di, %bb.dh, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i234, %bb.dd, %bb.ct, %bb.cs, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i220, %bb.co, %bb.cd, %bb.cc, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i206, %bb.by, %bb.bo, %bb.bn, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i192, %bb.bj, %bb.ax, %bb.aw, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i178, %bb.as, %bb.ai, %bb.ah, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i165, %bb.ad, %bb.bq, %bb.bb, %bb.db, %bb.ab
  %.2243 = phi i32 [ %.3244, %bb.ab ], [ %.1242, %bb.ct ], [ %.3244, %bb.ai ], [ 0, %bb.bb ], [ %.0241, %bb.ax ], [ 0, %bb.bq ], [ %.5246, %bb.bo ], [ %.6247, %bb.cd ], [ %.8, %bb.db ], [ %.3244, %bb.ad ], [ %.3244, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i165 ], [ %.3244, %bb.ah ], [ %.0241, %bb.as ], [ %.0241, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i178 ], [ %.0241, %bb.aw ], [ %.5246, %bb.bj ], [ %.5246, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i192 ], [ %.5246, %bb.bn ], [ %.6247, %bb.by ], [ %.6247, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i206 ], [ %.6247, %bb.cc ], [ %.1242, %bb.co ], [ %.1242, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i220 ], [ %.1242, %bb.cs ], [ %.8, %bb.dd ], [ %.8, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i234 ], [ %.8, %bb.dh ], [ %.8, %bb.di ]
  %.0 = phi i32 [ 2, %bb.ab ], [ 1, %bb.ct ], [ 1, %bb.ai ], [ 2, %bb.bb ], [ 1, %bb.ax ], [ 2, %bb.bq ], [ 1, %bb.bo ], [ 1, %bb.cd ], [ 2, %bb.db ], [ 1, %bb.ad ], [ %..i166, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i165 ], [ 1, %bb.ah ], [ 1, %bb.as ], [ %..i179, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i178 ], [ 1, %bb.aw ], [ 1, %bb.bj ], [ %..i193, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i192 ], [ 1, %bb.bn ], [ 1, %bb.by ], [ %..i207, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i206 ], [ 1, %bb.cc ], [ 1, %bb.co ], [ %..i221, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i220 ], [ 1, %bb.cs ], [ 1, %bb.dd ], [ %..i235, %_Z6is_posI12mpff_managerEbRT_RKNS1_7numeralE16ext_numeral_kind.exit26.i234 ], [ 1, %bb.dh ], [ 1, %bb.di ]
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.my = load i32, ptr %i.mx, align 4            ; 2 uses
  %i.mz = and i32 %i.my, 1
  %i.na = load i32, ptr %i.gj, align 8
  %i.nb = and i32 %i.na, 1
  %i.nc = and i32 %i.my, -2
  %i.nd = or disjoint i32 %i.nb, %i.nc
  store i32 %i.nd, ptr %i.mx, align 4
  %i.ne = load i32, ptr %i.gj, align 8
  %i.nf = and i32 %i.ne, -2                       ; 2 uses
  %i.ng = or disjoint i32 %i.nf, %i.mz
  store i32 %i.ng, ptr %i.gj, align 8
  %i.nh = load i32, ptr %i.mx, align 4            ; 2 uses
  %i.ni = and i32 %i.nh, -2
  %i.nj = and i32 %i.nh, 1
  %i.nk = or disjoint i32 %i.nj, %i.nf
  store i32 %i.nk, ptr %i.mx, align 4
  %i.nl = load i32, ptr %i.gj, align 8
  %i.nm = and i32 %i.nl, 1
  %i.nn = or disjoint i32 %i.nm, %i.ni
  store i32 %i.nn, ptr %i.gj, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.nq = load i32, ptr %i.no, align 8, !tbaa !35
  %i.nr = load i32, ptr %i.np, align 4, !tbaa !35
  store i32 %i.nr, ptr %i.no, align 8, !tbaa !35
  store i32 %i.nq, ptr %i.np, align 4, !tbaa !35
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.nt = load i32, ptr %i.ns, align 8            ; 2 uses
  %i.nu = and i32 %i.nt, 1
  %i.nv = load i32, ptr %i.gk, align 8
  %i.nw = and i32 %i.nv, 1
  %i.nx = and i32 %i.nt, -2
  %i.ny = or disjoint i32 %i.nw, %i.nx
  store i32 %i.ny, ptr %i.ns, align 8
  %i.nz = load i32, ptr %i.gk, align 8
  %i.oa = and i32 %i.nz, -2                       ; 2 uses
  %i.ob = or disjoint i32 %i.oa, %i.nu
  store i32 %i.ob, ptr %i.gk, align 8
  %i.oc = load i32, ptr %i.ns, align 8            ; 2 uses
  %i.od = and i32 %i.oc, -2
  %i.oe = and i32 %i.oc, 1
  %i.of = or disjoint i32 %i.oe, %i.oa
  store i32 %i.of, ptr %i.ns, align 8
  %i.og = load i32, ptr %i.gk, align 8
  %i.oh = and i32 %i.og, 1
  %i.oi = or disjoint i32 %i.oh, %i.od
  store i32 %i.oi, ptr %i.gk, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ol = load i32, ptr %i.oj, align 4, !tbaa !35
  %i.om = load i32, ptr %i.ok, align 4, !tbaa !35
  store i32 %i.om, ptr %i.oj, align 4, !tbaa !35
  store i32 %i.ol, ptr %i.ok, align 4, !tbaa !35
  %i.on = icmp eq i32 %.2243, 0
  %i.oo = zext i1 %i.on to i8
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 %i.oo, ptr %i.op, align 4, !tbaa !108
  %i.oq = icmp eq i32 %.0, 2
  %i.or = zext i1 %i.oq to i8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.or, ptr %5, align 8, !tbaa !109
  br label %bb.dj

bb.dj:                                            ; preds = %_Z3divI12mpff_managerEvRT_RKNS1_7numeralE16ext_numeral_kindS5_S6_RS3_RS6_.exit169, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE7xn_eq_yERKNS3_8intervalEjRK4mpffRS6_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(42) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = and i32 %2, 1
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.split, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit

.split:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !95
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i32 noundef %i.h)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i8, ptr %i.n, align 8, !tbaa !109, !range !107, !noundef !45
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.thread

.thread:                                          ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.c:                                             ; preds = %.split, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 29
  store i8 1, ptr %i.v, align 1, !tbaa !110
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 1, ptr %i.w, align 4, !tbaa !108
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @_ZN12mpff_manager5resetER4mpff(ptr noundef nonnull align 8 dereferenceable(89) %i.x, ptr noundef nonnull align 4 dereferenceable(8) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 41
  store i8 1, ptr %i.z, align 1, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 1, ptr %i.aa, align 8, !tbaa !109
  br label %_ZN12mpff_manager3negER4mpff.exit

bb.d:                                             ; preds = %.split
  %.pre = load i8, ptr %1, align 8, !tbaa !90, !range !107
  %i.ab = trunc nuw i8 %.pre to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !95
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %i.aj, i32 noundef %i.ah)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %spec.select.i.i = select i1 %i.am, ptr %i.an, ptr %i.al
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit

bb.f:                                             ; preds = %.thread, %bb.d
  %i.ao = phi ptr [ %i.r, %.thread ], [ %i.ad, %bb.d ]
  %i.ap = phi ptr [ %i.q, %.thread ], [ %i.ac, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit: ; preds = %bb.e, %bb.f
  %i.ar = phi ptr [ %i.ao, %bb.f ], [ %i.ad, %bb.e ] ; 4 uses
  %i.as = phi ptr [ %i.ap, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aq, %bb.f ], [ %spec.select.i.i, %bb.e ]
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE8nth_rootERK4mpffjS8_RS6_S9_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %.0.i.i, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.as, ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
  %i.at = load i8, ptr %1, align 8, !tbaa !90, !range !107, !noundef !45
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %.split28

bb.g:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !94 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !95
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(12) %i.ba, i32 noundef %i.ay)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit.thread, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit

.split28:                                         ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE5upperERKNS3_8intervalE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !111, !range !107, !noundef !45
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit.thread, label %bb.h

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit: ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = and i32 %i.bi, 1073741824
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.h, label %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit.thread

_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit.thread: ; preds = %bb.g, %.split28, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.bm = tail call noundef zeroext i1 @_ZNK12mpff_manager2eqERK4mpffS2_(ptr noundef nonnull align 8 dereferenceable(89) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.as, ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
  %i.bn = zext i1 %i.bm to i8
  br label %bb.h

bb.h:                                             ; preds = %.split28, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit.thread, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit
  %i.bo = phi i8 [ 0, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit ], [ %i.bn, %_ZNK16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit.thread ], [ 0, %.split28 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.bp, align 4, !tbaa !108
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.bq, align 8, !tbaa !109
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 29
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !110
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 41
  store i8 %i.bo, ptr %i.bs, align 1, !tbaa !111
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !98, !nonnull !45, !align !46
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @_ZN12mpff_manager3setER4mpffRKS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !98, !nonnull !45, !align !46 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store i8 0, ptr %i.bx, align 4, !tbaa !100
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  tail call void @_ZN12mpff_manager3setER4mpffRKS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.bw, ptr noundef nonnull align 4 dereferenceable(8) %i.by, ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
  %i.bz = load i32, ptr %i.by, align 4            ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 2
  br i1 %i.ca, label %_ZN12mpff_manager3negER4mpff.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = xor i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4
  br label %_ZN12mpff_manager3negER4mpff.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN16interval_managerIN9subpaving9context_tINS0_11config_mpffEE15interval_configEE8nth_rootERKNS3_8intervalEjRK4mpffRS6_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(42) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(42) %4)
  br label %_ZN12mpff_manager3negER4mpff.exit

_ZN12mpff_manager3negER4mpff.exit:                ; preds = %bb.i, %bb.h, %bb.c, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_11config_mpffEE20propagate_polynomialEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(784) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.g = load i64, ptr %i.f, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !78
  %i.i = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i32 noundef %1)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread, label %_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread

_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread: ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !45, !align !46
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_11config_mpffEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i32 noundef %1)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %.fr = freeze ptr %i.q
  %i.r = icmp eq ptr %.fr, null
  %spec.select = select i1 %i.r, i32 %1, i32 -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !122  ; 2 uses
  %.not4070.not = icmp eq i32 %i.t, 0
  br i1 %.not4070.not, label %.critedge.sink.split, label %.lr.ph

_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !122  ; 2 uses
  %.not4070.not88 = icmp eq i32 %i.v, 0
  br i1 %.not4070.not88, label %.critedge.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread, %_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread
  %i.w = phi i32 [ %i.v, %_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread.thread ], [ %i.t, %_ZNK9subpaving9context_tINS_11config_mpffEE12is_unboundedEjPNS2_4nodeE.exit.thread ] ; 2 uses
end_hunk_2
