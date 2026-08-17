inline.NumInlined: 2438
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5powerERKNS3_8intervalEjRS6_:bb.a
  %i.sl = and i8 %i.si, -2
  %i.sm = or disjoint i8 %i.sl, %i.sk
  store i8 %i.sm, ptr %i.rx, align 4
  %i.sn = load i8, ptr %i.sa, align 4
  %i.so = and i8 %i.sn, -2
  %i.sp = or disjoint i8 %i.so, %i.sj
  store i8 %i.sp, ptr %i.sa, align 4
  %i.sq = zext i1 %i.nl to i8
  %i.sr = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 %i.sq, ptr %i.sr, align 8, !tbaa !105
  %i.ss = load i8, ptr %1, align 8, !tbaa !92, !range !103, !noundef !47
  %i.st = trunc nuw i8 %i.ss to i1
  br i1 %i.st, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !97 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !98
  %i.sy = load ptr, ptr %i.sv, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.ta = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.sy, ptr noundef nonnull align 8 dereferenceable(12) %i.sz, i32 noundef %i.sx)
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !50 ; 2 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %i.te = load i32, ptr %i.td, align 8
  %i.tf = lshr i32 %i.te, 30
  %i.tg = trunc nuw nsw i32 %i.tf to i8
  %i.th = and i8 %i.tg, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121

bb.bl:                                            ; preds = %bb.bi
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !106, !range !103, !noundef !47
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121

_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit.thread: ; preds = %.split.i.i, %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i.i, %bb.bb, %.split146, %.split145, %bb.bh, %bb.bg, %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit
  %i.tk = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !37
  %i.tm = load i32, ptr %i.ni, align 4, !tbaa !37
  store i32 %i.tm, ptr %i.tk, align 8, !tbaa !37
  store i32 %i.tl, ptr %i.ni, align 4, !tbaa !37
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.tp = load ptr, ptr %i.tn, align 8, !tbaa !245
  %i.tq = load ptr, ptr %i.to, align 8, !tbaa !245
  store ptr %i.tq, ptr %i.tn, align 8, !tbaa !245
  store ptr %i.tp, ptr %i.to, align 8, !tbaa !245
  %i.tr = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.ts = load i8, ptr %i.tr, align 4             ; 2 uses
  %i.tt = and i8 %i.ts, 2
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.tv = load i8, ptr %i.tu, align 4
  %i.tw = and i8 %i.tv, 2
  %i.tx = and i8 %i.ts, -3
  %i.ty = or disjoint i8 %i.tw, %i.tx
  store i8 %i.ty, ptr %i.tr, align 4
  %i.tz = load i8, ptr %i.tu, align 4             ; 2 uses
  %i.ua = and i8 %i.tz, -3
  %i.ub = or disjoint i8 %i.ua, %i.tt
  store i8 %i.ub, ptr %i.tu, align 4
  %i.uc = load i8, ptr %i.tr, align 4             ; 2 uses
  %i.ud = and i8 %i.uc, 1
  %i.ue = and i8 %i.tz, 1
  %i.uf = and i8 %i.uc, -2
  %i.ug = or disjoint i8 %i.uf, %i.ue
  store i8 %i.ug, ptr %i.tr, align 4
  %i.uh = load i8, ptr %i.tu, align 4
  %i.ui = and i8 %i.uh, -2
  %i.uj = or disjoint i8 %i.ui, %i.ud
  store i8 %i.uj, ptr %i.tu, align 4
  %i.uk = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !37
  %i.um = load i32, ptr %i.pa, align 8, !tbaa !37
  store i32 %i.um, ptr %i.uk, align 8, !tbaa !37
  store i32 %i.ul, ptr %i.pa, align 8, !tbaa !37
  %i.un = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.up = load ptr, ptr %i.un, align 8, !tbaa !245
  %i.uq = load ptr, ptr %i.uo, align 8, !tbaa !245
  store ptr %i.uq, ptr %i.un, align 8, !tbaa !245
  store ptr %i.up, ptr %i.uo, align 8, !tbaa !245
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 4 uses
  %i.us = load i8, ptr %i.ur, align 4             ; 2 uses
  %i.ut = and i8 %i.us, 2
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.uv = load i8, ptr %i.uu, align 4
  %i.uw = and i8 %i.uv, 2
  %i.ux = and i8 %i.us, -3
  %i.uy = or disjoint i8 %i.uw, %i.ux
  store i8 %i.uy, ptr %i.ur, align 4
  %i.uz = load i8, ptr %i.uu, align 4             ; 2 uses
  %i.va = and i8 %i.uz, -3
  %i.vb = or disjoint i8 %i.va, %i.ut
  store i8 %i.vb, ptr %i.uu, align 4
  %i.vc = load i8, ptr %i.ur, align 4             ; 2 uses
  %i.vd = and i8 %i.vc, 1
  %i.ve = and i8 %i.uz, 1
  %i.vf = and i8 %i.vc, -2
  %i.vg = or disjoint i8 %i.vf, %i.ve
  store i8 %i.vg, ptr %i.ur, align 4
  %i.vh = load i8, ptr %i.uu, align 4
  %i.vi = and i8 %i.vh, -2
  %i.vj = or disjoint i8 %i.vi, %i.vd
  store i8 %i.vj, ptr %i.uu, align 4
  %i.vk = zext i1 %i.nk to i8
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 %i.vk, ptr %i.vl, align 8, !tbaa !105
  %i.vm = load i8, ptr %1, align 8, !tbaa !92, !range !103, !noundef !47
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit.thread
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !97 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !98
  %i.vs = load ptr, ptr %i.vp, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.vs, ptr noundef nonnull align 8 dereferenceable(12) %i.vt, i32 noundef %i.vr)
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !50 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 32
  %i.vy = load i32, ptr %i.vx, align 8
  %i.vz = lshr i32 %i.vy, 30
  %i.wa = trunc nuw nsw i32 %i.vz to i8
  %i.wb = and i8 %i.wa, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121

bb.bo:                                            ; preds = %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit.thread
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !107, !range !103, !noundef !47
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.0.i.i122.sink = phi i8 [ %i.th, %bb.bk ], [ %i.tj, %bb.bl ], [ 1, %bb.bj ], [ %i.wd, %bb.bo ], [ 1, %bb.bm ], [ %i.wb, %bb.bn ]
  %i.we = getelementptr inbounds nuw i8, ptr %3, i64 97
  store i8 %.0.i.i122.sink, ptr %i.we, align 1, !tbaa !107
  %i.wf = load ptr, ptr %i.nh, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.wf, ptr noundef nonnull align 8 dereferenceable(32) %i.wg)
  %i.wh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.wf, ptr noundef nonnull align 8 dereferenceable(16) %i.wh)
  store i32 1, ptr %i.wh, align 8, !tbaa !95
  %i.wi = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.wj = load i8, ptr %i.wi, align 4
  %i.wk = and i8 %i.wj, -2
  store i8 %i.wk, ptr %i.wi, align 4
  %i.wl = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.wl, align 8, !tbaa !104
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.wm, align 1, !tbaa !106
  br label %bb.cf

bb.bp:                                            ; preds = %bb.c
  br i1 %i.e, label %.split147, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit124

.split147:                                        ; preds = %bb.bp
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !97 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !98
  %i.wr = load ptr, ptr %i.wo, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.wr, ptr noundef nonnull align 8 dereferenceable(12) %i.ws, i32 noundef %i.wq)
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !50
  %i.wv = icmp eq ptr %i.wu, null
  br i1 %i.wv, label %bb.bq, label %bb.br

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit124: ; preds = %bb.bp
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.wx = load i8, ptr %i.ww, align 8, !tbaa !104, !range !103, !noundef !47
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.bq, label %.thread179

.thread179:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit124
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !101, !nonnull !47, !align !48
  br label %bb.bt

bb.bq:                                            ; preds = %.split147, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit124
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.xc, ptr noundef nonnull align 8 dereferenceable(32) %i.xd)
  %i.xe = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.xc, ptr noundef nonnull align 8 dereferenceable(16) %i.xe)
  store i32 1, ptr %i.xe, align 8, !tbaa !95
  %i.xf = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.xg = load i8, ptr %i.xf, align 4
  %i.xh = and i8 %i.xg, -2
  store i8 %i.xh, ptr %i.xf, align 4
  %i.xi = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 1, ptr %i.xi, align 1, !tbaa !106
  br label %bb.bx

bb.br:                                            ; preds = %.split147
  %.pre = load i8, ptr %1, align 8, !tbaa !92, !range !103
  %i.xj = trunc nuw i8 %.pre to i1
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  br i1 %i.xj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !97 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !98
  %i.xq = load ptr, ptr %i.xn, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.xq, ptr noundef nonnull align 8 dereferenceable(12) %i.xr, i32 noundef %i.xp)
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !50 ; 2 uses
  %i.xu = icmp eq ptr %i.xt, null
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %spec.select.i.i126 = select i1 %i.xu, ptr %i.xv, ptr %i.xt
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit127

bb.bt:                                            ; preds = %.thread179, %bb.br
  %i.xw = phi ptr [ %i.xa, %.thread179 ], [ %i.xl, %bb.br ]
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit127

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit127: ; preds = %bb.bs, %bb.bt
  %i.xy = phi ptr [ %i.xw, %bb.bt ], [ %i.xl, %bb.bs ]
  %.0.i.i125 = phi ptr [ %i.xx, %bb.bt ], [ %spec.select.i.i126, %bb.bs ]
  %i.xz = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN11mpq_managerILb0EE5powerERK3mpqjRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.xy, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i125, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.xz)
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.ya, align 8, !tbaa !104
  %i.yb = load i8, ptr %1, align 8, !tbaa !92, !range !103, !noundef !47
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit127
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !97 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !98
  %i.yh = load ptr, ptr %i.ye, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.yh, ptr noundef nonnull align 8 dereferenceable(12) %i.yi, i32 noundef %i.yg)
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !50 ; 2 uses
  %i.yl = icmp eq ptr %i.yk, null
  br i1 %i.yl, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 32
  %i.yn = load i32, ptr %i.ym, align 8
  %i.yo = lshr i32 %i.yn, 30
  %i.yp = trunc nuw nsw i32 %i.yo to i8
  %i.yq = and i8 %i.yp, 1
  br label %bb.bx

bb.bw:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit127
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !106, !range !103, !noundef !47
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bq
  %.sink181 = phi i64 [ 56, %bb.bq ], [ 57, %bb.bu ], [ 57, %bb.bv ], [ 57, %bb.bw ]
  %.0.i.i128.sink = phi i8 [ 1, %bb.bq ], [ 1, %bb.bu ], [ %i.yq, %bb.bv ], [ %i.ys, %bb.bw ]
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 %.sink181
  store i8 %.0.i.i128.sink, ptr %4, align 1, !tbaa !178
  %i.yt = load i8, ptr %1, align 8, !tbaa !92, !range !103, !noundef !47
  %i.yu = trunc nuw i8 %i.yt to i1
  br i1 %i.yu, label %.split148, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit130

.split148:                                        ; preds = %bb.bx
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !97 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !98
  %i.yz = load ptr, ptr %i.yw, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.za = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.zb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.yz, ptr noundef nonnull align 8 dereferenceable(12) %i.za, i32 noundef %i.yy)
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !50
  %i.zd = icmp eq ptr %i.zc, null
  br i1 %i.zd, label %bb.by, label %bb.bz

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit130: ; preds = %bb.bx
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.zf = load i8, ptr %i.ze, align 8, !tbaa !105, !range !103, !noundef !47
  %i.zg = trunc nuw i8 %i.zf to i1
  br i1 %i.zg, label %bb.by, label %.thread180

.thread180:                                       ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit130
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !101, !nonnull !47, !align !48
  br label %bb.cb

bb.by:                                            ; preds = %.split148, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12upper_is_infERKNS3_8intervalE.exit130
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.zk, ptr noundef nonnull align 8 dereferenceable(32) %i.zl)
  %i.zm = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.zk, ptr noundef nonnull align 8 dereferenceable(16) %i.zm)
  store i32 1, ptr %i.zm, align 8, !tbaa !95
  %i.zn = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  %i.zo = load i8, ptr %i.zn, align 4
  %i.zp = and i8 %i.zo, -2
  store i8 %i.zp, ptr %i.zn, align 4
  %i.zq = getelementptr inbounds nuw i8, ptr %3, i64 97
  store i8 1, ptr %i.zq, align 1, !tbaa !107
  %i.zr = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 1, ptr %i.zr, align 8, !tbaa !105
  br label %bb.cf

bb.bz:                                            ; preds = %.split148
  %.pre149 = load i8, ptr %1, align 8, !tbaa !92, !range !103
  %i.zs = trunc nuw i8 %.pre149 to i1
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  br i1 %i.zs, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !97 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !98
  %i.zz = load ptr, ptr %i.zw, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 24
  %i.aab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, ptr noundef nonnull align 8 dereferenceable(12) %i.aaa, i32 noundef %i.zy)
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !50 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, null
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %spec.select.i.i132 = select i1 %i.aad, ptr %i.aae, ptr %i.aac
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5upperERKNS3_8intervalE.exit133

bb.cb:                                            ; preds = %.thread180, %bb.bz
  %i.aaf = phi ptr [ %i.zi, %.thread180 ], [ %i.zu, %bb.bz ]
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5upperERKNS3_8intervalE.exit133

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5upperERKNS3_8intervalE.exit133: ; preds = %bb.ca, %bb.cb
  %i.aah = phi ptr [ %i.aaf, %bb.cb ], [ %i.zu, %bb.ca ]
  %.0.i.i131 = phi ptr [ %i.aag, %bb.cb ], [ %spec.select.i.i132, %bb.ca ]
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @_ZN11mpq_managerILb0EE5powerERK3mpqjRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aah, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i131, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aai)
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 0, ptr %i.aaj, align 8, !tbaa !105
  %i.aak = load i8, ptr %1, align 8, !tbaa !92, !range !103, !noundef !47
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5upperERKNS3_8intervalE.exit133
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !97 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aap = load i32, ptr %i.aao, align 8, !tbaa !98
  %i.aaq = load ptr, ptr %i.aan, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aas = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.aaq, ptr noundef nonnull align 8 dereferenceable(12) %i.aar, i32 noundef %i.aap)
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !50 ; 2 uses
  %i.aau = icmp eq ptr %i.aat, null
  br i1 %i.aau, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit135, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 32
  %i.aaw = load i32, ptr %i.aav, align 8
  %i.aax = lshr i32 %i.aaw, 30
  %i.aay = trunc nuw nsw i32 %i.aax to i8
  %i.aaz = and i8 %i.aay, 1
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit135

bb.ce:                                            ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5upperERKNS3_8intervalE.exit133
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !107, !range !103, !noundef !47
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit135

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit135: ; preds = %bb.cc, %bb.cd, %bb.ce
  %.0.i.i134 = phi i8 [ %i.abb, %bb.ce ], [ 1, %bb.cc ], [ %i.aaz, %bb.cd ]
  %i.abc = getelementptr inbounds nuw i8, ptr %3, i64 97
  store i8 %.0.i.i134, ptr %i.abc, align 1, !tbaa !107
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ak, %bb.al, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13lower_is_openERKNS3_8intervalE.exit121, %bb.k, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit, %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE13upper_is_openERKNS3_8intervalE.exit135, %bb.by, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE3setERNS3_8intervalERKS6_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(98) %1, ptr noundef nonnull align 8 dereferenceable(98) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 8, !tbaa !92, !range !103, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.split, label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit

.split:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i32 noundef %i.g)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit, label %bb.c

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !104, !range !103, !noundef !47
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit, label %.thread

.thread:                                          ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE12lower_is_infERKNS3_8intervalE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101, !nonnull !47, !align !48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.c:                                             ; preds = %.split
  %.pre = load i8, ptr %2, align 8, !tbaa !92, !range !103
  %i.s = trunc nuw i8 %.pre to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101, !nonnull !47, !align !48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !98
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !49, !nonnull !47, !align !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i32 noundef %i.z)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ad
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit

bb.e:                                             ; preds = %.thread, %bb.c
  %i.ag = phi ptr [ %i.r, %.thread ], [ %i.v, %bb.c ]
  %i.ah = phi ptr [ %i.q, %.thread ], [ %i.u, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit

_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi ptr [ %i.ag, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.ak = phi ptr [ %i.ah, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %bb.e ], [ %spec.select.i.i, %bb.d ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit
  %i.ap = load i32, ptr %.0.i.i, align 8, !tbaa !95
  store i32 %i.ap, ptr %i.aj, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, -2
  store i8 %i.as, ptr %i.aq, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.g:                                             ; preds = %_ZNK16interval_managerIN9subpaving9context_tINS0_10config_mpqEE15interval_configEE5lowerERKNS3_8intervalE.exit
end_hunk_0
