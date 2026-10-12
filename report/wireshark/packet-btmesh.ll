Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-btmesh?download=true
inline.NumInlined: 30
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dissect_btmesh_model_layer:bb.a
  %i.did = load i32, ptr @hf_btmesh_sensor_setting_set_unacknowledged_sensor_property_id, align 4
  %i.die = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.did, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dif = add nuw nsw i32 %.03898, 2
  %i.dig = load i32, ptr @hf_btmesh_sensor_setting_set_unacknowledged_sensor_setting_property_id, align 4
  %i.dih = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dig, ptr noundef nonnull %0, i32 noundef %i.dif, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dii = or disjoint i32 %.03898, 4             ; 2 uses
  %i.dij = load i32, ptr @hf_btmesh_sensor_setting_set_unacknowledged_sensor_setting_raw, align 4
  %i.dik = load i16, ptr %i.c, align 2
  %i.dil = call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %i.j, i32 noundef %i.dij, ptr noundef %0, i32 noundef %i.dii, i16 noundef zeroext %i.dik, i32 noundef -1)
  %i.dim = zext i16 %i.dil to i32
  %i.din = add nuw nsw i32 %i.dii, %i.dim
  br label %.loopexit3968

bb.ll:                                            ; preds = %bb.f
  %i.dio = load i32, ptr @hf_btmesh_sensor_setting_status_sensor_property_id, align 4
  %i.dip = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.dio, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.diq = add nuw nsw i32 %.03898, 2
  %i.dir = load i32, ptr @hf_btmesh_sensor_setting_status_sensor_setting_property_id, align 4
  %i.dis = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dir, ptr noundef nonnull %0, i32 noundef %i.diq, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dit = or disjoint i32 %.03898, 4             ; 3 uses
  %i.diu = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.dit)
  %.not3907 = icmp eq i32 %i.diu, 0
  br i1 %.not3907, label %.loopexit3968, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.div = load i32, ptr @hf_btmesh_sensor_setting_status_sensor_setting_access, align 4
  %i.diw = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.div, ptr noundef nonnull %0, i32 noundef %i.dit, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.dix = add nuw nsw i32 %.03898, 5             ; 2 uses
  %i.diy = load i32, ptr @hf_btmesh_sensor_setting_status_sensor_setting_raw, align 4
  %i.diz = load i16, ptr %i.c, align 2
  %i.dja = call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %i.j, i32 noundef %i.diy, ptr noundef %0, i32 noundef %i.dix, i16 noundef zeroext %i.diz, i32 noundef -1)
  %i.djb = zext i16 %i.dja to i32
  %i.djc = add nuw nsw i32 %i.dix, %i.djb
  br label %.loopexit3968

bb.ln:                                            ; preds = %bb.f
  %i.djd = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.03898)
  %.not3906 = icmp eq i32 %i.djd, 0
  br i1 %.not3906, label %.loopexit3968, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.dje = load i32, ptr @hf_btmesh_sensor_get_property_id, align 4
  %i.djf = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.dje, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.djg = add nuw nsw i32 %.03898, 2
  br label %.loopexit3968

.lr.ph3991:                                       ; preds = %.preheader3984, %bb.lr
  %.253990 = phi i32 [ %i.djz, %bb.lr ], [ %.03898, %.preheader3984 ] ; 6 uses
  %i.djh = load i32, ptr @hf_btmesh_sensor_status_mpid_format, align 4
  %i.dji = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djh, ptr noundef nonnull %0, i32 noundef %.253990, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.djj = load i32, ptr %i.e, align 4
  %i.djk = icmp eq i32 %i.djj, 0
  br i1 %i.djk, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph3991
  %i.djl = load i32, ptr @hf_btmesh_sensor_status_mpid_format_a_length, align 4
  %i.djm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djl, ptr noundef nonnull %0, i32 noundef %.253990, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.lr

bb.lq:                                            ; preds = %.lr.ph3991
  %i.djn = load i32, ptr @hf_btmesh_sensor_status_mpid_format_b_length, align 4
  %i.djo = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djn, ptr noundef nonnull %0, i32 noundef %.253990, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  %i.djp = add i32 %.253990, 1
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %hf_btmesh_sensor_status_mpid_format_b_property_id.sink = phi ptr [ @hf_btmesh_sensor_status_mpid_format_b_property_id, %bb.lq ], [ @hf_btmesh_sensor_status_mpid_format_a_property_id, %bb.lp ]
  %.sink4117 = phi i32 [ %i.djp, %bb.lq ], [ %.253990, %bb.lp ]
  %.sink4115 = phi i32 [ 3, %bb.lq ], [ 2, %bb.lp ]
  %i.djq = load i32, ptr %hf_btmesh_sensor_status_mpid_format_b_property_id.sink, align 4
  %i.djr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djq, ptr noundef nonnull %0, i32 noundef %.sink4117, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.djs = add i32 %.253990, %.sink4115           ; 2 uses
  %i.djt = load i32, ptr @hf_btmesh_sensor_status_raw_value, align 4
  %i.dju = load i32, ptr %i.f, align 4
  %i.djv = trunc i32 %i.dju to i16
  %i.djw = load i32, ptr %i.g, align 4
  %i.djx = call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %i.j, i32 noundef %i.djt, ptr noundef %0, i32 noundef %i.djs, i16 noundef zeroext %i.djv, i32 noundef %i.djw)
  %i.djy = zext i16 %i.djx to i32
  %i.djz = add i32 %i.djs, %i.djy                 ; 3 uses
  %i.dka = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.djz)
  %.not3905 = icmp eq i32 %i.dka, 0
  br i1 %.not3905, label %.loopexit3968, label %.lr.ph3991, !llvm.loop !31

bb.ls:                                            ; preds = %bb.f
  %i.dkb = load i32, ptr @hf_btmesh_sensor_column_get_property_id, align 4
  %i.dkc = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dkb, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkd = add nuw nsw i32 %.03898, 2             ; 2 uses
  %i.dke = load i16, ptr %i.c, align 2
  %i.dkf = call fastcc i32 @dissect_columns_raw_value(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.dkd, i16 noundef zeroext %i.dke, ptr nonnull @hf_btmesh_sensor_column_get_raw_value_a, ptr null)
  %i.dkg = add i32 %i.dkf, %i.dkd
  br label %.loopexit3968

bb.lt:                                            ; preds = %bb.f
  %i.dkh = load i32, ptr @hf_btmesh_sensor_column_status_property_id, align 4
  %i.dki = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dkh, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkj = add nuw nsw i32 %.03898, 2             ; 2 uses
  %i.dkk = load i16, ptr %i.c, align 2
  %i.dkl = call fastcc i32 @dissect_property_raw_value_entry(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.dkj, i16 noundef zeroext %i.dkk, ptr noundef nonnull @sensor_column_status_hfs)
  %i.dkm = add i32 %i.dkl, %i.dkj
  br label %.loopexit3968

bb.lu:                                            ; preds = %bb.f
  %i.dkn = load i32, ptr @hf_btmesh_sensor_series_get_property_id, align 4
  %i.dko = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dkn, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkp = add nuw nsw i32 %.03898, 2             ; 4 uses
  %i.dkq = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.dkp)
  %.not3904 = icmp eq i32 %i.dkq, 0
  br i1 %.not3904, label %.loopexit3968, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.dkr = load i16, ptr %i.c, align 2
  %i.dks = call fastcc i32 @dissect_columns_raw_value(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.dkp, i16 noundef zeroext %i.dkr, ptr nonnull @hf_btmesh_sensor_series_get_raw_value_a1, ptr nonnull @hf_btmesh_sensor_series_get_raw_value_a2)
  %i.dkt = add i32 %i.dks, %i.dkp
  br label %.loopexit3968

bb.lw:                                            ; preds = %bb.f
  %i.dku = load i32, ptr @hf_btmesh_sensor_series_status_property_id, align 4
  %i.dkv = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dku, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkw = add nuw nsw i32 %.03898, 2             ; 3 uses
  %i.dkx = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.dkw)
  %.not39033987 = icmp eq i32 %i.dkx, 0
  br i1 %.not39033987, label %.loopexit3968, label %.lr.ph

.lr.ph:                                           ; preds = %bb.lw, %.lr.ph
  %.273988 = phi i32 [ %i.dla, %.lr.ph ], [ %i.dkw, %bb.lw ] ; 2 uses
  %i.dky = load i16, ptr %i.c, align 2
  %i.dkz = call fastcc i32 @dissect_property_raw_value_entry(ptr noundef %i.j, ptr noundef %0, i32 noundef %.273988, i16 noundef zeroext %i.dky, ptr noundef nonnull @sensor_series_status_hfs)
  %i.dla = add i32 %i.dkz, %.273988               ; 3 uses
  %i.dlb = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.dla)
  %.not3903 = icmp eq i32 %i.dlb, 0
  br i1 %.not3903, label %.loopexit3968, label %.lr.ph, !llvm.loop !32

bb.lx:                                            ; preds = %bb.f
  %i.dlc = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.03898)
  %.not3963 = icmp eq i32 %i.dlc, 0
  br i1 %.not3963, label %.loopexit3968, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.dld = load i32, ptr @hf_btmesh_model_layer_parameters, align 4
  %i.dle = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.dld, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.dlf = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.03898)
  %i.dlg = add i32 %i.dlf, %.03898
  br label %.loopexit3968

.loopexit3968:                                    ; preds = %.lr.ph, %bb.lr, %.lr.ph3994, %.lr.ph3998, %.lr.ph4001, %.lr.ph4004, %.lr.ph4007, %.lr.ph4010, %.lr.ph4013, %bb.du, %bb.dp, %bb.df, %.lr.ph4025, %.lr.ph4028, %bb.y, %.lr.ph4035, %.lr.ph4039, %.loopexit, %bb.lw, %.preheader3984, %bb.lh, %.preheader, %bb.kw, %bb.kp, %bb.kj, %bb.kd, %bb.fv, %bb.dr, %bb.dm, %bb.dc, %bb.cd, %bb.cb, %bb.v, %bb.r, %bb.q, %bb.i, %bb.lx, %bb.ly, %bb.lu, %bb.lv, %bb.ln, %bb.lo, %bb.ll, %bb.lm, %bb.lg, %bb.la, %bb.kx, %bb.ky, %bb.kt, %bb.ku, %bb.kn, %bb.ko, %bb.kh, %bb.ki, %bb.ka, %bb.kb, %bb.jy, %bb.jz, %bb.jw, %bb.jx, %bb.ji, %bb.jj, %bb.jg, %bb.jh, %bb.je, %bb.jf, %bb.jc, %bb.jd, %bb.iu, %bb.iv, %bb.is, %bb.it, %bb.iq, %bb.ir, %bb.io, %bb.ip, %bb.im, %bb.in, %bb.ik, %bb.il, %bb.ii, %bb.ij, %bb.ig, %bb.ih, %bb.ie, %bb.if, %bb.ic, %bb.id, %bb.hv, %bb.hw, %bb.ht, %bb.hu, %bb.hr, %bb.hs, %bb.ho, %bb.hp, %bb.hm, %bb.hn, %bb.hk, %bb.hl, %bb.hb, %bb.hc, %bb.gz, %bb.ha, %bb.gx, %bb.gy, %bb.gv, %bb.gw, %bb.gt, %bb.gu, %bb.gr, %bb.gs, %bb.gb, %bb.gc, %bb.ft, %bb.fu, %bb.fr, %bb.fs, %bb.fp, %bb.fq, %bb.fc, %bb.fd, %bb.fa, %bb.fb, %bb.ey, %bb.ez, %bb.eq, %bb.er, %bb.eo, %bb.ep, %bb.em, %bb.en, %bb.ek, %bb.el, %bb.ei, %bb.ej, %bb.eg, %bb.eh, %bb.ee, %bb.ef, %bb.ec, %bb.ed, %bb.ea, %bb.eb, %bb.dy, %bb.dz, %bb.cy, %bb.cz, %bb.cv, %bb.cw, %bb.cs, %bb.ct, %bb.bu, %bb.bv, %bb.br, %bb.bs, %bb.bo, %bb.bp, %bb.bl, %bb.bm, %bb.bi, %bb.bj, %bb.bf, %bb.bg, %bb.bc, %bb.bd, %bb.az, %bb.ba, %bb.aw, %bb.ax, %bb.at, %bb.au, %bb.aq, %bb.ar, %bb.o, %bb.p, %bb.lt, %bb.ls, %bb.lk, %bb.lj, %bb.li, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.kv, %bb.ks, %bb.kr, %bb.kq, %bb.km, %bb.kl, %bb.kk, %bb.kg, %bb.kf, %bb.ke, %bb.kc, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hq, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.dx, %bb.dw, %bb.dv, %bb.dq, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.db, %bb.da, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cc, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.s, %bb.h, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.28 = phi i32 [ %i.dlg, %bb.ly ], [ %.03898, %bb.lx ], [ %i.ay, %bb.g ], [ %i.bk, %bb.h ], [ %i.akn, %bb.dp ], [ %i.fe, %bb.o ], [ %i.fh, %bb.p ], [ %i.amd, %bb.du ], [ %i.bex, %.lr.ph4013 ], [ %i.hl, %bb.s ], [ %i.hu, %bb.t ], [ %i.id, %bb.u ], [ %i.cze, %.lr.ph4010 ], [ %i.kc, %bb.z ], [ %i.kf, %bb.aa ], [ %i.ki, %bb.ab ], [ %i.kl, %bb.ac ], [ %i.ko, %bb.ad ], [ %i.kr, %bb.ae ], [ %i.ku, %bb.af ], [ %i.kx, %bb.ag ], [ %i.la, %bb.ah ], [ %i.ld, %bb.ai ], [ %i.lg, %bb.aj ], [ %i.lj, %bb.ak ], [ %i.lm, %bb.al ], [ %i.lv, %bb.am ], [ %i.mh, %bb.an ], [ %i.mw, %bb.ao ], [ %i.ne, %bb.aq ], [ %i.nh, %bb.ar ], [ %i.pb, %bb.at ], [ %i.pe, %bb.au ], [ %i.qv, %bb.aw ], [ %i.qy, %bb.ax ], [ %i.rj, %bb.az ], [ %i.rm, %bb.ba ], [ %i.rx, %bb.bc ], [ %i.sa, %bb.bd ], [ %i.si, %bb.bf ], [ %i.sl, %bb.bg ], [ %i.sw, %bb.bi ], [ %i.sz, %bb.bj ], [ %i.tn, %bb.bl ], [ %i.tq, %bb.bm ], [ %i.ub, %bb.bo ], [ %i.ue, %bb.bp ], [ %i.up, %bb.br ], [ %i.us, %bb.bs ], [ %i.vd, %bb.bu ], [ %i.vg, %bb.bv ], [ %i.vp, %bb.bw ], [ %i.vy, %bb.bx ], [ %i.wk, %bb.by ], [ %i.ww, %bb.bz ], [ %i.xc, %bb.ca ], [ %i.dap, %.lr.ph4007 ], [ %i.yb, %bb.cc ], [ %i.dck, %.lr.ph4004 ], [ %i.yx, %bb.ce ], [ %i.zd, %bb.cf ], [ %i.zg, %bb.cg ], [ %i.zj, %bb.ch ], [ %i.zm, %bb.ci ], [ %i.zs, %bb.cj ], [ %i.zy, %bb.ck ], [ %i.aab, %bb.cl ], [ %i.aae, %bb.cm ], [ %i.aah, %bb.cn ], [ %i.abg, %bb.co ], [ %i.abp, %bb.cp ], [ %i.ack, %bb.cq ], [ %i.adb, %bb.cs ], [ %i.ade, %bb.ct ], [ %i.ady, %bb.cv ], [ %i.aeb, %bb.cw ], [ %i.aes, %bb.cy ], [ %i.aev, %bb.cz ], [ %i.afh, %bb.da ], [ %i.afq, %bb.db ], [ %i.dec, %.lr.ph4001 ], [ %i.ahd, %bb.dg ], [ %i.ahp, %bb.dh ], [ %i.ahy, %bb.di ], [ %i.aik, %bb.dj ], [ %i.aiz, %bb.dk ], [ %i.ajf, %bb.dl ], [ %i.dfg, %.lr.ph3998 ], [ %i.akv, %bb.dq ], [ %i.dhj, %.lr.ph3994 ], [ %i.amo, %bb.dv ], [ %i.amx, %bb.dw ], [ %i.ang, %bb.dx ], [ %i.anz, %bb.dz ], [ %i.anm, %bb.dy ], [ %i.aos, %bb.eb ], [ %i.aof, %bb.ea ], [ %i.api, %bb.ed ], [ %i.aov, %bb.ec ], [ %i.aqb, %bb.ef ], [ %i.apo, %bb.ee ], [ %i.aqu, %bb.eh ], [ %i.aqh, %bb.eg ], [ %i.ark, %bb.ej ], [ %i.aqx, %bb.ei ], [ %i.asd, %bb.el ], [ %i.arq, %bb.ek ], [ %i.asw, %bb.en ], [ %i.asj, %bb.em ], [ %i.atp, %bb.ep ], [ %i.atc, %bb.eo ], [ %i.aui, %bb.er ], [ %i.atv, %bb.eq ], [ %i.aur, %bb.es ], [ %i.ava, %bb.et ], [ %i.avj, %bb.eu ], [ %i.avm, %bb.ev ], [ %i.avp, %bb.ew ], [ %i.avs, %bb.ex ], [ %i.awl, %bb.ez ], [ %i.avy, %bb.ey ], [ %i.axe, %bb.fb ], [ %i.awr, %bb.fa ], [ %i.axu, %bb.fd ], [ %i.axh, %bb.fc ], [ %i.axx, %bb.fe ], [ %i.aya, %bb.ff ], [ %i.ayj, %bb.fg ], [ %i.aym, %bb.fh ], [ %i.ayp, %bb.fi ], [ %i.ayv, %bb.fj ], [ %i.azb, %bb.fk ], [ %i.azt, %bb.fl ], [ %i.bao, %bb.fm ], [ %i.bbj, %bb.fn ], [ %i.bce, %bb.fo ], [ %i.bcx, %bb.fq ], [ %i.bck, %bb.fp ], [ %i.bdq, %bb.fs ], [ %i.bdd, %bb.fr ], [ %i.bej, %bb.fu ], [ %i.bdw, %bb.ft ], [ %i.djz, %bb.lr ], [ %i.bfc, %bb.fw ], [ %i.bff, %bb.fx ], [ %i.bfi, %bb.fy ], [ %i.bfl, %bb.fz ], [ %i.bgc, %bb.ga ], [ %i.bgu, %bb.gc ], [ %i.bgf, %bb.gb ], [ %i.bjq, %bb.gd ], [ %i.bmm, %bb.ge ], [ %i.bpi, %bb.gf ], [ %i.bpl, %bb.gg ], [ %i.bpo, %bb.gh ], [ %i.bpu, %bb.gi ], [ %i.bqd, %bb.gj ], [ %i.bql, %bb.gk ], [ %i.bqy, %bb.gl ], [ %i.brb, %bb.gm ], [ %i.bsm, %bb.gn ], [ %i.bsu, %bb.go ], [ %i.btc, %bb.gp ], [ %i.btk, %bb.gq ], [ %i.bud, %bb.gs ], [ %i.btq, %bb.gr ], [ %i.buw, %bb.gu ], [ %i.buj, %bb.gt ], [ %i.bvm, %bb.gw ], [ %i.buz, %bb.gv ], [ %i.bwf, %bb.gy ], [ %i.bvs, %bb.gx ], [ %i.bwy, %bb.ha ], [ %i.bwl, %bb.gz ], [ %i.bxo, %bb.hc ], [ %i.bxb, %bb.hb ], [ %i.bxr, %bb.hd ], [ %i.bxu, %bb.he ], [ %i.byd, %bb.hf ], [ %i.byg, %bb.hg ], [ %i.byj, %bb.hh ], [ %i.byp, %bb.hi ], [ %i.byv, %bb.hj ], [ %i.bzu, %bb.hl ], [ %i.bzh, %bb.hk ], [ %i.cat, %bb.hn ], [ %i.cag, %bb.hm ], [ %i.cbp, %bb.hp ], [ %i.caz, %bb.ho ], [ %i.cby, %bb.hq ], [ %i.ccu, %bb.hs ], [ %i.cch, %bb.hr ], [ %i.cdq, %bb.hu ], [ %i.cdd, %bb.ht ], [ %i.cem, %bb.hw ], [ %i.cdw, %bb.hv ], [ %i.cev, %bb.hx ], [ %i.cfe, %bb.hy ], [ %i.cfn, %bb.hz ], [ %i.cft, %bb.ia ], [ %i.cfz, %bb.ib ], [ %i.cgs, %bb.id ], [ %i.cgf, %bb.ic ], [ %i.chl, %bb.if ], [ %i.cgy, %bb.ie ], [ %i.cib, %bb.ih ], [ %i.cho, %bb.ig ], [ %i.ciu, %bb.ij ], [ %i.cih, %bb.ii ], [ %i.cjn, %bb.il ], [ %i.cja, %bb.ik ], [ %i.ckd, %bb.in ], [ %i.cjq, %bb.im ], [ %i.clc, %bb.ip ], [ %i.ckp, %bb.io ], [ %i.cmb, %bb.ir ], [ %i.clo, %bb.iq ], [ %i.cmu, %bb.it ], [ %i.cmk, %bb.is ], [ %i.cnn, %bb.iv ], [ %i.cnd, %bb.iu ], [ %i.cnw, %bb.iw ], [ %i.col, %bb.ix ], [ %i.cou, %bb.iy ], [ %i.cpd, %bb.iz ], [ %i.cpp, %bb.ja ], [ %i.cqb, %bb.jb ], [ %i.cra, %bb.jd ], [ %i.cqn, %bb.jc ], [ %i.crz, %bb.jf ], [ %i.crm, %bb.je ], [ %i.css, %bb.jh ], [ %i.csi, %bb.jg ], [ %i.ctl, %bb.jj ], [ %i.ctb, %bb.ji ], [ %i.ctu, %bb.jk ], [ %i.cuj, %bb.jl ], [ %i.cus, %bb.jm ], [ %i.cvb, %bb.jn ], [ %i.cvn, %bb.jo ], [ %i.cvz, %bb.jp ], [ %i.cwc, %bb.jq ], [ %i.cwf, %bb.jr ], [ %i.cwi, %bb.js ], [ %i.cwl, %bb.jt ], [ %i.cwo, %bb.ju ], [ %i.cwr, %bb.jv ], [ %i.cxk, %bb.jx ], [ %i.cwx, %bb.jw ], [ %i.cyd, %bb.jz ], [ %i.cxq, %bb.jy ], [ %i.cyt, %bb.kb ], [ %i.cyg, %bb.ka ], [ %i.cyw, %bb.kc ], [ %.5, %.loopexit ], [ %i.czj, %bb.ke ], [ %i.czp, %bb.kf ], [ %i.czv, %bb.kg ], [ %i.dah, %bb.ki ], [ %i.czy, %bb.kh ], [ %i.fu, %.lr.ph4039 ], [ %i.dau, %bb.kk ], [ %i.dbf, %bb.kl ], [ %i.dbq, %bb.km ], [ %i.dcc, %bb.ko ], [ %i.dbt, %bb.kn ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %i.gi, %.lr.ph4035 ], [ %i.dcp, %bb.kq ], [ %i.dcx, %bb.kr ], [ %i.ddf, %bb.ks ], [ %i.ddr, %bb.ku ], [ %i.ddi, %bb.kt ], [ %i.ddu, %bb.kv ], [ %i.jo, %bb.y ], [ %i.dej, %bb.ky ], [ %.03898, %bb.kx ], [ %i.dep, %bb.la ], [ %i.xt, %.lr.ph4028 ], [ %i.dfk, %bb.lb ], [ %i.dfw, %bb.lc ], [ %i.dgi, %bb.ld ], [ %i.dgu, %bb.le ], [ %i.dgx, %bb.lf ], [ %i.ys, %.lr.ph4025 ], [ %i.dha, %bb.lg ], [ %i.dhr, %bb.li ], [ %i.dic, %bb.lj ], [ %i.din, %bb.lk ], [ %i.djc, %bb.lm ], [ %i.dit, %bb.ll ], [ %i.djg, %bb.lo ], [ %.03898, %bb.ln ], [ %i.agp, %bb.df ], [ %i.dkg, %bb.ls ], [ %i.dkm, %bb.lt ], [ %i.dkt, %bb.lv ], [ %i.dkp, %bb.lu ], [ %i.cd, %bb.i ], [ %i.fn, %bb.q ], [ %i.gb, %bb.r ], [ %i.ip, %bb.v ], [ %i.xl, %bb.cb ], [ %i.yk, %bb.cd ], [ %.03898, %bb.dc ], [ %i.ajo, %bb.dm ], [ %i.ale, %bb.dr ], [ %i.bep, %bb.fv ], [ %.03898, %bb.kd ], [ %.03898, %bb.kj ], [ %.03898, %bb.kp ], [ %.03898, %bb.kw ], [ %.03898, %.preheader ], [ %i.dha, %bb.lh ], [ %.03898, %.preheader3984 ], [ %i.dkw, %bb.lw ], [ %i.dla, %.lr.ph ] ; 2 uses
  %i.dlh = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.28)
  %.not3964 = icmp eq i32 %i.dlh, 0
  br i1 %.not3964, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %.loopexit3968
  %i.dli = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.j, ptr noundef %1, ptr noundef nonnull @ei_btmesh_unknown_payload, ptr noundef nonnull %0, i32 noundef %.28) ; 0 uses
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %.loopexit3968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint24(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %5, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.030 = phi i32 [ %i.b, %bb.b ], [ %5, %bb.a ]  ; 4 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.c = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.d = load i16, ptr %i.c, align 4
  %i.e = icmp eq i16 %i.d, %4
  br i1 %i.e, label %find_characteristic_id.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.f = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.g = load i16, ptr %i.f, align 8
  %i.h = icmp eq i16 %i.g, %4
  br i1 %i.h, label %find_characteristic_id.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_characteristic_idx.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.i = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.j = load i16, ptr %i.i, align 4
  %i.k = icmp eq i16 %i.j, %4
  br i1 %i.k, label %find_characteristic_id.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %indvars.iv.i.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i.3, %bb.h ] ; 7 uses
  %i.l = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.m = load i16, ptr %i.l, align 16
  %i.n = icmp eq i16 %i.m, %4
  br i1 %i.n, label %find_characteristic_id.exit.i, label %bb.d

find_characteristic_id.exit.i:                    ; preds = %bb.g, %bb.e, %bb.d, %bb.i
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.i ], [ %indvars.iv.next.i.i, %bb.d ], [ %indvars.iv.next.i.i.1, %bb.e ], [ %indvars.iv.next.i.i.2, %bb.g ] ; 2 uses
  %i.o = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %i.q = load i16, ptr %i.p, align 2              ; 4 uses
  %i.r = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.s = icmp eq i64 %i.r, 179
  br i1 %i.s, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.k
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.k ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %i.t = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i ; 2 uses
  %i.u = load i16, ptr %i.t, align 16
  %i.v = icmp eq i16 %i.u, %i.q
  br i1 %i.v, label %find_btmesh_property_characteristic_idx.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.j
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.w = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i ; 2 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = icmp eq i16 %i.x, %i.q
  br i1 %i.y, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.z = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 16
  %i.ab = icmp eq i16 %i.aa, %i.q
  br i1 %i.ab, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.ac = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = icmp eq i16 %i.ad, %i.q
  br i1 %i.ae, label %find_btmesh_property_characteristic_idx.exit, label %bb.k

bb.k:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

find_btmesh_property_characteristic_idx.exit:     ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %.lcssa = phi ptr [ %i.t, %.preheader.i ], [ %i.w, %.preheader.i.1 ], [ %i.z, %.preheader.i.2 ], [ %i.ac, %.preheader.i.3 ]
  %6 = trunc nuw nsw i64 %indvars.iv.i7.i.lcssa to i32 ; 2 uses
  switch i32 %6, label %bb.l [
    i32 -1, label %find_btmesh_property_characteristic_idx.exit.thread
    i32 89, label %7
  ]

bb.l:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %i.af = getelementptr i8, ptr %.lcssa, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = zext i16 %i.ag to i32
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.ah, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %6)
  br label %bb.m

7:                                                ; preds = %find_btmesh_property_characteristic_idx.exit
  %8 = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %.030, i32 noundef 0) ; 0 uses
  %9 = trunc i32 %.030 to i16
  br label %bb.m

find_btmesh_property_characteristic_idx.exit.thread: ; preds = %bb.f, %bb.j, %find_characteristic_id.exit.i, %find_btmesh_property_characteristic_idx.exit
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %.030, i32 noundef 0) ; 0 uses
  %i.ak = trunc i32 %.030 to i16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %7, %find_btmesh_property_characteristic_idx.exit.thread
  %.0 = phi i16 [ %i.ag, %bb.l ], [ %9, %7 ], [ %i.ak, %find_btmesh_property_characteristic_idx.exit.thread ]
  ret i16 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2, 262144) i32 @dissect_sensor_cadence(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 4, 7) %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %4, 0
  br i1 %i.a, label %.preheader, label %.preheader110

.preheader.1:                                     ; preds = %.preheader
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.b = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.c = load i16, ptr %i.b, align 4
  %i.d = icmp eq i16 %i.c, %3
  br i1 %i.d, label %find_characteristic_id.exit.i, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.e = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.f = load i16, ptr %i.e, align 8
  %i.g = icmp eq i16 %i.f, %3
  br i1 %i.g, label %find_characteristic_id.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader.2
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_length.exit.thread, label %.preheader.3

.preheader.3:                                     ; preds = %bb.b
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.i = load i16, ptr %i.h, align 4
  %i.j = icmp eq i16 %i.i, %3
  br i1 %i.j, label %find_characteristic_id.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %bb.c ], [ 0, %bb.a ] ; 7 uses
  %i.k = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.l = load i16, ptr %i.k, align 16
  %i.m = icmp eq i16 %i.l, %3
  br i1 %i.m, label %find_characteristic_id.exit.i, label %.preheader.1

find_characteristic_id.exit.i:                    ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %.preheader ], [ %indvars.iv.next.i.i, %.preheader.1 ], [ %indvars.iv.next.i.i.1, %.preheader.2 ], [ %indvars.iv.next.i.i.2, %.preheader.3 ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.o = getelementptr i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2              ; 4 uses
  %i.q = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.r = icmp eq i64 %i.q, 179
  br i1 %i.r, label %find_btmesh_property_length.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.e
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.e ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %i.s = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i ; 2 uses
  %i.t = load i16, ptr %i.s, align 16
  %i.u = icmp eq i16 %i.t, %i.p
  br i1 %i.u, label %find_btmesh_property_length.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_length.exit.thread, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.d
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.v = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i ; 2 uses
  %i.w = load i16, ptr %i.v, align 8
  %i.x = icmp eq i16 %i.w, %i.p
  br i1 %i.x, label %find_btmesh_property_length.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.y = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1 ; 2 uses
  %i.z = load i16, ptr %i.y, align 16
  %i.aa = icmp eq i16 %i.z, %i.p
  br i1 %i.aa, label %find_btmesh_property_length.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.ab = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = icmp eq i16 %i.ac, %i.p
  br i1 %i.ad, label %find_btmesh_property_length.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

find_btmesh_property_length.exit:                 ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %.lcssa = phi ptr [ %i.s, %.preheader.i ], [ %i.v, %.preheader.i.1 ], [ %i.y, %.preheader.i.2 ], [ %i.ab, %.preheader.i.3 ]
  %i.ae = getelementptr i8, ptr %.lcssa, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = and i64 %indvars.iv.i7.i.lcssa, 2305843009213693951
  %i.ai = icmp eq i64 %i.ah, 89
  br i1 %i.ai, label %find_btmesh_property_length.exit.thread, label %.thread

.preheader110.1:                                  ; preds = %.preheader110
  %indvars.iv.next.i.i91 = or disjoint i64 %indvars.iv.i.i90, 1 ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i91
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = icmp eq i16 %i.ak, %3
  br i1 %i.al, label %find_characteristic_id.exit.i94, label %.preheader110.2

.preheader110.2:                                  ; preds = %.preheader110.1
  %indvars.iv.next.i.i91.1 = or disjoint i64 %indvars.iv.i.i90, 2 ; 2 uses
  %i.am = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i91.1
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = icmp eq i16 %i.an, %3
  br i1 %i.ao, label %find_characteristic_id.exit.i94, label %bb.f

bb.f:                                             ; preds = %.preheader110.2
  %.not.i.i92.2 = icmp eq i64 %indvars.iv.i.i90, 176
  br i1 %.not.i.i92.2, label %find_btmesh_property_length.exit100.thread, label %.preheader110.3

.preheader110.3:                                  ; preds = %bb.f
  %indvars.iv.next.i.i91.2 = or disjoint i64 %indvars.iv.i.i90, 3 ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i91.2
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = icmp eq i16 %i.aq, %3
  br i1 %i.ar, label %find_characteristic_id.exit.i94, label %bb.g

bb.g:                                             ; preds = %.preheader110.3
  %indvars.iv.next.i.i91.3 = add nuw nsw i64 %indvars.iv.i.i90, 4
  br label %.preheader110

.preheader110:                                    ; preds = %bb.a, %bb.g
  %indvars.iv.i.i90 = phi i64 [ %indvars.iv.next.i.i91.3, %bb.g ], [ 0, %bb.a ] ; 7 uses
  %i.as = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i90
  %i.at = load i16, ptr %i.as, align 16
  %i.au = icmp eq i16 %i.at, %3
  br i1 %i.au, label %find_characteristic_id.exit.i94, label %.preheader110.1

find_characteristic_id.exit.i94:                  ; preds = %.preheader110.3, %.preheader110.2, %.preheader110.1, %.preheader110
  %indvars.iv.i.i90.lcssa = phi i64 [ %indvars.iv.i.i90, %.preheader110 ], [ %indvars.iv.next.i.i91, %.preheader110.1 ], [ %indvars.iv.next.i.i91.1, %.preheader110.2 ], [ %indvars.iv.next.i.i91.2, %.preheader110.3 ] ; 2 uses
  %i.av = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i90.lcssa
  %i.aw = getelementptr i8, ptr %i.av, i64 2
  %i.ax = load i16, ptr %i.aw, align 2            ; 4 uses
  %i.ay = and i64 %indvars.iv.i.i90.lcssa, 4611686018427387903
  %i.az = icmp eq i64 %i.ay, 179
  br i1 %i.az, label %find_btmesh_property_length.exit100.thread, label %.preheader.i95

.preheader.i95:                                   ; preds = %find_characteristic_id.exit.i94, %bb.i
  %indvars.iv.i7.i96 = phi i64 [ %indvars.iv.next.i8.i97.3, %bb.i ], [ 0, %find_characteristic_id.exit.i94 ] ; 7 uses
  %i.ba = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i96 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 16
  %i.bc = icmp eq i16 %i.bb, %i.ax
  br i1 %i.bc, label %find_btmesh_property_length.exit100, label %bb.h

bb.h:                                             ; preds = %.preheader.i95
  %.not.i9.i98 = icmp eq i64 %indvars.iv.i7.i96, 88
  br i1 %.not.i9.i98, label %find_btmesh_property_length.exit100.thread, label %.preheader.i95.1

.preheader.i95.1:                                 ; preds = %bb.h
  %indvars.iv.next.i8.i97 = or disjoint i64 %indvars.iv.i7.i96, 1 ; 2 uses
  %i.bd = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i97 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = icmp eq i16 %i.be, %i.ax
  br i1 %i.bf, label %find_btmesh_property_length.exit100, label %.preheader.i95.2

.preheader.i95.2:                                 ; preds = %.preheader.i95.1
  %indvars.iv.next.i8.i97.1 = or disjoint i64 %indvars.iv.i7.i96, 2 ; 2 uses
  %i.bg = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i97.1 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 16
  %i.bi = icmp eq i16 %i.bh, %i.ax
  br i1 %i.bi, label %find_btmesh_property_length.exit100, label %.preheader.i95.3

.preheader.i95.3:                                 ; preds = %.preheader.i95.2
  %indvars.iv.next.i8.i97.2 = or disjoint i64 %indvars.iv.i7.i96, 3 ; 2 uses
  %i.bj = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i97.2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = icmp eq i16 %i.bk, %i.ax
  br i1 %i.bl, label %find_btmesh_property_length.exit100, label %bb.i

bb.i:                                             ; preds = %.preheader.i95.3
  %indvars.iv.next.i8.i97.3 = add nuw nsw i64 %indvars.iv.i7.i96, 4
  br label %.preheader.i95

find_btmesh_property_length.exit100:              ; preds = %.preheader.i95.3, %.preheader.i95.2, %.preheader.i95.1, %.preheader.i95
  %indvars.iv.i7.i96.lcssa = phi i64 [ %indvars.iv.i7.i96, %.preheader.i95 ], [ %indvars.iv.next.i8.i97, %.preheader.i95.1 ], [ %indvars.iv.next.i8.i97.1, %.preheader.i95.2 ], [ %indvars.iv.next.i8.i97.2, %.preheader.i95.3 ]
  %.lcssa172 = phi ptr [ %i.ba, %.preheader.i95 ], [ %i.bd, %.preheader.i95.1 ], [ %i.bg, %.preheader.i95.2 ], [ %i.bj, %.preheader.i95.3 ]
  %i.bm = getelementptr i8, ptr %.lcssa172, i64 2
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = and i64 %indvars.iv.i7.i96.lcssa, 2305843009213693951
  %i.bq = icmp eq i64 %i.bp, 89
  br i1 %i.bq, label %find_btmesh_property_length.exit100.thread, label %.thread

find_btmesh_property_length.exit100.thread:       ; preds = %bb.f, %bb.h, %find_characteristic_id.exit.i94, %find_btmesh_property_length.exit100
  %i.br = add nuw nsw i32 %2, 4
  %i.bs = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.br) ; 2 uses
  %i.bt = and i32 %i.bs, 1
  %.not = icmp eq i32 %i.bt, 0
  %i.bu = lshr i32 %i.bs, 1
  %spec.select89 = select i1 %.not, i32 -1, i32 %i.bu
  br label %.thread

find_btmesh_property_length.exit.thread:          ; preds = %bb.b, %bb.d, %find_characteristic_id.exit.i, %find_btmesh_property_length.exit
  %i.bv = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.bw = and i32 %i.bv, 3
  %.not108 = icmp eq i32 %i.bw, 1
  %i.bx = lshr i32 %i.bv, 2                       ; 2 uses
  br i1 %.not108, label %.thread, label %bb.l

.thread:                                          ; preds = %find_btmesh_property_length.exit100.thread, %find_btmesh_property_length.exit, %find_btmesh_property_length.exit100, %find_btmesh_property_length.exit.thread
  %. = phi i16 [ %3, %find_btmesh_property_length.exit.thread ], [ -1, %find_btmesh_property_length.exit100.thread ], [ %3, %find_btmesh_property_length.exit ], [ -1, %find_btmesh_property_length.exit100 ] ; 2 uses
  %.0107 = phi i32 [ %i.bx, %find_btmesh_property_length.exit.thread ], [ %spec.select89, %find_btmesh_property_length.exit100.thread ], [ %i.ag, %find_btmesh_property_length.exit ], [ %i.bo, %find_btmesh_property_length.exit100 ] ; 3 uses
  %.1106 = phi i32 [ %i.bx, %find_btmesh_property_length.exit.thread ], [ 2, %find_btmesh_property_length.exit100.thread ], [ %i.ag, %find_btmesh_property_length.exit ], [ 2, %find_btmesh_property_length.exit100 ] ; 2 uses
  %i.by = getelementptr i8, ptr %5, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.ca, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %., i32 noundef %.1106)
  %i.cc = zext i16 %i.cb to i32
  %i.cd = add nuw nsw i32 %2, %i.cc               ; 2 uses
  %i.ce = load ptr, ptr %5, align 8
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.cf, ptr noundef %1, i32 noundef %i.cd, i16 noundef zeroext %., i32 noundef %.1106)
  %i.ch = zext i16 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.cd, %i.ch            ; 2 uses
  %i.cj = getelementptr i8, ptr %5, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cl, ptr noundef nonnull %1, i32 noundef %i.ci, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cn = add nuw nsw i32 %i.ci, 1                ; 5 uses
  %.not87 = icmp eq i32 %.0107, -1
  br i1 %.not87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.co = getelementptr i8, ptr %5, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.cq, ptr noundef %1, i32 noundef %i.cn, i16 noundef zeroext %3, i32 noundef %.0107)
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cn, %i.cs            ; 2 uses
  %i.cu = getelementptr i8, ptr %5, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.cw, ptr noundef %1, i32 noundef %i.ct, i16 noundef zeroext %3, i32 noundef %.0107)
  br label %bb.m

bb.k:                                             ; preds = %.thread
  %i.cy = getelementptr i8, ptr %5, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.cn)
  %i.dc = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.da, ptr noundef %1, i32 noundef %i.cn, i16 noundef zeroext %3, i32 noundef %i.db)
  br label %bb.m

bb.l:                                             ; preds = %find_btmesh_property_length.exit.thread
  %i.dd = getelementptr i8, ptr %5, i64 40
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2)
  %i.dh = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.df, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %i.dg)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink158 = phi i16 [ %i.cx, %bb.j ], [ %i.dc, %bb.k ], [ %i.dh, %bb.l ]
  %.sink = phi i32 [ %i.ct, %bb.j ], [ %i.cn, %bb.k ], [ %2, %bb.l ]
  %i.di = zext i16 %.sink158 to i32
  %i.dj = add nuw nsw i32 %.sink, %i.di
  %i.dk = sub nsw i32 %i.dj, %2
  ret i32 %i.dk
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_columns_raw_value(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 3, 6) %2, i16 noundef zeroext %3, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(address_is_null) %.8.val) unnamed_addr #0 {
bb.a:
  br label %bb.g

bb.b:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.a = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp eq i16 %i.b, %3
  br i1 %i.c, label %find_characteristic_id.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.d = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp eq i16 %i.e, %3
  br i1 %i.f, label %find_characteristic_id.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_characteristic_idx.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.g = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, %3
  br i1 %i.i, label %find_characteristic_id.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.3, %bb.f ] ; 7 uses
  %i.j = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.k = load i16, ptr %i.j, align 16
  %i.l = icmp eq i16 %i.k, %3
  br i1 %i.l, label %find_characteristic_id.exit.i, label %bb.b

find_characteristic_id.exit.i:                    ; preds = %bb.e, %bb.c, %bb.b, %bb.g
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.g ], [ %indvars.iv.next.i.i, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.c ], [ %indvars.iv.next.i.i.2, %bb.e ] ; 2 uses
  %i.m = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.n = getelementptr i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2              ; 4 uses
  %i.p = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.q = icmp eq i64 %i.p, 179
  br i1 %i.q, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.i
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.i ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %i.r = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i
  %i.s = load i16, ptr %i.r, align 16
  %i.t = icmp eq i16 %i.s, %i.o
  br i1 %i.t, label %.split.loop.exit.i11.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.h
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.u = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i
  %i.v = load i16, ptr %i.u, align 8
  %i.w = icmp eq i16 %i.v, %i.o
  br i1 %i.w, label %.split.loop.exit.i11.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.x = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1
  %i.y = load i16, ptr %i.x, align 16
  %i.z = icmp eq i16 %i.y, %i.o
  br i1 %i.z, label %.split.loop.exit.i11.i, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.aa = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp eq i16 %i.ab, %i.o
  br i1 %i.ac, label %.split.loop.exit.i11.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

.split.loop.exit.i11.i:                           ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %i.ad = trunc nuw nsw i64 %indvars.iv.i7.i.lcssa to i32
  br label %find_btmesh_property_characteristic_idx.exit

find_btmesh_property_characteristic_idx.exit:     ; preds = %bb.d, %bb.h, %find_characteristic_id.exit.i, %.split.loop.exit.i11.i
  %.0.i = phi i32 [ -1, %find_characteristic_id.exit.i ], [ -1, %bb.h ], [ %i.ad, %.split.loop.exit.i11.i ], [ -1, %bb.d ] ; 3 uses
  %i.ae = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.af = icmp ne ptr %.8.val, null               ; 4 uses
  %i.ag = icmp ugt i32 %i.ae, 1
  %or.cond = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = zext i1 %or.cond to i32
  %spec.select = lshr i32 %i.ae, %i.ah            ; 3 uses
  %.not = icmp eq i32 %.0.i, -1
  br i1 %.not, label %find_characteristic_idx.exit.thread, label %bb.j

bb.j:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %i.ai = sext i32 %.0.i to i64
  %i.aj = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr %.0.val, align 4
  %4 = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.an, ptr noundef %1, i32 noundef %2, i16 noundef zeroext -2, i32 noundef 2)
  %5 = zext i16 %4 to i32
  %i.ao = add nuw nsw i32 %2, %5                  ; 3 uses
  br i1 %i.af, label %bb.l, label %find_column_properties_idx.exit

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %.8.val, align 4
  %6 = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.ap, ptr noundef %1, i32 noundef %i.ao, i16 noundef zeroext -2, i32 noundef 2)
  %7 = zext i16 %6 to i32
  %i.aq = add nuw nsw i32 %i.ao, %7
  br label %find_column_properties_idx.exit

bb.m:                                             ; preds = %bb.j
  %switch.tableidx = add i32 %.0.i, -29           ; 3 uses
  %i.ar = icmp ult i32 %switch.tableidx, 44
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 10376640987137, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond39 = select i1 %i.ar, i1 %switch.lobit, i1 false
  br i1 %or.cond39, label %switch.lookup, label %find_characteristic_idx.exit.thread

switch.lookup:                                    ; preds = %bb.m
  %i.as = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_btmesh_property_idx, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.at = getelementptr [6 x i8], ptr @btmesh_column_properties, i64 %switch.ext
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 2            ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %switch.lookup
  %indvars.iv.i = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.i.3, %bb.s ] ; 7 uses
  %i.aw = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 16
  %i.ay = icmp eq i16 %i.ax, %i.av
  br i1 %i.ay, label %find_characteristic_idx.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq i64 %indvars.iv.i, 88
  br i1 %.not.i, label %find_characteristic_idx.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i ; 2 uses
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = icmp eq i16 %i.ba, %i.av
  br i1 %i.bb, label %find_characteristic_idx.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bc = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 16
  %i.be = icmp eq i16 %i.bd, %i.av
  br i1 %i.be, label %find_characteristic_idx.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bf = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = icmp eq i16 %i.bg, %i.av
  br i1 %i.bh, label %find_characteristic_idx.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.n

find_characteristic_idx.exit:                     ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.n ], [ %indvars.iv.next.i, %bb.p ], [ %indvars.iv.next.i.1, %bb.q ], [ %indvars.iv.next.i.2, %bb.r ]
  %.lcssa = phi ptr [ %i.aw, %bb.n ], [ %i.az, %bb.p ], [ %i.bc, %bb.q ], [ %i.bf, %bb.r ] ; 3 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32 ; 2 uses
  %i.bj = getelementptr i8, ptr %.lcssa, i64 2
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32                   ; 6 uses
  %i.bm = getelementptr i8, ptr %.lcssa, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not87 = icmp eq ptr %i.bn, null
  br i1 %.not87, label %find_characteristic_idx.exit.thread, label %bb.t

bb.t:                                             ; preds = %find_characteristic_idx.exit
  %i.bo = getelementptr i8, ptr %.lcssa, i64 16
  %i.bp = load i8, ptr %i.bo, align 8
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %find_characteristic_idx.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.br = load i32, ptr %.0.val, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.br, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.bl, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %i.bi)
  %i.bt = add nuw nsw i32 %2, %i.bl               ; 4 uses
  br i1 %i.af, label %bb.v, label %find_column_properties_idx.exit

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %.8.val, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bu, ptr noundef nonnull %1, i32 noundef %i.bt, i32 noundef %i.bl, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %i.bt, i32 noundef %i.bi)
  %i.bw = add nuw nsw i32 %i.bt, %i.bl
  br label %find_column_properties_idx.exit

find_characteristic_idx.exit.thread:              ; preds = %bb.o, %bb.m, %find_btmesh_property_characteristic_idx.exit, %bb.t, %find_characteristic_idx.exit
  %.3.ph = phi i32 [ %i.bl, %find_characteristic_idx.exit ], [ %i.bl, %bb.t ], [ %spec.select, %bb.m ], [ %spec.select, %find_btmesh_property_characteristic_idx.exit ], [ %spec.select, %bb.o ] ; 4 uses
  %i.bx = load i32, ptr %.0.val, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bx, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.3.ph, i32 noundef 0) ; 0 uses
  %i.bz = add i32 %.3.ph, %2                      ; 3 uses
  br i1 %i.af, label %bb.w, label %find_column_properties_idx.exit

bb.w:                                             ; preds = %find_characteristic_idx.exit.thread
  %i.ca = load i32, ptr %.8.val, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ca, ptr noundef nonnull %1, i32 noundef %i.bz, i32 noundef %.3.ph, i32 noundef 0) ; 0 uses
  %i.cc = add i32 %i.bz, %.3.ph
  br label %find_column_properties_idx.exit

find_column_properties_idx.exit:                  ; preds = %bb.k, %bb.l, %bb.v, %bb.u, %find_characteristic_idx.exit.thread, %bb.w
  %.375 = phi i32 [ %i.cc, %bb.w ], [ %i.bz, %find_characteristic_idx.exit.thread ], [ %i.aq, %bb.l ], [ %i.ao, %bb.k ], [ %i.bw, %bb.v ], [ %i.bt, %bb.u ]
  %i.cd = sub i32 %.375, %2
  ret i32 %i.cd
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_property_raw_value_entry(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  br label %bb.g

bb.b:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.a = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp eq i16 %i.b, %3
  br i1 %i.c, label %find_characteristic_id.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.d = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp eq i16 %i.e, %3
  br i1 %i.f, label %find_characteristic_id.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_characteristic_idx.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.g = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, %3
  br i1 %i.i, label %find_characteristic_id.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.3, %bb.f ] ; 7 uses
  %i.j = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.k = load i16, ptr %i.j, align 16
  %i.l = icmp eq i16 %i.k, %3
  br i1 %i.l, label %find_characteristic_id.exit.i, label %bb.b

find_characteristic_id.exit.i:                    ; preds = %bb.e, %bb.c, %bb.b, %bb.g
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.g ], [ %indvars.iv.next.i.i, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.c ], [ %indvars.iv.next.i.i.2, %bb.e ] ; 2 uses
  %i.m = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.n = getelementptr i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2              ; 4 uses
  %i.p = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.q = icmp eq i64 %i.p, 179
  br i1 %i.q, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.i
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.i ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %i.r = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i ; 2 uses
  %i.s = load i16, ptr %i.r, align 16
  %i.t = icmp eq i16 %i.s, %i.o
  br i1 %i.t, label %find_btmesh_property_characteristic_idx.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.h
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.u = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = icmp eq i16 %i.v, %i.o
  br i1 %i.w, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.x = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1 ; 2 uses
  %i.y = load i16, ptr %i.x, align 16
  %i.z = icmp eq i16 %i.y, %i.o
  br i1 %i.z, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.aa = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp eq i16 %i.ab, %i.o
  br i1 %i.ac, label %find_btmesh_property_characteristic_idx.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

find_btmesh_property_characteristic_idx.exit.thread: ; preds = %bb.d, %bb.h, %find_characteristic_id.exit.i
  %i.ad = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2)
  br label %find_characteristic_idx.exit.thread

find_btmesh_property_characteristic_idx.exit:     ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %.lcssa158 = phi ptr [ %i.r, %.preheader.i ], [ %i.u, %.preheader.i.1 ], [ %i.x, %.preheader.i.2 ], [ %i.aa, %.preheader.i.3 ]
  %i.ae = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.af = getelementptr i8, ptr %.lcssa158, i64 16
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %6, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef -1)
  %i.ai = zext i16 %7 to i32
  %8 = add i32 %2, %i.ai
  br label %find_column_properties_idx.exit

bb.k:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %i.aj = trunc nuw nsw i64 %indvars.iv.i7.i.lcssa to i32
  %switch.tableidx = add i32 %i.aj, -29           ; 3 uses
  %i.ak = icmp ult i32 %switch.tableidx, 44
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 10376640987137, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.ak, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %find_characteristic_idx.exit.thread

switch.lookup:                                    ; preds = %bb.k
  %i.al = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_btmesh_property_idx, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.am = getelementptr [6 x i8], ptr @btmesh_column_properties, i64 %switch.ext ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2            ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %switch.lookup
  %indvars.iv.i = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.i.3, %bb.q ] ; 7 uses
  %i.ap = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 16
  %i.ar = icmp eq i16 %i.aq, %i.ao
  br i1 %i.ar, label %find_characteristic_idx.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i64 %indvars.iv.i, 88
  br i1 %.not.i, label %find_characteristic_idx.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i ; 2 uses
  %i.at = load i16, ptr %i.as, align 8
  %i.au = icmp eq i16 %i.at, %i.ao
  br i1 %i.au, label %find_characteristic_idx.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.av = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 16
  %i.ax = icmp eq i16 %i.aw, %i.ao
  br i1 %i.ax, label %find_characteristic_idx.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ay = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = icmp eq i16 %i.az, %i.ao
  br i1 %i.ba, label %find_characteristic_idx.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.l

find_characteristic_idx.exit:                     ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.l ], [ %indvars.iv.next.i, %bb.n ], [ %indvars.iv.next.i.1, %bb.o ], [ %indvars.iv.next.i.2, %bb.p ]
  %.lcssa155 = phi ptr [ %i.ap, %bb.l ], [ %i.as, %bb.n ], [ %i.av, %bb.o ], [ %i.ay, %bb.p ] ; 3 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32 ; 2 uses
  %i.bc = getelementptr i8, ptr %.lcssa155, i64 2
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = zext i16 %i.bd to i32                   ; 6 uses
  %i.bf = getelementptr i8, ptr %.lcssa155, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not91 = icmp eq ptr %i.bg, null
  br i1 %.not91, label %find_characteristic_idx.exit.thread, label %bb.r

bb.r:                                             ; preds = %find_characteristic_idx.exit
  %i.bh = getelementptr i8, ptr %.lcssa155, i64 16
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %find_characteristic_idx.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %4, align 8
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bl, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.be, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %i.bb)
  %i.bn = add i32 %2, %i.be                       ; 3 uses
  %i.bo = getelementptr i8, ptr %4, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bq, ptr noundef nonnull %1, i32 noundef %i.bn, i32 noundef %i.be, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.bb)
  %i.bs = add i32 %i.bn, %i.be                    ; 6 uses
  %i.bt = getelementptr i8, ptr %i.am, i64 4
  %i.bu = load i16, ptr %i.bt, align 2            ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %bb.s
  %indvars.iv.i96 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i97.3, %bb.y ] ; 7 uses
  %i.bv = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i96 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 16
  %i.bx = icmp eq i16 %i.bw, %i.bu
  br i1 %i.bx, label %find_characteristic_idx.exit101, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i98 = icmp eq i64 %indvars.iv.i96, 88
  br i1 %.not.i98, label %find_characteristic_idx.exit101.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i97 = or disjoint i64 %indvars.iv.i96, 1 ; 2 uses
  %i.by = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i97 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8
  %i.ca = icmp eq i16 %i.bz, %i.bu
  br i1 %i.ca, label %find_characteristic_idx.exit101, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i97.1 = or disjoint i64 %indvars.iv.i96, 2 ; 2 uses
  %i.cb = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i97.1 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 16
  %i.cd = icmp eq i16 %i.cc, %i.bu
  br i1 %i.cd, label %find_characteristic_idx.exit101, label %bb.x

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i97.2 = or disjoint i64 %indvars.iv.i96, 3 ; 2 uses
  %i.ce = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i97.2 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = icmp eq i16 %i.cf, %i.bu
  br i1 %i.cg, label %find_characteristic_idx.exit101, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i97.3 = add nuw nsw i64 %indvars.iv.i96, 4
  br label %bb.t

find_characteristic_idx.exit101:                  ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %indvars.iv.i96.lcssa = phi i64 [ %indvars.iv.i96, %bb.t ], [ %indvars.iv.next.i97, %bb.v ], [ %indvars.iv.next.i97.1, %bb.w ], [ %indvars.iv.next.i97.2, %bb.x ]
  %.lcssa.a = phi ptr [ %i.bv, %bb.t ], [ %i.by, %bb.v ], [ %i.cb, %bb.w ], [ %i.ce, %bb.x ] ; 3 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.i96.lcssa to i32
  %i.ci = getelementptr i8, ptr %.lcssa.a, i64 2
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = getelementptr i8, ptr %.lcssa.a, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %.not94 = icmp eq ptr %i.cm, null
  br i1 %.not94, label %find_characteristic_idx.exit101.thread, label %bb.z

bb.z:                                             ; preds = %find_characteristic_idx.exit101
  %i.cn = getelementptr i8, ptr %.lcssa.a, i64 16
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.aa, label %find_characteristic_idx.exit101.thread

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cs, ptr noundef nonnull %1, i32 noundef %i.bs, i32 noundef %i.ck, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %i.bs, i32 noundef %i.ch)
  br label %bb.ab

find_characteristic_idx.exit101.thread:           ; preds = %bb.u, %bb.z, %find_characteristic_idx.exit101
  %i.cu = getelementptr i8, ptr %4, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.bs)
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cw, ptr noundef nonnull %1, i32 noundef %i.bs, i32 noundef %i.cx, i32 noundef 0) ; 0 uses
  %i.cz = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.bs)
  br label %bb.ab

bb.ab:                                            ; preds = %find_characteristic_idx.exit101.thread, %bb.aa
  %.pn = phi i32 [ %i.ck, %bb.aa ], [ %i.cz, %find_characteristic_idx.exit101.thread ]
  %.079 = add i32 %.pn, %i.bs
  br label %find_column_properties_idx.exit

find_characteristic_idx.exit.thread:              ; preds = %bb.m, %bb.k, %find_btmesh_property_characteristic_idx.exit.thread, %bb.r, %find_characteristic_idx.exit
  %.2.ph = phi i32 [ %i.be, %find_characteristic_idx.exit ], [ %i.be, %bb.r ], [ %i.ae, %bb.k ], [ %i.ad, %find_btmesh_property_characteristic_idx.exit.thread ], [ %i.ae, %bb.m ] ; 2 uses
  %i.da = load ptr, ptr %4, align 8
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.db, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.2.ph, i32 noundef 0) ; 0 uses
  %i.dd = add i32 %.2.ph, %2
  br label %find_column_properties_idx.exit

find_column_properties_idx.exit:                  ; preds = %bb.j, %bb.ab, %find_characteristic_idx.exit.thread
  %.4 = phi i32 [ %i.dd, %find_characteristic_idx.exit.thread ], [ %8, %bb.j ], [ %.079, %bb.ab ]
  %i.de = sub i32 %.4, %2
  ret i32 %i.de
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_btmesh_property_idx(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, -1) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %3, 89
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.l, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.f, i32 noundef -2147483648) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.q, null
  br i1 %.not5.i, label %.critedge, label %.critedge.sink.split

bb.g:                                             ; preds = %bb.c
  %switch.tableidx = add nsw i32 %3, -29          ; 3 uses
  %i.r = icmp ult i32 %switch.tableidx, 44
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 10376640987137, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.r, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.g
  %i.s = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_btmesh_property_idx, i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.t = getelementptr [6 x i8], ptr @btmesh_column_properties, i64 %switch.ext ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 2
  %i.v = load i16, ptr %i.u, align 2              ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %switch.lookup
  %indvars.iv.i = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.i.3, %bb.m ] ; 6 uses
  %i.w = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %i.x = load i16, ptr %i.w, align 16
  %i.y = icmp eq i16 %i.x, %i.v
  br i1 %i.y, label %find_characteristic_idx.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i69 = icmp eq i64 %indvars.iv.i, 88
  br i1 %.not.i69, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp eq i16 %i.ab, %i.v
  br i1 %i.ac, label %find_characteristic_idx.exit.split.loop.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %i.af = load i16, ptr %i.ae, align 16
  %i.ag = icmp eq i16 %i.af, %i.v
  br i1 %i.ag, label %find_characteristic_idx.exit.split.loop.exit12, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 72
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = icmp eq i16 %i.aj, %i.v
  br i1 %i.ak, label %find_characteristic_idx.exit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.h

find_characteristic_idx.exit.split.loop.exit:     ; preds = %bb.l
  %i.al = getelementptr i8, ptr %i.ah, i64 72
  br label %find_characteristic_idx.exit

find_characteristic_idx.exit.split.loop.exit12:   ; preds = %bb.k
  %i.am = getelementptr i8, ptr %i.ad, i64 48
  br label %find_characteristic_idx.exit

find_characteristic_idx.exit.split.loop.exit14:   ; preds = %bb.j
  %i.an = getelementptr i8, ptr %i.z, i64 24
  br label %find_characteristic_idx.exit

find_characteristic_idx.exit:                     ; preds = %bb.h, %find_characteristic_idx.exit.split.loop.exit14, %find_characteristic_idx.exit.split.loop.exit12, %find_characteristic_idx.exit.split.loop.exit
  %.lcssa10 = phi ptr [ %i.an, %find_characteristic_idx.exit.split.loop.exit14 ], [ %i.am, %find_characteristic_idx.exit.split.loop.exit12 ], [ %i.al, %find_characteristic_idx.exit.split.loop.exit ], [ %i.w, %bb.h ] ; 3 uses
  %i.ao = getelementptr i8, ptr %.lcssa10, i64 2
  %i.ap = getelementptr i8, ptr %.lcssa10, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.critedge, label %bb.n

bb.n:                                             ; preds = %find_characteristic_idx.exit
  %i.as = getelementptr i8, ptr %.lcssa10, i64 16
  %i.at = load i8, ptr %i.as, align 8
  %.not67 = icmp eq i8 %i.at, 0
  br i1 %.not67, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr i8, ptr %i.t, i64 4
  %i.av = load i16, ptr %i.au, align 2            ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  %indvars.iv.i70 = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i71.3, %bb.u ] ; 6 uses
  %i.aw = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 16
  %i.ay = icmp eq i16 %i.ax, %i.av
  br i1 %i.ay, label %find_characteristic_idx.exit75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i72 = icmp eq i64 %indvars.iv.i70, 88
  br i1 %.not.i72, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = icmp eq i16 %i.bb, %i.av
  br i1 %i.bc, label %find_characteristic_idx.exit75.split.loop.exit23, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %i.bf = load i16, ptr %i.be, align 16
  %i.bg = icmp eq i16 %i.bf, %i.av
  br i1 %i.bg, label %find_characteristic_idx.exit75.split.loop.exit21, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 72
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = icmp eq i16 %i.bj, %i.av
  br i1 %i.bk, label %find_characteristic_idx.exit75.split.loop.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i70, 4
  br label %bb.p

find_characteristic_idx.exit75.split.loop.exit:   ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %i.bh, i64 72
  br label %find_characteristic_idx.exit75

find_characteristic_idx.exit75.split.loop.exit21: ; preds = %bb.s
  %i.bm = getelementptr i8, ptr %i.bd, i64 48
  br label %find_characteristic_idx.exit75

find_characteristic_idx.exit75.split.loop.exit23: ; preds = %bb.r
  %i.bn = getelementptr i8, ptr %i.az, i64 24
  br label %find_characteristic_idx.exit75

find_characteristic_idx.exit75:                   ; preds = %bb.p, %find_characteristic_idx.exit75.split.loop.exit23, %find_characteristic_idx.exit75.split.loop.exit21, %find_characteristic_idx.exit75.split.loop.exit
  %.lcssa = phi ptr [ %i.bn, %find_characteristic_idx.exit75.split.loop.exit23 ], [ %i.bm, %find_characteristic_idx.exit75.split.loop.exit21 ], [ %i.bl, %find_characteristic_idx.exit75.split.loop.exit ], [ %i.aw, %bb.p ] ; 3 uses
  %i.bo = getelementptr i8, ptr %.lcssa, i64 2
  %i.bp = getelementptr i8, ptr %.lcssa, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.critedge, label %bb.v

bb.v:                                             ; preds = %find_characteristic_idx.exit75
  %i.bs = getelementptr i8, ptr %.lcssa, i64 16
  %i.bt = load i8, ptr %i.bs, align 8
  %.not68 = icmp eq i8 %i.bt, 0
  br i1 %.not68, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.bu = load i32, ptr %i.aq, align 4
  %i.bv = load i16, ptr %i.ao, align 2            ; 2 uses
  %i.bw = zext i16 %i.bv to i32                   ; 3 uses
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bu, ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bw, i32 noundef -2147483648) ; 2 uses
  %.not.i76 = icmp eq ptr %i.bx, null
  br i1 %.not.i76, label %proto_item_set_generated.exit78, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_0
