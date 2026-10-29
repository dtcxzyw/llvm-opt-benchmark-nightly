Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pn-dcp?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_PNDCP_Block:bb.a
  %i.ud = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.sw, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.uc, ptr noundef nonnull %i.v)
  %i.ue = load i16, ptr %i.v, align 2
  %i.uf = zext i16 %i.ue to i32
  %i.ug = call ptr @val_to_str_const(i32 noundef %i.uf, ptr noundef @pn_dcp_suboption_other, ptr noundef @.str.150)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.ug)
  br label %dissect_PNDCP_Suboption_Control.exit

bb.es:                                            ; preds = %bb.ei
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.332)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.333)
  %i.uh = load i32, ptr @hf_pn_dcp_blockqualifier_r2f, align 4
  %i.ui = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.sw, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.uh, ptr noundef nonnull %i.v)
  %i.uj = load i16, ptr %i.v, align 2
  %i.uk = zext i16 %i.uj to i32
  %i.ul = call ptr @val_to_str_const(i32 noundef %i.uk, ptr noundef @pn_dcp_BlockQualifier, ptr noundef @.str.150)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.ul)
  br label %dissect_PNDCP_Suboption_Control.exit

bb.et:                                            ; preds = %bb.ei
  %i.um = call i32 @dissect_pn_undecoded(ptr noundef %0, i32 noundef %i.sw, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.sz)
  br label %dissect_PNDCP_Suboption_Control.exit

dissect_PNDCP_Suboption_Control.exit:             ; preds = %bb.eh, %bb.ej, %bb.ek, %bb.el, %bb.eq, %bb.er, %bb.es, %bb.et
  %.084.i = phi i32 [ %i.sw, %bb.eh ], [ %i.um, %bb.et ], [ %i.td, %bb.ej ], [ %i.tf, %bb.ek ], [ %i.tl, %bb.el ], [ %i.ts, %bb.eq ], [ %i.ud, %bb.er ], [ %i.ui, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #4
  br label %bb.hc

bb.eu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #4
  %i.un = load i32, ptr @hf_pn_dcp_suboption_deviceinitiative, align 4
  %i.uo = call i32 @dissect_pn_uint8(ptr noundef %0, i32 noundef %i.bf, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.un, ptr noundef nonnull %i.n)
  %i.up = load i32, ptr @hf_pn_dcp_block_length, align 4
  %i.uq = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.uo, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.up, ptr noundef nonnull %i.o) ; 2 uses
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.334)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.335)
  %or.cond40.v.i = select i1 %6, i8 5, i8 6
  %or.cond40.not42.i = icmp eq i8 %5, %or.cond40.v.i
  %i.ur = icmp eq i8 %5, 3
  %or.cond5.i107 = and i1 %i.ur, %6
  %or.cond41.i = or i1 %or.cond5.i107, %or.cond40.not42.i
  br i1 %or.cond41.i, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.us = load i32, ptr @hf_pn_dcp_block_info, align 4
  %i.ut = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.uq, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.us, ptr noundef nonnull %i.p)
  %i.uu = load i16, ptr %i.p, align 2
  %i.uv = zext i16 %i.uu to i32
  %i.uw = call ptr @rval_to_str_const(i32 noundef %i.uv, ptr noundef @pn_dcp_block_info, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.266, ptr noundef %i.uw)
  %i.ux = load i16, ptr %i.o, align 2
  %i.uy = add i16 %i.ux, -2
  store i16 %i.uy, ptr %i.o, align 2
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.0.i108 = phi i32 [ %i.ut, %bb.ev ], [ %i.uq, %bb.eu ] ; 2 uses
  %i.uz = icmp ne i8 %5, 4
  %or.cond7.i109 = or i1 %i.uz, %6
  br i1 %or.cond7.i109, label %dissect_PNDCP_Suboption_DeviceInitiative.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.va = load i32, ptr @hf_pn_dcp_block_qualifier, align 4
  %i.vb = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %.0.i108, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.va, ptr noundef nonnull %i.q)
  %i.vc = load i16, ptr %i.q, align 2
  %i.vd = zext i16 %i.vc to i32
  %i.ve = call ptr @val_to_str_const(i32 noundef %i.vd, ptr noundef @pn_dcp_block_qualifier, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.ve)
  %i.vf = load i16, ptr %i.o, align 2
  %i.vg = add i16 %i.vf, -2
  store i16 %i.vg, ptr %i.o, align 2
  br label %dissect_PNDCP_Suboption_DeviceInitiative.exit

dissect_PNDCP_Suboption_DeviceInitiative.exit:    ; preds = %bb.ew, %bb.ex
  %.1.i110 = phi i32 [ %.0.i108, %bb.ew ], [ %i.vb, %bb.ex ]
  %i.vh = load i32, ptr @hf_pn_dcp_deviceinitiative_value, align 4
  %i.vi = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %.1.i110, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.vh, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #4
  br label %bb.hc

bb.ey:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  store i16 0, ptr %i.j, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  store i16 0, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.vj = load i32, ptr @hf_pn_dcp_suboption_nme, align 4
  %i.vk = call i32 @dissect_pn_uint8(ptr noundef %0, i32 noundef %i.bf, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.vj, ptr noundef nonnull %i.d)
  %i.vl = load i32, ptr @hf_pn_dcp_block_length, align 4
  %i.vm = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.vk, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.vl, ptr noundef nonnull %i.e) ; 2 uses
  %or.cond203.v.i = select i1 %6, i8 5, i8 6
  %or.cond203.not205.i = icmp eq i8 %5, %or.cond203.v.i
  %i.vn = icmp eq i8 %5, 3
  %or.cond5.i111 = and i1 %i.vn, %6
  %or.cond204.i = or i1 %or.cond5.i111, %or.cond203.not205.i ; 6 uses
  br i1 %or.cond204.i, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.vo = load i32, ptr @hf_pn_dcp_block_info, align 4
  %i.vp = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.vm, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.vo, ptr noundef nonnull %i.j)
  %i.vq = load i16, ptr %i.e, align 2
  %i.vr = add i16 %i.vq, -2
  store i16 %i.vr, ptr %i.e, align 2
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0194.i = phi i32 [ %i.vp, %bb.ez ], [ %i.vm, %bb.ey ] ; 2 uses
  %i.vs = icmp ne i8 %5, 4
  %or.cond7.i112 = or i1 %i.vs, %6                ; 6 uses
  br i1 %or.cond7.i112, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.vt = load i32, ptr @hf_pn_dcp_block_qualifier, align 4
  %i.vu = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %.0194.i, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.vt, ptr noundef nonnull %i.k)
  %i.vv = load i16, ptr %i.e, align 2
  %i.vw = add i16 %i.vv, -2
  store i16 %i.vw, ptr %i.e, align 2
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.1195.i = phi i32 [ %.0194.i, %bb.fa ], [ %i.vu, %bb.fb ] ; 11 uses
  %i.vx = load i8, ptr %i.d, align 1
  switch i8 %i.vx, label %bb.gu [
    i8 1, label %bb.fd
    i8 2, label %bb.fk
    i8 3, label %bb.fw
    i8 4, label %bb.ge
    i8 5, label %bb.gk
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.vy = load i32, ptr @hf_pn_dcp_suboption_nme_domain_uuid, align 4
  %i.vz = call i32 @dissect_pn_uuid(ptr noundef %0, i32 noundef %.1195.i, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.vy, ptr noundef nonnull %7) ; 2 uses
  %i.wa = load i32, ptr @hf_pn_dcp_suboption_nme_domain_name, align 4
  %i.wb = load i16, ptr %i.e, align 2
  %i.wc = zext i16 %i.wb to i32
  %i.wd = add nsw i32 %i.wc, -16
  %i.we = getelementptr i8, ptr %2, i64 416       ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = call ptr @proto_tree_add_item_ret_display_string(ptr noundef %i.bd, i32 noundef %i.wa, ptr noundef %0, i32 noundef %i.vz, i32 noundef %i.wd, i32 noundef 0, ptr noundef %i.wf, ptr noundef nonnull %i.f) ; 0 uses
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.336)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.337)
  br i1 %or.cond7.i112, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.wh = load i16, ptr %i.k, align 2
  %i.wi = zext i16 %i.wh to i32
  %i.wj = call ptr @val_to_str_const(i32 noundef %i.wi, ptr noundef @pn_dcp_block_qualifier, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.wj)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  br i1 %or.cond204.i, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.wk = load i16, ptr %i.j, align 2
  %i.wl = zext i16 %i.wk to i32
  %i.wm = call ptr @rval_to_str_const(i32 noundef %i.wl, ptr noundef @pn_dcp_block_info, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.266, ptr noundef %i.wm)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.wn = load ptr, ptr %i.we, align 8
  %i.wo = load ptr, ptr %i.f, align 8
  %i.wp = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.wn, ptr noundef @.str.338, ptr noundef %i.wo)
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef %i.wp)
  %i.wq = load ptr, ptr %i.f, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.285, ptr noundef %i.wq)
  %i.wr = load i16, ptr %i.e, align 2
  %i.ws = zext i16 %i.wr to i32
  %i.wt = add i32 %i.vz, -16
  %i.wu = add i32 %i.wt, %i.ws                    ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ww = load <8 x i8>, ptr %i.wv, align 4
  %.fr146 = freeze <8 x i8> %i.ww
  %i.wx = load i32, ptr %7, align 4
  %i.wy = icmp eq i32 %i.wx, 0
  %i.wz = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.xa = load i16, ptr %i.wz, align 4
  %.fr148 = freeze i16 %i.xa
  %i.xb = icmp eq i16 %.fr148, 0
  %i.xc = getelementptr inbounds nuw i8, ptr %7, i64 6
  %i.xd = load i16, ptr %i.xc, align 2
  %i.xe = icmp eq i16 %i.xd, 0
  %.fr146.scalar = bitcast <8 x i8> %.fr146 to i64
  %i.xf = icmp eq i64 %.fr146.scalar, 0
  %op.rdx = and i1 %i.xf, %i.xb
  %i.xg = select i1 %op.rdx, i1 %i.wy, i1 false
  %op.rdx134 = select i1 %i.xg, i1 %i.xe, i1 false
  br i1 %op.rdx134, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.339)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.fj:                                            ; preds = %bb.fh
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.340)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.fk:                                            ; preds = %bb.fc
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.341)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.342)
  br i1 %or.cond7.i112, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.xh = load i16, ptr %i.k, align 2
  %i.xi = zext i16 %i.xh to i32
  %i.xj = call ptr @val_to_str_const(i32 noundef %i.xi, ptr noundef @pn_dcp_block_qualifier, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.xj)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  br i1 %or.cond204.i, label %bb.fn, label %dissect_PNDCP_Suboption_NME.exit

bb.fn:                                            ; preds = %bb.fm
  %i.xk = load i32, ptr @hf_pn_dcp_suboption_nme_prio, align 4
  %i.xl = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %.1195.i, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.xk, ptr noundef nonnull %i.g) ; 5 uses
  %i.xm = load i16, ptr %i.j, align 2
  %i.xn = zext i16 %i.xm to i32
  %i.xo = call ptr @rval_to_str_const(i32 noundef %i.xn, ptr noundef @pn_dcp_block_info, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.266, ptr noundef %i.xo)
  %i.xp = load i16, ptr %i.g, align 2             ; 4 uses
  %i.xq = icmp eq i16 %i.xp, 0
  br i1 %i.xq, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.343)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.fp:                                            ; preds = %bb.fn
  %i.xr = icmp ult i16 %i.xp, 12289
  br i1 %i.xr, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.344)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.fr:                                            ; preds = %bb.fp
  %i.xs = icmp ult i16 %i.xp, -24576
  br i1 %i.xs, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.345)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.ft:                                            ; preds = %bb.fr
  %i.xt = icmp eq i16 %i.xp, -24576
  br i1 %i.xt, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.346)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.fv:                                            ; preds = %bb.ft
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.262)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.fw:                                            ; preds = %bb.fc
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.347)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.348)
  %i.xu = load i16, ptr %i.e, align 2
  %.not200.i = icmp eq i16 %i.xu, 0
  br i1 %.not200.i, label %dissect_PNDCP_Suboption_NME.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.xv = load i32, ptr @hf_pn_dcp_suboption_nme_parameter_uuid, align 4
  %i.xw = call i32 @dissect_pn_uuid(ptr noundef %0, i32 noundef %.1195.i, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.xv, ptr noundef nonnull %8) ; 2 uses
  br i1 %or.cond7.i112, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xx = load i16, ptr %i.k, align 2
  %i.xy = zext i16 %i.xx to i32
  %i.xz = call ptr @val_to_str_const(i32 noundef %i.xy, ptr noundef @pn_dcp_block_qualifier, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.xz)
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  br i1 %or.cond204.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.ya = load i16, ptr %i.j, align 2
  %i.yb = zext i16 %i.ya to i32
  %i.yc = call ptr @rval_to_str_const(i32 noundef %i.yb, ptr noundef @pn_dcp_block_info, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.266, ptr noundef %i.yc)
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.yd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ye = load <8 x i8>, ptr %i.yd, align 4
  %.fr143 = freeze <8 x i8> %i.ye
  %i.yf = load i32, ptr %8, align 4
  %i.yg = icmp eq i32 %i.yf, 0
  %i.yh = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.yi = load i16, ptr %i.yh, align 4
  %.fr145 = freeze i16 %i.yi
  %i.yj = icmp eq i16 %.fr145, 0
  %i.yk = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.yl = load i16, ptr %i.yk, align 2
  %i.ym = icmp eq i16 %i.yl, 0
  %.fr143.scalar = bitcast <8 x i8> %.fr143 to i64
  %i.yn = icmp eq i64 %.fr143.scalar, 0
  %op.rdx135 = and i1 %i.yn, %i.yj
  %i.yo = select i1 %op.rdx135, i1 %i.yg, i1 false
  %op.rdx137 = select i1 %i.yo, i1 %i.ym, i1 false
  br i1 %op.rdx137, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.349)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.gd:                                            ; preds = %bb.gb
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.350)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.ge:                                            ; preds = %bb.fc
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.351)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.352)
  br i1 %or.cond7.i112, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.yp = load i16, ptr %i.k, align 2
  %i.yq = zext i16 %i.yp to i32
  %i.yr = call ptr @val_to_str_const(i32 noundef %i.yq, ptr noundef @pn_dcp_block_qualifier, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.yr)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  br i1 %or.cond204.i, label %bb.gh, label %dissect_PNDCP_Suboption_NME.exit

bb.gh:                                            ; preds = %bb.gg
  %i.ys = load i32, ptr @hf_pn_dcp_suboption_nme_agent, align 4
  %i.yt = call i32 @dissect_pn_uuid(ptr noundef %0, i32 noundef %.1195.i, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.ys, ptr noundef nonnull %9) ; 2 uses
  %i.yu = load i16, ptr %i.j, align 2
  %i.yv = zext i16 %i.yu to i32
  %i.yw = call ptr @rval_to_str_const(i32 noundef %i.yv, ptr noundef @pn_dcp_block_info, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.266, ptr noundef %i.yw)
  %i.yx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.yy = load <8 x i8>, ptr %i.yx, align 4
  %.fr = freeze <8 x i8> %i.yy
  %i.yz = load i32, ptr %9, align 4
  %i.za = icmp eq i32 %i.yz, 0
  %i.zb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.zc = load i16, ptr %i.zb, align 4
  %.fr142 = freeze i16 %i.zc
  %i.zd = icmp eq i16 %.fr142, 0
  %i.ze = getelementptr inbounds nuw i8, ptr %9, i64 6
  %i.zf = load i16, ptr %i.ze, align 2
  %i.zg = icmp eq i16 %i.zf, 0
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.zh = icmp eq i64 %.fr.scalar, 0
  %op.rdx138 = and i1 %i.zh, %i.zd
  %i.zi = select i1 %op.rdx138, i1 %i.za, i1 false
  %op.rdx140 = select i1 %i.zi, i1 %i.zg, i1 false
  br i1 %op.rdx140, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.353)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.gj:                                            ; preds = %bb.gh
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.354)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.gk:                                            ; preds = %bb.fc
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.355)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.356)
  br i1 %or.cond7.i112, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.zj = load i16, ptr %i.k, align 2
  %i.zk = zext i16 %i.zj to i32
  %i.zl = call ptr @val_to_str_const(i32 noundef %i.zk, ptr noundef @pn_dcp_block_qualifier, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.265, ptr noundef %i.zl)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  br i1 %or.cond204.i, label %bb.gn, label %dissect_PNDCP_Suboption_NME.exit

bb.gn:                                            ; preds = %bb.gm
  %i.zm = load i32, ptr @hf_pn_dcp_vendor_id_high, align 4
  %i.zn = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %.1195.i, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.zm, ptr noundef nonnull %i.h) ; 0 uses
  %i.zo = load i32, ptr @hf_pn_dcp_vendor_id_low, align 4
  %i.zp = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %.1195.i, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.zo, ptr noundef nonnull %i.h) ; 2 uses
  %i.zq = load i32, ptr @hf_pn_dcp_device_id_high, align 4
  %i.zr = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.zp, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.zq, ptr noundef nonnull %i.i) ; 0 uses
  %i.zs = load i32, ptr @hf_pn_dcp_device_id_low, align 4
  %i.zt = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.zp, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.zs, ptr noundef nonnull %i.i)
  %i.zu = load i32, ptr @hf_pn_dcp_instance_id_high, align 4
  %i.zv = call i32 @dissect_pn_uint8(ptr noundef %0, i32 noundef %i.zt, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.zu, ptr noundef nonnull %i.l)
  %i.zw = load i32, ptr @hf_pn_dcp_instance_id_low, align 4
  %i.zx = call i32 @dissect_pn_uint8(ptr noundef %0, i32 noundef %i.zv, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.zw, ptr noundef nonnull %i.m)
  %i.zy = getelementptr i8, ptr %2, i64 80
  %i.zz = load ptr, ptr %i.zy, align 8
  %i.aaa = getelementptr i8, ptr %i.zz, i64 53
  %i.aab = load i16, ptr %i.aaa, align 1
  %i.aac = and i16 %i.aab, 8
  %i.aad = icmp eq i16 %i.aac, 0
  br i1 %i.aad, label %bb.go, label %bb.gt

bb.go:                                            ; preds = %bb.gn
  %i.aae = getelementptr i8, ptr %2, i64 20       ; 2 uses
  %i.aaf = load i32, ptr %i.aae, align 4
  %i.aag = getelementptr i8, ptr %2, i64 112      ; 2 uses
  %i.aah = getelementptr i8, ptr %2, i64 136      ; 2 uses
  %i.aai = call ptr @find_conversation(i32 noundef %i.aaf, ptr noundef %i.aag, ptr noundef %i.aah, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.aak = load i32, ptr %i.aae, align 4
  %i.aal = call ptr @conversation_new(i32 noundef %i.aak, ptr noundef %i.aag, ptr noundef %i.aah, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.0191.i = phi ptr [ %i.aal, %bb.gp ], [ %i.aai, %bb.go ] ; 2 uses
  %i.aam = load i32, ptr @proto_pn_dcp, align 4
  %i.aan = call ptr @conversation_get_proto_data(ptr noundef %.0191.i, i32 noundef %i.aam) ; 2 uses
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.aap = call ptr @wmem_file_scope()
  %i.aaq = call noalias dereferenceable_or_null(88) ptr @wmem_alloc0(ptr noundef %i.aap, i64 noundef 88) #5 ; 3 uses
  call void @init_pnio_rtc1_station(ptr noundef %i.aaq)
  %i.aar = load i32, ptr @proto_pn_dcp, align 4
  call void @conversation_add_proto_data(ptr noundef %.0191.i, i32 noundef %i.aar, ptr noundef %i.aaq)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.0190.i = phi ptr [ %i.aaq, %bb.gr ], [ %i.aan, %bb.gq ] ; 2 uses
  %i.aas = load i16, ptr %i.h, align 2
  %i.aat = getelementptr i8, ptr %.0190.i, i64 16
  store i16 %i.aas, ptr %i.aat, align 8
  %i.aau = load i16, ptr %i.i, align 2
  %i.aav = getelementptr i8, ptr %.0190.i, i64 18
  store i16 %i.aau, ptr %i.aav, align 2
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gn
  %i.aaw = load i16, ptr %i.j, align 2
  %i.aax = zext i16 %i.aaw to i32
  %i.aay = call ptr @rval_to_str_const(i32 noundef %i.aax, ptr noundef @pn_dcp_block_info, ptr noundef @.str.141)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.266, ptr noundef %i.aay)
  %i.aaz = load i16, ptr %i.h, align 2
  %i.aba = zext i16 %i.aaz to i32
  %i.abb = load i16, ptr %i.i, align 2
  %i.abc = zext i16 %i.abb to i32
  %i.abd = load i8, ptr %i.l, align 1
  %i.abe = zext i8 %i.abd to i32
  %i.abf = load i8, ptr %i.m, align 1
  %i.abg = zext i8 %i.abf to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.357, i32 noundef %i.aba, i32 noundef %i.abc, i32 noundef %i.abe, i32 noundef %i.abg)
  br label %dissect_PNDCP_Suboption_NME.exit

bb.gu:                                            ; preds = %bb.fc
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.358)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.359)
  br label %dissect_PNDCP_Suboption_NME.exit

dissect_PNDCP_Suboption_NME.exit:                 ; preds = %bb.fi, %bb.fj, %bb.fm, %bb.fo, %bb.fq, %bb.fs, %bb.fu, %bb.fv, %bb.fw, %bb.gc, %bb.gd, %bb.gg, %bb.gi, %bb.gj, %bb.gm, %bb.gt, %bb.gu
  %.2196.i = phi i32 [ %.1195.i, %bb.gu ], [ %i.wu, %bb.fi ], [ %i.wu, %bb.fj ], [ %i.xl, %bb.fo ], [ %i.xl, %bb.fq ], [ %i.xl, %bb.fs ], [ %i.xl, %bb.fu ], [ %i.xl, %bb.fv ], [ %.1195.i, %bb.fm ], [ %i.xw, %bb.gc ], [ %i.xw, %bb.gd ], [ %.1195.i, %bb.fw ], [ %i.yt, %bb.gi ], [ %i.yt, %bb.gj ], [ %.1195.i, %bb.gg ], [ %i.zx, %bb.gt ], [ %.1195.i, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.hc

bb.gv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.abh = load i32, ptr @hf_pn_dcp_suboption_all, align 4
  %i.abi = call i32 @dissect_pn_uint8(ptr noundef %0, i32 noundef %i.bf, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.abh, ptr noundef nonnull %i.b)
  %i.abj = load i32, ptr @hf_pn_dcp_block_length, align 4
  %i.abk = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.abi, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.abj, ptr noundef nonnull %i.c) ; 2 uses
  %i.abl = load i8, ptr %i.b, align 1
  %cond.i = icmp eq i8 %i.abl, -1
  br i1 %cond.i, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.360)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.361)
  br label %dissect_PNDCP_Suboption_All.exit

bb.gx:                                            ; preds = %bb.gv
  %i.abm = load i16, ptr %i.c, align 2
  %i.abn = zext i16 %i.abm to i32
  %i.abo = call i32 @dissect_pn_undecoded(ptr noundef %0, i32 noundef %i.abk, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.abn)
  br label %dissect_PNDCP_Suboption_All.exit

dissect_PNDCP_Suboption_All.exit:                 ; preds = %bb.gw, %bb.gx
  %.0.i117 = phi i32 [ %i.abk, %bb.gw ], [ %i.abo, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.hc

bb.gy:                                            ; preds = %bb.a
  %i.abp = icmp slt i8 %i.bg, 0
  br i1 %i.abp, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.abq = load i32, ptr @hf_pn_dcp_suboption_manuf, align 4
  %i.abr = call i32 @dissect_pn_uint8(ptr noundef %0, i32 noundef %i.bf, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.abq, ptr noundef null) ; 3 uses
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.362)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.363)
  %i.abs = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.abr)
  %.not.i118 = icmp eq i32 %i.abs, 0
  br i1 %.not.i118, label %dissect_PNDCP_Suboption_Manuf.exit, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.abt = load i32, ptr @hf_pn_dcp_block_length, align 4
  %i.abu = call i32 @dissect_pn_uint16(ptr noundef %0, i32 noundef %i.abr, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.abt, ptr noundef nonnull %i.a)
  %i.abv = load i16, ptr %i.a, align 2
  %i.abw = zext i16 %i.abv to i32
  %i.abx = call i32 @dissect_pn_undecoded(ptr noundef %0, i32 noundef %i.abu, ptr noundef %2, ptr noundef %i.bd, i32 noundef %i.abw)
  br label %dissect_PNDCP_Suboption_Manuf.exit

dissect_PNDCP_Suboption_Manuf.exit:               ; preds = %bb.gz, %bb.ha
  %.0.i119 = phi i32 [ %i.abx, %bb.ha ], [ %i.abr, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gy
  call void @pn_append_info(ptr noundef %2, ptr noundef %4, ptr noundef @.str.262)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bb, ptr noundef @.str.6)
  br label %bb.hc

bb.hc:                                            ; preds = %dissect_PNDCP_Suboption_Device.exit, %dissect_PNDCP_Suboption_Control.exit, %dissect_PNDCP_Suboption_NME.exit, %dissect_PNDCP_Suboption_Manuf.exit, %bb.hb, %dissect_PNDCP_Suboption_All.exit, %dissect_PNDCP_Suboption_DeviceInitiative.exit, %dissect_PNDCP_Suboption_DHCP.exit, %dissect_PNDCP_Suboption_IP.exit
  %.0 = phi i32 [ %.6.i, %dissect_PNDCP_Suboption_IP.exit ], [ %.3263.i, %dissect_PNDCP_Suboption_Device.exit ], [ %.3.i102, %dissect_PNDCP_Suboption_DHCP.exit ], [ %.084.i, %dissect_PNDCP_Suboption_Control.exit ], [ %i.vi, %dissect_PNDCP_Suboption_DeviceInitiative.exit ], [ %.2196.i, %dissect_PNDCP_Suboption_NME.exit ], [ %.0.i117, %dissect_PNDCP_Suboption_All.exit ], [ %.0.i119, %dissect_PNDCP_Suboption_Manuf.exit ], [ %i.bf, %bb.hb ] ; 5 uses
  %i.aby = sub i32 %.0, %1                        ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.bb, i32 noundef %i.aby)
  %i.abz = and i32 %i.aby, 1
  %.not = icmp eq i32 %i.abz, 0
  br i1 %.not, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aca = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0)
  %.not90 = icmp eq i32 %i.aca, 0
  br i1 %.not90, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.acb = call i32 @dissect_pn_padding(ptr noundef %0, i32 noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef 1)
  br label %bb.hf
end_hunk_0
