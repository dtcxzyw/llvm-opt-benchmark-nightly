inline.NumInlined: 103
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lustre_opcode_process:bb.a
  %i.se = tail call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.sd, ptr noundef %0, i32 noundef %i.sc, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.sf = add i32 %i.rb, 40
  %i.sg = load i32, ptr @hf_lustre_ost_lvb_mtime_ns, align 4
  %i.sh = tail call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.sg, ptr noundef %0, i32 noundef %i.sf, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.si = add i32 %i.rb, 44
  %i.sj = load i32, ptr @hf_lustre_ost_lvb_atime_ns, align 4
  %i.sk = tail call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.sj, ptr noundef %0, i32 noundef %i.si, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.sl = add i32 %i.rb, 48
  %i.sm = load i32, ptr @hf_lustre_ost_lvb_ctime_ns, align 4
  %i.sn = tail call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.sm, ptr noundef %0, i32 noundef %i.sl, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.so = add i32 %i.rb, 52
  %i.sp = load i32, ptr @hf_lustre_ost_lvb_padding, align 4
  %i.sq = tail call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.sp, ptr noundef %0, i32 noundef %i.so, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.sr = add i32 %i.rb, 56
  br label %process_opcode_ost.exit

bb.er:                                            ; preds = %bb.cj
  %i.ss = load i32, ptr @hf_lustre_ldlm_key, align 4
  %i.st = tail call fastcc i32 @display_buffer_string(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %i.ss, i32 noundef 1)
  %i.su = load i32, ptr @hf_lustre_ldlm_val, align 4
  %i.sv = tail call fastcc i32 @display_buffer_string(ptr noundef %0, ptr noundef %3, i32 noundef %i.st, i32 noundef %i.su, i32 noundef 2)
  br label %process_opcode_ost.exit

default.unreachable:                              ; preds = %bb.cj
  unreachable

bb.es:                                            ; preds = %bb.ci
  switch i32 %i.k, label %default.unreachable135 [
    i32 101, label %bb.et
    i32 102, label %bb.fn
    i32 103, label %process_opcode_ost.exit
    i32 104, label %process_opcode_ost.exit
    i32 105, label %process_opcode_ost.exit
    i32 106, label %bb.fo
    i32 107, label %process_opcode_ost.exit
  ]

bb.et:                                            ; preds = %bb.es
  %i.sw = tail call fastcc i32 @dissect_struct_ldlm_reply(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) ; 6 uses
  %i.sx = getelementptr i8, ptr %4, i64 8
  %i.sy = load i64, ptr %i.sx, align 8
  switch i64 %i.sy, label %bb.fm [
    i64 0, label %bb.eu
    i64 1024, label %bb.eu
    i64 8, label %bb.ev
    i64 2, label %bb.ev
    i64 3, label %bb.fc
    i64 1, label %bb.fc
    i64 2048, label %bb.fd
    i64 4096, label %bb.fd
    i64 128, label %bb.fe
  ]

bb.eu:                                            ; preds = %bb.et, %bb.et
  %i.sz = tail call fastcc i32 @dissect_struct_lov_mds_md(ptr noundef %0, i32 noundef %i.sw, ptr noundef %2, ptr noundef %3, i32 noundef 2)
  br label %process_opcode_ost.exit

bb.ev:                                            ; preds = %bb.et, %bb.et
  %i.ta = tail call fastcc i32 @dissect_struct_mdt_body(ptr noundef %0, i32 noundef %i.sw, ptr noundef %3, i32 noundef 2)
  %i.tb = tail call fastcc i32 @dissect_struct_lov_mds_md(ptr noundef %0, i32 noundef %i.ta, ptr noundef %2, ptr noundef %3, i32 noundef 3)
  %i.tc = tail call fastcc i32 @dissect_struct_acl(ptr noundef %0, i32 noundef %i.tb, ptr noundef %3, i32 noundef 4)
  %i.td = tail call fastcc i32 @dissect_struct_capa(ptr noundef %0, i32 noundef %i.tc, ptr noundef %3, i32 noundef 5)
  %i.te = tail call fastcc i32 @display_buffer_data(ptr noundef %0, i32 noundef %i.td, ptr noundef %3, i32 noundef 6, ptr noundef nonnull @.str.1802) ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.tf = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.tg = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.th = icmp eq i32 %i.tg, 198183891
  %i.ti = select i1 %i.th, i32 0, i32 60
  %i.tj = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ti)
  %i.tk = icmp ult i32 %i.tj, 8
  br i1 %i.tk, label %dissect_struct_lmv_user_md.exit.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.tl = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.tm = icmp eq i32 %i.tl, 198183891
  %i.tn = select i1 %i.tm, i32 60, i32 88
  %i.to = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.tn) ; 3 uses
  %i.tp = icmp eq i32 %i.to, 0
  br i1 %i.tp, label %dissect_struct_lmv_user_md.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.tq = load i32, ptr @hf_lustre_lmv_user_md_v1, align 4
  %i.tr = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.tq, ptr noundef %0, i32 noundef %i.te, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.ts = load i32, ptr @ett_lustre_lmv_user_md_v1, align 4
  %i.tt = tail call ptr @proto_item_add_subtree(ptr noundef %i.tr, i32 noundef %i.ts) ; 11 uses
  %i.tu = load i32, ptr @hf_lustre_lmv_user_md_v1_magic, align 4
  %i.tv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.tt, i32 noundef %i.tu, ptr noundef %0, i32 noundef %i.te, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.tw = add i32 %i.te, 4
  %i.tx = load i32, ptr @hf_lustre_lmv_user_md_v1_stripe_count, align 4
  %i.ty = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.tt, i32 noundef %i.tx, ptr noundef %0, i32 noundef %i.tw, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.tz = add i32 %i.te, 8
  %i.ua = load i32, ptr @hf_lustre_lmv_user_md_v1_stripe_offset, align 4
  %i.ub = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.ua, ptr noundef %0, i32 noundef %i.tz, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.uc = add i32 %i.te, 12
  %i.ud = load i32, ptr @hf_lustre_lmv_user_md_v1_hash_type, align 4
  %i.ue = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.ud, ptr noundef %0, i32 noundef %i.uc, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.uf = add i32 %i.te, 16
  %i.ug = load i32, ptr @hf_lustre_lmv_user_md_v1_type, align 4
  %i.uh = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.ug, ptr noundef %0, i32 noundef %i.uf, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ui = add i32 %i.te, 20
  %i.uj = load i32, ptr @hf_lustre_lmv_user_md_v1_max_inherit, align 4
  %i.uk = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.uj, ptr noundef %0, i32 noundef %i.ui, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ul = add i32 %i.te, 21
  %i.um = load i32, ptr @hf_lustre_lmv_user_md_v1_max_inherit_rr, align 4
  %i.un = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.um, ptr noundef %0, i32 noundef %i.ul, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.uo = add i32 %i.te, 22
  %i.up = load i32, ptr @hf_lustre_lmv_user_md_v1_padding, align 4
  %i.uq = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.up, ptr noundef %0, i32 noundef %i.uo, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.ur = add i32 %i.te, 32
  %i.us = load i32, ptr @hf_lustre_lmv_user_md_v1_pool_name, align 4
  %i.ut = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.us, ptr noundef %0, i32 noundef %i.ur, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.uu = add i32 %i.te, 48                       ; 5 uses
  %i.uv = add i32 %i.to, %i.te
  %i.uw = add i32 %i.te, 72
  %.not.i.i68.i = icmp ult i32 %i.uv, %i.uw
  br i1 %.not.i.i68.i, label %bb.ey, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ex
  %i.ux = load i32, ptr %i.c, align 4
  %i.uy = icmp ne i32 %i.ux, 0
  %i.uz = load i32, ptr %i.b, align 4
  %i.va = icmp eq i32 %i.uz, 215157968
  %i.vb = select i1 %i.uy, i1 %i.va, i1 false
  br i1 %i.vb, label %.lr.ph.i.i.i, label %add_extra_padding.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.079.i.i.i = phi i32 [ %i.vo, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.07478.i.i.i = phi i32 [ %i.vn, %.lr.ph.i.i.i ], [ %i.uu, %.preheader.i.i.i ] ; 2 uses
  %i.vc = load i32, ptr @hf_lustre_lmv_user_md_v1_objects, align 4
  %i.vd = call ptr @proto_tree_add_item(ptr noundef %i.tt, i32 noundef %i.vc, ptr noundef %0, i32 noundef %.07478.i.i.i, i32 noundef 24, i32 noundef 0)
  %i.ve = load i32, ptr @ett_lustre_lmv_user_mds_data, align 4
  %i.vf = call ptr @proto_item_add_subtree(ptr noundef %i.vd, i32 noundef %i.ve) ; 3 uses
  %i.vg = load i32, ptr @hf_lustre_lmv_user_mds_data_fid, align 4
  %i.vh = call fastcc i32 @dissect_struct_lu_fid(ptr noundef %0, i32 noundef %.07478.i.i.i, ptr noundef %i.vf, i32 noundef %i.vg) ; 3 uses
  %i.vi = load i32, ptr @hf_lustre_lmv_user_mds_data_padding, align 4
  %i.vj = call ptr @proto_tree_add_item(ptr noundef %i.vf, i32 noundef %i.vi, ptr noundef %0, i32 noundef %i.vh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.vk = add i32 %i.vh, 4
  %i.vl = load i32, ptr @hf_lustre_lmv_user_mds_data_mds, align 4
  %i.vm = call ptr @proto_tree_add_item(ptr noundef %i.vf, i32 noundef %i.vl, ptr noundef %0, i32 noundef %i.vk, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.vn = add i32 %i.vh, 8                        ; 2 uses
  %i.vo = add nuw i32 %.079.i.i.i, 1              ; 2 uses
  %i.vp = load i32, ptr %i.c, align 4
  %i.vq = icmp ult i32 %i.vo, %i.vp
  %i.vr = load i32, ptr %i.b, align 4
  %i.vs = icmp eq i32 %i.vr, 215157968
  %i.vt = select i1 %i.vq, i1 %i.vs, i1 false
  br i1 %i.vt, label %.lr.ph.i.i.i, label %add_extra_padding.exit.i.i.i, !llvm.loop !10

bb.ey:                                            ; preds = %bb.ex
  %i.vu = sub i32 0, %i.te
  %i.vv = and i32 %i.vu, 7                        ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.vv, 0
  br i1 %.not.i.i.i.i, label %add_extra_padding.exit.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.vw = load i32, ptr @hf_lustre_extra_padding, align 4
  %i.vx = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.vw, ptr noundef %0, i32 noundef %i.uu, i32 noundef %i.vv, i32 noundef 0) ; 0 uses
  %i.vy = add i32 %i.vv, %i.uu
  br label %add_extra_padding.exit.i.i.i

add_extra_padding.exit.i.i.i:                     ; preds = %.lr.ph.i.i.i, %bb.ez, %bb.ey, %.preheader.i.i.i
  %.1.i.i.i = phi i32 [ %i.uu, %bb.ey ], [ %i.vy, %bb.ez ], [ %i.uu, %.preheader.i.i.i ], [ %i.vn, %.lr.ph.i.i.i ] ; 2 uses
  %i.vz = sub i32 %.1.i.i.i, %i.te                ; 2 uses
  %.not77.i.i.i = icmp eq i32 %i.vz, %i.to
  br i1 %.not77.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %add_extra_padding.exit.i.i.i
  %i.wa = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.tt, ptr noundef nonnull @ei_lustre_buflen) ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %add_extra_padding.exit.i.i.i
  call void @proto_item_set_len(ptr noundef %i.tr, i32 noundef %i.vz)
  br label %dissect_struct_lmv_user_md.exit.i.i

dissect_struct_lmv_user_md.exit.i.i:              ; preds = %bb.fb, %bb.ew, %bb.ev
  %.073.i.i.i = phi i32 [ %.1.i.i.i, %bb.fb ], [ %i.te, %bb.ew ], [ %i.te, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.wb = call fastcc i32 @display_buffer_data(ptr noundef %0, i32 noundef %.073.i.i.i, ptr noundef %3, i32 noundef 8, ptr noundef nonnull @.str.1825)
  br label %process_opcode_ost.exit

bb.fc:                                            ; preds = %bb.et, %bb.et
  %i.wc = tail call fastcc i32 @dissect_struct_mdt_body(ptr noundef %0, i32 noundef %i.sw, ptr noundef %3, i32 noundef 2)
  %i.wd = tail call fastcc i32 @dissect_struct_lov_mds_md(ptr noundef %0, i32 noundef %i.wc, ptr noundef %2, ptr noundef %3, i32 noundef 3)
  %i.we = tail call fastcc i32 @dissect_struct_acl(ptr noundef %0, i32 noundef %i.wd, ptr noundef %3, i32 noundef 4)
  %i.wf = tail call fastcc i32 @dissect_struct_capa(ptr noundef %0, i32 noundef %i.we, ptr noundef %3, i32 noundef 5)
  %i.wg = tail call fastcc i32 @dissect_struct_capa(ptr noundef %0, i32 noundef %i.wf, ptr noundef %3, i32 noundef 6)
  %i.wh = tail call fastcc i32 @dissect_struct_niobuf_remote(ptr noundef %0, i32 noundef %i.wg, ptr noundef %3, i32 noundef 7)
  %i.wi = tail call fastcc i32 @display_buffer_data(ptr noundef %0, i32 noundef %i.wh, ptr noundef %3, i32 noundef 8, ptr noundef nonnull @.str.1802)
  br label %process_opcode_ost.exit

bb.fd:                                            ; preds = %bb.et, %bb.et
  %i.wj = tail call fastcc i32 @dissect_struct_lov_mds_md(ptr noundef %0, i32 noundef %i.sw, ptr noundef %2, ptr noundef %3, i32 noundef 2)
  %i.wk = tail call fastcc i32 @dissect_struct_quota_body(ptr noundef %0, i32 noundef %i.wj, ptr noundef %3, i32 noundef 3)
  br label %process_opcode_ost.exit

bb.fe:                                            ; preds = %bb.et
  %i.wl = tail call fastcc i32 @dissect_struct_mdt_body(ptr noundef %0, i32 noundef %i.sw, ptr noundef %3, i32 noundef 2)
  %i.wm = tail call fastcc i32 @dissect_struct_lov_mds_md(ptr noundef %0, i32 noundef %i.wl, ptr noundef %2, ptr noundef %3, i32 noundef 3)
  %i.wn = tail call fastcc i32 @dissect_struct_acl(ptr noundef %0, i32 noundef %i.wm, ptr noundef %3, i32 noundef 4) ; 5 uses
  %i.wo = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.wp = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.wq = icmp eq i32 %i.wp, 198183891
  %i.wr = select i1 %i.wq, i32 0, i32 60
  %i.ws = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.wr)
  %i.wt = icmp ult i32 %i.ws, 6
  br i1 %i.wt, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.wu = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.wv = icmp eq i32 %i.wu, 198183891
  %i.ww = select i1 %i.wv, i32 52, i32 80
  %i.wx = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ww)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.wy = phi i32 [ %i.wx, %bb.ff ], [ 0, %bb.fe ]
  %i.wz = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.xa = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.xb = icmp eq i32 %i.xa, 198183891
  %i.xc = select i1 %i.xb, i32 0, i32 60
  %i.xd = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.xc)
  %i.xe = icmp ult i32 %i.xd, 7
  br i1 %i.xe, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.xf = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.xg = icmp eq i32 %i.xf, 198183891
  %i.xh = select i1 %i.xg, i32 56, i32 84
  %i.xi = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.xh)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.xj = phi i32 [ %i.xi, %bb.fh ], [ 0, %bb.fg ]
  %i.xk = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.xl = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.xm = icmp eq i32 %i.xl, 198183891
  %i.xn = select i1 %i.xm, i32 0, i32 60
  %i.xo = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.xn)
  %i.xp = icmp ult i32 %i.xo, 8
  br i1 %i.xp, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.xq = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.xr = icmp eq i32 %i.xq, 198183891
  %i.xs = select i1 %i.xr, i32 60, i32 88
  %i.xt = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.xs)
  %i.xu = sdiv i32 %i.xt, 4
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.xv = phi i32 [ %i.xu, %bb.fj ], [ 0, %bb.fi ] ; 2 uses
  %i.xw = load i32, ptr @hf_lustre_xattr_list, align 4
  %i.xx = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xw, ptr noundef %0, i32 noundef %i.wn, i32 noundef -1, i32 noundef 0)
  %i.xy = load i32, ptr @ett_lustre_xattrs, align 4
  %i.xz = tail call ptr @proto_item_add_subtree(ptr noundef %i.xx, i32 noundef %i.xy) ; 5 uses
  %i.ya = tail call fastcc i32 @display_buffer_data(ptr noundef %0, i32 noundef %i.wn, ptr noundef %i.xz, i32 noundef 5, ptr noundef nonnull @.str.1826)
  %i.yb = tail call fastcc i32 @display_buffer_data(ptr noundef %0, i32 noundef %i.ya, ptr noundef %i.xz, i32 noundef 6, ptr noundef nonnull @.str.1827)
  %i.yc = tail call fastcc i32 @display_buffer_data(ptr noundef %0, i32 noundef %i.yb, ptr noundef %i.xz, i32 noundef 7, ptr noundef nonnull @.str.1828) ; 2 uses
  %i.yd = icmp sgt i32 %i.xv, 0
  br i1 %i.yd, label %.lr.ph.i93.i.i, label %dissect_xattr_buffers.exit.i.i

.lr.ph.i93.i.i:                                   ; preds = %bb.fk
  %i.ye = add i32 %i.wy, %i.wn                    ; 3 uses
  %6 = sub i32 0, %i.ye
  %i.yf = and i32 %6, 7
  %i.yg = add i32 %i.yf, %i.ye                    ; 2 uses
  %7 = add i32 %i.xj, %i.yg                       ; 2 uses
  %8 = sub i32 0, %7
  %9 = and i32 %8, 7
  %i.yh = add i32 %9, %7
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fl, %.lr.ph.i93.i.i
  %.04.i.i.i = phi i32 [ 0, %.lr.ph.i93.i.i ], [ %i.yz, %bb.fl ] ; 2 uses
  %.0963.i.i.i = phi i32 [ %i.wn, %.lr.ph.i93.i.i ], [ %i.ys, %bb.fl ] ; 5 uses
  %.0972.i.i.i = phi i32 [ %i.yg, %.lr.ph.i93.i.i ], [ %i.yv, %bb.fl ] ; 2 uses
  %.0981.i.i.i = phi i32 [ %i.yh, %.lr.ph.i93.i.i ], [ %i.yy, %bb.fl ] ; 3 uses
  %i.yi = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0981.i.i.i) ; 2 uses
  %i.yj = sub i32 %i.ye, %.0963.i.i.i
  %i.yk = tail call i32 @tvb_strnlen(ptr noundef %0, i32 noundef %.0963.i.i.i, i32 noundef %i.yj)
  %i.yl = add i32 %i.yk, 1                        ; 3 uses
  %i.ym = load i32, ptr @hf_lustre_xattr, align 4
  %i.yn = tail call ptr @proto_tree_add_item(ptr noundef %i.xz, i32 noundef %i.ym, ptr noundef %0, i32 noundef %.0963.i.i.i, i32 noundef %i.yl, i32 noundef 0) ; 2 uses
  %i.yo = load i32, ptr @ett_lustre_xattr_item, align 4
  %i.yp = tail call ptr @proto_item_add_subtree(ptr noundef %i.yn, i32 noundef %i.yo) ; 3 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.yn, ptr noundef nonnull @.str.1791, i32 noundef %.04.i.i.i)
  %i.yq = load i32, ptr @hf_lustre_xattr_name, align 4
  %i.yr = tail call ptr @proto_tree_add_item(ptr noundef %i.yp, i32 noundef %i.yq, ptr noundef %0, i32 noundef %.0963.i.i.i, i32 noundef %i.yl, i32 noundef 0) ; 0 uses
  %i.ys = add i32 %i.yl, %.0963.i.i.i
  %i.yt = load i32, ptr @hf_lustre_xattr_data, align 4
  %i.yu = tail call ptr @proto_tree_add_item(ptr noundef %i.yp, i32 noundef %i.yt, ptr noundef %0, i32 noundef %.0972.i.i.i, i32 noundef %i.yi, i32 noundef 0) ; 0 uses
  %i.yv = add i32 %i.yi, %.0972.i.i.i
  %i.yw = load i32, ptr @hf_lustre_xattr_size, align 4
  %i.yx = tail call ptr @proto_tree_add_item(ptr noundef %i.yp, i32 noundef %i.yw, ptr noundef %0, i32 noundef %.0981.i.i.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.yy = add i32 %.0981.i.i.i, 4
  %i.yz = add nuw nsw i32 %.04.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.yz, %i.xv
  br i1 %exitcond.not.i.i.i, label %dissect_xattr_buffers.exit.i.i, label %bb.fl, !llvm.loop !11

dissect_xattr_buffers.exit.i.i:                   ; preds = %bb.fl, %bb.fk
  %10 = sub i32 0, %i.yc
  %i.za = and i32 %10, 7
  %11 = add i32 %i.za, %i.yc                      ; 2 uses
  %i.zb = sub i32 %11, %i.wn
  tail call void @proto_item_set_len(ptr noundef %i.xz, i32 noundef %i.zb)
  br label %process_opcode_ost.exit

bb.fm:                                            ; preds = %bb.et
  %i.zc = tail call fastcc i32 @dissect_struct_mdt_body(ptr noundef %0, i32 noundef %i.sw, ptr noundef %3, i32 noundef 2)
  %i.zd = tail call fastcc i32 @dissect_struct_lov_mds_md(ptr noundef %0, i32 noundef %i.zc, ptr noundef %2, ptr noundef %3, i32 noundef 3)
  %i.ze = tail call fastcc i32 @dissect_struct_acl(ptr noundef %0, i32 noundef %i.zd, ptr noundef %3, i32 noundef 4)
  br label %process_opcode_ost.exit

bb.fn:                                            ; preds = %bb.es
  %i.zf = tail call fastcc i32 @dissect_struct_ldlm_reply(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %process_opcode_ost.exit

bb.fo:                                            ; preds = %bb.es
  %i.zg = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.zh = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.zi = icmp eq i32 %i.zh, 198183891
  %i.zj = select i1 %i.zi, i32 0, i32 60
  %i.zk = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.zj)
  %i.zl = icmp ult i32 %i.zk, 2
  br i1 %i.zl, label %process_opcode_ost.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.zm = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.zn = icmp eq i32 %i.zm, 198183891
  %i.zo = select i1 %i.zn, i32 36, i32 64
  %i.zp = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.zo)
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %process_opcode_ost.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zr = load i32, ptr @hf_lustre_barrier_lvb, align 4
  %i.zs = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.zr, ptr noundef %0, i32 noundef %1, i32 noundef 16, i32 noundef 0)
  %i.zt = load i32, ptr @ett_lustre_barrier_lvb, align 4
  %i.zu = tail call ptr @proto_item_add_subtree(ptr noundef %i.zs, i32 noundef %i.zt) ; 3 uses
  %i.zv = load i32, ptr @hf_lustre_barrier_lvb_status, align 4
  %i.zw = tail call ptr @proto_tree_add_item(ptr noundef %i.zu, i32 noundef %i.zv, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.zx = add i32 %1, 4
  %i.zy = load i32, ptr @hf_lustre_barrier_lvb_index, align 4
  %i.zz = tail call ptr @proto_tree_add_item(ptr noundef %i.zu, i32 noundef %i.zy, ptr noundef %0, i32 noundef %i.zx, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.aaa = add i32 %1, 8
  %i.aab = load i32, ptr @hf_lustre_barrier_lvb_padding, align 4
  %i.aac = tail call ptr @proto_tree_add_item(ptr noundef %i.zu, i32 noundef %i.aab, ptr noundef %0, i32 noundef %i.aaa, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aad = add i32 %1, 16
  br label %process_opcode_ost.exit

default.unreachable135:                           ; preds = %bb.es
  unreachable

bb.fr:                                            ; preds = %bb.ch
  %i.aae = add i32 %i.k, -250
  %or.cond113 = icmp ult i32 %i.aae, 7
  br i1 %or.cond113, label %bb.fs, label %bb.gc

bb.fs:                                            ; preds = %bb.fr
  switch i32 %i.k, label %default.unreachable136 [
    i32 250, label %bb.ft
    i32 251, label %process_opcode_ost.exit
    i32 252, label %process_opcode_ost.exit
    i32 253, label %bb.fw
    i32 254, label %process_opcode_ost.exit
    i32 255, label %bb.fz
    i32 256, label %bb.ga
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.aaf = icmp eq i32 %5, 4711
  br i1 %i.aaf, label %.thread.i134, label %bb.fu

.thread.i134:                                     ; preds = %bb.ft
  %i.aag = tail call fastcc i32 @dissect_generic_connect(ptr noundef %0, i32 noundef %1, ptr noundef %3)
  br label %process_opcode_ost.exit

bb.fu:                                            ; preds = %bb.ft
  %i.aah = and i32 %5, -2
  %or.cond.i133 = icmp eq i32 %i.aah, 4712
  br i1 %or.cond.i133, label %bb.fv, label %process_opcode_ost.exit

bb.fv:                                            ; preds = %bb.fu
  %i.aai = tail call fastcc i32 @dissect_struct_obd_connect_data(ptr noundef %0, i32 noundef %1, ptr noundef %3)
  br label %process_opcode_ost.exit

bb.fw:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.aaj = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.aak = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.aal = icmp eq i32 %i.aak, 198183891
  %i.aam = select i1 %i.aal, i32 0, i32 60
  %i.aan = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.aam)
  %i.aao = icmp ult i32 %i.aan, 2
  br i1 %i.aao, label %dissect_struct_mgs_target_info.exit.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aap = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.aaq = icmp eq i32 %i.aap, 198183891
  %i.aar = select i1 %i.aaq, i32 36, i32 64
  %i.aas = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.aar) ; 2 uses
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %dissect_struct_mgs_target_info.exit.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aau = load i32, ptr @hf_lustre_mgs_target_info, align 4
  %i.aav = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aau, ptr noundef %0, i32 noundef %1, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.aaw = load i32, ptr @ett_lustre_mgs_config_res, align 4
  %i.aax = tail call ptr @proto_item_add_subtree(ptr noundef %i.aav, i32 noundef %i.aaw) ; 12 uses
  %i.aay = load i32, ptr @hf_lustre_mgs_target_info_mti_lustre_ver, align 4
  %i.aaz = tail call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.aay, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.aba = add i32 %1, 4
  %i.abb = load i32, ptr @hf_lustre_mgs_target_info_mti_stripe_index, align 4
  %i.abc = tail call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.abb, ptr noundef %0, i32 noundef %i.aba, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.abd = add i32 %1, 8
  %i.abe = load i32, ptr @hf_lustre_mgs_target_info_mti_config_ver, align 4
  %i.abf = tail call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.abe, ptr noundef %0, i32 noundef %i.abd, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.abg = add i32 %1, 12
  %i.abh = load i32, ptr @hf_lustre_mgs_target_info_mti_flags, align 4
  %i.abi = tail call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.abh, ptr noundef %0, i32 noundef %i.abg, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.abj = add i32 %1, 16
  %i.abk = load i32, ptr @hf_lustre_mgs_target_info_mti_nid_count, align 4
  %i.abl = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.aax, i32 noundef %i.abk, ptr noundef %0, i32 noundef %i.abj, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.abm = add i32 %1, 20
  %i.abn = load i32, ptr @hf_lustre_mgs_target_info_mti_instance, align 4
  %i.abo = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.abn, ptr noundef %0, i32 noundef %i.abm, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.abp = add i32 %1, 24
  %i.abq = load i32, ptr @hf_lustre_mgs_target_info_mti_fsname, align 4
  %i.abr = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.abq, ptr noundef %0, i32 noundef %i.abp, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.abs = add i32 %1, 88
  %i.abt = load i32, ptr @hf_lustre_mgs_target_info_mti_svname, align 4
  %i.abu = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.abt, ptr noundef %0, i32 noundef %i.abs, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.abv = add i32 %1, 152
  %i.abw = load i32, ptr @hf_lustre_mgs_target_info_mti_uuid, align 4
  %i.abx = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.abw, ptr noundef %0, i32 noundef %i.abv, i32 noundef 40, i32 noundef 0) ; 0 uses
  %i.aby = add i32 %1, 192                        ; 2 uses
  %i.abz = load i32, ptr %i.a, align 4
  %.not.i.i130 = icmp eq i32 %i.abz, 0
  br i1 %.not.i.i130, label %._crit_edge.i.i132, label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %bb.fy, %.lr.ph.i.i131
  %.088.i.i = phi i32 [ %i.acc, %.lr.ph.i.i131 ], [ 0, %bb.fy ]
  %.08187.i.i = phi i32 [ %i.acb, %.lr.ph.i.i131 ], [ %i.aby, %bb.fy ]
  %i.aca = load i32, ptr @hf_lustre_mgs_target_info_mti_nids, align 4
  %i.acb = call i32 @lnet_dissect_struct_nid(ptr noundef %0, ptr noundef %2, ptr noundef %i.aax, i32 noundef %.08187.i.i, i32 noundef %i.aca) ; 2 uses
  %i.acc = add nuw i32 %.088.i.i, 1               ; 2 uses
  %i.acd = load i32, ptr %i.a, align 4            ; 2 uses
  %i.ace = icmp ult i32 %i.acc, %i.acd
  br i1 %i.ace, label %.lr.ph.i.i131, label %._crit_edge.loopexit.i.i, !llvm.loop !12

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i131
  %i.acf = shl i32 %i.acd, 3
  %i.acg = sub i32 256, %i.acf
  br label %._crit_edge.i.i132

._crit_edge.i.i132:                               ; preds = %._crit_edge.loopexit.i.i, %bb.fy
  %.081.lcssa.i.i = phi i32 [ %i.aby, %bb.fy ], [ %i.acb, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.lcssa.i.i = phi i32 [ 256, %bb.fy ], [ %i.acg, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ach = load i32, ptr @hf_lustre_mgs_target_info_padding, align 4
  %i.aci = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.ach, ptr noundef %0, i32 noundef %.081.lcssa.i.i, i32 noundef %.lcssa.i.i, i32 noundef 0) ; 0 uses
  %i.acj = add i32 %.lcssa.i.i, %.081.lcssa.i.i   ; 3 uses
  %.neg.i.i = add i32 %i.aas, %1
  %i.ack = sub i32 %.neg.i.i, %i.acj
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.ack, i32 4096) ; 2 uses
  %i.acl = load i32, ptr @hf_lustre_mgs_target_info_mti_params, align 4
  %i.acm = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.acl, ptr noundef %0, i32 noundef %i.acj, i32 noundef %spec.select.i.i, i32 noundef 0) ; 0 uses
  %i.acn = add i32 %spec.select.i.i, %i.acj       ; 2 uses
  %i.aco = sub i32 %i.acn, %1
  call void @proto_item_set_len(ptr noundef %i.aav, i32 noundef %i.aco)
  br label %dissect_struct_mgs_target_info.exit.i

dissect_struct_mgs_target_info.exit.i:            ; preds = %._crit_edge.i.i132, %bb.fx, %bb.fw
  %.080.i.i = phi i32 [ %i.acn, %._crit_edge.i.i132 ], [ %1, %bb.fx ], [ %1, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %process_opcode_ost.exit

bb.fz:                                            ; preds = %bb.fs
  %i.acp = load i32, ptr @hf_lustre_mgs_send_param, align 4
  %i.acq = tail call fastcc i32 @display_buffer_string(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %i.acp, i32 noundef 1)
  br label %process_opcode_ost.exit

bb.ga:                                            ; preds = %bb.fs
  switch i32 %5, label %process_opcode_ost.exit [
    i32 4711, label %.thread39.i
    i32 4713, label %bb.gb
  ]

.thread39.i:                                      ; preds = %bb.ga
  %i.acr = load i32, ptr @hf_lustre_mgs_config_body, align 4
  %i.acs = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.acr, ptr noundef %0, i32 noundef %1, i32 noundef 80, i32 noundef 0)
  %i.act = load i32, ptr @ett_lustre_mgs_config_body, align 4
  %i.acu = tail call ptr @proto_item_add_subtree(ptr noundef %i.acs, i32 noundef %i.act) ; 6 uses
  %i.acv = load i32, ptr @hf_lustre_mgs_config_body_name, align 4
  %i.acw = tail call ptr @proto_tree_add_item(ptr noundef %i.acu, i32 noundef %i.acv, ptr noundef %0, i32 noundef %1, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.acx = add i32 %1, 64
  %i.acy = load i32, ptr @hf_lustre_mgs_config_body_offset, align 4
  %i.acz = tail call ptr @proto_tree_add_item(ptr noundef %i.acu, i32 noundef %i.acy, ptr noundef %0, i32 noundef %i.acx, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ada = add i32 %1, 72                         ; 2 uses
  %i.adb = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.ada)
  %i.adc = zext i16 %i.adb to i64
  %i.add = getelementptr i8, ptr %4, i64 8
  store i64 %i.adc, ptr %i.add, align 8
  %i.ade = load i32, ptr @hf_lustre_mgs_config_body_type, align 4
  %i.adf = tail call ptr @proto_tree_add_item(ptr noundef %i.acu, i32 noundef %i.ade, ptr noundef %0, i32 noundef %i.ada, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.adg = add i32 %1, 74
  %i.adh = load i32, ptr @hf_lustre_mgs_config_body_nm_cur_pass, align 4
  %i.adi = tail call ptr @proto_tree_add_item(ptr noundef %i.acu, i32 noundef %i.adh, ptr noundef %0, i32 noundef %i.adg, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.adj = add i32 %1, 75
  %i.adk = load i32, ptr @hf_lustre_mgs_config_body_bits, align 4
  %i.adl = tail call ptr @proto_tree_add_item(ptr noundef %i.acu, i32 noundef %i.adk, ptr noundef %0, i32 noundef %i.adj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.adm = add i32 %1, 76
  %i.adn = load i32, ptr @hf_lustre_mgs_config_body_units, align 4
  %i.ado = tail call ptr @proto_tree_add_item(ptr noundef %i.acu, i32 noundef %i.adn, ptr noundef %0, i32 noundef %i.adm, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.adp = add i32 %1, 80
  br label %process_opcode_ost.exit

bb.gb:                                            ; preds = %bb.ga
  %i.adq = load i32, ptr @hf_lustre_mgs_config_res, align 4
  %i.adr = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.adq, ptr noundef %0, i32 noundef %1, i32 noundef 16, i32 noundef 0)
  %i.ads = load i32, ptr @ett_lustre_mgs_config_res, align 4
  %i.adt = tail call ptr @proto_item_add_subtree(ptr noundef %i.adr, i32 noundef %i.ads) ; 2 uses
  %i.adu = load i32, ptr @hf_lustre_mgs_config_res_offset, align 4
  %i.adv = tail call ptr @proto_tree_add_item(ptr noundef %i.adt, i32 noundef %i.adu, ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.adw = add i32 %1, 8
  %i.adx = getelementptr i8, ptr %4, i64 8
  %i.ady = load i64, ptr %i.adx, align 8
  %i.adz = icmp eq i64 %i.ady, 4
  %hf_lustre_mgs_config_res_nm_cur_pass.val.i.i = load i32, ptr @hf_lustre_mgs_config_res_nm_cur_pass, align 4
  %hf_lustre_mgs_config_res_size.val.i.i = load i32, ptr @hf_lustre_mgs_config_res_size, align 4
  %i.aea = select i1 %i.adz, i32 %hf_lustre_mgs_config_res_nm_cur_pass.val.i.i, i32 %hf_lustre_mgs_config_res_size.val.i.i
  %i.aeb = tail call ptr @proto_tree_add_item(ptr noundef %i.adt, i32 noundef %i.aea, ptr noundef %0, i32 noundef %i.adw, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.aec = add i32 %1, 16
  br label %process_opcode_ost.exit

default.unreachable136:                           ; preds = %bb.fs
  unreachable

bb.gc:                                            ; preds = %bb.fr
  %i.aed = and i32 %i.k, -4
  %or.cond114 = icmp eq i32 %i.aed, 400
  br i1 %or.cond114, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.aee = tail call fastcc i32 @process_opcode_obd(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %i.k, i32 noundef %5)
  br label %process_opcode_ost.exit

bb.ge:                                            ; preds = %bb.gc
  %i.aef = add i32 %i.k, -501
  %or.cond115 = icmp ult i32 %i.aef, 9
  br i1 %or.cond115, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aeg = tail call fastcc i32 @process_opcode_llog(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %i.k, i32 noundef %5)
  br label %process_opcode_ost.exit

bb.gg:                                            ; preds = %bb.ge
  %i.aeh = add i32 %i.k, -601
  %or.cond116 = icmp ult i32 %i.aeh, 2
  br i1 %or.cond116, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aei = tail call fastcc i32 @process_opcode_quota(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %i.k, i32 noundef %5)
  br label %process_opcode_ost.exit

bb.gi:                                            ; preds = %bb.gg
  %i.aej = icmp eq i32 %i.k, 700
  br i1 %i.aej, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.aek = tail call fastcc i32 @process_opcode_seq(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %process_opcode_ost.exit

bb.gk:                                            ; preds = %bb.gi
  %i.ael = add i32 %i.k, -801
  %or.cond118 = icmp ult i32 %i.ael, 3
  br i1 %or.cond118, label %process_opcode_ost.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aem = and i32 %i.k, -2
  %or.cond119 = icmp eq i32 %i.aem, 900
  br i1 %or.cond119, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.aen = tail call fastcc i32 @process_opcode_fld(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %process_opcode_ost.exit

bb.gn:                                            ; preds = %bb.gl
  %i.aeo = icmp eq i32 %i.k, 1000
  br i1 %i.aeo, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.aep = tail call fastcc i32 @process_opcode_out_update(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 1000, i32 noundef %5)
  br label %process_opcode_ost.exit

bb.gp:                                            ; preds = %bb.gn
  %i.aeq = add i32 %i.k, -1101
  %or.cond121 = icmp ult i32 %i.aeq, 2
  br i1 %or.cond121, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aer = tail call fastcc i32 @process_opcode_lfsck(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %i.k, i32 noundef %5)
  br label %process_opcode_ost.exit

bb.gr:                                            ; preds = %bb.gp
  %i.aes = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %3, ptr noundef nonnull @ei_lustre_badopc, ptr noundef nonnull @.str.1786, i32 noundef %i.k, i32 noundef %5) ; 0 uses
  br label %process_opcode_ost.exit

process_opcode_ost.exit:                          ; preds = %bb.gb, %.thread39.i, %bb.ga, %bb.fz, %dissect_struct_mgs_target_info.exit.i, %bb.fv, %bb.fu, %.thread.i134, %bb.fs, %bb.fs, %bb.fs, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %dissect_xattr_buffers.exit.i.i, %bb.fd, %bb.fc, %dissect_struct_lmv_user_md.exit.i.i, %bb.eu, %bb.es, %bb.es, %bb.es, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %dissect_struct_ldlm_gl_barrier_desc.exit.i.i, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %dissect_struct_layout_intent.exit.i.i, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.ck, %bb.ci, %bb.cg, %bb.cf, %bb.ce, %dissect_struct_fid_array.exit.i, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %.thread293.i, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %.thread291.i, %bb.bk, %bb.bj, %.thread289.i, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %.thread287.i, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %.thread285.i, %bb.ar, %bb.aq, %bb.ap, %.thread282.i, %bb.an, %.thread280.i, %bb.am, %bb.al, %.thread278.i, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %dissect_struct_lu_ladvise_hdr.exit.i, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.thread4.i, %bb.o, %bb.n, %.thread2.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.thread.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.gk, %bb.a, %bb.gr, %bb.gq, %bb.go, %bb.gm, %bb.gj, %bb.gh, %bb.gf, %bb.gd
  %.0 = phi i32 [ %1, %bb.gr ], [ %1, %bb.gk ], [ %1, %bb.x ], [ %i.eg, %bb.ai ], [ %i.adp, %.thread39.i ], [ %i.aee, %bb.gd ], [ %i.aeg, %bb.gf ], [ %i.aei, %bb.gh ], [ %i.aek, %bb.gj ], [ %1, %bb.a ], [ %i.aen, %bb.gm ], [ %i.aep, %bb.go ], [ %i.aer, %bb.gq ], [ %1, %bb.ad ], [ %i.o, %bb.e ], [ %i.m, %bb.d ], [ %i.t, %bb.g ], [ %i.p, %bb.f ], [ %i.y, %bb.i ], [ %i.u, %bb.h ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ], [ %i.ad, %bb.l ], [ %i.ah, %bb.n ], [ %1, %bb.m ], [ %i.aj, %bb.p ], [ %1, %bb.o ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.q ], [ %i.al, %bb.r ], [ %1, %bb.s ], [ %i.aq, %bb.t ], [ %i.at, %bb.v ], [ %1, %bb.u ], [ %i.au, %bb.w ], [ %i.ai, %.thread4.i ], [ %i.ca, %bb.aa ], [ %i.dy, %dissect_struct_lu_ladvise_hdr.exit.i ], [ %i.x, %.thread.i ], [ %i.af, %.thread2.i ], [ %i.bz, %bb.z ], [ %1, %bb.y ], [ %1, %bb.cg ], [ %i.ek, %bb.aj ], [ %i.eb, %bb.ag ], [ %i.et, %bb.al ], [ %1, %bb.ak ], [ %i.ev, %bb.an ], [ %1, %bb.am ], [ %i.ez, %bb.aq ], [ %1, %bb.ap ], [ %1, %bb.af ], [ %i.fd, %bb.as ], [ %i.fa, %bb.ar ], [ %i.ff, %bb.au ], [ %1, %bb.at ], [ %i.fi, %bb.aw ], [ %i.fg, %bb.av ], [ %i.fk, %bb.ax ], [ %i.fp, %bb.az ], [ %1, %bb.ay ], [ %i.fs, %bb.bb ], [ %1, %bb.ba ], [ %i.ft, %bb.bc ], [ %i.fz, %bb.be ], [ %i.fu, %bb.bd ], [ %i.gc, %bb.bg ], [ %1, %bb.bf ], [ %1, %bb.bh ], [ %i.gi, %bb.bj ], [ %1, %bb.bi ], [ %i.gl, %bb.bl ], [ %i.gj, %bb.bk ], [ %i.gp, %bb.bn ], [ %1, %bb.bm ], [ %i.gs, %bb.bp ], [ %i.gq, %bb.bo ], [ %i.gv, %bb.br ], [ %1, %bb.bq ], [ %i.ha, %bb.bt ], [ %1, %bb.bs ], [ %i.hd, %bb.bv ], [ %1, %bb.bu ], [ %i.hf, %bb.bx ], [ %1, %bb.bw ], [ %i.hl, %bb.bz ], [ %1, %bb.by ], [ %i.im, %bb.ce ], [ %i.in, %bb.cf ], [ %.0.i.i, %dissect_struct_fid_array.exit.i ], [ %i.gr, %.thread293.i ], [ %i.eo, %.thread278.i ], [ %i.eu, %.thread280.i ], [ %i.ex, %.thread282.i ], [ %i.fc, %.thread285.i ], [ %i.fy, %.thread287.i ], [ %i.gf, %.thread289.i ], [ %i.gk, %.thread291.i ], [ %i.ec, %bb.ah ], [ %i.aag, %.thread.i134 ], [ %1, %bb.fo ], [ %i.zf, %bb.fn ], [ %11, %dissect_xattr_buffers.exit.i.i ], [ %1, %bb.es ], [ %1, %bb.es ], [ %1, %bb.es ], [ %1, %bb.es ], [ %1, %bb.ci ], [ %i.ze, %bb.fm ], [ %i.sz, %bb.eu ], [ %i.wb, %dissect_struct_lmv_user_md.exit.i.i ], [ %i.wi, %bb.fc ], [ %i.wk, %bb.fd ], [ %i.aad, %bb.fq ], [ %1, %bb.fp ], [ %i.rb, %bb.eo ], [ %i.rb, %bb.ep ], [ %i.sr, %bb.eq ], [ %i.ns, %bb.ek ], [ %i.qy, %bb.el ], [ %i.pd, %dissect_struct_ldlm_gl_barrier_desc.exit.i.i ], [ %i.qz, %bb.em ], [ %i.ns, %bb.ed ], [ %i.ns, %bb.ee ], [ %i.no, %bb.ea ], [ %i.nm, %dissect_struct_layout_intent.exit.i.i ], [ %i.mj, %bb.du ], [ %i.mf, %bb.dt ], [ %i.mb, %bb.ds ], [ %i.lr, %bb.dr ], [ %i.nq, %bb.ec ], [ %i.iq, %bb.ck ], [ %i.sv, %bb.er ], [ %i.ns, %bb.ej ], [ %i.ra, %bb.en ], [ %i.np, %bb.eb ], [ %1, %bb.ga ], [ %i.aai, %bb.fv ], [ %1, %bb.fu ], [ %.080.i.i, %dissect_struct_mgs_target_info.exit.i ], [ %1, %bb.fs ], [ %1, %bb.fs ], [ %1, %bb.fs ], [ %i.acq, %bb.fz ], [ %i.aec, %bb.gb ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @process_opcode_obd(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %.0.val, i32 noundef %4) unnamed_addr #0 {
bb.a:
  switch i32 %.0.val, label %bb.h [
    i32 400, label %dissect_struct_idx_info.exit
    i32 401, label %bb.b
    i32 402, label %bb.d
    i32 403, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %4, 4711
  br i1 %i.a, label %bb.c, label %dissect_struct_idx_info.exit

bb.c:                                             ; preds = %bb.b
  %i.b = tail call fastcc i32 @dissect_struct_llog_cookie_array(ptr noundef %0, i32 noundef %1, ptr noundef %3, i32 noundef 1)
  br label %dissect_struct_idx_info.exit

bb.d:                                             ; preds = %bb.a
  %i.c = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %3, ptr noundef nonnull @ei_lustre_obsopc) ; 0 uses
  br label %dissect_struct_idx_info.exit

bb.e:                                             ; preds = %bb.a
  %i.d = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.e = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.f = icmp eq i32 %i.e, 198183891
  %i.g = select i1 %i.f, i32 0, i32 60
  %i.h = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.g)
  %i.i = icmp ult i32 %i.h, 2
  br i1 %i.i, label %dissect_struct_idx_info.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.k = icmp eq i32 %i.j, 198183891
  %i.l = select i1 %i.k, i32 36, i32 64
  %i.m = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.l)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %dissect_struct_idx_info.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr @hf_lustre_idx_info, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.o, ptr noundef %0, i32 noundef %1, i32 noundef 80, i32 noundef 0)
  %i.q = load i32, ptr @ett_lustre_idx_info, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 11 uses
  %i.s = load i32, ptr @hf_lustre_idx_info_magic, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.u = add i32 %1, 4
  %i.v = load i32, ptr @hf_lustre_idx_info_flags, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.x = add i32 %1, 8
  %i.y = load i32, ptr @hf_lustre_idx_info_count, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aa = add i32 %1, 10
  %i.ab = load i32, ptr @hf_lustre_idx_info_padding, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.aa, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %1, 12
  %i.ae = load i32, ptr @hf_lustre_idx_info_attrs, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ag = add i32 %1, 16
  %i.ah = load i32, ptr @hf_lustre_idx_info_fid, align 4
  %i.ai = tail call fastcc i32 @dissect_struct_lu_fid(ptr noundef %0, i32 noundef %i.ag, ptr noundef %i.r, i32 noundef %i.ah) ; 6 uses
  %i.aj = load i32, ptr @hf_lustre_idx_info_hash_start, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.al = add i32 %i.ai, 8
  %i.am = load i32, ptr @hf_lustre_idx_info_hash_end, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ao = add i32 %i.ai, 16
  %i.ap = load i32, ptr @hf_lustre_idx_info_keysize, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ar = add i32 %i.ai, 18
  %i.as = load i32, ptr @hf_lustre_idx_info_recsize, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ar, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.au = add i32 %i.ai, 20
  %i.av = load i32, ptr @hf_lustre_idx_info_padding, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.au, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.ax = add i32 %i.ai, 32
  br label %dissect_struct_idx_info.exit

bb.h:                                             ; preds = %bb.a
  %i.ay = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %3, ptr noundef nonnull @ei_lustre_badopc, ptr noundef nonnull @.str.1830, i32 noundef %.0.val, i32 noundef %4) ; 0 uses
  br label %dissect_struct_idx_info.exit

dissect_struct_idx_info.exit:                     ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.h, %bb.d, %bb.a
  %.0 = phi i32 [ %1, %bb.h ], [ %1, %bb.a ], [ %i.b, %bb.c ], [ %1, %bb.b ], [ %1, %bb.d ], [ %i.ax, %bb.g ], [ %1, %bb.f ], [ %1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @process_opcode_llog(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %.0.val, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  switch i32 %.0.val, label %bb.bc [
    i32 501, label %bb.b
    i32 502, label %bb.d
    i32 508, label %bb.d
    i32 503, label %bb.at
    i32 506, label %bb.av
    i32 509, label %bb.az
    i32 507, label %bb.ba
    i32 504, label %bb.bb
    i32 505, label %dissect_llog_eadata.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @dissect_struct_llogd_body(ptr noundef %0, i32 noundef %1, ptr noundef %3) ; 2 uses
  %i.g = icmp eq i32 %4, 4711
  br i1 %i.g, label %bb.c, label %dissect_llog_eadata.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @hf_lustre_name, align 4
  %i.i = tail call fastcc i32 @display_buffer_string(ptr noundef %0, ptr noundef %3, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 2)
  %i.j = tail call fastcc i32 @dissect_struct_mdt_body(ptr noundef %0, i32 noundef %i.i, ptr noundef %3, i32 noundef 3)
  br label %dissect_llog_eadata.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.k = tail call fastcc i32 @dissect_struct_llogd_body(ptr noundef %0, i32 noundef %1, ptr noundef %3) ; 4 uses
  %i.l = icmp eq i32 %4, 4713
  br i1 %i.l, label %bb.e, label %dissect_llog_eadata.exit

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8) ; 0 uses
  %i.n = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.o = icmp eq i32 %i.n, 198183891
  %i.p = select i1 %i.o, i32 0, i32 60
  %i.q = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.p)
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %dissect_llog_eadata.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.t = icmp eq i32 %i.s, 198183891
  %i.u = select i1 %i.t, i32 40, i32 68
  %i.v = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.u)
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %dissect_llog_eadata.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.x = getelementptr i8, ptr %2, i64 416
  br label %bb.g

bb.g:                                             ; preds = %bb.aq, %.preheader.i
  %.0325.i = phi i32 [ %.1.i, %bb.aq ], [ %i.k, %.preheader.i ] ; 40 uses
  %i.y = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0325.i) ; 17 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add i32 %.0325.i, 8
  %i.aa = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.z) ; 3 uses
  switch i32 %i.aa, label %bb.ap [
    i32 274726912, label %bb.i
    i32 274730752, label %bb.k
    i32 274731008, label %bb.l
    i32 274801668, label %bb.m
    i32 275325956, label %bb.n
    i32 274801665, label %bb.o
    i32 275325953, label %bb.p
    i32 274857984, label %bb.q
    i32 274923520, label %bb.w
    i32 274989056, label %bb.x
    i32 275054592, label %bb.y
    i32 275120128, label %bb.z
    i32 275185664, label %bb.ak
    i32 275251200, label %bb.al
    i32 275382272, label %bb.am
    i32 275010873, label %bb.an
    i32 275010875, label %bb.ao
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0325.i) ; 2 uses
  %i.ac = load i32, ptr @hf_lustre_llog_rec, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ac, ptr noundef %0, i32 noundef %.0325.i, i32 noundef %i.ab, i32 noundef 0)
  %i.ae = load i32, ptr @ett_lustre_llog_rec, align 4
  %i.af = call ptr @proto_item_add_subtree(ptr noundef %i.ad, i32 noundef %i.ae) ; 3 uses
  %i.ag = load i32, ptr @hf_lustre_llog_rec_hdr, align 4
  %i.ah = call fastcc i32 @dissect_struct_llog_rec_hdr(ptr noundef %0, ptr noundef %2, i32 noundef %.0325.i, ptr noundef %i.af, i32 noundef %i.ag) ; 4 uses
  %i.ai = sub i32 0, %i.ah
  %i.aj = and i32 %i.ai, 7                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %add_extra_padding.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr @hf_lustre_extra_padding, align 4
end_hunk_0
