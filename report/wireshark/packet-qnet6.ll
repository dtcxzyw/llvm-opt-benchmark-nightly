Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-qnet6?download=true
inline.NumInlined: 49
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_qnet6_kif_msgsend_msg:bb.a
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bl, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bo = load i32, ptr %3, align 4
  %i.bp = add i32 %i.bo, 4                        ; 2 uses
  store i32 %i.bp, ptr %3, align 4
  %i.bq = load i32, ptr @hf_qnet6_kif_msg_connect_handle, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bp, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bs = load i32, ptr %3, align 4
  %i.bt = add i32 %i.bs, 4                        ; 2 uses
  store i32 %i.bt, ptr %3, align 4
  %i.bu = load i32, ptr @hf_qnet6_kif_msg_connect_ioflag, align 4
  %i.bv = load i32, ptr @ett_qnet6_kif_msg_ioflag, align 4
  %i.bw = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg.ioflag_fields, i32 noundef %4) ; 0 uses
  %i.bx = load i32, ptr %3, align 4
  %i.by = add i32 %i.bx, 4                        ; 2 uses
  store i32 %i.by, ptr %3, align 4
  %i.bz = load i32, ptr @hf_qnet6_kif_msg_connect_mode, align 4
  %i.ca = load i32, ptr @ett_qnet6_kif_msg_mode, align 4
  %i.cb = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.ca, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg.mode_fields, i32 noundef %4) ; 0 uses
  %i.cc = load i32, ptr %3, align 4
  %i.cd = add i32 %i.cc, 4                        ; 2 uses
  store i32 %i.cd, ptr %3, align 4
  %i.ce = load i32, ptr @hf_qnet6_kif_msg_connect_sflag, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ce, ptr noundef %0, i32 noundef %i.cd, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cg = load i32, ptr %3, align 4
  %i.ch = add i32 %i.cg, 2                        ; 2 uses
  store i32 %i.ch, ptr %3, align 4
  %i.ci = load i32, ptr @hf_qnet6_kif_msg_connect_access, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ch, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ck = load i32, ptr %3, align 4
  %i.cl = add i32 %i.ck, 2                        ; 2 uses
  store i32 %i.cl, ptr %3, align 4
  %i.cm = load i32, ptr @hf_qnet6_kif_msg_connect_zero, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.co = load i32, ptr %3, align 4
  %i.cp = add i32 %i.co, 2                        ; 2 uses
  store i32 %i.cp, ptr %3, align 4
  %i.cq = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.cp, i32 noundef %4)
  %i.cr = load i32, ptr @hf_qnet6_kif_msg_connect_pathlen, align 4
  %i.cs = load i32, ptr %3, align 4
  %i.ct = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cs, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cu = load i32, ptr %3, align 4
  %i.cv = add i32 %i.cu, 2                        ; 2 uses
  store i32 %i.cv, ptr %3, align 4
  %i.cw = load i32, ptr @hf_qnet6_kif_msg_connect_eflag, align 4
  %i.cx = load i32, ptr @ett_qnet6_kif_msg_eflag, align 4
  %i.cy = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg.eflag_fields, i32 noundef %4) ; 0 uses
  %i.cz = load i32, ptr %3, align 4
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.da, ptr %3, align 4
  %i.db = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.da)
  %i.dc = load i32, ptr @hf_qnet6_kif_msg_connect_extratype, align 4
  %i.dd = load i32, ptr %3, align 4
  %i.de = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.dd, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.df = load i32, ptr %3, align 4
  %i.dg = add i32 %i.df, 1                        ; 2 uses
  store i32 %i.dg, ptr %3, align 4
  %i.dh = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.dg, i32 noundef %4) ; 2 uses
  %i.di = load i32, ptr @hf_qnet6_kif_msg_connect_extralen, align 4
  %i.dj = load i32, ptr %3, align 4
  %i.dk = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.dl = load i32, ptr %3, align 4
  %i.dm = add i32 %i.dl, 2                        ; 2 uses
  store i32 %i.dm, ptr %3, align 4
  %i.dn = zext i16 %i.cq to i32
  %spec.select463 = call i32 @llvm.umin.i32(i32 %i.az, i32 %i.dn) ; 5 uses
  %.not297 = icmp eq i32 %spec.select463, 0
  br i1 %.not297, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = load i32, ptr @hf_qnet6_kif_msg_connect_path, align 4
  %i.dp = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.do, ptr noundef %0, i32 noundef %i.dm, i32 noundef %spec.select463, i32 noundef 0) ; 0 uses
  %i.dq = load i32, ptr %3, align 4
  %i.dr = add i32 %i.dq, %spec.select463
  store i32 %i.dr, ptr %3, align 4
  %i.ds = sub nuw nsw i32 %i.az, %spec.select463
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0283 = phi i32 [ %i.ds, %bb.g ], [ %i.az, %bb.f ] ; 4 uses
  %i.dt = getelementptr i8, ptr %1, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load i16, ptr %i.x, align 2
  %i.dw = zext i16 %i.dv to i32
  %i.dx = call ptr @val_to_str_const(i32 noundef %i.dw, ptr noundef nonnull @qnet6_kif_msgsend_msg_connect_subtype_vals, ptr noundef nonnull @.str.1103)
  call void @col_set_str(ptr noundef %i.du, i32 noundef 25, ptr noundef %i.dx)
  %i.dy = zext i16 %i.dh to i32
  %i.dz = icmp ne i16 %i.dh, 0
  %i.ea = icmp ne i32 %.0283, 0
  %or.cond = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond, label %bb.i, label %bb.dz

bb.i:                                             ; preds = %bb.h
  %i.eb = and i32 %spec.select463, 7              ; 2 uses
  %.not298 = icmp eq i32 %i.eb, 0
  br i1 %.not298, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ec = sub nuw nsw i32 8, %i.eb
  %spec.select299464 = call i32 @llvm.umin.i32(i32 %.0283, i32 %i.ec) ; 3 uses
  %i.ed = load i32, ptr @hf_qnet6_kif_msg_connect_pad_data, align 4
  %i.ee = load i32, ptr %3, align 4
  %i.ef = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ed, ptr noundef %0, i32 noundef %i.ee, i32 noundef %spec.select299464, i32 noundef 0) ; 0 uses
  %i.eg = load i32, ptr %3, align 4
  %i.eh = add i32 %i.eg, %spec.select299464
  store i32 %i.eh, ptr %3, align 4
  %i.ei = sub nuw nsw i32 %.0283, %spec.select299464
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1284 = phi i32 [ %i.ei, %bb.j ], [ %.0283, %bb.i ]
  %i.ej = call i32 @llvm.umin.i32(i32 %.1284, i32 %i.dy) ; 3 uses
  %i.ek = load i16, ptr %i.x, align 2
  %switch = icmp ult i16 %i.ek, 2
  br i1 %switch, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.el = icmp samesign ugt i32 %i.ej, 3
  br i1 %i.el, label %bb.m, label %bb.dz

bb.m:                                             ; preds = %bb.l
  %i.em = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef %4)
  br label %bb.dz

bb.n:                                             ; preds = %bb.k
  %i.en = load i32, ptr %3, align 4
  switch i8 %i.db, label %bb.r [
    i8 1, label %bb.s
    i8 2, label %bb.o
    i8 9, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  br label %bb.s

bb.q:                                             ; preds = %bb.n, %bb.n
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %hf_qnet6_kif_msg_connect_extra_link_ocb.sink = phi ptr [ @hf_qnet6_kif_msg_connect_extra_data, %bb.r ], [ @hf_qnet6_kif_msg_connect_extra_symlink_path, %bb.o ], [ @hf_qnet6_kif_msg_connect_extra_rename_path, %bb.p ], [ @hf_qnet6_kif_msg_connect_extra_mount, %bb.q ], [ @hf_qnet6_kif_msg_connect_extra_link_ocb, %bb.n ]
  %.sink521 = phi i32 [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ %4, %bb.n ]
  %i.eo = load i32, ptr %hf_qnet6_kif_msg_connect_extra_link_ocb.sink, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.en, i32 noundef %i.ej, i32 noundef %.sink521) ; 0 uses
  %i.eq = load i32, ptr %3, align 4
  %i.er = add i32 %i.eq, %i.ej
  store i32 %i.er, ptr %3, align 4
  br label %bb.dz

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #6
  %i.es = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.et = load i32, ptr %3, align 4
  %i.eu = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.es, ptr noundef %0, i32 noundef %i.et, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.w), !inline_history !12 ; 0 uses
  %i.ev = load i32, ptr %3, align 4
  %i.ew = add i32 %i.ev, 2                        ; 2 uses
  store i32 %i.ew, ptr %3, align 4
  %i.ex = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.ew, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12
  %i.ey = load i32, ptr %3, align 4
  %i.ez = load i32, ptr @hf_qnet6_kif_msg_devctl_dcmd, align 4
  %i.fa = load i32, ptr @ett_qnet6_kif_msg_devctl_dcmd, align 4
  %i.fb = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.ey, i32 noundef %i.ez, i32 noundef %i.fa, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_devctl.dcmd_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12 ; 0 uses
  %i.fc = load i32, ptr %3, align 4
  %i.fd = add i32 %i.fc, 4                        ; 2 uses
  store i32 %i.fd, ptr %3, align 4
  %i.fe = load i32, ptr @hf_qnet6_kif_msg_devctl_nbytes, align 4
  %i.ff = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.fe, ptr noundef %0, i32 noundef %i.fd, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12 ; 0 uses
  %i.fg = load i32, ptr %3, align 4
  %i.fh = add i32 %i.fg, 4                        ; 2 uses
  store i32 %i.fh, ptr %3, align 4
  %i.fi = load i32, ptr @hf_qnet6_kif_msg_devctl_zero, align 4
  %i.fj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.fi, ptr noundef %0, i32 noundef %i.fh, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12 ; 0 uses
  %i.fk = load i32, ptr %3, align 4
  %i.fl = add i32 %i.fk, 4                        ; 2 uses
  store i32 %i.fl, ptr %3, align 4
  %i.fm = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.fl), !inline_history !12 ; 4 uses
  %i.fn = load i32, ptr %i.w, align 4
  %i.fo = and i32 %i.fn, -32769                   ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 16
  br i1 %i.fp, label %bb.u, label %dissect_qnet6_kif_msgsend_msg_extra.exit

bb.u:                                             ; preds = %bb.t
  %i.fq = add nsw i32 %i.fo, -16
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.fq, i32 %i.fm) ; 4 uses
  %i.fr = icmp sgt i32 %spec.select.i, 0
  br i1 %i.fr, label %bb.v, label %dissect_qnet6_kif_msgsend_msg_extra.exit

bb.v:                                             ; preds = %bb.u
  %i.fs = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.ft = load i32, ptr %3, align 4
  %i.fu = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.fs, ptr noundef %0, i32 noundef %i.ft, i32 noundef %spec.select.i, ptr noundef nonnull @.str.1104) ; 0 uses
  %i.fv = load i32, ptr %3, align 4
  %i.fw = add i32 %i.fv, %spec.select.i
  store i32 %i.fw, ptr %3, align 4
  %i.fx = sub nuw nsw i32 %i.fm, %spec.select.i
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit

dissect_qnet6_kif_msgsend_msg_extra.exit:         ; preds = %bb.t, %bb.u, %bb.v
  %.0 = phi i32 [ %i.fx, %bb.v ], [ %i.fm, %bb.u ], [ %i.fm, %bb.t ]
  %i.fy = and i32 %i.ex, 65535
  %i.fz = call ptr @try_val_to_str_ext(i32 noundef %i.fy, ptr noundef nonnull @qnet6_kif_msg_devctl_cmd_class_vals_ext), !inline_history !12 ; 2 uses
  %.not.i = icmp eq ptr %i.fz, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit
  %i.ga = getelementptr i8, ptr %1, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.gb, i32 noundef 25, ptr noundef nonnull @.str.1101, ptr noundef nonnull %i.fz), !inline_history !12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %dissect_qnet6_kif_msgsend_msg_extra.exit
  %i.gc = load i32, ptr %i.w, align 4
  %i.gd = and i32 %i.gc, 32768
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = icmp sgt i32 %.0, 0
  %or.cond.i = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond.i, label %bb.y, label %dissect_qnet6_kif_msgsend_msg_devctl.exit

bb.y:                                             ; preds = %bb.x
  %i.gg = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12
  br label %dissect_qnet6_kif_msgsend_msg_devctl.exit

dissect_qnet6_kif_msgsend_msg_devctl.exit:        ; preds = %bb.x, %bb.y
  %.0.i = phi i32 [ %i.gg, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #6
  br label %bb.dz

bb.z:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  %i.gh = load i32, ptr %3, align 4
  %i.gi = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.gh), !inline_history !13 ; 2 uses
  %i.gj = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.gk = load i32, ptr %3, align 4
  %i.gl = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.gj, ptr noundef %0, i32 noundef %i.gk, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.v), !inline_history !13 ; 0 uses
  %i.gm = load i32, ptr %3, align 4
  %i.gn = add i32 %i.gm, 2                        ; 2 uses
  store i32 %i.gn, ptr %3, align 4
  %i.go = load i32, ptr @hf_qnet6_kif_msg_io_read_nbytes, align 4
  %i.gp = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.go, ptr noundef %0, i32 noundef %i.gn, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.gq = load i32, ptr %3, align 4
  %i.gr = add i32 %i.gq, 4                        ; 2 uses
  store i32 %i.gr, ptr %3, align 4
  %i.gs = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.gr, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13
  %i.gt = load i32, ptr %3, align 4
  %i.gu = load i32, ptr @hf_qnet6_kif_msg_io_read_xtypes, align 4
  %i.gv = load i32, ptr @ett_qnet6_kif_msg_read_xtypes, align 4
  %i.gw = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %i.gv, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_read.xtypes_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.gx = load i32, ptr %3, align 4
  %i.gy = add i32 %i.gx, 4                        ; 2 uses
  store i32 %i.gy, ptr %3, align 4
  %i.gz = load i32, ptr @hf_qnet6_kif_zero, align 4
  %i.ha = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.gz, ptr noundef %0, i32 noundef %i.gy, i32 noundef 4, i32 noundef 0), !inline_history !13 ; 0 uses
  %i.hb = load i32, ptr %3, align 4
  %i.hc = add i32 %i.hb, 4                        ; 4 uses
  store i32 %i.hc, ptr %3, align 4
  %i.hd = add i32 %i.gi, -14
  %trunc.i = trunc i32 %i.gs to i8
  switch i8 %trunc.i, label %bb.ac [
    i8 5, label %bb.aa
    i8 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.he = load i32, ptr @hf_qnet6_kif_msg_io_read_xoffset, align 4
  %i.hf = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hc, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.hg = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_min, align 4
  %i.hh = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.hg, ptr noundef %0, i32 noundef %i.hc, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.hi = load i32, ptr %3, align 4
  %i.hj = add i32 %i.hi, 4                        ; 2 uses
  store i32 %i.hj, ptr %3, align 4
  %i.hk = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_time, align 4
  %i.hl = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.hk, ptr noundef %0, i32 noundef %i.hj, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.hm = load i32, ptr %3, align 4
  %i.hn = add i32 %i.hm, 4                        ; 2 uses
  store i32 %i.hn, ptr %3, align 4
  %i.ho = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_timeout, align 4
  %i.hp = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ho, ptr noundef %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.ab
  %.sink526 = phi i32 [ 4, %bb.ab ], [ 8, %bb.aa ]
  %.sink524 = phi i32 [ -26, %bb.ab ], [ -22, %bb.aa ]
  %.sink522.ph = phi i32 [ 28, %bb.ab ], [ 24, %bb.aa ]
  %i.hq = load i32, ptr %3, align 4
  %i.hr = add i32 %i.hq, %.sink526                ; 2 uses
  store i32 %i.hr, ptr %3, align 4
  %i.hs = add i32 %.sink524, %i.gi
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z
  %i.ht = phi i32 [ %i.hc, %bb.z ], [ %i.hr, %.sink.split ]
  %.0540 = phi i32 [ %i.hd, %bb.z ], [ %i.hs, %.sink.split ] ; 4 uses
  %.sink522 = phi i32 [ 16, %bb.z ], [ %.sink522.ph, %.sink.split ] ; 2 uses
  %i.hu = load i32, ptr %i.v, align 4             ; 3 uses
  %i.hv = and i32 %i.hu, -32769                   ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, %.sink522
  br i1 %i.hw, label %bb.ad, label %dissect_qnet6_kif_msgsend_msg_extra.exit532

bb.ad:                                            ; preds = %bb.ac
  %i.hx = sub nsw i32 %i.hv, %.sink522
  %spec.select.i531 = call i32 @llvm.smin.i32(i32 %i.hx, i32 %.0540) ; 4 uses
  %i.hy = icmp sgt i32 %spec.select.i531, 0
  br i1 %i.hy, label %bb.ae, label %dissect_qnet6_kif_msgsend_msg_extra.exit532

bb.ae:                                            ; preds = %bb.ad
  %i.hz = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.ia = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.hz, ptr noundef %0, i32 noundef %i.ht, i32 noundef %spec.select.i531, ptr noundef nonnull @.str.1105) ; 0 uses
  %i.ib = load i32, ptr %3, align 4
  %i.ic = add i32 %i.ib, %spec.select.i531
  store i32 %i.ic, ptr %3, align 4
  %i.id = sub nuw nsw i32 %.0540, %spec.select.i531
  %.pre546 = load i32, ptr %i.v, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit532

dissect_qnet6_kif_msgsend_msg_extra.exit532:      ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.ie = phi i32 [ %.pre546, %bb.ae ], [ %i.hu, %bb.ad ], [ %i.hu, %bb.ac ]
  %.1 = phi i32 [ %i.id, %bb.ae ], [ %.0540, %bb.ad ], [ %.0540, %bb.ac ]
  %i.if = and i32 %i.ie, 32768
  %i.ig = icmp ne i32 %i.if, 0
  %i.ih = icmp sgt i32 %.1, 0
  %or.cond.i301 = select i1 %i.ig, i1 %i.ih, i1 false
  br i1 %or.cond.i301, label %bb.af, label %dissect_qnet6_kif_msgsend_msg_read.exit

bb.af:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit532
  %i.ii = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13
  br label %dissect_qnet6_kif_msgsend_msg_read.exit

dissect_qnet6_kif_msgsend_msg_read.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit532, %bb.af
  %.0.i302 = phi i32 [ %i.ii, %bb.af ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit532 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  br label %bb.dz

bb.ag:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #6
  %i.ij = load i32, ptr %3, align 4
  %i.ik = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ij), !inline_history !14 ; 2 uses
  %i.il = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.im = load i32, ptr %3, align 4
  %i.in = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.il, ptr noundef %0, i32 noundef %i.im, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.u), !inline_history !14 ; 0 uses
  %i.io = load i32, ptr %3, align 4
  %i.ip = add i32 %i.io, 2                        ; 2 uses
  store i32 %i.ip, ptr %3, align 4
  %i.iq = load i32, ptr @hf_qnet6_kif_msg_io_write_nbytes, align 4
  %i.ir = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.iq, ptr noundef %0, i32 noundef %i.ip, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14 ; 0 uses
  %i.is = load i32, ptr %3, align 4
  %i.it = add i32 %i.is, 4                        ; 2 uses
  store i32 %i.it, ptr %3, align 4
  %i.iu = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.it, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14
  %i.iv = load i32, ptr %3, align 4
  %i.iw = load i32, ptr @hf_qnet6_kif_msg_io_write_xtypes, align 4
  %i.ix = load i32, ptr @ett_qnet6_kif_msg_write_xtypes, align 4
  %i.iy = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.iv, i32 noundef %i.iw, i32 noundef %i.ix, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_write.xtypes_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14 ; 0 uses
  %i.iz = load i32, ptr %3, align 4
  %i.ja = add i32 %i.iz, 4                        ; 2 uses
  store i32 %i.ja, ptr %3, align 4
  %i.jb = load i32, ptr @hf_qnet6_kif_zero, align 4
  %i.jc = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.jb, ptr noundef %0, i32 noundef %i.ja, i32 noundef 4, i32 noundef 0), !inline_history !14 ; 0 uses
  %i.jd = load i32, ptr %3, align 4
  %i.je = add i32 %i.jd, 4                        ; 4 uses
  store i32 %i.je, ptr %3, align 4
  %i.jf = add i32 %i.ik, -14
  %trunc.i303 = trunc i32 %i.iu to i8
  switch i8 %trunc.i303, label %bb.aj [
    i8 5, label %bb.ah
    i8 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.jg = load i32, ptr @hf_qnet6_kif_msg_io_write_xoffset, align 4
  %i.jh = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.jg, ptr noundef %0, i32 noundef %i.je, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14 ; 0 uses
  br label %.sink.split527

bb.ai:                                            ; preds = %bb.ag
  %i.ji = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_min, align 4
  %i.jj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ji, ptr noundef %0, i32 noundef %i.je, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14 ; 0 uses
  %i.jk = load i32, ptr %3, align 4
  %i.jl = add i32 %i.jk, 4                        ; 2 uses
  store i32 %i.jl, ptr %3, align 4
  %i.jm = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_time, align 4
  %i.jn = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.jm, ptr noundef %0, i32 noundef %i.jl, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14 ; 0 uses
  %i.jo = load i32, ptr %3, align 4
  %i.jp = add i32 %i.jo, 4                        ; 2 uses
  store i32 %i.jp, ptr %3, align 4
  %i.jq = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_timeout, align 4
  %i.jr = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.jq, ptr noundef %0, i32 noundef %i.jp, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14 ; 0 uses
  br label %.sink.split527

.sink.split527:                                   ; preds = %bb.ah, %bb.ai
  %.sink530 = phi i32 [ 4, %bb.ai ], [ 8, %bb.ah ]
  %.sink528 = phi i32 [ -26, %bb.ai ], [ -22, %bb.ah ]
  %.sink523.ph = phi i32 [ 28, %bb.ai ], [ 24, %bb.ah ]
  %i.js = load i32, ptr %3, align 4
  %i.jt = add i32 %i.js, %.sink530                ; 2 uses
  store i32 %i.jt, ptr %3, align 4
  %i.ju = add i32 %.sink528, %i.ik
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split527, %bb.ag
  %i.jv = phi i32 [ %i.je, %bb.ag ], [ %i.jt, %.sink.split527 ] ; 3 uses
  %.0541 = phi i32 [ %i.jf, %bb.ag ], [ %i.ju, %.sink.split527 ] ; 4 uses
  %.sink523 = phi i32 [ 16, %bb.ag ], [ %.sink523.ph, %.sink.split527 ] ; 2 uses
  %i.jw = load i32, ptr %i.u, align 4             ; 3 uses
  %i.jx = and i32 %i.jw, -32769                   ; 2 uses
  %i.jy = icmp sgt i32 %i.jx, %.sink523
  br i1 %i.jy, label %bb.ak, label %dissect_qnet6_kif_msgsend_msg_extra.exit534

bb.ak:                                            ; preds = %bb.aj
  %i.jz = sub nsw i32 %i.jx, %.sink523
  %spec.select.i533 = call i32 @llvm.smin.i32(i32 %i.jz, i32 %.0541) ; 4 uses
  %i.ka = icmp sgt i32 %spec.select.i533, 0
  br i1 %i.ka, label %bb.al, label %dissect_qnet6_kif_msgsend_msg_extra.exit534

bb.al:                                            ; preds = %bb.ak
  %i.kb = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.kc = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.kb, ptr noundef %0, i32 noundef %i.jv, i32 noundef %spec.select.i533, ptr noundef nonnull @.str.1106) ; 0 uses
  %i.kd = load i32, ptr %3, align 4
  %i.ke = add i32 %i.kd, %spec.select.i533        ; 2 uses
  store i32 %i.ke, ptr %3, align 4
  %i.kf = sub nuw nsw i32 %.0541, %spec.select.i533
  %.pre545 = load i32, ptr %i.u, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit534

dissect_qnet6_kif_msgsend_msg_extra.exit534:      ; preds = %bb.aj, %bb.ak, %bb.al
  %i.kg = phi i32 [ %i.ke, %bb.al ], [ %i.jv, %bb.ak ], [ %i.jv, %bb.aj ]
  %i.kh = phi i32 [ %.pre545, %bb.al ], [ %i.jw, %bb.ak ], [ %i.jw, %bb.aj ]
  %.1542 = phi i32 [ %i.kf, %bb.al ], [ %.0541, %bb.ak ], [ %.0541, %bb.aj ] ; 2 uses
  %i.ki = and i32 %i.kh, 32768
  %.not.i304 = icmp eq i32 %i.ki, 0
  %i.kj = icmp sgt i32 %.1542, 0                  ; 2 uses
  br i1 %.not.i304, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit534
  br i1 %i.kj, label %bb.an, label %dissect_qnet6_kif_msgsend_msg_write.exit

bb.an:                                            ; preds = %bb.am
  %i.kk = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !14
  br label %dissect_qnet6_kif_msgsend_msg_write.exit

bb.ao:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit534
  br i1 %i.kj, label %bb.ap, label %dissect_qnet6_kif_msgsend_msg_write.exit

bb.ap:                                            ; preds = %bb.ao
  %i.kl = load i32, ptr @hf_qnet6_kif_msg_io_write_data, align 4
  %i.km = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.kl, ptr noundef %0, i32 noundef %i.kg, i32 noundef %.1542, i32 noundef 0), !inline_history !14 ; 0 uses
  br label %dissect_qnet6_kif_msgsend_msg_write.exit

dissect_qnet6_kif_msgsend_msg_write.exit:         ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap
  %.0.i305 = phi i32 [ %i.kk, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #6
  br label %bb.dz

bb.aq:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #6
  %i.kn = load i32, ptr %3, align 4
  %i.ko = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.kn), !inline_history !15
  %i.kp = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.kq = load i32, ptr %3, align 4
  %i.kr = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.kp, ptr noundef %0, i32 noundef %i.kq, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.t), !inline_history !15 ; 0 uses
  %i.ks = load i32, ptr %3, align 4
  %i.kt = add i32 %i.ks, 2                        ; 2 uses
  store i32 %i.kt, ptr %3, align 4
  %i.ku = load i32, ptr @hf_qnet6_kif_msg_pathconf_name, align 4
  %i.kv = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ku, ptr noundef %0, i32 noundef %i.kt, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !15 ; 0 uses
  %i.kw = load i32, ptr %3, align 4
  %i.kx = add i32 %i.kw, 2                        ; 2 uses
  store i32 %i.kx, ptr %3, align 4
  %i.ky = load i32, ptr @hf_qnet6_kif_zero, align 4
  %i.kz = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ky, ptr noundef %0, i32 noundef %i.kx, i32 noundef 2, i32 noundef 0), !inline_history !15 ; 0 uses
  %i.la = load i32, ptr %3, align 4
  %i.lb = add i32 %i.la, 2                        ; 2 uses
  store i32 %i.lb, ptr %3, align 4
  %i.lc = add i32 %i.ko, -6                       ; 4 uses
  %i.ld = load i16, ptr %i.t, align 2             ; 3 uses
  %i.le = and i16 %i.ld, 32767                    ; 2 uses
  %i.lf = icmp samesign ugt i16 %i.le, 8
  br i1 %i.lf, label %bb.ar, label %dissect_qnet6_kif_msgsend_msg_extra.exit341

bb.ar:                                            ; preds = %bb.aq
  %i.lg = zext nneg i16 %i.le to i32
  %i.lh = add nsw i32 %i.lg, -8
  %spec.select.i340 = call i32 @llvm.smin.i32(i32 %i.lh, i32 %i.lc) ; 4 uses
  %i.li = icmp sgt i32 %spec.select.i340, 0
  br i1 %i.li, label %bb.as, label %dissect_qnet6_kif_msgsend_msg_extra.exit341

bb.as:                                            ; preds = %bb.ar
  %i.lj = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.lk = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.lj, ptr noundef %0, i32 noundef %i.lb, i32 noundef %spec.select.i340, ptr noundef nonnull @.str.1107) ; 0 uses
  %i.ll = load i32, ptr %3, align 4
  %i.lm = add i32 %i.ll, %spec.select.i340
  store i32 %i.lm, ptr %3, align 4
  %i.ln = sub nuw nsw i32 %i.lc, %spec.select.i340
  %.pre489 = load i16, ptr %i.t, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit341

dissect_qnet6_kif_msgsend_msg_extra.exit341:      ; preds = %bb.aq, %bb.ar, %bb.as
  %i.lo = phi i16 [ %.pre489, %bb.as ], [ %i.ld, %bb.ar ], [ %i.ld, %bb.aq ]
  %.0445 = phi i32 [ %i.ln, %bb.as ], [ %i.lc, %bb.ar ], [ %i.lc, %bb.aq ]
  %i.lp = icmp slt i16 %i.lo, 0
  %i.lq = icmp sgt i32 %.0445, 0
  %or.cond.i306 = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %or.cond.i306, label %bb.at, label %dissect_qnet6_kif_msgsend_msg_pathconf.exit

bb.at:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit341
  %i.lr = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !15
  br label %dissect_qnet6_kif_msgsend_msg_pathconf.exit

dissect_qnet6_kif_msgsend_msg_pathconf.exit:      ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit341, %bb.at
  %.0.i307 = phi i32 [ %i.lr, %bb.at ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit341 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #6
  br label %bb.dz

bb.au:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #6
  %i.ls = load i32, ptr %3, align 4
  %i.lt = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ls), !inline_history !16
  %i.lu = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.lv = load i32, ptr %3, align 4
  %i.lw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.lu, ptr noundef %0, i32 noundef %i.lv, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.s), !inline_history !16 ; 0 uses
  %i.lx = load i32, ptr %3, align 4
  %i.ly = add i32 %i.lx, 2                        ; 2 uses
  store i32 %i.ly, ptr %3, align 4
  %i.lz = load i32, ptr @hf_qnet6_kif_zero, align 4
  %i.ma = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.lz, ptr noundef %0, i32 noundef %i.ly, i32 noundef 4, i32 noundef 0), !inline_history !16 ; 0 uses
  %i.mb = load i32, ptr %3, align 4
  %i.mc = add i32 %i.mb, 4                        ; 2 uses
  store i32 %i.mc, ptr %3, align 4
  %i.md = add i32 %i.lt, -6                       ; 4 uses
  %i.me = load i32, ptr %i.s, align 4             ; 3 uses
  %i.mf = and i32 %i.me, -32769                   ; 2 uses
  %i.mg = icmp sgt i32 %i.mf, 8
  br i1 %i.mg, label %bb.av, label %dissect_qnet6_kif_msgsend_msg_extra.exit343

bb.av:                                            ; preds = %bb.au
  %i.mh = add nsw i32 %i.mf, -8
  %spec.select.i342 = call i32 @llvm.smin.i32(i32 %i.mh, i32 %i.md) ; 4 uses
  %i.mi = icmp sgt i32 %spec.select.i342, 0
  br i1 %i.mi, label %bb.aw, label %dissect_qnet6_kif_msgsend_msg_extra.exit343

bb.aw:                                            ; preds = %bb.av
  %i.mj = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.mk = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.mj, ptr noundef %0, i32 noundef %i.mc, i32 noundef %spec.select.i342, ptr noundef nonnull @.str.1108) ; 0 uses
  %i.ml = load i32, ptr %3, align 4
  %i.mm = add i32 %i.ml, %spec.select.i342
  store i32 %i.mm, ptr %3, align 4
  %i.mn = sub nuw nsw i32 %i.md, %spec.select.i342
  %.pre488 = load i32, ptr %i.s, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit343

dissect_qnet6_kif_msgsend_msg_extra.exit343:      ; preds = %bb.au, %bb.av, %bb.aw
  %i.mo = phi i32 [ %.pre488, %bb.aw ], [ %i.me, %bb.av ], [ %i.me, %bb.au ]
  %.0446 = phi i32 [ %i.mn, %bb.aw ], [ %i.md, %bb.av ], [ %i.md, %bb.au ]
  %i.mp = and i32 %i.mo, 32768
  %i.mq = icmp ne i32 %i.mp, 0
  %i.mr = icmp sgt i32 %.0446, 0
  %or.cond.i308 = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %or.cond.i308, label %bb.ax, label %dissect_qnet6_kif_msgsend_msg_stat.exit

bb.ax:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit343
  %i.ms = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !16
  br label %dissect_qnet6_kif_msgsend_msg_stat.exit

dissect_qnet6_kif_msgsend_msg_stat.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit343, %bb.ax
  %.0.i309 = phi i32 [ %i.ms, %bb.ax ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit343 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  br label %bb.dz

bb.ay:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #6
  %i.mt = load i32, ptr %3, align 4
  %i.mu = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.mt), !inline_history !17
  %i.mv = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.mw = load i32, ptr %3, align 4
  %i.mx = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.mv, ptr noundef %0, i32 noundef %i.mw, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.r), !inline_history !17 ; 0 uses
  %i.my = load i32, ptr %3, align 4
  %i.mz = add i32 %i.my, 2                        ; 2 uses
  store i32 %i.mz, ptr %3, align 4
  %i.na = load i32, ptr @hf_qnet6_kif_msg_seek_whence, align 4
  %i.nb = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.na, ptr noundef %0, i32 noundef %i.mz, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !17 ; 0 uses
  %i.nc = load i32, ptr %3, align 4
  %i.nd = add i32 %i.nc, 2                        ; 2 uses
  store i32 %i.nd, ptr %3, align 4
  %i.ne = load i32, ptr @hf_qnet6_kif_zero, align 4
  %i.nf = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ne, ptr noundef %0, i32 noundef %i.nd, i32 noundef 2, i32 noundef 0), !inline_history !17 ; 0 uses
  %i.ng = load i32, ptr %3, align 4
  %i.nh = add i32 %i.ng, 2                        ; 2 uses
  store i32 %i.nh, ptr %3, align 4
  %i.ni = load i32, ptr @hf_qnet6_kif_msg_seek_offset, align 4
  %i.nj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ni, ptr noundef %0, i32 noundef %i.nh, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !17 ; 0 uses
  %i.nk = load i32, ptr %3, align 4
  %i.nl = add i32 %i.nk, 8                        ; 2 uses
  store i32 %i.nl, ptr %3, align 4
  %i.nm = add i32 %i.mu, -14                      ; 4 uses
  %i.nn = load i32, ptr %i.r, align 4             ; 3 uses
  %i.no = and i32 %i.nn, -32769                   ; 2 uses
  %i.np = icmp sgt i32 %i.no, 16
  br i1 %i.np, label %bb.az, label %dissect_qnet6_kif_msgsend_msg_extra.exit345

bb.az:                                            ; preds = %bb.ay
  %i.nq = add nsw i32 %i.no, -16
  %spec.select.i344 = call i32 @llvm.smin.i32(i32 %i.nq, i32 %i.nm) ; 4 uses
  %i.nr = icmp sgt i32 %spec.select.i344, 0
  br i1 %i.nr, label %bb.ba, label %dissect_qnet6_kif_msgsend_msg_extra.exit345

bb.ba:                                            ; preds = %bb.az
  %i.ns = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.nt = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.ns, ptr noundef %0, i32 noundef %i.nl, i32 noundef %spec.select.i344, ptr noundef nonnull @.str.1109) ; 0 uses
  %i.nu = load i32, ptr %3, align 4
  %i.nv = add i32 %i.nu, %spec.select.i344
  store i32 %i.nv, ptr %3, align 4
  %i.nw = sub nuw nsw i32 %i.nm, %spec.select.i344
  %.pre487 = load i32, ptr %i.r, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit345

dissect_qnet6_kif_msgsend_msg_extra.exit345:      ; preds = %bb.ay, %bb.az, %bb.ba
  %i.nx = phi i32 [ %.pre487, %bb.ba ], [ %i.nn, %bb.az ], [ %i.nn, %bb.ay ]
  %.0447 = phi i32 [ %i.nw, %bb.ba ], [ %i.nm, %bb.az ], [ %i.nm, %bb.ay ]
  %i.ny = and i32 %i.nx, 32768
  %i.nz = icmp ne i32 %i.ny, 0
  %i.oa = icmp sgt i32 %.0447, 0
  %or.cond.i310 = select i1 %i.nz, i1 %i.oa, i1 false
  br i1 %or.cond.i310, label %bb.bb, label %dissect_qnet6_kif_msgsend_msg_seek.exit

bb.bb:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit345
  %i.ob = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !17
  br label %dissect_qnet6_kif_msgsend_msg_seek.exit

dissect_qnet6_kif_msgsend_msg_seek.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit345, %bb.bb
  %.0.i311 = phi i32 [ %i.ob, %bb.bb ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit345 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  br label %bb.dz

bb.bc:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  %i.oc = load i32, ptr %3, align 4
  %i.od = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.oc), !inline_history !18
  %i.oe = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.of = load i32, ptr %3, align 4
  %i.og = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.oe, ptr noundef %0, i32 noundef %i.of, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.q), !inline_history !18 ; 0 uses
  %i.oh = load i32, ptr %3, align 4
  %i.oi = add i32 %i.oh, 2                        ; 2 uses
  store i32 %i.oi, ptr %3, align 4
  %i.oj = load i32, ptr @hf_qnet6_kif_msg_io_chmod, align 4
  %i.ok = load i32, ptr @ett_qnet6_kif_chmod_mode, align 4
  %i.ol = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.oi, i32 noundef %i.oj, i32 noundef %i.ok, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_chmod.chmod_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !18 ; 0 uses
  %i.om = load i32, ptr %3, align 4
  %i.on = add i32 %i.om, 4                        ; 2 uses
  store i32 %i.on, ptr %3, align 4
  %i.oo = add i32 %i.od, -6                       ; 4 uses
  %i.op = load i16, ptr %i.q, align 2             ; 3 uses
  %i.oq = and i16 %i.op, 32767                    ; 2 uses
  %i.or = icmp samesign ugt i16 %i.oq, 8
  br i1 %i.or, label %bb.bd, label %dissect_qnet6_kif_msgsend_msg_extra.exit347

bb.bd:                                            ; preds = %bb.bc
  %i.os = zext nneg i16 %i.oq to i32
  %i.ot = add nsw i32 %i.os, -8
  %spec.select.i346 = call i32 @llvm.smin.i32(i32 %i.ot, i32 %i.oo) ; 4 uses
  %i.ou = icmp sgt i32 %spec.select.i346, 0
  br i1 %i.ou, label %bb.be, label %dissect_qnet6_kif_msgsend_msg_extra.exit347

bb.be:                                            ; preds = %bb.bd
  %i.ov = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.ow = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.ov, ptr noundef %0, i32 noundef %i.on, i32 noundef %spec.select.i346, ptr noundef nonnull @.str.1110) ; 0 uses
  %i.ox = load i32, ptr %3, align 4
  %i.oy = add i32 %i.ox, %spec.select.i346
  store i32 %i.oy, ptr %3, align 4
  %i.oz = sub nuw nsw i32 %i.oo, %spec.select.i346
  %.pre486 = load i16, ptr %i.q, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit347

dissect_qnet6_kif_msgsend_msg_extra.exit347:      ; preds = %bb.bc, %bb.bd, %bb.be
  %i.pa = phi i16 [ %.pre486, %bb.be ], [ %i.op, %bb.bd ], [ %i.op, %bb.bc ]
  %.0448 = phi i32 [ %i.oz, %bb.be ], [ %i.oo, %bb.bd ], [ %i.oo, %bb.bc ]
  %i.pb = icmp slt i16 %i.pa, 0
  %i.pc = icmp sgt i32 %.0448, 0
  %or.cond.i312 = select i1 %i.pb, i1 %i.pc, i1 false
  br i1 %or.cond.i312, label %bb.bf, label %dissect_qnet6_kif_msgsend_msg_chmod.exit

bb.bf:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit347
  %i.pd = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !18
  br label %dissect_qnet6_kif_msgsend_msg_chmod.exit

dissect_qnet6_kif_msgsend_msg_chmod.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit347, %bb.bf
  %.0.i313 = phi i32 [ %i.pd, %bb.bf ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit347 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  br label %bb.dz

bb.bg:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  %i.pe = load i32, ptr %3, align 4
  %i.pf = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.pe), !inline_history !19
  %i.pg = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.ph = load i32, ptr %3, align 4
  %i.pi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.pg, ptr noundef %0, i32 noundef %i.ph, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.p), !inline_history !19 ; 0 uses
  %i.pj = load i32, ptr %3, align 4
  %i.pk = add i32 %i.pj, 2                        ; 2 uses
  store i32 %i.pk, ptr %3, align 4
  %i.pl = load i32, ptr @hf_qnet6_kif_msg_io_chown_gid, align 4
  %i.pm = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.pl, ptr noundef %0, i32 noundef %i.pk, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !19 ; 0 uses
  %i.pn = load i32, ptr %3, align 4
  %i.po = add i32 %i.pn, 4                        ; 2 uses
  store i32 %i.po, ptr %3, align 4
  %i.pp = load i32, ptr @hf_qnet6_kif_msg_io_chown_uid, align 4
  %i.pq = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.pp, ptr noundef %0, i32 noundef %i.po, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !19 ; 0 uses
  %i.pr = load i32, ptr %3, align 4
  %i.ps = add i32 %i.pr, 4                        ; 2 uses
  store i32 %i.ps, ptr %3, align 4
  %i.pt = add i32 %i.pf, -10                      ; 4 uses
  %i.pu = load i32, ptr %i.p, align 4             ; 3 uses
  %i.pv = and i32 %i.pu, -32769                   ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 12
  br i1 %i.pw, label %bb.bh, label %dissect_qnet6_kif_msgsend_msg_extra.exit349

bb.bh:                                            ; preds = %bb.bg
  %i.px = add nsw i32 %i.pv, -12
  %spec.select.i348 = call i32 @llvm.smin.i32(i32 %i.px, i32 %i.pt) ; 4 uses
  %i.py = icmp sgt i32 %spec.select.i348, 0
  br i1 %i.py, label %bb.bi, label %dissect_qnet6_kif_msgsend_msg_extra.exit349

bb.bi:                                            ; preds = %bb.bh
  %i.pz = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.qa = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.pz, ptr noundef %0, i32 noundef %i.ps, i32 noundef %spec.select.i348, ptr noundef nonnull @.str.1111) ; 0 uses
  %i.qb = load i32, ptr %3, align 4
  %i.qc = add i32 %i.qb, %spec.select.i348
  store i32 %i.qc, ptr %3, align 4
  %i.qd = sub nuw nsw i32 %i.pt, %spec.select.i348
  %.pre485 = load i32, ptr %i.p, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit349

dissect_qnet6_kif_msgsend_msg_extra.exit349:      ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.qe = phi i32 [ %.pre485, %bb.bi ], [ %i.pu, %bb.bh ], [ %i.pu, %bb.bg ]
  %.0449 = phi i32 [ %i.qd, %bb.bi ], [ %i.pt, %bb.bh ], [ %i.pt, %bb.bg ]
  %i.qf = and i32 %i.qe, 32768
  %i.qg = icmp ne i32 %i.qf, 0
  %i.qh = icmp sgt i32 %.0449, 0
  %or.cond.i314 = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %or.cond.i314, label %bb.bj, label %dissect_qnet6_kif_msgsend_msg_chown.exit

bb.bj:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit349
  %i.qi = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !19
  br label %dissect_qnet6_kif_msgsend_msg_chown.exit

dissect_qnet6_kif_msgsend_msg_chown.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit349, %bb.bj
  %.0.i315 = phi i32 [ %i.qi, %bb.bj ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit349 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  br label %bb.dz

bb.bk:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  %i.qj = load i32, ptr %3, align 4
  %i.qk = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.qj), !inline_history !20
  %i.ql = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.qm = load i32, ptr %3, align 4
  %i.qn = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.ql, ptr noundef %0, i32 noundef %i.qm, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.o), !inline_history !20 ; 0 uses
  %i.qo = load i32, ptr %3, align 4
  %i.qp = add i32 %i.qo, 2                        ; 2 uses
  store i32 %i.qp, ptr %3, align 4
  %i.qq = load i32, ptr @hf_qnet6_kif_msg_io_utime_curflag, align 4
  %i.qr = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.qq, ptr noundef %0, i32 noundef %i.qp, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !20 ; 0 uses
  %i.qs = load i32, ptr %3, align 4
  %i.qt = add i32 %i.qs, 4                        ; 2 uses
  store i32 %i.qt, ptr %3, align 4
  %i.qu = load i32, ptr @hf_qnet6_kif_msg_io_utime_actime, align 4
  %i.qv = or i32 %4, 18                           ; 2 uses
  %i.qw = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.qu, ptr noundef %0, i32 noundef %i.qt, i32 noundef 4, i32 noundef %i.qv), !inline_history !20 ; 0 uses
  %i.qx = load i32, ptr %3, align 4
  %i.qy = add i32 %i.qx, 4                        ; 2 uses
  store i32 %i.qy, ptr %3, align 4
  %i.qz = load i32, ptr @hf_qnet6_kif_msg_io_utime_modtime, align 4
  %i.ra = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.qz, ptr noundef %0, i32 noundef %i.qy, i32 noundef 4, i32 noundef %i.qv), !inline_history !20 ; 0 uses
  %i.rb = load i32, ptr %3, align 4
  %i.rc = add i32 %i.rb, 4                        ; 2 uses
  store i32 %i.rc, ptr %3, align 4
  %i.rd = add i32 %i.qk, -14                      ; 4 uses
  %i.re = load i32, ptr %i.o, align 4             ; 3 uses
  %i.rf = and i32 %i.re, -32769                   ; 2 uses
  %i.rg = icmp sgt i32 %i.rf, 16
  br i1 %i.rg, label %bb.bl, label %dissect_qnet6_kif_msgsend_msg_extra.exit351

bb.bl:                                            ; preds = %bb.bk
  %i.rh = add nsw i32 %i.rf, -16
  %spec.select.i350 = call i32 @llvm.smin.i32(i32 %i.rh, i32 %i.rd) ; 4 uses
  %i.ri = icmp sgt i32 %spec.select.i350, 0
  br i1 %i.ri, label %bb.bm, label %dissect_qnet6_kif_msgsend_msg_extra.exit351

bb.bm:                                            ; preds = %bb.bl
  %i.rj = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.rk = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.rj, ptr noundef %0, i32 noundef %i.rc, i32 noundef %spec.select.i350, ptr noundef nonnull @.str.1112) ; 0 uses
  %i.rl = load i32, ptr %3, align 4
  %i.rm = add i32 %i.rl, %spec.select.i350
  store i32 %i.rm, ptr %3, align 4
  %i.rn = sub nuw nsw i32 %i.rd, %spec.select.i350
  %.pre484 = load i32, ptr %i.o, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit351

dissect_qnet6_kif_msgsend_msg_extra.exit351:      ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.ro = phi i32 [ %.pre484, %bb.bm ], [ %i.re, %bb.bl ], [ %i.re, %bb.bk ]
  %.0450 = phi i32 [ %i.rn, %bb.bm ], [ %i.rd, %bb.bl ], [ %i.rd, %bb.bk ]
  %i.rp = and i32 %i.ro, 32768
  %i.rq = icmp ne i32 %i.rp, 0
  %i.rr = icmp sgt i32 %.0450, 0
  %or.cond.i316 = select i1 %i.rq, i1 %i.rr, i1 false
  br i1 %or.cond.i316, label %bb.bn, label %dissect_qnet6_kif_msgsend_msg_utime.exit

bb.bn:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit351
  %i.rs = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !20
  br label %dissect_qnet6_kif_msgsend_msg_utime.exit

dissect_qnet6_kif_msgsend_msg_utime.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit351, %bb.bn
  %.0.i317 = phi i32 [ %i.rs, %bb.bn ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit351 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  br label %bb.dz

bb.bo:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  %i.rt = load i32, ptr %3, align 4
  %i.ru = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.rt), !inline_history !21 ; 2 uses
  %i.rv = icmp slt i32 %i.ru, 14
  br i1 %i.rv, label %dissect_qnet6_kif_msgsend_msg_fdinfo.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rw = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.rx = load i32, ptr %3, align 4
  %i.ry = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.rw, ptr noundef %0, i32 noundef %i.rx, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.n), !inline_history !21 ; 0 uses
  %i.rz = load i32, ptr %3, align 4
  %i.sa = add i32 %i.rz, 2                        ; 2 uses
  store i32 %i.sa, ptr %3, align 4
  %i.sb = load i32, ptr @hf_qnet6_kif_msg_io_fdinfo_flags, align 4
  %i.sc = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.sb, ptr noundef %0, i32 noundef %i.sa, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21 ; 0 uses
  %i.sd = load i32, ptr %3, align 4
  %i.se = add i32 %i.sd, 4                        ; 2 uses
  store i32 %i.se, ptr %3, align 4
  %i.sf = load i32, ptr @hf_qnet6_kif_msg_io_fdinfo_path_len, align 4
  %i.sg = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.sf, ptr noundef %0, i32 noundef %i.se, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21 ; 0 uses
  %i.sh = load i32, ptr %3, align 4
  %i.si = add i32 %i.sh, 4                        ; 2 uses
  store i32 %i.si, ptr %3, align 4
  %i.sj = load i32, ptr @hf_qnet6_kif_msg_io_fdinfo_reserved, align 4
  %i.sk = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.sj, ptr noundef %0, i32 noundef %i.si, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21 ; 0 uses
  %i.sl = load i32, ptr %3, align 4
  %i.sm = add i32 %i.sl, 4                        ; 2 uses
  store i32 %i.sm, ptr %3, align 4
  %i.sn = add nsw i32 %i.ru, -14                  ; 4 uses
  %i.so = load i16, ptr %i.n, align 2             ; 3 uses
  %i.sp = and i16 %i.so, 32767                    ; 2 uses
  %i.sq = icmp samesign ugt i16 %i.sp, 16
  br i1 %i.sq, label %bb.bq, label %dissect_qnet6_kif_msgsend_msg_extra.exit353

bb.bq:                                            ; preds = %bb.bp
  %i.sr = zext nneg i16 %i.sp to i32
  %i.ss = add nsw i32 %i.sr, -16
  %i.st = call i32 @llvm.umin.i32(i32 %i.ss, i32 %i.sn) ; 4 uses
  %.not462 = icmp eq i32 %i.st, 0
  br i1 %.not462, label %dissect_qnet6_kif_msgsend_msg_extra.exit353, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.su = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.sv = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.su, ptr noundef %0, i32 noundef %i.sm, i32 noundef %i.st, ptr noundef nonnull @.str.1113) ; 0 uses
  %i.sw = load i32, ptr %3, align 4
  %i.sx = add i32 %i.sw, %i.st
  store i32 %i.sx, ptr %3, align 4
  %i.sy = sub nuw nsw i32 %i.sn, %i.st
  %.pre483 = load i16, ptr %i.n, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit353

dissect_qnet6_kif_msgsend_msg_extra.exit353:      ; preds = %bb.bp, %bb.bq, %bb.br
  %i.sz = phi i16 [ %.pre483, %bb.br ], [ %i.so, %bb.bq ], [ %i.so, %bb.bp ]
  %.0451 = phi i32 [ %i.sy, %bb.br ], [ %i.sn, %bb.bq ], [ %i.sn, %bb.bp ]
  %i.ta = icmp slt i16 %i.sz, 0
  %i.tb = icmp ne i32 %.0451, 0
  %or.cond.i318 = select i1 %i.ta, i1 %i.tb, i1 false
  br i1 %or.cond.i318, label %bb.bs, label %dissect_qnet6_kif_msgsend_msg_fdinfo.exit

bb.bs:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit353
  %i.tc = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21
  br label %dissect_qnet6_kif_msgsend_msg_fdinfo.exit

dissect_qnet6_kif_msgsend_msg_fdinfo.exit:        ; preds = %bb.bo, %dissect_qnet6_kif_msgsend_msg_extra.exit353, %bb.bs
  %.033.i = phi i32 [ -1, %bb.bo ], [ %i.tc, %bb.bs ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit353 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br label %bb.dz

bb.bt:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  %i.td = load i32, ptr %3, align 4
  %i.te = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.td), !inline_history !22
  %i.tf = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.tg = load i32, ptr %3, align 4
  %i.th = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.tf, ptr noundef %0, i32 noundef %i.tg, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.m), !inline_history !22 ; 0 uses
  %i.ti = load i32, ptr %3, align 4
  %i.tj = add i32 %i.ti, 2                        ; 2 uses
  store i32 %i.tj, ptr %3, align 4
  %i.tk = load i32, ptr @hf_qnet6_kif_msg_io_lock_subtype, align 4
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.tk, ptr noundef %0, i32 noundef %i.tj, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !22 ; 0 uses
  %i.tm = load i32, ptr %3, align 4
  %i.tn = add i32 %i.tm, 4                        ; 2 uses
  store i32 %i.tn, ptr %3, align 4
  %i.to = load i32, ptr @hf_qnet6_kif_msg_io_lock_nbytes, align 4
  %i.tp = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.to, ptr noundef %0, i32 noundef %i.tn, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !22 ; 0 uses
  %i.tq = load i32, ptr %3, align 4
  %i.tr = add i32 %i.tq, 4                        ; 2 uses
  store i32 %i.tr, ptr %3, align 4
  %i.ts = add i32 %i.te, -10                      ; 4 uses
  %i.tt = load i16, ptr %i.m, align 2             ; 3 uses
  %i.tu = and i16 %i.tt, 32767                    ; 2 uses
  %i.tv = icmp samesign ugt i16 %i.tu, 12
  br i1 %i.tv, label %bb.bu, label %dissect_qnet6_kif_msgsend_msg_extra.exit355

bb.bu:                                            ; preds = %bb.bt
  %i.tw = zext nneg i16 %i.tu to i32
  %i.tx = add nsw i32 %i.tw, -12
  %spec.select.i354 = call i32 @llvm.smin.i32(i32 %i.tx, i32 %i.ts) ; 4 uses
  %i.ty = icmp sgt i32 %spec.select.i354, 0
  br i1 %i.ty, label %bb.bv, label %dissect_qnet6_kif_msgsend_msg_extra.exit355

bb.bv:                                            ; preds = %bb.bu
  %i.tz = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.ua = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.tz, ptr noundef %0, i32 noundef %i.tr, i32 noundef %spec.select.i354, ptr noundef nonnull @.str.1114) ; 0 uses
  %i.ub = load i32, ptr %3, align 4
  %i.uc = add i32 %i.ub, %spec.select.i354
  store i32 %i.uc, ptr %3, align 4
  %i.ud = sub nuw nsw i32 %i.ts, %spec.select.i354
  %.pre482 = load i16, ptr %i.m, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit355

dissect_qnet6_kif_msgsend_msg_extra.exit355:      ; preds = %bb.bt, %bb.bu, %bb.bv
  %i.ue = phi i16 [ %.pre482, %bb.bv ], [ %i.tt, %bb.bu ], [ %i.tt, %bb.bt ]
  %.0452 = phi i32 [ %i.ud, %bb.bv ], [ %i.ts, %bb.bu ], [ %i.ts, %bb.bt ]
  %i.uf = icmp slt i16 %i.ue, 0
  %i.ug = icmp sgt i32 %.0452, 0
  %or.cond.i319 = select i1 %i.uf, i1 %i.ug, i1 false
  br i1 %or.cond.i319, label %bb.bw, label %dissect_qnet6_kif_msgsend_msg_lock.exit

bb.bw:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit355
  %i.uh = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !22
  br label %dissect_qnet6_kif_msgsend_msg_lock.exit

dissect_qnet6_kif_msgsend_msg_lock.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit355, %bb.bw
  %.0.i320 = phi i32 [ %i.uh, %bb.bw ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit355 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %bb.dz

bb.bx:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.ui = load i32, ptr %3, align 4
  %i.uj = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ui), !inline_history !23
  %i.uk = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.ul = load i32, ptr %3, align 4
  %i.um = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.uk, ptr noundef %0, i32 noundef %i.ul, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.l), !inline_history !23 ; 0 uses
  %i.un = load i32, ptr %3, align 4
  %i.uo = add i32 %i.un, 2                        ; 2 uses
  store i32 %i.uo, ptr %3, align 4
  %i.up = load i32, ptr @hf_qnet6_kif_msg_io_space_subtype, align 4
  %i.uq = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.up, ptr noundef %0, i32 noundef %i.uo, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.ur = load i32, ptr %3, align 4
  %i.us = add i32 %i.ur, 2                        ; 2 uses
  store i32 %i.us, ptr %3, align 4
  %i.ut = load i32, ptr @hf_qnet6_kif_msg_io_space_whence, align 4
  %i.uu = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ut, ptr noundef %0, i32 noundef %i.us, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.uv = load i32, ptr %3, align 4
  %i.uw = add i32 %i.uv, 2                        ; 2 uses
  store i32 %i.uw, ptr %3, align 4
  %i.ux = load i32, ptr @hf_qnet6_kif_msg_io_space_start, align 4
  %i.uy = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ux, ptr noundef %0, i32 noundef %i.uw, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.uz = load i32, ptr %3, align 4
  %i.va = add i32 %i.uz, 8                        ; 2 uses
  store i32 %i.va, ptr %3, align 4
  %i.vb = load i32, ptr @hf_qnet6_kif_msg_io_space_len, align 4
  %i.vc = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.vb, ptr noundef %0, i32 noundef %i.va, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.vd = load i32, ptr %3, align 4
  %i.ve = add i32 %i.vd, 8                        ; 2 uses
  store i32 %i.ve, ptr %3, align 4
  %i.vf = add i32 %i.uj, -22                      ; 4 uses
  %i.vg = load i16, ptr %i.l, align 2             ; 3 uses
  %i.vh = and i16 %i.vg, 32767                    ; 2 uses
  %i.vi = icmp samesign ugt i16 %i.vh, 24
  br i1 %i.vi, label %bb.by, label %dissect_qnet6_kif_msgsend_msg_extra.exit357

bb.by:                                            ; preds = %bb.bx
  %i.vj = zext nneg i16 %i.vh to i32
  %i.vk = add nsw i32 %i.vj, -24
  %spec.select.i356 = call i32 @llvm.smin.i32(i32 %i.vk, i32 %i.vf) ; 4 uses
  %i.vl = icmp sgt i32 %spec.select.i356, 0
  br i1 %i.vl, label %bb.bz, label %dissect_qnet6_kif_msgsend_msg_extra.exit357

bb.bz:                                            ; preds = %bb.by
  %i.vm = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.vn = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.vm, ptr noundef %0, i32 noundef %i.ve, i32 noundef %spec.select.i356, ptr noundef nonnull @.str.1115) ; 0 uses
  %i.vo = load i32, ptr %3, align 4
  %i.vp = add i32 %i.vo, %spec.select.i356
  store i32 %i.vp, ptr %3, align 4
  %i.vq = sub nuw nsw i32 %i.vf, %spec.select.i356
  %.pre481 = load i16, ptr %i.l, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit357

dissect_qnet6_kif_msgsend_msg_extra.exit357:      ; preds = %bb.bx, %bb.by, %bb.bz
  %i.vr = phi i16 [ %.pre481, %bb.bz ], [ %i.vg, %bb.by ], [ %i.vg, %bb.bx ]
  %.0453 = phi i32 [ %i.vq, %bb.bz ], [ %i.vf, %bb.by ], [ %i.vf, %bb.bx ]
  %i.vs = icmp slt i16 %i.vr, 0
  %i.vt = icmp sgt i32 %.0453, 0
  %or.cond.i321 = select i1 %i.vs, i1 %i.vt, i1 false
  br i1 %or.cond.i321, label %bb.ca, label %dissect_qnet6_kif_msgsend_msg_space.exit

bb.ca:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit357
  %i.vu = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23
  br label %dissect_qnet6_kif_msgsend_msg_space.exit

dissect_qnet6_kif_msgsend_msg_space.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit357, %bb.ca
  %.0.i322 = phi i32 [ %i.vu, %bb.ca ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit357 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  br label %bb.dz

bb.cb:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.vv = load i32, ptr %3, align 4
  %i.vw = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.vv), !inline_history !24
  %i.vx = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.vy = load i32, ptr %3, align 4
  %i.vz = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.vx, ptr noundef %0, i32 noundef %i.vy, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.k), !inline_history !24 ; 0 uses
  %i.wa = load i32, ptr %3, align 4
  %i.wb = add i32 %i.wa, 2                        ; 2 uses
  store i32 %i.wb, ptr %3, align 4
  %i.wc = add i32 %i.vw, -2                       ; 4 uses
  %i.wd = load i32, ptr %i.k, align 4             ; 3 uses
  %i.we = and i32 %i.wd, -32769                   ; 2 uses
  %i.wf = icmp sgt i32 %i.we, 4
  br i1 %i.wf, label %bb.cc, label %dissect_qnet6_kif_msgsend_msg_extra.exit359

bb.cc:                                            ; preds = %bb.cb
  %i.wg = add nsw i32 %i.we, -4
  %spec.select.i358 = call i32 @llvm.smin.i32(i32 %i.wg, i32 %i.wc) ; 4 uses
  %i.wh = icmp sgt i32 %spec.select.i358, 0
  br i1 %i.wh, label %bb.cd, label %dissect_qnet6_kif_msgsend_msg_extra.exit359

bb.cd:                                            ; preds = %bb.cc
  %i.wi = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.wj = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.wi, ptr noundef %0, i32 noundef %i.wb, i32 noundef %spec.select.i358, ptr noundef nonnull @.str.1116) ; 0 uses
  %i.wk = load i32, ptr %3, align 4
  %i.wl = add i32 %i.wk, %spec.select.i358
  store i32 %i.wl, ptr %3, align 4
  %i.wm = sub nuw nsw i32 %i.wc, %spec.select.i358
  %.pre480 = load i32, ptr %i.k, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit359

dissect_qnet6_kif_msgsend_msg_extra.exit359:      ; preds = %bb.cb, %bb.cc, %bb.cd
  %i.wn = phi i32 [ %.pre480, %bb.cd ], [ %i.wd, %bb.cc ], [ %i.wd, %bb.cb ]
  %.0454 = phi i32 [ %i.wm, %bb.cd ], [ %i.wc, %bb.cc ], [ %i.wc, %bb.cb ]
  %i.wo = and i32 %i.wn, 32768
  %i.wp = icmp ne i32 %i.wo, 0
  %i.wq = icmp sgt i32 %.0454, 0
  %or.cond.i323 = select i1 %i.wp, i1 %i.wq, i1 false
  br i1 %or.cond.i323, label %bb.ce, label %dissect_qnet6_kif_msgsend_msg_close.exit

bb.ce:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit359
  %i.wr = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !24
  br label %dissect_qnet6_kif_msgsend_msg_close.exit

dissect_qnet6_kif_msgsend_msg_close.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit359, %bb.ce
  %.0.i324 = phi i32 [ %i.wr, %bb.ce ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %bb.dz

bb.cf:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.ws = load i32, ptr %3, align 4
  %i.wt = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ws), !inline_history !25
  %i.wu = load i32, ptr %3, align 4
  %i.wv = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.wu, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !25
  %i.ww = zext i16 %i.wv to i32
  store i32 %i.ww, ptr %i.j, align 4
  %i.wx = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.wy = load i32, ptr %3, align 4
  %i.wz = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.wx, ptr noundef %0, i32 noundef %i.wy, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.j), !inline_history !25 ; 0 uses
  %i.xa = load i32, ptr %3, align 4
  %i.xb = add i32 %i.xa, 2                        ; 2 uses
  store i32 %i.xb, ptr %3, align 4
  %i.xc = load i32, ptr @hf_qnet6_kif_msg_io_sync, align 4
  %i.xd = load i32, ptr @ett_qnet6_kif_msg_sync, align 4
  %i.xe = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.xb, i32 noundef %i.xc, i32 noundef %i.xd, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_sync.sync_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !25 ; 0 uses
  %i.xf = load i32, ptr %3, align 4
  %i.xg = add i32 %i.xf, 4                        ; 2 uses
  store i32 %i.xg, ptr %3, align 4
  %i.xh = add i32 %i.wt, -6                       ; 4 uses
  %i.xi = load i32, ptr %i.j, align 4             ; 3 uses
  %i.xj = and i32 %i.xi, -32769                   ; 2 uses
  %i.xk = icmp sgt i32 %i.xj, 8
  br i1 %i.xk, label %bb.cg, label %dissect_qnet6_kif_msgsend_msg_extra.exit361

bb.cg:                                            ; preds = %bb.cf
  %i.xl = add nsw i32 %i.xj, -8
  %spec.select.i360 = call i32 @llvm.smin.i32(i32 %i.xl, i32 %i.xh) ; 4 uses
  %i.xm = icmp sgt i32 %spec.select.i360, 0
  br i1 %i.xm, label %bb.ch, label %dissect_qnet6_kif_msgsend_msg_extra.exit361

bb.ch:                                            ; preds = %bb.cg
  %i.xn = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.xo = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.xn, ptr noundef %0, i32 noundef %i.xg, i32 noundef %spec.select.i360, ptr noundef nonnull @.str.1117) ; 0 uses
  %i.xp = load i32, ptr %3, align 4
  %i.xq = add i32 %i.xp, %spec.select.i360
  store i32 %i.xq, ptr %3, align 4
  %i.xr = sub nuw nsw i32 %i.xh, %spec.select.i360
  %.pre479 = load i32, ptr %i.j, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit361

dissect_qnet6_kif_msgsend_msg_extra.exit361:      ; preds = %bb.cf, %bb.cg, %bb.ch
  %i.xs = phi i32 [ %.pre479, %bb.ch ], [ %i.xi, %bb.cg ], [ %i.xi, %bb.cf ]
  %.0455 = phi i32 [ %i.xr, %bb.ch ], [ %i.xh, %bb.cg ], [ %i.xh, %bb.cf ]
  %i.xt = and i32 %i.xs, 32768
  %i.xu = icmp ne i32 %i.xt, 0
  %i.xv = icmp sgt i32 %.0455, 0
  %or.cond.i325 = select i1 %i.xu, i1 %i.xv, i1 false
  br i1 %or.cond.i325, label %bb.ci, label %dissect_qnet6_kif_msgsend_msg_sync.exit

bb.ci:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit361
  %i.xw = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !25
  br label %dissect_qnet6_kif_msgsend_msg_sync.exit

dissect_qnet6_kif_msgsend_msg_sync.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit361, %bb.ci
  %.0.i326 = phi i32 [ %i.xw, %bb.ci ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit361 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %bb.dz

bb.cj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.xx = load i32, ptr %3, align 4
  %i.xy = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.xx), !inline_history !26
  %i.xz = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.ya = load i32, ptr %3, align 4
  %i.yb = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.xz, ptr noundef %0, i32 noundef %i.ya, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.i), !inline_history !26 ; 0 uses
  %i.yc = load i32, ptr %3, align 4
  %i.yd = add i32 %i.yc, 2                        ; 2 uses
  store i32 %i.yd, ptr %3, align 4
  %i.ye = load i32, ptr @hf_qnet6_kif_msg_openfd_ioflag, align 4
  %i.yf = load i32, ptr @ett_qnet6_kif_msg_openfd_ioflag, align 4
  %i.yg = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.yd, i32 noundef %i.ye, i32 noundef %i.yf, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_openfd.openfd_ioflag_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !26 ; 0 uses
  %i.yh = load i32, ptr %3, align 4
  %i.yi = add i32 %i.yh, 4                        ; 2 uses
  store i32 %i.yi, ptr %3, align 4
  %i.yj = load i32, ptr @hf_qnet6_kif_msg_openfd_sflag, align 4
  %i.yk = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.yj, ptr noundef %0, i32 noundef %i.yi, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !26 ; 0 uses
  %i.yl = load i32, ptr %3, align 4
  %i.ym = add i32 %i.yl, 2                        ; 2 uses
  store i32 %i.ym, ptr %3, align 4
  %i.yn = load i32, ptr @hf_qnet6_kif_msg_openfd_xtype, align 4
  %i.yo = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.yn, ptr noundef %0, i32 noundef %i.ym, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !26 ; 0 uses
  %i.yp = load i32, ptr %3, align 4
  %i.yq = add i32 %i.yp, 2                        ; 2 uses
  store i32 %i.yq, ptr %3, align 4
  %i.yr = load i32, ptr @ett_qnet6_kif_msg_msginfo, align 4
  %i.ys = call ptr @proto_tree_add_subtree(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.yq, i32 noundef 48, i32 noundef %i.yr, ptr noundef null, ptr noundef nonnull @.str.1118), !inline_history !26
  call fastcc void @dissect_qnet6_kif_msgsend_msg_msginfo(ptr noundef %0, ptr noundef %i.ys, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4)
  %i.yt = load i32, ptr @hf_qnet6_kif_msg_openfd_reserved, align 4
  %i.yu = load i32, ptr %3, align 4
  %i.yv = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.yt, ptr noundef %0, i32 noundef %i.yu, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !26 ; 0 uses
  %i.yw = load i32, ptr %3, align 4
  %i.yx = add i32 %i.yw, 4                        ; 2 uses
  store i32 %i.yx, ptr %3, align 4
  %i.yy = load i32, ptr @hf_qnet6_kif_msg_openfd_key, align 4
  %i.yz = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.yy, ptr noundef %0, i32 noundef %i.yx, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !26 ; 0 uses
  %i.za = load i32, ptr %3, align 4
  %i.zb = add i32 %i.za, 4                        ; 2 uses
  store i32 %i.zb, ptr %3, align 4
  %i.zc = add i32 %i.xy, -66                      ; 4 uses
  %i.zd = load i32, ptr %i.i, align 4             ; 3 uses
  %i.ze = and i32 %i.zd, -32769                   ; 2 uses
  %i.zf = icmp sgt i32 %i.ze, 68
  br i1 %i.zf, label %bb.ck, label %dissect_qnet6_kif_msgsend_msg_extra.exit363

bb.ck:                                            ; preds = %bb.cj
  %i.zg = add nsw i32 %i.ze, -68
  %spec.select.i362 = call i32 @llvm.smin.i32(i32 %i.zg, i32 %i.zc) ; 4 uses
  %i.zh = icmp sgt i32 %spec.select.i362, 0
  br i1 %i.zh, label %bb.cl, label %dissect_qnet6_kif_msgsend_msg_extra.exit363

bb.cl:                                            ; preds = %bb.ck
  %i.zi = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.zj = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.zi, ptr noundef %0, i32 noundef %i.zb, i32 noundef %spec.select.i362, ptr noundef nonnull @.str.1119) ; 0 uses
  %i.zk = load i32, ptr %3, align 4
  %i.zl = add i32 %i.zk, %spec.select.i362
  store i32 %i.zl, ptr %3, align 4
  %i.zm = sub nuw nsw i32 %i.zc, %spec.select.i362
  %.pre478 = load i32, ptr %i.i, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit363

dissect_qnet6_kif_msgsend_msg_extra.exit363:      ; preds = %bb.cj, %bb.ck, %bb.cl
  %i.zn = phi i32 [ %.pre478, %bb.cl ], [ %i.zd, %bb.ck ], [ %i.zd, %bb.cj ]
  %.0456 = phi i32 [ %i.zm, %bb.cl ], [ %i.zc, %bb.ck ], [ %i.zc, %bb.cj ]
  %i.zo = and i32 %i.zn, 32768
  %i.zp = icmp ne i32 %i.zo, 0
  %i.zq = icmp sgt i32 %.0456, 0
  %or.cond.i327 = select i1 %i.zp, i1 %i.zq, i1 false
  br i1 %or.cond.i327, label %bb.cm, label %dissect_qnet6_kif_msgsend_msg_openfd.exit

bb.cm:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit363
  %i.zr = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !26
  br label %dissect_qnet6_kif_msgsend_msg_openfd.exit

dissect_qnet6_kif_msgsend_msg_openfd.exit:        ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit363, %bb.cm
  %.0.i328 = phi i32 [ %i.zr, %bb.cm ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit363 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.dz

bb.cn:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.zs = load i32, ptr %3, align 4
  %i.zt = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.zs), !inline_history !27
  %i.zu = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.zv = load i32, ptr %3, align 4
  %i.zw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.zu, ptr noundef %0, i32 noundef %i.zv, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.h), !inline_history !27 ; 0 uses
  %i.zx = load i32, ptr %3, align 4
  %i.zy = add i32 %i.zx, 2                        ; 2 uses
  store i32 %i.zy, ptr %3, align 4
  %i.zz = add i32 %i.zt, -2                       ; 4 uses
  %i.aaa = load i32, ptr %i.h, align 4            ; 3 uses
  %i.aab = and i32 %i.aaa, -32769                 ; 2 uses
  %i.aac = icmp sgt i32 %i.aab, 4
  br i1 %i.aac, label %bb.co, label %dissect_qnet6_kif_msgsend_msg_extra.exit365

bb.co:                                            ; preds = %bb.cn
  %i.aad = add nsw i32 %i.aab, -4
  %spec.select.i364 = call i32 @llvm.smin.i32(i32 %i.aad, i32 %i.zz) ; 4 uses
  %i.aae = icmp sgt i32 %spec.select.i364, 0
  br i1 %i.aae, label %bb.cp, label %dissect_qnet6_kif_msgsend_msg_extra.exit365

bb.cp:                                            ; preds = %bb.co
  %i.aaf = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.aag = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.aaf, ptr noundef %0, i32 noundef %i.zy, i32 noundef %spec.select.i364, ptr noundef nonnull @.str.1120) ; 0 uses
  %i.aah = load i32, ptr %3, align 4
  %i.aai = add i32 %i.aah, %spec.select.i364
  store i32 %i.aai, ptr %3, align 4
  %i.aaj = sub nuw nsw i32 %i.zz, %spec.select.i364
  %.pre477 = load i32, ptr %i.h, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit365

dissect_qnet6_kif_msgsend_msg_extra.exit365:      ; preds = %bb.cn, %bb.co, %bb.cp
  %i.aak = phi i32 [ %.pre477, %bb.cp ], [ %i.aaa, %bb.co ], [ %i.aaa, %bb.cn ]
  %.0457 = phi i32 [ %i.aaj, %bb.cp ], [ %i.zz, %bb.co ], [ %i.zz, %bb.cn ]
  %i.aal = and i32 %i.aak, 32768
  %i.aam = icmp ne i32 %i.aal, 0
  %i.aan = icmp sgt i32 %.0457, 0
  %or.cond.i329 = select i1 %i.aam, i1 %i.aan, i1 false
  br i1 %or.cond.i329, label %bb.cq, label %dissect_qnet6_kif_msgsend_msg_shutdown.exit

bb.cq:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit365
  %i.aao = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !27
  br label %dissect_qnet6_kif_msgsend_msg_shutdown.exit

dissect_qnet6_kif_msgsend_msg_shutdown.exit:      ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit365, %bb.cq
  %.0.i330 = phi i32 [ %i.aao, %bb.cq ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit365 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.dz

bb.cr:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.aap = load i32, ptr %3, align 4
  %i.aaq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aap), !inline_history !28
  %i.aar = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.aas = load i32, ptr %3, align 4
  %i.aat = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.aar, ptr noundef %0, i32 noundef %i.aas, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.g), !inline_history !28 ; 0 uses
  %i.aau = load i32, ptr %3, align 4
  %i.aav = add i32 %i.aau, 2                      ; 2 uses
  store i32 %i.aav, ptr %3, align 4
  %i.aaw = load i32, ptr @hf_qnet6_kif_msg_io_mmap_prot, align 4
  %i.aax = load i32, ptr @ett_qnet6_kif_msg_prot, align 4
  %i.aay = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.aav, i32 noundef %i.aaw, i32 noundef %i.aax, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_mmap.prot_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !28 ; 0 uses
  %i.aaz = load i32, ptr %3, align 4
  %i.aba = add i32 %i.aaz, 4                      ; 2 uses
  store i32 %i.aba, ptr %3, align 4
  %i.abb = load i32, ptr @hf_qnet6_kif_msg_io_mmap_offset, align 4
  %i.abc = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.abb, ptr noundef %0, i32 noundef %i.aba, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !28 ; 0 uses
  %i.abd = load i32, ptr %3, align 4
  %i.abe = add i32 %i.abd, 8                      ; 2 uses
  store i32 %i.abe, ptr %3, align 4
  %i.abf = load i32, ptr @ett_qnet6_kif_msg_msginfo, align 4
  %i.abg = call ptr @proto_tree_add_subtree(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.abe, i32 noundef 48, i32 noundef %i.abf, ptr noundef null, ptr noundef nonnull @.str.1118), !inline_history !28
  call fastcc void @dissect_qnet6_kif_msgsend_msg_msginfo(ptr noundef %0, ptr noundef %i.abg, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4)
  %i.abh = load i32, ptr @hf_qnet6_kif_zero, align 4
  %i.abi = load i32, ptr %3, align 4
  %i.abj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.abh, ptr noundef %0, i32 noundef %i.abi, i32 noundef 24, i32 noundef 0), !inline_history !28 ; 0 uses
  %i.abk = load i32, ptr %3, align 4
  %i.abl = add i32 %i.abk, 24                     ; 2 uses
  store i32 %i.abl, ptr %3, align 4
  %i.abm = add i32 %i.aaq, -86                    ; 4 uses
  %i.abn = load i32, ptr %i.g, align 4            ; 3 uses
  %i.abo = and i32 %i.abn, -32769                 ; 2 uses
  %i.abp = icmp sgt i32 %i.abo, 88
  br i1 %i.abp, label %bb.cs, label %dissect_qnet6_kif_msgsend_msg_extra.exit367

bb.cs:                                            ; preds = %bb.cr
  %i.abq = add nsw i32 %i.abo, -88
  %spec.select.i366 = call i32 @llvm.smin.i32(i32 %i.abq, i32 %i.abm) ; 4 uses
  %i.abr = icmp sgt i32 %spec.select.i366, 0
  br i1 %i.abr, label %bb.ct, label %dissect_qnet6_kif_msgsend_msg_extra.exit367

bb.ct:                                            ; preds = %bb.cs
  %i.abs = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.abt = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.abs, ptr noundef %0, i32 noundef %i.abl, i32 noundef %spec.select.i366, ptr noundef nonnull @.str.1121) ; 0 uses
  %i.abu = load i32, ptr %3, align 4
  %i.abv = add i32 %i.abu, %spec.select.i366
  store i32 %i.abv, ptr %3, align 4
  %i.abw = sub nuw nsw i32 %i.abm, %spec.select.i366
  %.pre476 = load i32, ptr %i.g, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit367

dissect_qnet6_kif_msgsend_msg_extra.exit367:      ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.abx = phi i32 [ %.pre476, %bb.ct ], [ %i.abn, %bb.cs ], [ %i.abn, %bb.cr ]
  %.0458 = phi i32 [ %i.abw, %bb.ct ], [ %i.abm, %bb.cs ], [ %i.abm, %bb.cr ]
  %i.aby = and i32 %i.abx, 32768
  %i.abz = icmp ne i32 %i.aby, 0
  %i.aca = icmp sgt i32 %.0458, 0
  %or.cond.i331 = select i1 %i.abz, i1 %i.aca, i1 false
  br i1 %or.cond.i331, label %bb.cu, label %dissect_qnet6_kif_msgsend_msg_mmap.exit

bb.cu:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit367
  %i.acb = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !28
  br label %dissect_qnet6_kif_msgsend_msg_mmap.exit

dissect_qnet6_kif_msgsend_msg_mmap.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit367, %bb.cu
  %.0.i332 = phi i32 [ %i.acb, %bb.cu ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit367 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.dz

bb.cv:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.acc = load i32, ptr %3, align 4
  %i.acd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.acc), !inline_history !29
  %i.ace = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.acf = load i32, ptr %3, align 4
  %i.acg = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.ace, ptr noundef %0, i32 noundef %i.acf, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.f), !inline_history !29 ; 0 uses
  %i.ach = load i32, ptr %3, align 4
  %i.aci = add i32 %i.ach, 2                      ; 2 uses
  store i32 %i.aci, ptr %3, align 4
  %i.acj = load i32, ptr @hf_qnet6_kif_msg_io_msg_mgrid, align 4
  %i.ack = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.acj, ptr noundef %0, i32 noundef %i.aci, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !29 ; 0 uses
  %i.acl = load i32, ptr %3, align 4
  %i.acm = add i32 %i.acl, 2                      ; 2 uses
  store i32 %i.acm, ptr %3, align 4
  %i.acn = load i32, ptr @hf_qnet6_kif_msg_io_msg_subtype, align 4
  %i.aco = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.acn, ptr noundef %0, i32 noundef %i.acm, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !29 ; 0 uses
  %i.acp = load i32, ptr %3, align 4
  %i.acq = add i32 %i.acp, 2                      ; 2 uses
  store i32 %i.acq, ptr %3, align 4
  %i.acr = add i32 %i.acd, -6                     ; 4 uses
  %i.acs = load i32, ptr %i.f, align 4            ; 3 uses
  %i.act = and i32 %i.acs, -32769                 ; 2 uses
  %i.acu = icmp sgt i32 %i.act, 8
  br i1 %i.acu, label %bb.cw, label %dissect_qnet6_kif_msgsend_msg_extra.exit369

bb.cw:                                            ; preds = %bb.cv
  %i.acv = add nsw i32 %i.act, -8
  %spec.select.i368 = call i32 @llvm.smin.i32(i32 %i.acv, i32 %i.acr) ; 4 uses
  %i.acw = icmp sgt i32 %spec.select.i368, 0
  br i1 %i.acw, label %bb.cx, label %dissect_qnet6_kif_msgsend_msg_extra.exit369

bb.cx:                                            ; preds = %bb.cw
  %i.acx = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.acy = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.acx, ptr noundef %0, i32 noundef %i.acq, i32 noundef %spec.select.i368, ptr noundef nonnull @.str.1122) ; 0 uses
  %i.acz = load i32, ptr %3, align 4
  %i.ada = add i32 %i.acz, %spec.select.i368
  store i32 %i.ada, ptr %3, align 4
  %i.adb = sub nuw nsw i32 %i.acr, %spec.select.i368
  %.pre475 = load i32, ptr %i.f, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit369

dissect_qnet6_kif_msgsend_msg_extra.exit369:      ; preds = %bb.cv, %bb.cw, %bb.cx
  %i.adc = phi i32 [ %.pre475, %bb.cx ], [ %i.acs, %bb.cw ], [ %i.acs, %bb.cv ]
  %.0459 = phi i32 [ %i.adb, %bb.cx ], [ %i.acr, %bb.cw ], [ %i.acr, %bb.cv ]
  %i.add = and i32 %i.adc, 32768
  %i.ade = icmp ne i32 %i.add, 0
  %i.adf = icmp sgt i32 %.0459, 0
  %or.cond.i333 = select i1 %i.ade, i1 %i.adf, i1 false
  br i1 %or.cond.i333, label %bb.cy, label %dissect_qnet6_kif_msgsend_msg_iomsg.exit

bb.cy:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit369
  %i.adg = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !29
  br label %dissect_qnet6_kif_msgsend_msg_iomsg.exit

dissect_qnet6_kif_msgsend_msg_iomsg.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit369, %bb.cy
  %.0.i334 = phi i32 [ %i.adg, %bb.cy ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.dz

bb.cz:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.adh = load i32, ptr %3, align 4
  %i.adi = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.adh), !inline_history !30
  %i.adj = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.adk = load i32, ptr %3, align 4
  %i.adl = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.adj, ptr noundef %0, i32 noundef %i.adk, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.b), !inline_history !30 ; 0 uses
  %i.adm = load i32, ptr %3, align 4
  %i.adn = add i32 %i.adm, 2                      ; 2 uses
  store i32 %i.adn, ptr %3, align 4
  %i.ado = load i32, ptr @hf_qnet6_kif_msg_io_notify_action, align 4
  %i.adp = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ado, ptr noundef %0, i32 noundef %i.adn, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.adq = load i32, ptr %3, align 4
  %i.adr = add i32 %i.adq, 4                      ; 2 uses
  store i32 %i.adr, ptr %3, align 4
  %i.ads = load i32, ptr @hf_qnet6_kif_msg_io_notify_flags, align 4
  %i.adt = load i32, ptr @ett_qnet6_kif_msg_notify_flags, align 4
  %i.adu = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.adr, i32 noundef %i.ads, i32 noundef %i.adt, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_notify.notify_flags_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.adv = load i32, ptr %3, align 4
  %i.adw = add i32 %i.adv, 4                      ; 2 uses
  store i32 %i.adw, ptr %3, align 4
  %i.adx = load i32, ptr @ett_qnet6_kif_event, align 4
  %i.ady = call ptr @proto_tree_add_subtree(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.adw, i32 noundef 16, i32 noundef %i.adx, ptr noundef null, ptr noundef nonnull @.str.1123), !inline_history !30 ; 4 uses
  %i.adz = load i32, ptr @hf_qnet6_kif_event_notify, align 4
  %i.aea = load i32, ptr %3, align 4
  %i.aeb = call ptr @proto_tree_add_item(ptr noundef %i.ady, i32 noundef %i.adz, ptr noundef %0, i32 noundef %i.aea, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.aec = load i32, ptr %3, align 4
  %i.aed = add i32 %i.aec, 4                      ; 2 uses
  store i32 %i.aed, ptr %3, align 4
  %i.aee = load i32, ptr @hf_qnet6_kif_event_union1, align 4
  %i.aef = call ptr @proto_tree_add_item(ptr noundef %i.ady, i32 noundef %i.aee, ptr noundef %0, i32 noundef %i.aed, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.aeg = load i32, ptr %3, align 4
  %i.aeh = add i32 %i.aeg, 4                      ; 2 uses
  store i32 %i.aeh, ptr %3, align 4
  %i.aei = load i32, ptr @hf_qnet6_kif_event_value, align 4
  %i.aej = call ptr @proto_tree_add_item(ptr noundef %i.ady, i32 noundef %i.aei, ptr noundef %0, i32 noundef %i.aeh, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.aek = load i32, ptr %3, align 4
  %i.ael = add i32 %i.aek, 4                      ; 2 uses
  store i32 %i.ael, ptr %3, align 4
  %i.aem = load i32, ptr @hf_qnet6_kif_event_union2, align 4
  %i.aen = call ptr @proto_tree_add_item(ptr noundef %i.ady, i32 noundef %i.aem, ptr noundef %0, i32 noundef %i.ael, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.aeo = load i32, ptr %3, align 4
  %i.aep = add i32 %i.aeo, 4                      ; 2 uses
  store i32 %i.aep, ptr %3, align 4
  %i.aeq = load i32, ptr @hf_qnet6_kif_msg_io_notify_mgr, align 4
  %i.aer = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.aeq, ptr noundef %0, i32 noundef %i.aep, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.aes = load i32, ptr %3, align 4
  %i.aet = add i32 %i.aes, 8                      ; 2 uses
  store i32 %i.aet, ptr %3, align 4
  %i.aeu = load i32, ptr @hf_qnet6_kif_msg_io_notify_flags_extra_mask, align 4
  %i.aev = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.aeu, ptr noundef %0, i32 noundef %i.aet, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.aew = load i32, ptr %3, align 4
  %i.aex = add i32 %i.aew, 4                      ; 2 uses
  store i32 %i.aex, ptr %3, align 4
  %i.aey = load i32, ptr @hf_qnet6_kif_msg_io_notify_flags_exten, align 4
  %i.aez = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.aey, ptr noundef %0, i32 noundef %i.aex, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.afa = load i32, ptr %3, align 4
  %i.afb = add i32 %i.afa, 4                      ; 2 uses
  store i32 %i.afb, ptr %3, align 4
  %i.afc = load i32, ptr @hf_qnet6_kif_msg_io_notify_nfds, align 4
  %i.afd = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.afc, ptr noundef %0, i32 noundef %i.afb, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.c), !inline_history !30 ; 0 uses
  %i.afe = load i32, ptr %3, align 4
  %i.aff = add i32 %i.afe, 4                      ; 2 uses
  store i32 %i.aff, ptr %3, align 4
  %i.afg = load i32, ptr @hf_qnet6_kif_msg_io_notify_fd_first, align 4
  %i.afh = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.afg, ptr noundef %0, i32 noundef %i.aff, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.afi = load i32, ptr %3, align 4
  %i.afj = add i32 %i.afi, 4                      ; 2 uses
  store i32 %i.afj, ptr %3, align 4
  %i.afk = load i32, ptr @hf_qnet6_kif_msg_io_notify_nfds_ready, align 4
  %i.afl = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.afk, ptr noundef %0, i32 noundef %i.afj, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 0 uses
  %i.afm = load i32, ptr %3, align 4
  %i.afn = add i32 %i.afm, 4                      ; 2 uses
  store i32 %i.afn, ptr %3, align 4
  %i.afo = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.afn, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30 ; 5 uses
  %.not.i335 = icmp eq i64 %i.afo, 0
  br i1 %.not.i335, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.afp = icmp ugt i64 %i.afo, 1000000000
  br i1 %i.afp, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.afq = udiv i64 %i.afo, 1000000000            ; 2 uses
  %sext.i = shl i64 %i.afq, 32
  %i.afr = ashr exact i64 %sext.i, 32
  store i64 %i.afr, ptr %5, align 8
  %.neg.i = mul i64 %i.afq, 3294967296
  %i.afs = add i64 %.neg.i, %i.afo
  %i.aft = trunc i64 %i.afs to i32
  %i.afu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.aft, ptr %i.afu, align 8
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  store i64 0, ptr %5, align 8
  %i.afv = trunc nuw nsw i64 %i.afo to i32
  %i.afw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.afv, ptr %i.afw, align 8
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  %i.afx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.afx, align 8
  store i64 0, ptr %5, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.afy = load i32, ptr @hf_qnet6_kif_msg_io_notify_timo, align 4
  %i.afz = load i32, ptr %3, align 4
  %i.aga = call ptr @proto_tree_add_time(ptr noundef %i.ae, i32 noundef %i.afy, ptr noundef %0, i32 noundef %i.afz, i32 noundef 8, ptr noundef nonnull %5), !inline_history !30 ; 0 uses
  %i.agb = load i32, ptr %3, align 4
  %i.agc = add i32 %i.agb, 8                      ; 2 uses
  store i32 %i.agc, ptr %3, align 4
  %i.agd = add i32 %i.adi, -62                    ; 2 uses
  %i.age = load i32, ptr %i.c, align 4
  %i.agf = shl i32 %i.age, 3                      ; 2 uses
  %.not139.i = icmp ult i32 %i.agd, %i.agf
  br i1 %.not139.i, label %dissect_qnet6_kif_msgsend_msg_notify.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.agg = load i32, ptr @ett_qnet6_kif_msg_notify_fds, align 4
  %i.agh = call ptr @proto_tree_add_subtree(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.agc, i32 noundef %i.agf, i32 noundef %i.agg, ptr noundef null, ptr noundef nonnull @.str.1124), !inline_history !30
  %i.agi = load i32, ptr %i.c, align 4
  %.not470 = icmp eq i32 %i.agi, 0
  br i1 %.not470, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.df
  %.pre473 = load i32, ptr %3, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dr
  %i.agj = phi i32 [ %i.aij, %bb.dr ], [ %.pre473, %.lr.ph.preheader ]
  %.0133.i469 = phi i32 [ %i.aik, %bb.dr ], [ 0, %.lr.ph.preheader ]
  %i.agk = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.agj, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30
  %i.agl = load i32, ptr %3, align 4
  %i.agm = add i32 %i.agl, 4
  %i.agn = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.agm, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30
  %i.ago = load i32, ptr %3, align 4
  %i.agp = add i32 %i.ago, 6
  %i.agq = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.agp, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30
  store i8 0, ptr %i.e, align 16
  store i8 0, ptr %i.d, align 16
  %i.agr = zext i16 %i.agn to i32                 ; 4 uses
  %i.ags = zext i16 %i.agq to i32                 ; 4 uses
  %i.agt = and i32 %i.agr, 1
  %.not140.i = icmp eq i32 %i.agt, 0
  br i1 %.not140.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph
  %i.agu = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.d, i64 noundef 20, i32 noundef 2, i64 noundef 20, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1127), !inline_history !30
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph
  %.1131.i = phi i32 [ %i.agu, %bb.dg ], [ 0, %.lr.ph ] ; 4 uses
  %i.agv = and i32 %i.ags, 1
  %.not141.i = icmp eq i32 %i.agv, 0
  br i1 %.not141.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.agw = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.e, i64 noundef 20, i32 noundef 2, i64 noundef 20, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1127), !inline_history !30
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.1.i = phi i32 [ %i.agw, %bb.di ], [ 0, %bb.dh ] ; 4 uses
  %i.agx = and i32 %i.agr, 2
  %.not140.i.1 = icmp eq i32 %i.agx, 0
  br i1 %.not140.i.1, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.agy = zext i32 %.1131.i to i64               ; 2 uses
  %i.agz = getelementptr i8, ptr %i.d, i64 %i.agy
  %i.aha = sub nsw i64 20, %i.agy                 ; 2 uses
  %i.ahb = icmp ugt i32 %.1131.i, 20
  %i.ahc = select i1 %i.ahb, i64 0, i64 %i.aha    ; 2 uses
  %i.ahd = icmp ne i64 %i.ahc, -1
  call void @llvm.assume(i1 %i.ahd)
  %i.ahe = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.agz, i64 noundef %i.aha, i32 noundef 2, i64 noundef %i.ahc, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1128), !inline_history !30
  %i.ahf = add i32 %i.ahe, %.1131.i
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.1131.i.1 = phi i32 [ %i.ahf, %bb.dk ], [ %.1131.i, %bb.dj ] ; 2 uses
  %i.ahg = and i32 %i.ags, 2
  %.not141.i.1 = icmp eq i32 %i.ahg, 0
  br i1 %.not141.i.1, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ahh = zext i32 %.1.i to i64                  ; 2 uses
  %i.ahi = getelementptr i8, ptr %i.e, i64 %i.ahh
  %i.ahj = sub nsw i64 20, %i.ahh                 ; 2 uses
  %i.ahk = icmp ugt i32 %.1.i, 20
  %i.ahl = select i1 %i.ahk, i64 0, i64 %i.ahj    ; 2 uses
  %i.ahm = icmp ne i64 %i.ahl, -1
  call void @llvm.assume(i1 %i.ahm)
  %i.ahn = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ahi, i64 noundef %i.ahj, i32 noundef 2, i64 noundef %i.ahl, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1128), !inline_history !30
  %i.aho = add i32 %i.ahn, %.1.i
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.1.i.1 = phi i32 [ %i.aho, %bb.dm ], [ %.1.i, %bb.dl ] ; 2 uses
  %i.ahp = and i32 %i.agr, 4
  %.not140.i.2 = icmp eq i32 %i.ahp, 0
  br i1 %.not140.i.2, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ahq = zext i32 %.1131.i.1 to i64             ; 2 uses
  %i.ahr = getelementptr i8, ptr %i.d, i64 %i.ahq
  %i.ahs = sub nsw i64 20, %i.ahq                 ; 2 uses
  %i.aht = icmp ugt i32 %.1131.i.1, 20
  %i.ahu = select i1 %i.aht, i64 0, i64 %i.ahs    ; 2 uses
  %i.ahv = icmp ne i64 %i.ahu, -1
  call void @llvm.assume(i1 %i.ahv)
  %i.ahw = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ahr, i64 noundef %i.ahs, i32 noundef 2, i64 noundef %i.ahu, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1129), !inline_history !30 ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ahx = and i32 %i.ags, 4
  %.not141.i.2 = icmp eq i32 %i.ahx, 0
  br i1 %.not141.i.2, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ahy = zext i32 %.1.i.1 to i64                ; 2 uses
  %i.ahz = getelementptr i8, ptr %i.e, i64 %i.ahy
  %i.aia = sub nsw i64 20, %i.ahy                 ; 2 uses
  %i.aib = icmp ugt i32 %.1.i.1, 20
  %i.aic = select i1 %i.aib, i64 0, i64 %i.aia    ; 2 uses
  %i.aid = icmp ne i64 %i.aic, -1
  call void @llvm.assume(i1 %i.aid)
  %i.aie = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ahz, i64 noundef %i.aia, i32 noundef 2, i64 noundef %i.aic, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1129), !inline_history !30 ; 0 uses
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.aif = load i32, ptr @hf_qnet6_kif_msg_io_notify_fds, align 4
  %i.aig = load i32, ptr %3, align 4
  %i.aih = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %i.agh, i32 noundef %i.aif, ptr noundef %0, i32 noundef %i.aig, i32 noundef 8, ptr noundef null, ptr noundef nonnull @.str.1125, i32 noundef %i.agk, i32 noundef %i.agr, ptr noundef nonnull %i.d, i32 noundef %i.ags, ptr noundef nonnull %i.e), !inline_history !30 ; 0 uses
  %i.aii = load i32, ptr %3, align 4
  %i.aij = add i32 %i.aii, 8                      ; 2 uses
  store i32 %i.aij, ptr %3, align 4
  %i.aik = add nuw i32 %.0133.i469, 1             ; 2 uses
  %i.ail = load i32, ptr %i.c, align 4            ; 2 uses
  %i.aim = icmp ult i32 %i.aik, %i.ail
  br i1 %i.aim, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !31

._crit_edge.loopexit:                             ; preds = %bb.dr
  %i.ain = shl i32 %i.ail, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.df
  %.lcssa = phi i32 [ 0, %bb.df ], [ %i.ain, %._crit_edge.loopexit ] ; 2 uses
  %i.aio = sub i32 %i.agd, %.lcssa                ; 4 uses
  %i.aip = load i32, ptr %i.b, align 4            ; 3 uses
  %i.aiq = add i32 %.lcssa, 64                    ; 2 uses
  %i.air = and i32 %i.aip, -32769                 ; 2 uses
  %i.ais = icmp sgt i32 %i.air, %i.aiq
  br i1 %i.ais, label %bb.ds, label %dissect_qnet6_kif_msgsend_msg_extra.exit371

bb.ds:                                            ; preds = %._crit_edge
  %i.ait = sub i32 %i.air, %i.aiq
  %spec.select.i370 = call i32 @llvm.smin.i32(i32 %i.ait, i32 %i.aio) ; 4 uses
  %i.aiu = icmp sgt i32 %spec.select.i370, 0
  br i1 %i.aiu, label %bb.dt, label %dissect_qnet6_kif_msgsend_msg_extra.exit371

bb.dt:                                            ; preds = %bb.ds
  %i.aiv = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.aiw = load i32, ptr %3, align 4
  %i.aix = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.aiv, ptr noundef %0, i32 noundef %i.aiw, i32 noundef %spec.select.i370, ptr noundef nonnull @.str.1126) ; 0 uses
  %i.aiy = load i32, ptr %3, align 4
  %i.aiz = add i32 %i.aiy, %spec.select.i370
  store i32 %i.aiz, ptr %3, align 4
  %i.aja = sub nuw nsw i32 %i.aio, %spec.select.i370
  %.pre474 = load i32, ptr %i.b, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit371

dissect_qnet6_kif_msgsend_msg_extra.exit371:      ; preds = %._crit_edge, %bb.ds, %bb.dt
  %i.ajb = phi i32 [ %.pre474, %bb.dt ], [ %i.aip, %bb.ds ], [ %i.aip, %._crit_edge ]
  %.0460 = phi i32 [ %i.aja, %bb.dt ], [ %i.aio, %bb.ds ], [ %i.aio, %._crit_edge ]
  %i.ajc = and i32 %i.ajb, 32768
  %i.ajd = icmp ne i32 %i.ajc, 0
  %i.aje = icmp sgt i32 %.0460, 0
  %or.cond.i336 = and i1 %i.aje, %i.ajd
  br i1 %or.cond.i336, label %bb.du, label %dissect_qnet6_kif_msgsend_msg_notify.exit

bb.du:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit371
  %i.ajf = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !30
  br label %dissect_qnet6_kif_msgsend_msg_notify.exit

dissect_qnet6_kif_msgsend_msg_notify.exit:        ; preds = %bb.de, %dissect_qnet6_kif_msgsend_msg_extra.exit371, %bb.du
  %.0135.i = phi i32 [ -1, %bb.de ], [ %i.ajf, %bb.du ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit371 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.dz

bb.dv:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ajg = load i32, ptr %3, align 4
  %i.ajh = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ajg), !inline_history !32
  %i.aji = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.ajj = load i32, ptr %3, align 4
  %i.ajk = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.aji, ptr noundef %0, i32 noundef %i.ajj, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.a), !inline_history !32 ; 0 uses
  %i.ajl = load i32, ptr %3, align 4
  %i.ajm = add i32 %i.ajl, 2                      ; 2 uses
  store i32 %i.ajm, ptr %3, align 4
  %i.ajn = load i32, ptr @ett_qnet6_kif_msg_msginfo, align 4
  %i.ajo = call ptr @proto_tree_add_subtree(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.ajm, i32 noundef 48, i32 noundef %i.ajn, ptr noundef null, ptr noundef nonnull @.str.1118), !inline_history !32
  call fastcc void @dissect_qnet6_kif_msgsend_msg_msginfo(ptr noundef %0, ptr noundef %i.ajo, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4)
  %i.ajp = load i32, ptr @hf_qnet6_kif_msg_io_dup_reserved, align 4
  %i.ajq = load i32, ptr %3, align 4
  %i.ajr = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ajp, ptr noundef %0, i32 noundef %i.ajq, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !32 ; 0 uses
  %i.ajs = load i32, ptr %3, align 4
  %i.ajt = add i32 %i.ajs, 4                      ; 2 uses
  store i32 %i.ajt, ptr %3, align 4
  %i.aju = load i32, ptr @hf_qnet6_kif_msg_io_dup_key, align 4
  %i.ajv = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.aju, ptr noundef %0, i32 noundef %i.ajt, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !32 ; 0 uses
  %i.ajw = load i32, ptr %3, align 4
  %i.ajx = add i32 %i.ajw, 4                      ; 2 uses
  store i32 %i.ajx, ptr %3, align 4
  %i.ajy = add i32 %i.ajh, -58                    ; 4 uses
  %i.ajz = load i32, ptr %i.a, align 4            ; 3 uses
  %i.aka = and i32 %i.ajz, -32769                 ; 2 uses
  %i.akb = icmp sgt i32 %i.aka, 60
  br i1 %i.akb, label %bb.dw, label %dissect_qnet6_kif_msgsend_msg_extra.exit373

bb.dw:                                            ; preds = %bb.dv
  %i.akc = add nsw i32 %i.aka, -60
  %spec.select.i372 = call i32 @llvm.smin.i32(i32 %i.akc, i32 %i.ajy) ; 4 uses
  %i.akd = icmp sgt i32 %spec.select.i372, 0
  br i1 %i.akd, label %bb.dx, label %dissect_qnet6_kif_msgsend_msg_extra.exit373

bb.dx:                                            ; preds = %bb.dw
  %i.ake = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.akf = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.ake, ptr noundef %0, i32 noundef %i.ajx, i32 noundef %spec.select.i372, ptr noundef nonnull @.str.1130) ; 0 uses
  %i.akg = load i32, ptr %3, align 4
  %i.akh = add i32 %i.akg, %spec.select.i372
  store i32 %i.akh, ptr %3, align 4
  %i.aki = sub nuw nsw i32 %i.ajy, %spec.select.i372
  %.pre = load i32, ptr %i.a, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit373

dissect_qnet6_kif_msgsend_msg_extra.exit373:      ; preds = %bb.dv, %bb.dw, %bb.dx
  %i.akj = phi i32 [ %.pre, %bb.dx ], [ %i.ajz, %bb.dw ], [ %i.ajz, %bb.dv ]
  %.0461 = phi i32 [ %i.aki, %bb.dx ], [ %i.ajy, %bb.dw ], [ %i.ajy, %bb.dv ]
  %i.akk = and i32 %i.akj, 32768
  %i.akl = icmp ne i32 %i.akk, 0
  %i.akm = icmp sgt i32 %.0461, 0
  %or.cond.i338 = select i1 %i.akl, i1 %i.akm, i1 false
  br i1 %or.cond.i338, label %bb.dy, label %dissect_qnet6_kif_msgsend_msg_dup.exit

bb.dy:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit373
  %i.akn = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !32
  br label %dissect_qnet6_kif_msgsend_msg_dup.exit

dissect_qnet6_kif_msgsend_msg_dup.exit:           ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit373, %bb.dy
  %.0.i339 = phi i32 [ %i.akn, %bb.dy ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit373 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.dz

bb.dz:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_devctl.exit, %dissect_qnet6_kif_msgsend_msg_read.exit, %dissect_qnet6_kif_msgsend_msg_write.exit, %dissect_qnet6_kif_msgsend_msg_pathconf.exit, %dissect_qnet6_kif_msgsend_msg_stat.exit, %dissect_qnet6_kif_msgsend_msg_seek.exit, %dissect_qnet6_kif_msgsend_msg_chmod.exit, %dissect_qnet6_kif_msgsend_msg_chown.exit, %dissect_qnet6_kif_msgsend_msg_utime.exit, %dissect_qnet6_kif_msgsend_msg_fdinfo.exit, %dissect_qnet6_kif_msgsend_msg_lock.exit, %dissect_qnet6_kif_msgsend_msg_space.exit, %dissect_qnet6_kif_msgsend_msg_close.exit, %dissect_qnet6_kif_msgsend_msg_sync.exit, %dissect_qnet6_kif_msgsend_msg_openfd.exit, %dissect_qnet6_kif_msgsend_msg_shutdown.exit, %dissect_qnet6_kif_msgsend_msg_mmap.exit, %dissect_qnet6_kif_msgsend_msg_iomsg.exit, %dissect_qnet6_kif_msgsend_msg_notify.exit, %dissect_qnet6_kif_msgsend_msg_dup.exit, %bb.c, %bb.s, %bb.h, %bb.l, %bb.m, %bb.e, %bb.d
  %.0288 = phi i32 [ -1, %bb.l ], [ -1, %bb.e ], [ -1, %bb.d ], [ %i.em, %bb.m ], [ -1, %bb.c ], [ %.0.i339, %dissect_qnet6_kif_msgsend_msg_dup.exit ], [ %.0.i, %dissect_qnet6_kif_msgsend_msg_devctl.exit ], [ %.0.i302, %dissect_qnet6_kif_msgsend_msg_read.exit ], [ %.0.i305, %dissect_qnet6_kif_msgsend_msg_write.exit ], [ %.0.i307, %dissect_qnet6_kif_msgsend_msg_pathconf.exit ], [ %.0.i309, %dissect_qnet6_kif_msgsend_msg_stat.exit ], [ %.0.i311, %dissect_qnet6_kif_msgsend_msg_seek.exit ], [ %.0.i313, %dissect_qnet6_kif_msgsend_msg_chmod.exit ], [ %.0.i315, %dissect_qnet6_kif_msgsend_msg_chown.exit ], [ %.0.i317, %dissect_qnet6_kif_msgsend_msg_utime.exit ], [ %.033.i, %dissect_qnet6_kif_msgsend_msg_fdinfo.exit ], [ %.0.i320, %dissect_qnet6_kif_msgsend_msg_lock.exit ], [ %.0.i322, %dissect_qnet6_kif_msgsend_msg_space.exit ], [ %.0.i324, %dissect_qnet6_kif_msgsend_msg_close.exit ], [ %.0.i326, %dissect_qnet6_kif_msgsend_msg_sync.exit ], [ %.0.i328, %dissect_qnet6_kif_msgsend_msg_openfd.exit ], [ %.0.i330, %dissect_qnet6_kif_msgsend_msg_shutdown.exit ], [ %.0.i332, %dissect_qnet6_kif_msgsend_msg_mmap.exit ], [ %.0.i334, %dissect_qnet6_kif_msgsend_msg_iomsg.exit ], [ %.0135.i, %dissect_qnet6_kif_msgsend_msg_notify.exit ], [ 0, %bb.s ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #6
  ret i32 %.0288
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_qnet6_kif_msgsend_msg_msginfo(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 -2147483648, 1) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = load i32, ptr @hf_qnet6_kif_msg_msginfo_nd, align 4
  %i.d = load i32, ptr %2, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.d, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.f = load i32, ptr %2, align 4
  %i.g = add i32 %i.f, 4                          ; 2 uses
  store i32 %i.g, ptr %2, align 4
  %i.h = load i32, ptr @hf_qnet6_kif_msg_msginfo_srcnd, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.j = load i32, ptr %2, align 4
  %i.k = add i32 %i.j, 4                          ; 2 uses
  store i32 %i.k, ptr %2, align 4
  %i.l = load i32, ptr @hf_qnet6_kif_msg_msginfo_pid, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.k, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %2, align 4
  %i.o = add i32 %i.n, 4                          ; 2 uses
  store i32 %i.o, ptr %2, align 4
  %i.p = load i32, ptr @hf_qnet6_kif_msg_msginfo_tid, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %2, align 4
  %i.s = add i32 %i.r, 4                          ; 2 uses
  store i32 %i.s, ptr %2, align 4
  %i.t = load i32, ptr @hf_qnet6_kif_msg_msginfo_chid, align 4
  %i.u = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef %3, ptr noundef nonnull %i.a)
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
  %i.w = and i32 %i.v, 1073741824
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %display_channel_id.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = and i32 %i.v, -1073741825
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef nonnull @.str.1096, i32 noundef %i.x)
  br label %display_channel_id.exit

display_channel_id.exit:                          ; preds = %bb.a, %bb.b
  %i.y = load i32, ptr %2, align 4
  %i.z = add i32 %i.y, 4                          ; 2 uses
  store i32 %i.z, ptr %2, align 4
  %i.aa = load i32, ptr @hf_qnet6_kif_msg_msginfo_scoid, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ac = load i32, ptr %2, align 4
  %i.ad = add i32 %i.ac, 4                        ; 2 uses
  store i32 %i.ad, ptr %2, align 4
  %i.ae = load i32, ptr @hf_qnet6_kif_msg_msginfo_coid, align 4
  %i.af = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 4, i32 noundef %3, ptr noundef nonnull %i.b) ; 2 uses
  %i.ag = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ah = and i32 %i.ag, 1073741824
  %.not.i67 = icmp eq i32 %i.ah, 0
  br i1 %.not.i67, label %display_coid.exit, label %bb.c

bb.c:                                             ; preds = %display_channel_id.exit
  %i.ai = and i32 %i.ag, -1073741825              ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.af, ptr noundef nonnull @.str.1098)
  br label %display_coid.exit

bb.e:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.af, ptr noundef nonnull @.str.1099, i32 noundef %i.ai)
  br label %display_coid.exit

display_coid.exit:                                ; preds = %display_channel_id.exit, %bb.d, %bb.e
  %i.ak = load i32, ptr %2, align 4
  %i.al = add i32 %i.ak, 4                        ; 2 uses
  store i32 %i.al, ptr %2, align 4
  %i.am = load i32, ptr @hf_qnet6_kif_msg_msginfo_msglen, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ao = load i32, ptr %2, align 4
  %i.ap = add i32 %i.ao, 4                        ; 2 uses
  store i32 %i.ap, ptr %2, align 4
  %i.aq = load i32, ptr @hf_qnet6_kif_msg_msginfo_srcmsglen, align 4
  %i.ar = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ap, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.as = load i32, ptr %2, align 4
  %i.at = add i32 %i.as, 4                        ; 2 uses
  store i32 %i.at, ptr %2, align 4
  %i.au = load i32, ptr @hf_qnet6_kif_msg_msginfo_dstmsglen, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.at, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.aw = load i32, ptr %2, align 4
  %i.ax = add i32 %i.aw, 4                        ; 2 uses
  store i32 %i.ax, ptr %2, align 4
  %i.ay = load i32, ptr @hf_qnet6_kif_msg_msginfo_priority, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.ax, i32 noundef 2, i32 noundef %3) ; 0 uses
  %i.ba = load i32, ptr %2, align 4
  %i.bb = add i32 %i.ba, 2                        ; 2 uses
  store i32 %i.bb, ptr %2, align 4
  %i.bc = load i32, ptr @hf_qnet6_kif_msg_msginfo_flags, align 4
  %i.bd = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bb, i32 noundef 2, i32 noundef %3) ; 0 uses
  %i.be = load i32, ptr %2, align 4
  %i.bf = add i32 %i.be, 2                        ; 2 uses
  store i32 %i.bf, ptr %2, align 4
  %i.bg = load i32, ptr @hf_qnet6_kif_msg_msginfo_reserved, align 4
  %i.bh = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.bf, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.bi = load i32, ptr %2, align 4
  %i.bj = add i32 %i.bi, 4
  store i32 %i.bj, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_uint64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_address_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

end_hunk_0
