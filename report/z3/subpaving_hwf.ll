inline.NumInlined: 2360
inline.NumDeleted: 505
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5powerERKNS3_8intervalEjRS6_:bb.a
bb.al:                                            ; preds = %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit111
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !104 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !105
  %i.lt = load ptr, ptr %i.lq, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.lv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.lt, ptr noundef nonnull align 8 dereferenceable(12) %i.lu, i32 noundef %i.ls)
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !59 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i113 = select i1 %i.lx, ptr %i.ly, ptr %i.lw
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit114

bb.am:                                            ; preds = %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit111
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit114

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit114: ; preds = %bb.al, %bb.am
  %.0.i.i112 = phi ptr [ %i.lz, %bb.am ], [ %spec.select.i.i113, %bb.al ]
  %i.ma = load ptr, ptr %i.lm, align 8, !tbaa !12, !nonnull !20, !align !21
  tail call void @_ZN11hwf_manager3setER3hwfRKS0_(ptr noundef nonnull align 8 dereferenceable(736) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.le, ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i112)
  %i.mb = load ptr, ptr %i.lm, align 8, !tbaa !12, !nonnull !20, !align !21
  %i.mc = tail call noundef zeroext i1 @_ZN11hwf_manager10is_regularERK3hwf(ptr noundef nonnull align 8 dereferenceable(736) %i.mb, ptr noundef nonnull align 8 dereferenceable(8) %i.le)
  br i1 %i.mc, label %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit115, label %bb.an

bb.an:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit114
  %i.md = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.md, ptr nonnull @_ZTIN3f2nI11hwf_managerE9exceptionE, ptr null) #23
  unreachable

_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit115:    ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit114
  %i.me = load ptr, ptr %i.d, align 8, !tbaa !108, !nonnull !20, !align !21 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i32 2, ptr %i.mf, align 8, !tbaa !110
  br i1 %i.lh, label %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit, label %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread

_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit: ; preds = %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit115
  br i1 %i.lg, label %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit116.thread, label %bb.ao

_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread: ; preds = %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit115
  tail call void @_ZN3f2nI11hwf_managerE5powerERK3hwfjRS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.me, ptr noundef nonnull align 8 dereferenceable(8) %i.lf, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.lf)
  br i1 %i.lg, label %_Z2eqI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread, label %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit

bb.ao:                                            ; preds = %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit
  %i.mg = load ptr, ptr %i.d, align 8, !tbaa !108, !nonnull !20, !align !21
  tail call void @_ZN3f2nI11hwf_managerE5powerERK3hwfjRS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.mg, ptr noundef nonnull align 8 dereferenceable(8) %i.le, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.le)
  br label %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread147

_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit: ; preds = %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread
  %i.mh = load ptr, ptr %i.d, align 8, !tbaa !108, !nonnull !20, !align !21
  tail call void @_ZN3f2nI11hwf_managerE5powerERK3hwfjRS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.mh, ptr noundef nonnull align 8 dereferenceable(8) %i.le, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.le)
  %i.mi = load ptr, ptr %i.d, align 8, !tbaa !108, !nonnull !20, !align !21
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !12, !nonnull !20, !align !21
  %i.mk = tail call noundef zeroext i1 @_ZN11hwf_manager2ltERK3hwfS2_(ptr noundef nonnull align 8 dereferenceable(736) %i.mj, ptr noundef nonnull align 8 dereferenceable(8) %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.lf)
  br i1 %i.mk, label %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread147, label %.thread156

.thread156:                                       ; preds = %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit
  %i.ml = load ptr, ptr %i.d, align 8, !tbaa !108, !nonnull !20, !align !21
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !12, !nonnull !20, !align !21
  %i.mn = tail call noundef zeroext i1 @_ZN11hwf_manager2eqERK3hwfS2_(ptr noundef nonnull align 8 dereferenceable(736) %i.mm, ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef nonnull align 8 dereferenceable(8) %i.le)
  br i1 %i.mn, label %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit116.thread, label %_Z2eqI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread

_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit116.thread: ; preds = %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit, %.thread156
  %.0143146152163 = phi i32 [ 1, %.thread156 ], [ 2, %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit ] ; 2 uses
  %i.mo = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(50) %1)
  br i1 %i.mo, label %_Z2eqI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit116.thread
  %i.mp = tail call noundef zeroext i1 @_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13upper_is_openERKNS3_8intervalE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(50) %1)
  br i1 %i.mp, label %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread147, label %_Z2eqI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread

_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread147: ; preds = %bb.ao, %bb.ap, %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !265
  %i.ms = load double, ptr %i.lf, align 8, !tbaa !265
  store double %i.ms, ptr %i.mq, align 8, !tbaa !265
  store double %i.mr, ptr %i.lf, align 8, !tbaa !265
  %i.mt = zext i1 %i.lh to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 %i.mt, ptr %i.mu, align 8, !tbaa !113
  %i.mv = load i8, ptr %1, align 8, !tbaa !101, !range !111, !noundef !20
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread147
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !104 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !105
  %i.nb = load ptr, ptr %i.my, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.nb, ptr noundef nonnull align 8 dereferenceable(12) %i.nc, i32 noundef %i.na)
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !59 ; 2 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nh = load i32, ptr %i.ng, align 8
  %i.ni = lshr i32 %i.nh, 30
  %i.nj = trunc nuw nsw i32 %i.ni to i8
  %i.nk = and i8 %i.nj, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119

bb.as:                                            ; preds = %_Z2gtI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread147
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !114, !range !111, !noundef !20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119

_Z2eqI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread: ; preds = %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread, %bb.ap, %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit116.thread, %.thread156
  %.0143146152161 = phi i32 [ 1, %.thread156 ], [ %.0143146152163, %bb.ap ], [ %.0143146152163, %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit116.thread ], [ 2, %_Z5powerI3f2nI11hwf_managerEEvRT_RNS3_7numeralER16ext_numeral_kindj.exit.thread ]
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !265
  %i.np = load double, ptr %i.le, align 8, !tbaa !265
  store double %i.np, ptr %i.nn, align 8, !tbaa !265
  store double %i.no, ptr %i.le, align 8, !tbaa !265
  %i.nq = icmp eq i32 %.0143146152161, 2
  %i.nr = zext i1 %i.nq to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 %i.nr, ptr %i.ns, align 8, !tbaa !113
  %i.nt = load i8, ptr %1, align 8, !tbaa !101, !range !111, !noundef !20
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_Z2eqI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !104 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !105
  %i.nz = load ptr, ptr %i.nw, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ob = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.nz, ptr noundef nonnull align 8 dereferenceable(12) %i.oa, i32 noundef %i.ny)
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !59 ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.of = load i32, ptr %i.oe, align 8
  %i.og = lshr i32 %i.of, 30
  %i.oh = trunc nuw nsw i32 %i.og to i8
  %i.oi = and i8 %i.oh, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119

bb.av:                                            ; preds = %_Z2eqI3f2nI11hwf_managerEEbRT_RKNS3_7numeralE16ext_numeral_kindS7_S8_.exit.thread
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !115, !range !111, !noundef !20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119: ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0.i.i120.sink = phi i8 [ %i.nk, %bb.ar ], [ %i.nm, %bb.as ], [ 1, %bb.aq ], [ %i.ok, %bb.av ], [ 1, %bb.at ], [ %i.oi, %bb.au ]
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 49
  store i8 %.0.i.i120.sink, ptr %i.ol, align 1, !tbaa !115
  %i.om = load ptr, ptr %i.d, align 8, !tbaa !108, !nonnull !20, !align !21
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.oo = load ptr, ptr %i.om, align 8, !tbaa !12, !nonnull !20, !align !21
  tail call void @_ZN11hwf_manager3setER3hwfi(ptr noundef nonnull align 8 dereferenceable(736) %i.oo, ptr noundef nonnull align 8 dereferenceable(8) %i.on, i32 noundef 0)
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.op, align 8, !tbaa !112
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 0, ptr %i.oq, align 1, !tbaa !114
  br label %bb.bm

bb.aw:                                            ; preds = %bb.c
  %i.or = load i8, ptr %1, align 8, !tbaa !101, !range !111, !noundef !20
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %.split164, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit122

.split164:                                        ; preds = %bb.aw
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !104 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !105
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.oz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ox, ptr noundef nonnull align 8 dereferenceable(12) %i.oy, i32 noundef %i.ow)
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !59
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.ax, label %bb.ay

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit122: ; preds = %bb.aw
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pd = load i8, ptr %i.pc, align 8, !tbaa !112, !range !111, !noundef !20
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %bb.ax, label %.thread181

.thread181:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit122
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !108, !nonnull !20, !align !21
  br label %bb.ba

bb.ax:                                            ; preds = %.split164, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit122
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !108, !nonnull !20, !align !21
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pk = load ptr, ptr %i.pi, align 8, !tbaa !12, !nonnull !20, !align !21
  tail call void @_ZN11hwf_manager3setER3hwfi(ptr noundef nonnull align 8 dereferenceable(736) %i.pk, ptr noundef nonnull align 8 dereferenceable(8) %i.pj, i32 noundef 0)
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.pl, align 1, !tbaa !114
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %4, align 8, !tbaa !112
  br label %bb.be

bb.ay:                                            ; preds = %.split164
  %.pre = load i8, ptr %1, align 8, !tbaa !101, !range !111
  %i.pm = trunc nuw i8 %.pre to i1
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !108, !nonnull !20, !align !21 ; 2 uses
  br i1 %i.pm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !104 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !105
  %i.pt = load ptr, ptr %i.pq, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.pt, ptr noundef nonnull align 8 dereferenceable(12) %i.pu, i32 noundef %i.ps)
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !59 ; 2 uses
  %i.px = icmp eq ptr %i.pw, null
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 24
  %spec.select.i.i124 = select i1 %i.px, ptr %i.py, ptr %i.pw
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit125

bb.ba:                                            ; preds = %.thread181, %bb.ay
  %i.pz = phi ptr [ %i.pg, %.thread181 ], [ %i.po, %bb.ay ]
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit125

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit125: ; preds = %bb.az, %bb.ba
  %i.qb = phi ptr [ %i.pz, %bb.ba ], [ %i.po, %bb.az ]
  %.0.i.i123 = phi ptr [ %i.qa, %bb.ba ], [ %spec.select.i.i124, %bb.az ]
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN3f2nI11hwf_managerE5powerERK3hwfjRS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.qb, ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i123, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.qc)
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.qd, align 8, !tbaa !112
  %i.qe = load i8, ptr %1, align 8, !tbaa !101, !range !111, !noundef !20
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit125
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !104 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !105
  %i.qk = load ptr, ptr %i.qh, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.qk, ptr noundef nonnull align 8 dereferenceable(12) %i.ql, i32 noundef %i.qj)
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !59 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit127, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qq = load i32, ptr %i.qp, align 8
  %i.qr = lshr i32 %i.qq, 30
  %i.qs = trunc nuw nsw i32 %i.qr to i8
  %i.qt = and i8 %i.qs, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit127

bb.bd:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit125
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !114, !range !111, !noundef !20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit127

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit127: ; preds = %bb.bb, %bb.bc, %bb.bd
  %.0.i.i126 = phi i8 [ %i.qv, %bb.bd ], [ 1, %bb.bb ], [ %i.qt, %bb.bc ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 %.0.i.i126, ptr %5, align 1, !tbaa !114
  br label %bb.be

bb.be:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit127, %bb.ax
  %i.qw = load i8, ptr %1, align 8, !tbaa !101, !range !111, !noundef !20
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %.split165, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit128

.split165:                                        ; preds = %bb.be
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !104 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !105
  %i.rc = load ptr, ptr %i.qz, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.re = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.rc, ptr noundef nonnull align 8 dereferenceable(12) %i.rd, i32 noundef %i.rb)
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !59
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %bb.bf, label %bb.bg

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit128: ; preds = %bb.be
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ri = load i8, ptr %i.rh, align 8, !tbaa !113, !range !111, !noundef !20
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.bf, label %.thread182

.thread182:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit128
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !108, !nonnull !20, !align !21
  br label %bb.bi

bb.bf:                                            ; preds = %.split165, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit128
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !108, !nonnull !20, !align !21
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !12, !nonnull !20, !align !21
  tail call void @_ZN11hwf_manager3setER3hwfi(ptr noundef nonnull align 8 dereferenceable(736) %i.rp, ptr noundef nonnull align 8 dereferenceable(8) %i.ro, i32 noundef 0)
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 49
  store i8 1, ptr %i.rq, align 1, !tbaa !115
  %i.rr = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.rr, align 8, !tbaa !113
  br label %bb.bm

bb.bg:                                            ; preds = %.split165
  %.pre167 = load i8, ptr %1, align 8, !tbaa !101, !range !111
  %i.rs = trunc nuw i8 %.pre167 to i1
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !108, !nonnull !20, !align !21 ; 2 uses
  br i1 %i.rs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !104 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !105
  %i.rz = load ptr, ptr %i.rw, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.sb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.rz, ptr noundef nonnull align 8 dereferenceable(12) %i.sa, i32 noundef %i.ry)
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !59 ; 2 uses
  %i.sd = icmp eq ptr %i.sc, null
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i130 = select i1 %i.sd, ptr %i.se, ptr %i.sc
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit131

bb.bi:                                            ; preds = %.thread182, %bb.bg
  %i.sf = phi ptr [ %i.rl, %.thread182 ], [ %i.ru, %bb.bg ]
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit131

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit131: ; preds = %bb.bh, %bb.bi
  %i.sh = phi ptr [ %i.sf, %bb.bi ], [ %i.ru, %bb.bh ]
  %.0.i.i129 = phi ptr [ %i.sg, %bb.bi ], [ %spec.select.i.i130, %bb.bh ]
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @_ZN3f2nI11hwf_managerE5powerERK3hwfjRS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.sh, ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i129, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.si)
  %i.sj = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 0, ptr %i.sj, align 8, !tbaa !113
  %i.sk = load i8, ptr %1, align 8, !tbaa !101, !range !111, !noundef !20
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit131
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !104 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !105
  %i.sq = load ptr, ptr %i.sn, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  %i.ss = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.sq, ptr noundef nonnull align 8 dereferenceable(12) %i.sr, i32 noundef %i.sp)
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !59 ; 2 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit133, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sw = load i32, ptr %i.sv, align 8
  %i.sx = lshr i32 %i.sw, 30
  %i.sy = trunc nuw nsw i32 %i.sx to i8
  %i.sz = and i8 %i.sy, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit133

bb.bl:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5upperERKNS3_8intervalE.exit131
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !115, !range !111, !noundef !20
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit133

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit133: ; preds = %bb.bj, %bb.bk, %bb.bl
  %.0.i.i132 = phi i8 [ %i.tb, %bb.bl ], [ 1, %bb.bj ], [ %i.sz, %bb.bk ]
  %i.tc = getelementptr inbounds nuw i8, ptr %3, i64 49
  store i8 %.0.i.i132, ptr %i.tc, align 1, !tbaa !115
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ag, %bb.ah, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit119, %bb.l, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit133, %bb.bf, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE3setERNS3_8intervalERKS6_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(50) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 8, !tbaa !101, !range !111, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.split, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit

.split:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i32 noundef %i.g)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit, label %bb.c

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !112, !range !111, !noundef !20
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit, label %.thread

.thread:                                          ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108, !nonnull !20, !align !21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.c:                                             ; preds = %.split
  %.pre = load i8, ptr %2, align 8, !tbaa !101, !range !111
  %i.s = trunc nuw i8 %.pre to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108, !nonnull !20, !align !21 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !105
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !58, !nonnull !20, !align !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i32 noundef %i.z)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ad
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit

bb.e:                                             ; preds = %.thread, %bb.c
  %i.ag = phi ptr [ %i.r, %.thread ], [ %i.v, %bb.c ]
  %i.ah = phi ptr [ %i.q, %.thread ], [ %i.u, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi ptr [ %i.ag, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.ak = phi ptr [ %i.ah, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %bb.e ], [ %spec.select.i.i, %bb.d ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12, !nonnull !20, !align !21
  tail call void @_ZN11hwf_manager3setER3hwfRKS0_(ptr noundef nonnull align 8 dereferenceable(736) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i)
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !12, !nonnull !20, !align !21
  %i.an = tail call noundef zeroext i1 @_ZN11hwf_manager10is_regularERK3hwf(ptr noundef nonnull align 8 dereferenceable(736) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  br i1 %i.an, label %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.ao, ptr nonnull @_ZTIN3f2nI11hwf_managerE9exceptionE, ptr null) #23
  unreachable

_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit:       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit, %.split
  %.sink = phi i8 [ 1, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit ], [ 1, %.split ], [ 0, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE5lowerERKNS3_8intervalE.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %.sink, ptr %i.ap, align 8, !tbaa !112
  %i.aq = load i8, ptr %2, align 8, !tbaa !101, !range !111, !noundef !20
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.split23, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_hwfEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit

.split23:                                         ; preds = %_ZN3f2nI11hwf_managerE3setER3hwfRKS2_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !104 ; 2 uses
end_hunk_0
