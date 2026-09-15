Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-shim6?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@dissect_shim6:bb.a
  %i.js = mul nuw nsw i32 %i.jb, 40
  %i.jt = add nuw nsw i32 %i.js, 15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i = phi i32 [ %i.jt, %bb.u ], [ 15, %bb.t ] ; 3 uses
  %.not141.i = icmp eq i32 %i.jc, 0
  br i1 %.not141.i, label %dissect_shimctrl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call fastcc void @dissect_shim6_probes(ptr noundef %.fr, ptr noundef %0, i32 noundef %.0.i, ptr noundef nonnull @.str.28, i32 noundef %i.jc, i1 noundef zeroext true)
  %i.ju = mul nuw nsw i32 %i.jc, 40
  %i.jv = add nuw nsw i32 %.0.i, %i.ju
  br label %dissect_shimctrl.exit

dissect_shimctrl.exit:                            ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v, %bb.w
  %.1.i = phi i32 [ 5, %bb.k ], [ 15, %bb.l ], [ 15, %bb.m ], [ 23, %bb.n ], [ 15, %bb.o ], [ 15, %bb.p ], [ 31, %bb.q ], [ 15, %bb.r ], [ 15, %bb.s ], [ %i.jv, %bb.w ], [ %.0.i, %bb.v ]
  %i.jw = add nuw nsw i32 %.1.i, 5                ; 3 uses
  %i.jx = icmp samesign ult i32 %i.jw, %i.f
  br i1 %i.jx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %dissect_shimctrl.exit
  %.not.i87 = icmp eq ptr %.fr, null
  br i1 %.not.i87, label %dissect_shimopts.exit.us, label %.lr.ph.split

dissect_shimopts.exit.us:                         ; preds = %.lr.ph, %dissect_shimopts.exit.us
  %.092.us = phi i32 [ %i.kf, %dissect_shimopts.exit.us ], [ %i.jw, %.lr.ph ] ; 2 uses
  %i.jy = add nuw nsw i32 %.092.us, 6
  %i.jz = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.jy)
  %i.ka = zext i16 %i.jz to i32                   ; 2 uses
  %i.kb = sub nsw i32 4, %i.ka
  %i.kc = and i32 %i.kb, 7
  %i.kd = add nuw nsw i32 %i.ka, 4
  %i.ke = add nuw nsw i32 %i.kd, %i.kc
  %i.kf = add nuw nsw i32 %i.ke, %.092.us         ; 2 uses
  %i.kg = icmp samesign ult i32 %i.kf, %i.f
  br i1 %i.kg, label %dissect_shimopts.exit.us, label %.loopexit, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph, %dissect_shimopts.exit
  %.092 = phi i32 [ %i.pk, %dissect_shimopts.exit ], [ %i.jw, %.lr.ph ] ; 11 uses
  %i.kh = add nuw nsw i32 %.092, 4                ; 15 uses
  %i.ki = add nuw nsw i32 %.092, 6                ; 3 uses
  %i.kj = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ki)
  %i.kk = zext i16 %i.kj to i32                   ; 9 uses
  %i.kl = sub nsw i32 4, %i.kk
  %i.km = and i32 %i.kl, 7                        ; 9 uses
  %i.kn = add nuw nsw i32 %i.kk, 4
  %i.ko = add nuw nsw i32 %i.kn, %i.km            ; 3 uses
  %i.kp = load i32, ptr @ett_shim6_option, align 4
  %i.kq = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.kh)
  %i.kr = lshr i16 %i.kq, 1
  %i.ks = zext nneg i16 %i.kr to i32
  %i.kt = call ptr @val_to_str_const(i32 noundef %i.ks, ptr noundef nonnull @shimoptvals, ptr noundef nonnull @.str.151)
  %i.ku = call ptr @proto_tree_add_subtree(ptr noundef nonnull %.fr, ptr noundef %0, i32 noundef %i.kh, i32 noundef %i.ko, i32 noundef %i.kp, ptr noundef null, ptr noundef %i.kt) ; 28 uses
  %i.kv = load i32, ptr @hf_shim6_opt_type, align 4
  %i.kw = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.kv, ptr noundef %0, i32 noundef %i.kh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.kx = load i32, ptr @hf_shim6_opt_critical, align 4
  %i.ky = add nuw nsw i32 %.092, 5
  %i.kz = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.kx, ptr noundef %0, i32 noundef %i.ky, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.la = load i32, ptr @hf_shim6_opt_len, align 4
  %i.lb = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.la, ptr noundef %0, i32 noundef %i.ki, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.lc = load i32, ptr @hf_shim6_opt_total_len, align 4
  %i.ld = call ptr @proto_tree_add_uint(ptr noundef %i.ku, i32 noundef %i.lc, ptr noundef %0, i32 noundef %i.ki, i32 noundef 2, i32 noundef %i.ko) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split
  %i.le = getelementptr i8, ptr %i.ld, i64 40
  %i.lf = load ptr, ptr %i.le, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.lf, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lg = getelementptr i8, ptr %i.lf, i64 28     ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = or i32 %i.lh, 2
  store i32 %i.li, ptr %i.lg, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.y, %bb.x, %.lr.ph.split
  %i.lj = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.kh)
  %i.lk = lshr i16 %i.lj, 1
  switch i16 %i.lk, label %dissect_shimopts.exit [
    i16 1, label %bb.z
    i16 2, label %bb.ab
    i16 3, label %bb.ac
    i16 4, label %bb.ag
    i16 5, label %bb.ai
    i16 6, label %bb.ak
    i16 7, label %bb.al
  ]

bb.z:                                             ; preds = %proto_item_set_generated.exit.i
  %i.ll = load i32, ptr @hf_shim6_validator, align 4
  %i.lm = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.ll, ptr noundef %0, i32 noundef %i.kh, i32 noundef %i.kk, i32 noundef 0) ; 0 uses
  %.not74.i = icmp eq i32 %i.km, 0
  br i1 %.not74.i, label %dissect_shimopts.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ln = add nuw nsw i32 %i.kh, %i.kk
  %i.lo = load i32, ptr @hf_shim6_padding, align 4
  %i.lp = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.lo, ptr noundef %0, i32 noundef %i.ln, i32 noundef %i.km, i32 noundef 0) ; 0 uses
  br label %dissect_shimopts.exit

bb.ab:                                            ; preds = %proto_item_set_generated.exit.i
  %i.lq = load i32, ptr @hf_shim6_opt_loclist, align 4
  %i.lr = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.lq, ptr noundef %0, i32 noundef %i.kh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ls = add nuw nsw i32 %.092, 8                ; 2 uses
  %i.lt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ls) ; 2 uses
  %i.lu = zext i8 %i.lt to i32                    ; 6 uses
  %i.lv = load i32, ptr @hf_shim6_opt_locnum, align 4
  %i.lw = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.lv, ptr noundef %0, i32 noundef %i.ls, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lx = add nuw nsw i32 %.092, 9                ; 4 uses
  %i.ly = load i32, ptr @ett_shim6_verif_methods, align 4
  %i.lz = call ptr @proto_tree_add_subtree(ptr noundef %i.ku, ptr noundef %0, i32 noundef %i.lx, i32 noundef %i.lu, i32 noundef %i.ly, ptr noundef null, ptr noundef nonnull @.str.152)
  %.not47.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not47.i.i, label %dissect_shim6_opt_loclist.exit.critedge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %.lr.ph.i.i
  %.042.i.i = phi i32 [ %i.md, %.lr.ph.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.ma = load i32, ptr @hf_shim6_opt_loc_verif_methods, align 4
  %i.mb = add nsw i32 %.042.i.i, %i.lx
  %i.mc = call ptr @proto_tree_add_item(ptr noundef %i.lz, i32 noundef %i.ma, ptr noundef %0, i32 noundef %i.mb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.md = add nuw nsw i32 %.042.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.md, %i.lu
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.me = add nuw nsw i32 %i.lx, %i.lu            ; 3 uses
  %i.mf = and i32 %i.lu, 7                        ; 2 uses
  %.not.i75.i = icmp eq i32 %i.mf, 7
  br i1 %.not.i75.i, label %.lr.ph45.preheader.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %i.mg = xor i32 %i.mf, 7                        ; 2 uses
  %i.mh = load i32, ptr @hf_shim6_padding, align 4
  %i.mi = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.mh, ptr noundef %0, i32 noundef %i.me, i32 noundef %i.mg, i32 noundef 0) ; 0 uses
  %i.mj = add nuw nsw i32 %i.mg, %i.me
  br label %.lr.ph45.preheader.i.i

.lr.ph45.preheader.i.i:                           ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.sink.i = phi i32 [ %i.mj, %._crit_edge.thread.i.i ], [ %i.me, %._crit_edge.i.i ] ; 2 uses
  %i.mk = shl nuw nsw i32 %i.lu, 4
  %i.ml = load i32, ptr @ett_shim6_locators, align 4
  %i.mm = call ptr @proto_tree_add_subtree(ptr noundef %i.ku, ptr noundef %0, i32 noundef %.sink.i, i32 noundef %i.mk, i32 noundef %i.ml, ptr noundef null, ptr noundef nonnull @.str.153)
  br label %.lr.ph45.i.i

.lr.ph45.i.i:                                     ; preds = %.lr.ph45.i.i, %.lr.ph45.preheader.i.i
  %.2.i = phi i32 [ %.sink.i, %.lr.ph45.preheader.i.i ], [ %i.mp, %.lr.ph45.i.i ] ; 2 uses
  %.143.i.i = phi i32 [ 0, %.lr.ph45.preheader.i.i ], [ %i.mq, %.lr.ph45.i.i ]
  %i.mn = load i32, ptr @hf_shim6_locator, align 4
  %i.mo = call ptr @proto_tree_add_item(ptr noundef %i.mm, i32 noundef %i.mn, ptr noundef %0, i32 noundef %.2.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.mp = add i32 %.2.i, 16
  %i.mq = add nuw nsw i32 %.143.i.i, 1            ; 2 uses
  %exitcond49.not.i.i = icmp eq i32 %i.mq, %i.lu
  br i1 %exitcond49.not.i.i, label %dissect_shimopts.exit, label %.lr.ph45.i.i, !llvm.loop !9

bb.ac:                                            ; preds = %proto_item_set_generated.exit.i
  %i.mr = add nuw nsw i32 %i.kh, %i.kk
  %i.ms = add nuw nsw i32 %i.mr, 4                ; 4 uses
  %i.mt = load i32, ptr @hf_shim6_opt_loclist, align 4
  %i.mu = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.mt, ptr noundef %0, i32 noundef %i.kh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.mv = add nuw nsw i32 %.092, 8                ; 4 uses
  %i.mw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mv)
  %.fr42.i.i = freeze i8 %i.mw                    ; 4 uses
  %i.mx = zext i8 %.fr42.i.i to i32               ; 7 uses
  %i.my = load i32, ptr @hf_shim6_opt_elemlen, align 4
  %i.mz = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.my, ptr noundef %0, i32 noundef %i.mv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.na = add i8 %.fr42.i.i, -4
  %or.cond.i.i = icmp ult i8 %i.na, -3
  br i1 %or.cond.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.nb = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.ku, ptr noundef %1, ptr noundef nonnull @ei_shim6_opt_elemlen_invalid, ptr noundef %0, i32 noundef %i.mv, i32 noundef 1, ptr noundef nonnull @.str.154, i32 noundef %i.mx) ; 0 uses
  br label %dissect_shim6_opt_loc_pref.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.nc = add nuw nsw i32 %.092, 9                ; 5 uses
  %i.nd = icmp slt i32 %i.nc, %i.ms
  br i1 %i.nd, label %.lr.ph.i76.i, label %dissect_shim6_opt_loc_pref.exit.i

.lr.ph.i76.i:                                     ; preds = %bb.ae
  %i.ne = icmp samesign ugt i8 %.fr42.i.i, 1
  br i1 %i.ne, label %.lr.ph.split.us.i.i, label %.thread.i77.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i76.i
  %.not.i78.i = icmp eq i8 %.fr42.i.i, 2
  br i1 %.not.i78.i, label %.thread.us.us.i.i, label %.thread.us.i.i

.thread.us.us.i.i:                                ; preds = %.lr.ph.split.us.i.i, %.thread.us.us.i.i
  %.5.i = phi i32 [ %i.nm, %.thread.us.us.i.i ], [ %i.nc, %.lr.ph.split.us.i.i ] ; 4 uses
  %.041.us.us.i.i = phi i32 [ %i.nn, %.thread.us.us.i.i ], [ 1, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.nf = load i32, ptr @ett_shim6_loc_pref, align 4
  %i.ng = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ku, ptr noundef %0, i32 noundef %.5.i, i32 noundef %i.mx, i32 noundef %i.nf, ptr noundef null, ptr noundef nonnull @.str.155, i32 noundef %.041.us.us.i.i) ; 2 uses
  %i.nh = load i32, ptr @hf_shim6_loc_flag, align 4
  %i.ni = call ptr @proto_tree_add_item(ptr noundef %i.ng, i32 noundef %i.nh, ptr noundef %0, i32 noundef %.5.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nj = load i32, ptr @hf_shim6_loc_prio, align 4
  %i.nk = add nsw i32 %.5.i, 1
  %i.nl = call ptr @proto_tree_add_item(ptr noundef %i.ng, i32 noundef %i.nj, ptr noundef %0, i32 noundef %i.nk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nm = add nsw i32 %.5.i, %i.mx                ; 3 uses
  %i.nn = add nuw i32 %.041.us.us.i.i, 1
  %i.no = icmp slt i32 %i.nm, %i.ms
  br i1 %i.no, label %.thread.us.us.i.i, label %dissect_shim6_opt_loc_pref.exit.i, !llvm.loop !10

.thread.us.i.i:                                   ; preds = %.lr.ph.split.us.i.i, %.thread.us.i.i
  %.4.i = phi i32 [ %i.nz, %.thread.us.i.i ], [ %i.nc, %.lr.ph.split.us.i.i ] ; 5 uses
  %.041.us.i.i = phi i32 [ %i.oa, %.thread.us.i.i ], [ 1, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.np = load i32, ptr @ett_shim6_loc_pref, align 4
  %i.nq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ku, ptr noundef %0, i32 noundef %.4.i, i32 noundef %i.mx, i32 noundef %i.np, ptr noundef null, ptr noundef nonnull @.str.155, i32 noundef %.041.us.i.i) ; 3 uses
  %i.nr = load i32, ptr @hf_shim6_loc_flag, align 4
  %i.ns = call ptr @proto_tree_add_item(ptr noundef %i.nq, i32 noundef %i.nr, ptr noundef %0, i32 noundef %.4.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nt = load i32, ptr @hf_shim6_loc_prio, align 4
  %i.nu = add nsw i32 %.4.i, 1
  %i.nv = call ptr @proto_tree_add_item(ptr noundef %i.nq, i32 noundef %i.nt, ptr noundef %0, i32 noundef %i.nu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nw = load i32, ptr @hf_shim6_loc_weight, align 4
  %i.nx = add nsw i32 %.4.i, 2
  %i.ny = call ptr @proto_tree_add_item(ptr noundef %i.nq, i32 noundef %i.nw, ptr noundef %0, i32 noundef %i.nx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nz = add nsw i32 %.4.i, %i.mx                ; 3 uses
  %i.oa = add nuw i32 %.041.us.i.i, 1
  %i.ob = icmp slt i32 %i.nz, %i.ms
  br i1 %i.ob, label %.thread.us.i.i, label %dissect_shim6_opt_loc_pref.exit.i, !llvm.loop !10

.thread.i77.i:                                    ; preds = %.lr.ph.i76.i, %.thread.i77.i
  %.3.i = phi i32 [ %i.og, %.thread.i77.i ], [ %i.nc, %.lr.ph.i76.i ] ; 3 uses
  %.041.i.i = phi i32 [ %i.oh, %.thread.i77.i ], [ 1, %.lr.ph.i76.i ] ; 2 uses
  %i.oc = load i32, ptr @ett_shim6_loc_pref, align 4
  %i.od = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ku, ptr noundef %0, i32 noundef %.3.i, i32 noundef %i.mx, i32 noundef %i.oc, ptr noundef null, ptr noundef nonnull @.str.155, i32 noundef %.041.i.i)
  %i.oe = load i32, ptr @hf_shim6_loc_flag, align 4
  %i.of = call ptr @proto_tree_add_item(ptr noundef %i.od, i32 noundef %i.oe, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.og = add nsw i32 %.3.i, %i.mx                ; 3 uses
  %i.oh = add nuw i32 %.041.i.i, 1
  %i.oi = icmp slt i32 %i.og, %i.ms
  br i1 %i.oi, label %.thread.i77.i, label %dissect_shim6_opt_loc_pref.exit.i, !llvm.loop !10

dissect_shim6_opt_loc_pref.exit.i:                ; preds = %.thread.i77.i, %.thread.us.i.i, %.thread.us.us.i.i, %bb.ae, %bb.ad
  %.6.i = phi i32 [ %i.mv, %bb.ad ], [ %i.nc, %bb.ae ], [ %i.nz, %.thread.us.i.i ], [ %i.nm, %.thread.us.us.i.i ], [ %i.og, %.thread.i77.i ]
  %.not73.i = icmp eq i32 %i.km, 0
  br i1 %.not73.i, label %dissect_shimopts.exit, label %bb.af

bb.af:                                            ; preds = %dissect_shim6_opt_loc_pref.exit.i
  %i.oj = load i32, ptr @hf_shim6_padding, align 4
  %i.ok = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.oj, ptr noundef %0, i32 noundef %.6.i, i32 noundef %i.km, i32 noundef 0) ; 0 uses
  br label %dissect_shimopts.exit

bb.ag:                                            ; preds = %proto_item_set_generated.exit.i
  %i.ol = load i32, ptr @hf_shim6_cga_parameter_data_structure, align 4
  %i.om = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.ol, ptr noundef %0, i32 noundef %i.kh, i32 noundef %i.kk, i32 noundef 0) ; 0 uses
  %.not72.i = icmp eq i32 %i.km, 0
  br i1 %.not72.i, label %dissect_shimopts.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.on = add nuw nsw i32 %i.kh, %i.kk
  %i.oo = load i32, ptr @hf_shim6_padding, align 4
  %i.op = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.oo, ptr noundef %0, i32 noundef %i.on, i32 noundef %i.km, i32 noundef 0) ; 0 uses
  br label %dissect_shimopts.exit

bb.ai:                                            ; preds = %proto_item_set_generated.exit.i
  %i.oq = load i32, ptr @hf_shim6_cga_signature, align 4
  %i.or = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.oq, ptr noundef %0, i32 noundef %i.kh, i32 noundef %i.kk, i32 noundef 0) ; 0 uses
  %.not71.i = icmp eq i32 %i.km, 0
  br i1 %.not71.i, label %dissect_shimopts.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.os = add nuw nsw i32 %i.kh, %i.kk
  %i.ot = load i32, ptr @hf_shim6_padding, align 4
  %i.ou = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.ot, ptr noundef %0, i32 noundef %i.os, i32 noundef %i.km, i32 noundef 0) ; 0 uses
  br label %dissect_shimopts.exit

bb.ak:                                            ; preds = %proto_item_set_generated.exit.i
  %i.ov = load i32, ptr @hf_shim6_reserved, align 4
  %i.ow = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.ov, ptr noundef %0, i32 noundef %i.kh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ox = add nuw nsw i32 %.092, 8
  %i.oy = load i32, ptr @hf_shim6_sulid, align 4
  %i.oz = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.oy, ptr noundef %0, i32 noundef %i.ox, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.pa = add nuw nsw i32 %.092, 24
  %i.pb = load i32, ptr @hf_shim6_rulid, align 4
  %i.pc = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.pb, ptr noundef %0, i32 noundef %i.pa, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %dissect_shimopts.exit

bb.al:                                            ; preds = %proto_item_set_generated.exit.i
  %i.pd = load i32, ptr @hf_shim6_opt_fii, align 4
  %i.pe = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.pd, ptr noundef %0, i32 noundef %i.kh, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_shimopts.exit

dissect_shim6_opt_loclist.exit.critedge.i:        ; preds = %bb.ab
  %i.pf = load i32, ptr @hf_shim6_padding, align 4
  %i.pg = call ptr @proto_tree_add_item(ptr noundef %i.ku, i32 noundef %i.pf, ptr noundef %0, i32 noundef %i.lx, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.ph = add nuw nsw i32 %.092, 16
  %i.pi = load i32, ptr @ett_shim6_locators, align 4
  %i.pj = call ptr @proto_tree_add_subtree(ptr noundef %i.ku, ptr noundef %0, i32 noundef %i.ph, i32 noundef 0, i32 noundef %i.pi, ptr noundef null, ptr noundef nonnull @.str.153) ; 0 uses
  br label %dissect_shimopts.exit

dissect_shimopts.exit:                            ; preds = %.lr.ph45.i.i, %proto_item_set_generated.exit.i, %bb.z, %bb.aa, %dissect_shim6_opt_loc_pref.exit.i, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %dissect_shim6_opt_loclist.exit.critedge.i
  %i.pk = add nuw nsw i32 %i.ko, %.092            ; 2 uses
  %i.pl = icmp samesign ult i32 %i.pk, %i.f
  br i1 %i.pl, label %.lr.ph.split, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %dissect_shimopts.exit, %dissect_shimopts.exit.us, %dissect_shimctrl.exit, %bb.h
  %i.pm = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.f)
  %i.pn = load i8, ptr %4, align 1
  %i.po = zext i8 %i.pn to i32
  call void @ipv6_dissect_next(i32 noundef %i.po, ptr noundef %i.pm, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.pp = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret i32 %i.pp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_shim6() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @shim6_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.104, i32 noundef 140, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_fstr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_ipv6_pinfo_select_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_ipv6_pinfo_add_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ipprotostr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @ip_checksum_tvb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ipv6_dissect_next(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_shim6_probes(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 15, 616) %2, ptr noundef %3, i32 noundef range(i32 1, 16) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %ett_shim6_probe_rcvd.val = load i32, ptr @ett_shim6_probe_rcvd, align 4
  %ett_shim6_probe_sent.val = load i32, ptr @ett_shim6_probe_sent, align 4
  %.030 = select i1 %5, i32 %ett_shim6_probe_rcvd.val, i32 %ett_shim6_probe_sent.val
  %ett_shim6_probes_rcvd.val = load i32, ptr @ett_shim6_probes_rcvd, align 4
  %ett_shim6_probes_sent.val = load i32, ptr @ett_shim6_probes_sent, align 4
  %.031 = select i1 %5, i32 %ett_shim6_probes_rcvd.val, i32 %ett_shim6_probes_sent.val
  %i.a = mul nuw nsw i32 %4, 40
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %.031, ptr noundef null, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.034 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %.03233 = phi i32 [ %2, %bb.a ], [ %i.p, %bb.b ] ; 6 uses
  %i.c = add nuw nsw i32 %.034, 1                 ; 3 uses
  %i.d = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.b, ptr noundef %1, i32 noundef %.03233, i32 noundef 40, i32 noundef %.030, ptr noundef null, ptr noundef nonnull @.str.150, i32 noundef %i.c) ; 4 uses
  %i.e = load i32, ptr @hf_shim6_psrc, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %1, i32 noundef %.03233, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.g = add nuw nsw i32 %.03233, 16
  %i.h = load i32, ptr @hf_shim6_pdst, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %1, i32 noundef %i.g, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.j = add nuw nsw i32 %.03233, 32
  %i.k = load i32, ptr @hf_shim6_pnonce, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %1, i32 noundef %i.j, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = add nuw nsw i32 %.03233, 36
  %i.n = load i32, ptr @hf_shim6_pdata, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %1, i32 noundef %i.m, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = add nuw nsw i32 %.03233, 40
  %exitcond.not = icmp eq i32 %i.c, %4
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
end_hunk_0
