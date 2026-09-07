Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/msg_dlmap?download=true
inline.NumInlined: 32
inline.NumDeleted: 32
begin_hunk_0_@dissect_dlmap_ie:bb.a
  %i.hi = phi i32 [ %i.hh, %bb.x ], [ %i.he, %bb.w ]
  %i.hj = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.hk = add nuw nsw i32 %i.a, 3
  %i.hl = lshr i32 %i.hk, 1
  %i.hm = tail call ptr @proto_tree_add_uint(ptr noundef %i.gt, i32 noundef %i.hj, ptr noundef %3, i32 noundef %.pre-phi.i312, i32 noundef %i.hl, i32 noundef %i.hi) ; 0 uses
  %i.hn = add i32 %2, 4                           ; 2 uses
  %i.ho = sdiv i32 %i.hn, 2
  %i.hp = or i32 %2, -2
  %i.hq = add nsw i32 %i.ak, %i.hp
  %i.hr = lshr i32 %i.hq, 1
  %i.hs = tail call ptr @proto_tree_add_expert(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull @ei_dlmap_not_implemented, ptr noundef %3, i32 noundef %i.ho, i32 noundef %i.hr) ; 0 uses
  br label %UL_interference_and_noise_level_IE.exit

bb.y:                                             ; preds = %bb.k
  %i.ht = sdiv i32 %i.i, 2                        ; 3 uses
  %i.hu = add nuw nsw i32 %i.j, 1
  %i.hv = add nuw nsw i32 %i.hu, %i.ak
  %i.hw = lshr i32 %i.hv, 1
  %i.hx = load i32, ptr @ett_286e, align 4
  %i.hy = tail call ptr @proto_tree_add_subtree(ptr noundef %i.aj, ptr noundef %3, i32 noundef %i.ht, i32 noundef %i.hw, i32 noundef %i.hx, ptr noundef null, ptr noundef nonnull @.str.543) ; 2 uses
  %i.hz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.ht) ; 2 uses
  %i.ia = and i8 %i.hz, 15
  %i.ib = lshr i8 %i.hz, 4
  %.in.i315 = select i1 %.not305, i8 %i.ib, i8 %i.ia
  %i.ic = zext nneg i8 %.in.i315 to i32
  %i.id = load i32, ptr @hf_dlmap_ie_diuc_ext2, align 4
  %i.ie = tail call ptr @proto_tree_add_uint(ptr noundef %i.hy, i32 noundef %i.id, ptr noundef %3, i32 noundef %i.ht, i32 noundef 1, i32 noundef %i.ic) ; 0 uses
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.if = sdiv i32 %i.r, 2                        ; 2 uses
  %i.ig = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.if)
  %i.ih = lshr i16 %i.ig, 4
  %i.ii = and i16 %i.ih, 255
  %i.ij = zext nneg i16 %i.ii to i32
  br label %HO_CID_Translation_MAP_IE.exit

bb.aa:                                            ; preds = %bb.y
  %i.ik = ashr exact i32 %i.r, 1                  ; 2 uses
  %i.il = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.ik)
  %i.im = zext i8 %i.il to i32
  br label %HO_CID_Translation_MAP_IE.exit

HO_CID_Translation_MAP_IE.exit:                   ; preds = %bb.z, %bb.aa
  %.pre-phi.i317 = phi i32 [ %i.ik, %bb.aa ], [ %i.if, %bb.z ]
  %i.in = phi i32 [ %i.im, %bb.aa ], [ %i.ij, %bb.z ]
  %i.io = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.ip = add nuw nsw i32 %i.a, 3
  %i.iq = lshr i32 %i.ip, 1
  %i.ir = tail call ptr @proto_tree_add_uint(ptr noundef %i.hy, i32 noundef %i.io, ptr noundef %3, i32 noundef %.pre-phi.i317, i32 noundef %i.iq, i32 noundef %i.in) ; 0 uses
  %i.is = add i32 %2, 4                           ; 2 uses
  %i.it = sdiv i32 %i.is, 2
  %i.iu = or i32 %2, -2
  %i.iv = add nsw i32 %i.ak, %i.iu
  %i.iw = lshr i32 %i.iv, 1
  %i.ix = tail call ptr @proto_tree_add_expert(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull @ei_dlmap_not_implemented, ptr noundef %3, i32 noundef %i.it, i32 noundef %i.iw) ; 0 uses
  br label %UL_interference_and_noise_level_IE.exit

bb.ab:                                            ; preds = %bb.k
  %i.iy = sdiv i32 %i.i, 2                        ; 3 uses
  %i.iz = add nuw nsw i32 %i.j, 1
  %i.ja = add nuw nsw i32 %i.iz, %i.ak
  %i.jb = lshr i32 %i.ja, 1
  %i.jc = load i32, ptr @ett_286f, align 4
  %i.jd = tail call ptr @proto_tree_add_subtree(ptr noundef %i.aj, ptr noundef %3, i32 noundef %i.iy, i32 noundef %i.jb, i32 noundef %i.jc, ptr noundef null, ptr noundef nonnull @.str.544) ; 2 uses
  %i.je = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.iy) ; 2 uses
  %i.jf = and i8 %i.je, 15
  %i.jg = lshr i8 %i.je, 4
  %.in.i320 = select i1 %.not305, i8 %i.jg, i8 %i.jf
  %i.jh = zext nneg i8 %.in.i320 to i32
  %i.ji = load i32, ptr @hf_dlmap_ie_diuc_ext2, align 4
  %i.jj = tail call ptr @proto_tree_add_uint(ptr noundef %i.jd, i32 noundef %i.ji, ptr noundef %3, i32 noundef %i.iy, i32 noundef 1, i32 noundef %i.jh) ; 0 uses
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jk = sdiv i32 %i.r, 2                        ; 2 uses
  %i.jl = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.jk)
  %i.jm = lshr i16 %i.jl, 4
  %i.jn = and i16 %i.jm, 255
  %i.jo = zext nneg i16 %i.jn to i32
  br label %MIMO_in_another_BS_IE.exit

bb.ad:                                            ; preds = %bb.ab
  %i.jp = ashr exact i32 %i.r, 1                  ; 2 uses
  %i.jq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.jp)
  %i.jr = zext i8 %i.jq to i32
  br label %MIMO_in_another_BS_IE.exit

MIMO_in_another_BS_IE.exit:                       ; preds = %bb.ac, %bb.ad
  %.pre-phi.i322 = phi i32 [ %i.jp, %bb.ad ], [ %i.jk, %bb.ac ]
  %i.js = phi i32 [ %i.jr, %bb.ad ], [ %i.jo, %bb.ac ]
  %i.jt = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.ju = add nuw nsw i32 %i.a, 3
  %i.jv = lshr i32 %i.ju, 1
  %i.jw = tail call ptr @proto_tree_add_uint(ptr noundef %i.jd, i32 noundef %i.jt, ptr noundef %3, i32 noundef %.pre-phi.i322, i32 noundef %i.jv, i32 noundef %i.js) ; 0 uses
  %i.jx = add i32 %2, 4                           ; 2 uses
  %i.jy = sdiv i32 %i.jx, 2
  %i.jz = or i32 %2, -2
  %i.ka = add nsw i32 %i.ak, %i.jz
  %i.kb = lshr i32 %i.ka, 1
  %i.kc = tail call ptr @proto_tree_add_expert(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull @ei_dlmap_not_implemented, ptr noundef %3, i32 noundef %i.jy, i32 noundef %i.kb) ; 0 uses
  br label %UL_interference_and_noise_level_IE.exit

bb.ae:                                            ; preds = %bb.k
  %i.kd = sdiv i32 %i.i, 2                        ; 3 uses
  %i.ke = add nuw nsw i32 %i.j, 1
  %i.kf = add nuw nsw i32 %i.ke, %i.ak
  %i.kg = lshr i32 %i.kf, 1
  %i.kh = load i32, ptr @ett_286g, align 4
  %i.ki = tail call ptr @proto_tree_add_subtree(ptr noundef %i.aj, ptr noundef %3, i32 noundef %i.kd, i32 noundef %i.kg, i32 noundef %i.kh, ptr noundef null, ptr noundef nonnull @.str.545) ; 2 uses
  %i.kj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.kd) ; 2 uses
  %i.kk = and i8 %i.kj, 15
  %i.kl = lshr i8 %i.kj, 4
  %.in.i325 = select i1 %.not305, i8 %i.kl, i8 %i.kk
  %i.km = zext nneg i8 %.in.i325 to i32
  %i.kn = load i32, ptr @hf_dlmap_ie_diuc_ext2, align 4
  %i.ko = tail call ptr @proto_tree_add_uint(ptr noundef %i.ki, i32 noundef %i.kn, ptr noundef %3, i32 noundef %i.kd, i32 noundef 1, i32 noundef %i.km) ; 0 uses
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kp = sdiv i32 %i.r, 2                        ; 2 uses
  %i.kq = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.kp)
  %i.kr = lshr i16 %i.kq, 4
  %i.ks = and i16 %i.kr, 255
  %i.kt = zext nneg i16 %i.ks to i32
  br label %Macro_MIMO_DL_Basic_IE.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ku = ashr exact i32 %i.r, 1                  ; 2 uses
  %i.kv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.ku)
  %i.kw = zext i8 %i.kv to i32
  br label %Macro_MIMO_DL_Basic_IE.exit

Macro_MIMO_DL_Basic_IE.exit:                      ; preds = %bb.af, %bb.ag
  %.pre-phi.i327 = phi i32 [ %i.ku, %bb.ag ], [ %i.kp, %bb.af ]
  %i.kx = phi i32 [ %i.kw, %bb.ag ], [ %i.kt, %bb.af ]
  %i.ky = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.kz = add nuw nsw i32 %i.a, 3
  %i.la = lshr i32 %i.kz, 1
  %i.lb = tail call ptr @proto_tree_add_uint(ptr noundef %i.ki, i32 noundef %i.ky, ptr noundef %3, i32 noundef %.pre-phi.i327, i32 noundef %i.la, i32 noundef %i.kx) ; 0 uses
  %i.lc = add i32 %2, 4                           ; 2 uses
  %i.ld = sdiv i32 %i.lc, 2
  %i.le = or i32 %2, -2
  %i.lf = add nsw i32 %i.ak, %i.le
  %i.lg = lshr i32 %i.lf, 1
  %i.lh = tail call ptr @proto_tree_add_expert(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull @ei_dlmap_not_implemented, ptr noundef %3, i32 noundef %i.ld, i32 noundef %i.lg) ; 0 uses
  br label %UL_interference_and_noise_level_IE.exit

bb.ah:                                            ; preds = %bb.k
  %i.li = shl i32 %i.i, 2                         ; 5 uses
  %i.lj = sdiv i32 %i.i, 2
  %i.lk = add nuw nsw i32 %i.j, 1
  %i.ll = add nuw nsw i32 %i.lk, %i.ak
  %i.lm = lshr i32 %i.ll, 1
  %i.ln = load i32, ptr @ett_286k, align 4
  %i.lo = tail call ptr @proto_tree_add_subtree(ptr noundef %i.aj, ptr noundef %3, i32 noundef %i.lj, i32 noundef %i.lm, i32 noundef %i.ln, ptr noundef null, ptr noundef nonnull @.str.546) ; 4 uses
  %i.lp = load i32, ptr @hf_dlmap_skip_extended_2_diuc, align 4
  %i.lq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.lo, i32 noundef %i.lp, ptr noundef %3, i32 noundef %i.li, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.lr = add i32 %i.li, 4                        ; 2 uses
  %i.ls = sdiv i32 %i.lr, 8                       ; 2 uses
  %i.lt = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.ls)
  %i.lu = zext i16 %i.lt to i32
  %i.lv = srem i32 %i.lr, 8                       ; 2 uses
  %i.lw = sub nsw i32 8, %i.lv
  %i.lx = lshr i32 %i.lu, %i.lw
  %i.ly = and i32 %i.lx, 255
  %i.lz = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.ma = add nsw i32 %i.lv, 4
  %i.mb = lshr i32 %i.ma, 3
  %i.mc = add nuw nsw i32 %i.mb, 1
  %i.md = tail call ptr @proto_tree_add_uint(ptr noundef %i.lo, i32 noundef %i.lz, ptr noundef %3, i32 noundef %i.ls, i32 noundef %i.mc, i32 noundef %i.ly) ; 0 uses
  %i.me = add i32 %i.li, 12
  %i.mf = load i32, ptr @hf_dlmap_skip_mode, align 4
  %i.mg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.lo, i32 noundef %i.mf, ptr noundef %3, i32 noundef %i.me, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mh = add i32 %i.li, 13
  %i.mi = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.mj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.lo, i32 noundef %i.mi, ptr noundef %3, i32 noundef %i.mh, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.mk = add i32 %i.li, 20
  %i.ml = ashr exact i32 %i.mk, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.ai:                                            ; preds = %bb.k
  %i.mm = shl i32 %i.i, 2                         ; 8 uses
  %i.mn = sdiv i32 %i.i, 2
  %i.mo = add nuw nsw i32 %i.j, 1
  %i.mp = add nuw nsw i32 %i.mo, %i.ak
  %i.mq = lshr i32 %i.mp, 1
  %i.mr = load i32, ptr @ett_286l, align 4
  %i.ms = tail call ptr @proto_tree_add_subtree(ptr noundef %i.aj, ptr noundef %3, i32 noundef %i.mn, i32 noundef %i.mq, i32 noundef %i.mr, ptr noundef null, ptr noundef nonnull @.str.547) ; 25 uses
  %i.mt = load i32, ptr @hf_dlmap_harq_dl_map_extended_2_diuc, align 4
  %i.mu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.mt, ptr noundef %3, i32 noundef %i.mm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.mv = add i32 %i.mm, 4                        ; 2 uses
  %i.mw = sdiv i32 %i.mv, 8                       ; 2 uses
  %i.mx = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.mw)
  %i.my = zext i16 %i.mx to i32
  %i.mz = srem i32 %i.mv, 8                       ; 2 uses
  %i.na = sub nsw i32 14, %i.mz
  %i.nb = lshr i32 %i.my, %i.na
  %i.nc = and i32 %i.nb, 3                        ; 2 uses
  %i.nd = load i32, ptr @hf_dlmap_ie_length, align 4
  %4 = trunc nsw i32 %i.mz to i8
  %.lhs.trunc.i329 = or disjoint i8 %4, 1
  %5 = sdiv i8 %.lhs.trunc.i329, 8
  %narrow.i330 = add nuw nsw i8 %5, 1
  %6 = zext nneg i8 %narrow.i330 to i32
  %i.ne = tail call ptr @proto_tree_add_uint(ptr noundef %i.ms, i32 noundef %i.nd, ptr noundef %3, i32 noundef %i.mw, i32 noundef %6, i32 noundef %i.nc) ; 0 uses
  %i.nf = add i32 %i.mm, 6                        ; 3 uses
  %i.ng = sdiv i32 %i.nf, 8
  %i.nh = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.ng)
  %i.ni = zext i16 %i.nh to i32
  %i.nj = srem i32 %i.nf, 8
  %i.nk = sub nsw i32 14, %i.nj
  %i.nl = lshr i32 %i.ni, %i.nk
  %i.nm = and i32 %i.nl, 3
  store i32 %i.nm, ptr @RCID_Type, align 4
  %i.nn = load i32, ptr @hf_dlmap_harq_dl_map_rcid_type, align 4
  %i.no = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.nn, ptr noundef %3, i32 noundef %i.nf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.np = add i32 %i.mm, 8
  %i.nq = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.nr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.nq, ptr noundef %3, i32 noundef %i.np, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ns = add i32 %i.mm, 10                       ; 3 uses
  %i.nt = shl nuw nsw i32 %i.ak, 2                ; 16 uses
  %i.nu = shl nuw nsw i32 %i.nc, 3
  %i.nv = add i32 %i.mm, -8
  %i.nw = add i32 %i.nv, %i.nu                    ; 2 uses
  %i.nx = icmp slt i32 %i.ns, %i.nw
  br i1 %i.nx, label %.lr.ph.i, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %bb.ai
  %i.ny = add i32 %i.nt, %i.mm
  br label %bb.dl

.lr.ph.i:                                         ; preds = %bb.ai
  %i.nz = add nsw i32 %i.nt, -4
  br label %bb.aj

bb.aj:                                            ; preds = %DL_HARQ_Chase_sub_burst_IE.exit.i, %.lr.ph.i
  %.0210.i = phi i32 [ %i.ns, %.lr.ph.i ], [ %i.arn, %DL_HARQ_Chase_sub_burst_IE.exit.i ] ; 10 uses
  %i.oa = load i32, ptr @hf_dlmap_harq_dl_map_boosting, align 4
  %i.ob = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.oa, ptr noundef %3, i32 noundef %.0210.i, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.oc = add i32 %.0210.i, 3                     ; 3 uses
  %i.od = sdiv i32 %i.oc, 8
  %i.oe = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.od)
  %i.of = zext i8 %i.oe to i32
  %i.og = srem i32 %i.oc, 8
  %i.oh = sub nsw i32 7, %i.og
  %i.oi = load i32, ptr @hf_dlmap_harq_dl_map_region_id_use_indicator, align 4
  %i.oj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.oi, ptr noundef %3, i32 noundef %i.oc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ok = add i32 %.0210.i, 4                     ; 2 uses
  %i.ol = shl nuw nsw i32 1, %i.oh
  %i.om = and i32 %i.ol, %i.of
  %i.on = icmp eq i32 %i.om, 0
  %i.oo = add i32 %.0210.i, 12                    ; 2 uses
  br i1 %i.on, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.op = load i32, ptr @hf_dlmap_harq_dl_map_ofdma_symbol_offset, align 4
  %i.oq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.op, ptr noundef %3, i32 noundef %i.ok, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.or = load i32, ptr @hf_dlmap_harq_dl_map_subchannel_offset, align 4
  %i.os = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.or, ptr noundef %3, i32 noundef %i.oo, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.ot = add i32 %.0210.i, 19
  %i.ou = load i32, ptr @hf_dlmap_harq_dl_map_number_of_ofdma_symbols, align 4
  %i.ov = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.ou, ptr noundef %3, i32 noundef %i.ot, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.ow = add i32 %.0210.i, 26
  %i.ox = load i32, ptr @hf_dlmap_harq_dl_map_number_of_subchannels, align 4
  %i.oy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.ox, ptr noundef %3, i32 noundef %i.ow, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.oz = add i32 %.0210.i, 33                    ; 2 uses
  %i.pa = load i8, ptr @include_cor2_changes, align 1, !range !25, !noundef !26
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pc = load i32, ptr @hf_dlmap_harq_dl_map_rectangular_sub_burst_indicator, align 4
  %i.pd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.pc, ptr noundef %3, i32 noundef %i.oz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pe = add i32 %.0210.i, 34
  %i.pf = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.pg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.pf, ptr noundef %3, i32 noundef %i.pe, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ph = add i32 %.0210.i, 36
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.pi = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.pj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.pi, ptr noundef %3, i32 noundef %i.oz, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.pk = add i32 %.0210.i, 36
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.pl = load i32, ptr @hf_dlmap_harq_dl_map_region_id, align 4
  %i.pm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.pl, ptr noundef %3, i32 noundef %i.ok, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.1.i329 = phi i32 [ %i.ph, %bb.al ], [ %i.pk, %bb.am ], [ %i.oo, %bb.an ] ; 5 uses
  %i.pn = sdiv i32 %.1.i329, 8
  %i.po = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.pn)
  %i.pp = zext i16 %i.po to i32
  %i.pq = srem i32 %.1.i329, 8
  %i.pr = sub nsw i32 12, %i.pq
  %i.ps = lshr i32 %i.pp, %i.pr
  %i.pt = and i32 %i.ps, 15
  %i.pu = load i32, ptr @hf_dlmap_harq_dl_map_mode, align 4
  %i.pv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.pu, ptr noundef %3, i32 noundef %.1.i329, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.pw = add i32 %.1.i329, 4                     ; 3 uses
  %i.px = sdiv i32 %i.pw, 8
  %i.py = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.px)
  %i.pz = zext i16 %i.py to i32
  %i.qa = srem i32 %i.pw, 8
  %i.qb = sub nsw i32 8, %i.qa
  %i.qc = lshr i32 %i.pz, %i.qb
  %i.qd = load i32, ptr @hf_dlmap_harq_dl_map_sub_burst_ie_length, align 4
  %i.qe = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ms, i32 noundef %i.qd, ptr noundef %3, i32 noundef %i.pw, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.qf = add i32 %.1.i329, 12                    ; 17 uses
  switch i32 %i.pt, label %bb.dk [
    i32 0, label %bb.ap
    i32 1, label %bb.ay
    i32 2, label %bb.bh
    i32 3, label %bb.bs
    i32 4, label %bb.ce
    i32 5, label %bb.co
    i32 6, label %bb.cy
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.qg = sdiv i32 %i.qf, 4
  %i.qh = shl nsw i32 %i.qg, 2                    ; 4 uses
  %i.qi = sdiv i32 %i.qf, 8                       ; 2 uses
  %i.qj = srem i32 %i.qh, 8                       ; 2 uses
  %i.qk = add nsw i32 %i.nz, %i.qj
  %i.ql = lshr i32 %i.qk, 3
  %i.qm = add nuw nsw i32 %i.ql, 1
  %i.qn = load i32, ptr @ett_286m, align 4
  %i.qo = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ms, ptr noundef %3, i32 noundef %i.qi, i32 noundef %i.qm, i32 noundef %i.qn, ptr noundef null, ptr noundef nonnull @.str.548) ; 18 uses
  %i.qp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.qi)
  %i.qq = zext i16 %i.qp to i32
  %i.qr = sub nsw i32 12, %i.qj
  %i.qs = lshr i32 %i.qq, %i.qr
  %i.qt = and i32 %i.qs, 15
  %i.qu = load i32, ptr @hf_dlmap_n_sub_burst_isi, align 4
  %i.qv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.qu, ptr noundef %3, i32 noundef %i.qh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qw = add i32 %i.qh, 4
  %i.qx = load i32, ptr @hf_dlmap_harq_chase_n_ack_channel, align 4
  %i.qy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.qx, ptr noundef %3, i32 noundef %i.qw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qz = add i32 %i.qh, 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ax, %bb.ap
  %.0110.i.i = phi i32 [ 0, %bb.ap ], [ %i.tv, %bb.ax ] ; 2 uses
  %.0104109.i.i = phi i32 [ %i.qz, %bb.ap ], [ %.3.i.i, %bb.ax ] ; 2 uses
  %i.ra = load i32, ptr @RCID_Type, align 4
  %i.rb = tail call i32 @RCID_IE(ptr noundef %i.qo, i32 noundef %.0104109.i.i, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.ra)
  %i.rc = add i32 %i.rb, %.0104109.i.i            ; 8 uses
  %i.rd = sdiv i32 %i.rc, 8
  %i.re = tail call i32 @tvb_get_ntohl(ptr noundef %3, i32 noundef %i.rd) ; 0 uses
  %i.rf = load i32, ptr @hf_dlmap_harq_chase_duration, align 4
  %i.rg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.rf, ptr noundef %3, i32 noundef %i.rc, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.rh = add i32 %i.rc, 10                       ; 3 uses
  %i.ri = sdiv i32 %i.rh, 8
  %i.rj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.ri)
  %i.rk = zext i8 %i.rj to i32
  %i.rl = srem i32 %i.rh, 8
  %i.rm = sub nsw i32 7, %i.rl
  %i.rn = load i32, ptr @hf_dlmap_harq_chase_sub_burst_diuc_indicator, align 4
  %i.ro = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.rn, ptr noundef %3, i32 noundef %i.rh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rp = add i32 %i.rc, 11
  %i.rq = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.rr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.rq, ptr noundef %3, i32 noundef %i.rp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rs = add i32 %i.rc, 12                       ; 2 uses
  %i.rt = shl nuw nsw i32 1, %i.rm
  %i.ru = and i32 %i.rt, %i.rk
  %.not105.i.i = icmp eq i32 %i.ru, 0
  br i1 %.not105.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.rv = load i32, ptr @hf_dlmap_harq_chase_diuc, align 4
  %i.rw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.rv, ptr noundef %3, i32 noundef %i.rs, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rx = add i32 %i.rc, 16
  %i.ry = load i32, ptr @hf_dlmap_harq_chase_repetition_coding_indication, align 4
  %i.rz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.ry, ptr noundef %3, i32 noundef %i.rx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sa = add i32 %i.rc, 18
  %i.sb = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.sc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.sb, ptr noundef %3, i32 noundef %i.sa, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sd = add i32 %i.rc, 20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i.i = phi i32 [ %i.sd, %bb.ar ], [ %i.rs, %bb.aq ] ; 9 uses
  %i.se = load i32, ptr @hf_dlmap_harq_chase_acid, align 4
  %i.sf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.se, ptr noundef %3, i32 noundef %.1.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.sg = add i32 %.1.i.i, 4
  %i.sh = load i32, ptr @hf_dlmap_harq_chase_ai_sn, align 4
  %i.si = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.sh, ptr noundef %3, i32 noundef %i.sg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sj = add i32 %.1.i.i, 5
  %i.sk = load i32, ptr @hf_dlmap_harq_chase_ack_disable, align 4
  %i.sl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.sk, ptr noundef %3, i32 noundef %i.sj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sm = add i32 %.1.i.i, 6                      ; 3 uses
  %i.sn = sdiv i32 %i.sm, 8
  %i.so = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.sn)
  %i.sp = zext i16 %i.so to i32
  %i.sq = srem i32 %i.sm, 8
  %i.sr = sub nsw i32 14, %i.sq
  %i.ss = lshr i32 %i.sp, %i.sr                   ; 2 uses
  %i.st = load i32, ptr @hf_dlmap_harq_chase_dedicated_dl_control_indicator, align 4
  %i.su = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.st, ptr noundef %3, i32 noundef %i.sm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sv = add i32 %.1.i.i, 8                      ; 4 uses
  %i.sw = and i32 %i.ss, 1
  %.not106.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not106.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.sx = sdiv i32 %i.sv, 8
  %i.sy = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.sx)
  %i.sz = zext i16 %i.sy to i32
  %i.ta = srem i32 %i.sv, 8
  %i.tb = sub nsw i32 12, %i.ta
  %i.tc = load i32, ptr @hf_dlmap_harq_chase_duration, align 4
  %i.td = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.tc, ptr noundef %3, i32 noundef %i.sv, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.te = add i32 %.1.i.i, 12                     ; 2 uses
  %i.tf = shl nuw nsw i32 15, %i.tb
  %i.tg = and i32 %i.tf, %i.sz
  %.not107.i.i = icmp eq i32 %i.tg, 0
  br i1 %.not107.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.th = load i32, ptr @hf_dlmap_harq_chase_allocation_index, align 4
  %i.ti = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.th, ptr noundef %3, i32 noundef %i.te, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.tj = add i32 %.1.i.i, 18
  %i.tk = load i32, ptr @hf_dlmap_harq_chase_period, align 4
  %i.tl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.tk, ptr noundef %3, i32 noundef %i.tj, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.tm = add i32 %.1.i.i, 21
  %i.tn = load i32, ptr @hf_dlmap_harq_chase_frame_offset, align 4
  %i.to = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.qo, i32 noundef %i.tn, ptr noundef %3, i32 noundef %i.tm, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.tp = add i32 %.1.i.i, 24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.2.i.i = phi i32 [ %i.tp, %bb.au ], [ %i.te, %bb.at ], [ %i.sv, %bb.as ] ; 3 uses
  %i.tq = and i32 %i.ss, 2
  %.not108.i.i = icmp eq i32 %i.tq, 0
  br i1 %.not108.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.tr = sdiv i32 %.2.i.i, 4
  %i.ts = tail call fastcc i32 @Dedicated_DL_Control_IE(ptr noundef %i.qo, i32 noundef %i.tr, ptr noundef %3)
  %i.tt = shl nuw nsw i32 %i.ts, 2
  %i.tu = add i32 %i.tt, %.2.i.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.3.i.i = phi i32 [ %i.tu, %bb.aw ], [ %.2.i.i, %bb.av ]
  %i.tv = add nuw nsw i32 %.0110.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.0110.i.i, %i.qt
  br i1 %exitcond.not.i.i, label %DL_HARQ_Chase_sub_burst_IE.exit.i, label %bb.aq, !llvm.loop !8

bb.ay:                                            ; preds = %bb.ao
  %i.tw = sdiv i32 %i.qf, 4
  %i.tx = shl nsw i32 %i.tw, 2                    ; 4 uses
  %i.ty = sdiv i32 %i.qf, 8                       ; 2 uses
  %i.tz = srem i32 %i.tx, 8                       ; 2 uses
  %7 = trunc nsw i32 %i.tz to i8
  %.lhs.trunc.i.i = or disjoint i8 %7, 3
  %8 = sdiv i8 %.lhs.trunc.i.i, 8
  %narrow.i.i = add nuw nsw i8 %8, 1
  %9 = zext nneg i8 %narrow.i.i to i32
  %i.ua = load i32, ptr @ett_286n, align 4
  %i.ub = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ms, ptr noundef %3, i32 noundef %i.ty, i32 noundef %9, i32 noundef %i.ua, ptr noundef null, ptr noundef nonnull @.str.551) ; 17 uses
  %i.uc = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.ty)
  %i.ud = zext i16 %i.uc to i32
  %i.ue = sub nsw i32 12, %i.tz
  %i.uf = lshr i32 %i.ud, %i.ue
  %i.ug = and i32 %i.uf, 15
  %i.uh = load i32, ptr @hf_dlmap_n_sub_burst_isi, align 4
  %i.ui = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.uh, ptr noundef %3, i32 noundef %i.tx, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.uj = add i32 %i.tx, 4
  %i.uk = load i32, ptr @hf_dlmap_harq_ir_ctc_n_ack_channel, align 4
  %i.ul = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.uk, ptr noundef %3, i32 noundef %i.uj, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.um = add i32 %i.tx, 8
  br label %bb.az

bb.az:                                            ; preds = %bb.be, %bb.ay
  %.0102.i.i = phi i32 [ 0, %bb.ay ], [ %i.ws, %bb.be ] ; 2 uses
  %.097101.i.i = phi i32 [ %i.um, %bb.ay ], [ %.2.i154.i, %bb.be ] ; 2 uses
  %i.un = load i32, ptr @RCID_Type, align 4
  %i.uo = tail call i32 @RCID_IE(ptr noundef %i.ub, i32 noundef %.097101.i.i, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.un)
  %i.up = add i32 %i.uo, %.097101.i.i             ; 13 uses
  %i.uq = load i32, ptr @hf_dlmap_harq_ir_ctc_nep, align 4
  %i.ur = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.uq, ptr noundef %3, i32 noundef %i.up, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.us = add i32 %i.up, 4
  %i.ut = load i32, ptr @hf_dlmap_harq_ir_ctc_nsch, align 4
  %i.uu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.ut, ptr noundef %3, i32 noundef %i.us, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.uv = add i32 %i.up, 8
  %i.uw = load i32, ptr @hf_dlmap_harq_ir_ctc_spid, align 4
  %i.ux = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.uw, ptr noundef %3, i32 noundef %i.uv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uy = add i32 %i.up, 10
  %i.uz = load i32, ptr @hf_dlmap_harq_ir_ctc_acid, align 4
  %i.va = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.uz, ptr noundef %3, i32 noundef %i.uy, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.vb = add i32 %i.up, 14
  %i.vc = load i32, ptr @hf_dlmap_harq_ir_ctc_ai_sn, align 4
  %i.vd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.vc, ptr noundef %3, i32 noundef %i.vb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ve = add i32 %i.up, 15
  %i.vf = load i32, ptr @hf_dlmap_harq_ir_ctc_ack_disable, align 4
  %i.vg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.vf, ptr noundef %3, i32 noundef %i.ve, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vh = add i32 %i.up, 16
  %i.vi = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.vj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.vi, ptr noundef %3, i32 noundef %i.vh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vk = add i32 %i.up, 18                       ; 3 uses
  %i.vl = sdiv i32 %i.vk, 8
  %i.vm = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.vl)
  %i.vn = zext i16 %i.vm to i32
  %i.vo = srem i32 %i.vk, 8
  %i.vp = sub nsw i32 14, %i.vo
  %i.vq = lshr i32 %i.vn, %i.vp                   ; 2 uses
  %i.vr = load i32, ptr @hf_dlmap_harq_ir_ctc_dedicated_dl_control_indicator, align 4
  %i.vs = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.vr, ptr noundef %3, i32 noundef %i.vk, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vt = add i32 %i.up, 20                       ; 4 uses
  %i.vu = and i32 %i.vq, 1
  %.not98.i.i = icmp eq i32 %i.vu, 0
  br i1 %.not98.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.vv = sdiv i32 %i.vt, 8
  %i.vw = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.vv)
  %i.vx = zext i16 %i.vw to i32
  %i.vy = srem i32 %i.vt, 8
  %i.vz = sub nsw i32 12, %i.vy
  %i.wa = load i32, ptr @hf_dlmap_harq_ir_ctc_duration, align 4
  %i.wb = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.wa, ptr noundef %3, i32 noundef %i.vt, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wc = add i32 %i.up, 24                       ; 2 uses
  %i.wd = shl nuw nsw i32 15, %i.vz
  %i.we = and i32 %i.wd, %i.vx
  %.not99.i.i = icmp eq i32 %i.we, 0
  br i1 %.not99.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.wf = load i32, ptr @hf_dlmap_harq_ir_ctc_allocation_index, align 4
  %i.wg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.wf, ptr noundef %3, i32 noundef %i.wc, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.wh = add i32 %i.up, 30
  %i.wi = load i32, ptr @hf_dlmap_harq_ir_ctc_period, align 4
  %i.wj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.wi, ptr noundef %3, i32 noundef %i.wh, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.wk = add i32 %i.up, 33
  %i.wl = load i32, ptr @hf_dlmap_harq_ir_ctc_frame_offset, align 4
  %i.wm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ub, i32 noundef %i.wl, ptr noundef %3, i32 noundef %i.wk, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.wn = add i32 %i.up, 36
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.1.i153.i = phi i32 [ %i.wn, %bb.bb ], [ %i.wc, %bb.ba ], [ %i.vt, %bb.az ] ; 3 uses
  %i.wo = and i32 %i.vq, 2
  %.not100.i.i = icmp eq i32 %i.wo, 0
  br i1 %.not100.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.wp = sdiv i32 %.1.i153.i, 4
  %i.wq = tail call fastcc i32 @Dedicated_DL_Control_IE(ptr noundef %i.ub, i32 noundef %i.wp, ptr noundef %3)
  %i.wr = add i32 %i.wq, %.1.i153.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.2.i154.i = phi i32 [ %i.wr, %bb.bd ], [ %.1.i153.i, %bb.bc ] ; 2 uses
  %i.ws = add nuw nsw i32 %.0102.i.i, 1
  %exitcond.not.i155.i = icmp eq i32 %.0102.i.i, %i.ug
  br i1 %exitcond.not.i155.i, label %bb.bf, label %bb.az, !llvm.loop !9

bb.bf:                                            ; preds = %bb.be
  %i.wt = load i8, ptr @include_cor2_changes, align 1, !range !25, !noundef !26
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.bg, label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.wv = sdiv i32 %.2.i154.i, 8                  ; 3 uses
  %i.ww = tail call ptr @tvb_get_ptr(ptr noundef %3, i32 noundef 0, i32 noundef %i.wv)
  %i.wx = tail call zeroext i16 @wimax_mac_calc_crc16(ptr noundef %i.ww, i32 noundef %i.wv)
  %i.wy = zext i16 %i.wx to i32
  %i.wz = load i32, ptr @hf_crc16, align 4
  %i.xa = load i32, ptr @hf_crc16_status, align 4
  %i.xb = tail call ptr @proto_tree_add_checksum(ptr noundef %i.ub, ptr noundef %3, i32 noundef %i.wv, i32 noundef %i.wz, i32 noundef %i.xa, ptr noundef nonnull @ei_crc16, ptr noundef %1, i32 noundef %i.wy, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.bh:                                            ; preds = %bb.ao
  %i.xc = sdiv i32 %i.qf, 4
  %i.xd = shl nsw i32 %i.xc, 2                    ; 4 uses
  %i.xe = sdiv i32 %i.qf, 8                       ; 2 uses
  %i.xf = srem i32 %i.xd, 8                       ; 2 uses
  %10 = trunc nsw i32 %i.xf to i8
  %.lhs.trunc.i157.i = or disjoint i8 %10, 3
  %11 = sdiv i8 %.lhs.trunc.i157.i, 8
  %narrow.i158.i = add nuw nsw i8 %11, 1
  %12 = zext nneg i8 %narrow.i158.i to i32
  %i.xg = load i32, ptr @ett_286o, align 4
  %i.xh = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ms, ptr noundef %3, i32 noundef %i.xe, i32 noundef %12, i32 noundef %i.xg, ptr noundef null, ptr noundef nonnull @.str.552) ; 21 uses
  %i.xi = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.xe)
  %i.xj = zext i16 %i.xi to i32
  %i.xk = sub nsw i32 12, %i.xf
  %i.xl = lshr i32 %i.xj, %i.xk
  %i.xm = and i32 %i.xl, 15
  %i.xn = load i32, ptr @hf_dlmap_n_sub_burst_isi, align 4
  %i.xo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.xn, ptr noundef %3, i32 noundef %i.xd, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.xp = add i32 %i.xd, 4
  %i.xq = load i32, ptr @hf_dlmap_harq_ir_cc_n_ack_channel, align 4
  %i.xr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.xq, ptr noundef %3, i32 noundef %i.xp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.xs = add i32 %i.xd, 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bp, %bb.bh
  %.0123.i.i = phi i32 [ 0, %bb.bh ], [ %i.aas, %bb.bp ] ; 2 uses
  %.0117122.i.i = phi i32 [ %i.xs, %bb.bh ], [ %.3.i159.i, %bb.bp ] ; 2 uses
  %i.xt = load i32, ptr @RCID_Type, align 4
  %i.xu = tail call i32 @RCID_IE(ptr noundef %i.xh, i32 noundef %.0117122.i.i, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.xt)
  %i.xv = sdiv i32 %i.xu, 4
  %i.xw = add i32 %i.xv, %.0117122.i.i            ; 7 uses
  %i.xx = load i32, ptr @hf_dlmap_harq_ir_cc_duration, align 4
  %i.xy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.xx, ptr noundef %3, i32 noundef %i.xw, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.xz = add i32 %i.xw, 10                       ; 3 uses
  %i.ya = sdiv i32 %i.xz, 8
  %i.yb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.ya)
  %i.yc = zext i8 %i.yb to i32
  %i.yd = srem i32 %i.xz, 8
  %i.ye = sub nsw i32 7, %i.yd
  %i.yf = load i32, ptr @hf_dlmap_harq_ir_cc_sub_burst_diuc_indicator, align 4
  %i.yg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.yf, ptr noundef %3, i32 noundef %i.xz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yh = add i32 %i.xw, 11
  %i.yi = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.yj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.yi, ptr noundef %3, i32 noundef %i.yh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yk = add i32 %i.xw, 12                       ; 2 uses
  %i.yl = shl nuw nsw i32 1, %i.ye
  %i.ym = and i32 %i.yl, %i.yc
  %.not118.i.i = icmp eq i32 %i.ym, 0
  br i1 %.not118.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.yn = load i32, ptr @hf_dlmap_harq_ir_cc_diuc, align 4
  %i.yo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.yn, ptr noundef %3, i32 noundef %i.yk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.yp = add i32 %i.xw, 16
  %i.yq = load i32, ptr @hf_dlmap_harq_ir_cc_repetition_coding_indication, align 4
  %i.yr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.yq, ptr noundef %3, i32 noundef %i.yp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ys = add i32 %i.xw, 18
  %i.yt = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.yu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.yt, ptr noundef %3, i32 noundef %i.ys, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yv = add i32 %i.xw, 20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1.i157.i = phi i32 [ %i.yv, %bb.bj ], [ %i.yk, %bb.bi ] ; 11 uses
  %i.yw = load i32, ptr @hf_dlmap_harq_ir_cc_acid, align 4
  %i.yx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.yw, ptr noundef %3, i32 noundef %.1.i157.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.yy = add i32 %.1.i157.i, 4
  %i.yz = load i32, ptr @hf_dlmap_harq_ir_cc_ai_sn, align 4
  %i.za = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.yz, ptr noundef %3, i32 noundef %i.yy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zb = add i32 %.1.i157.i, 5
  %i.zc = load i32, ptr @hf_dlmap_harq_ir_cc_spid, align 4
  %i.zd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.zc, ptr noundef %3, i32 noundef %i.zb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ze = add i32 %.1.i157.i, 7
  %i.zf = load i32, ptr @hf_dlmap_harq_ir_cc_ack_disable, align 4
  %i.zg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.zf, ptr noundef %3, i32 noundef %i.ze, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zh = add i32 %.1.i157.i, 8                   ; 3 uses
  %i.zi = sdiv i32 %i.zh, 8
  %i.zj = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.zi)
  %i.zk = zext i16 %i.zj to i32
  %i.zl = srem i32 %i.zh, 8
  %i.zm = sub nsw i32 14, %i.zl
  %i.zn = lshr i32 %i.zk, %i.zm                   ; 2 uses
  %i.zo = load i32, ptr @hf_dlmap_harq_ir_cc_dedicated_dl_control_indicator, align 4
  %i.zp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.zo, ptr noundef %3, i32 noundef %i.zh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zq = add i32 %.1.i157.i, 10
  %i.zr = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.zs = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.zr, ptr noundef %3, i32 noundef %i.zq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zt = add i32 %.1.i157.i, 12                  ; 4 uses
  %i.zu = and i32 %i.zn, 1
  %.not119.i.i = icmp eq i32 %i.zu, 0
  br i1 %.not119.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.zv = sdiv i32 %i.zt, 8
  %i.zw = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.zv)
  %i.zx = zext i16 %i.zw to i32
  %i.zy = srem i32 %i.zt, 8
  %i.zz = sub nsw i32 12, %i.zy
  %i.aaa = load i32, ptr @hf_dlmap_harq_ir_cc_duration, align 4
  %i.aab = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.aaa, ptr noundef %3, i32 noundef %i.zt, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aac = add i32 %.1.i157.i, 16                 ; 2 uses
  %i.aad = shl nuw nsw i32 15, %i.zz
  %i.aae = and i32 %i.aad, %i.zx
  %.not120.i.i = icmp eq i32 %i.aae, 0
  br i1 %.not120.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.aaf = load i32, ptr @hf_dlmap_harq_ir_cc_allocation_index, align 4
  %i.aag = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.aaf, ptr noundef %3, i32 noundef %i.aac, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.aah = add i32 %.1.i157.i, 22
  %i.aai = load i32, ptr @hf_dlmap_harq_ir_cc_period, align 4
  %i.aaj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.aai, ptr noundef %3, i32 noundef %i.aah, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aak = add i32 %.1.i157.i, 25
  %i.aal = load i32, ptr @hf_dlmap_harq_ir_cc_frame_offset, align 4
  %i.aam = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xh, i32 noundef %i.aal, ptr noundef %3, i32 noundef %i.aak, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aan = add i32 %.1.i157.i, 28
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %.2.i158.i = phi i32 [ %i.aan, %bb.bm ], [ %i.aac, %bb.bl ], [ %i.zt, %bb.bk ] ; 3 uses
  %i.aao = and i32 %i.zn, 2
  %.not121.i.i = icmp eq i32 %i.aao, 0
  br i1 %.not121.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.aap = sdiv i32 %.2.i158.i, 4
  %i.aaq = tail call fastcc i32 @Dedicated_DL_Control_IE(ptr noundef %i.xh, i32 noundef %i.aap, ptr noundef %3)
  %i.aar = add i32 %i.aaq, %.2.i158.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.3.i159.i = phi i32 [ %i.aar, %bb.bo ], [ %.2.i158.i, %bb.bn ] ; 2 uses
  %i.aas = add nuw nsw i32 %.0123.i.i, 1
  %exitcond.not.i160.i = icmp eq i32 %.0123.i.i, %i.xm
  br i1 %exitcond.not.i160.i, label %bb.bq, label %bb.bi, !llvm.loop !10

bb.bq:                                            ; preds = %bb.bp
  %i.aat = load i8, ptr @include_cor2_changes, align 1, !range !25, !noundef !26
  %i.aau = trunc nuw i8 %i.aat to i1
  br i1 %i.aau, label %bb.br, label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.aav = sdiv i32 %.3.i159.i, 8                 ; 3 uses
  %i.aaw = tail call ptr @tvb_get_ptr(ptr noundef %3, i32 noundef 0, i32 noundef %i.aav)
  %i.aax = tail call zeroext i16 @wimax_mac_calc_crc16(ptr noundef %i.aaw, i32 noundef %i.aav)
  %i.aay = load i32, ptr @hf_crc16, align 4
  %i.aaz = load i32, ptr @hf_crc16_status, align 4
  %i.aba = zext i16 %i.aax to i32
  %i.abb = tail call ptr @proto_tree_add_checksum(ptr noundef %i.xh, ptr noundef %3, i32 noundef %i.aav, i32 noundef %i.aay, i32 noundef %i.aaz, ptr noundef nonnull @ei_crc16, ptr noundef %1, i32 noundef %i.aba, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.bs:                                            ; preds = %bb.ao
  %i.abc = sdiv i32 %i.qf, 4
  %i.abd = shl nsw i32 %i.abc, 2                  ; 4 uses
  %i.abe = sdiv i32 %i.qf, 8                      ; 2 uses
  %i.abf = srem i32 %i.abd, 8
  %i.abg = load i32, ptr @ett_286p, align 4
  %i.abh = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ms, ptr noundef %3, i32 noundef %i.abe, i32 noundef 1, i32 noundef %i.abg, ptr noundef null, ptr noundef nonnull @.str.553) ; 20 uses
  %i.abi = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.abe)
  %i.abj = zext i16 %i.abi to i32
  %i.abk = sub nsw i32 12, %i.abf
  %i.abl = lshr i32 %i.abj, %i.abk
  %i.abm = and i32 %i.abl, 15
  %i.abn = load i32, ptr @hf_dlmap_n_sub_burst_isi, align 4
  %i.abo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.abn, ptr noundef %3, i32 noundef %i.abd, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.abp = add i32 %i.abd, 4
  %i.abq = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_n_ack_channel, align 4
  %i.abr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.abq, ptr noundef %3, i32 noundef %i.abp, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.abs = add i32 %i.abd, 10
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i, %bb.bs
  %.0120.i.i = phi i32 [ 0, %bb.bs ], [ %i.aew, %._crit_edge.i.i ] ; 2 uses
  %.0104119.i.i = phi i32 [ %i.abs, %bb.bs ], [ %.3.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.abt = sdiv i32 %.0104119.i.i, 8
  %i.abu = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.abt)
  %i.abv = zext i8 %i.abu to i32
  %i.abw = srem i32 %.0104119.i.i, 8
  %i.abx = sub nsw i32 7, %i.abw
  %i.aby = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_mu_indicator, align 4
  %i.abz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.aby, ptr noundef %3, i32 noundef %.0104119.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aca = add i32 %.0104119.i.i, 1               ; 3 uses
  %i.acb = sdiv i32 %i.aca, 8
  %i.acc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.acb)
  %i.acd = zext i8 %i.acc to i32
  %i.ace = srem i32 %i.aca, 8
  %i.acf = sub nsw i32 7, %i.ace
  %i.acg = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_dedicated_mimo_dl_control_indicator, align 4
  %i.ach = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.acg, ptr noundef %3, i32 noundef %i.aca, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aci = add i32 %.0104119.i.i, 2               ; 3 uses
  %i.acj = sdiv i32 %i.aci, 8
  %i.ack = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.acj)
  %i.acl = zext i8 %i.ack to i32
  %i.acm = srem i32 %i.aci, 8
  %i.acn = sub nsw i32 7, %i.acm
  %i.aco = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_ack_disable, align 4
  %i.acp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.aco, ptr noundef %3, i32 noundef %i.aci, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acq = add i32 %.0104119.i.i, 3               ; 3 uses
  %i.acr = shl nuw nsw i32 1, %i.abx
  %i.acs = and i32 %i.acr, %i.abv
  %i.act = icmp eq i32 %i.acs, 0                  ; 3 uses
  br i1 %i.act, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.acu = load i32, ptr @RCID_Type, align 4
  %i.acv = tail call i32 @RCID_IE(ptr noundef %i.abh, i32 noundef %i.acq, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.acu)
  %i.acw = add i32 %i.acv, %i.acq
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.1.i161.i = phi i32 [ %i.acw, %bb.bu ], [ %i.acq, %bb.bt ] ; 3 uses
  %i.acx = shl nuw nsw i32 1, %i.acf
  %i.acy = and i32 %i.acx, %i.acd
  %.not109.i.i = icmp eq i32 %i.acy, 0
  br i1 %.not109.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.acz = tail call fastcc i32 @Dedicated_MIMO_DL_Control_IE(ptr noundef %i.abh, i32 noundef %.1.i161.i, ptr noundef %3)
  %i.ada = add i32 %i.acz, %.1.i161.i
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.2.i162.i = phi i32 [ %i.ada, %bb.bw ], [ %.1.i161.i, %bb.bv ] ; 2 uses
  %i.adb = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_duration, align 4
  %i.adc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.adb, ptr noundef %3, i32 noundef %.2.i162.i, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.add = add i32 %.2.i162.i, 10                 ; 4 uses
  %i.ade = load i32, ptr @N_layer, align 4
  %i.adf = icmp sgt i32 %i.ade, 0
  br i1 %i.adf, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bx
  %i.adg = shl nuw nsw i32 1, %i.acn
  %i.adh = and i32 %i.adg, %i.acl
  %.fr121.i.i = freeze i32 %i.adh
  %i.adi = icmp eq i32 %.fr121.i.i, 0
  br i1 %i.adi, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.bz
  %.0103113.us.i.i = phi i32 [ %i.ady, %bb.bz ], [ 0, %.lr.ph.i.i ]
  %.3112.us.i.i = phi i32 [ %i.adx, %bb.bz ], [ %i.add, %.lr.ph.i.i ] ; 3 uses
  br i1 %i.act, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph.split.us.i.i
  %i.adj = load i32, ptr @RCID_Type, align 4
  %i.adk = tail call i32 @RCID_IE(ptr noundef %i.abh, i32 noundef %.3112.us.i.i, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.adj)
  %i.adl = add i32 %i.adk, %.3112.us.i.i
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph.split.us.i.i
  %.4.us.i.i = phi i32 [ %i.adl, %bb.by ], [ %.3112.us.i.i, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.adm = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_diuc, align 4
  %i.adn = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.adm, ptr noundef %3, i32 noundef %.4.us.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ado = add i32 %.4.us.i.i, 4
  %i.adp = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_repetition_coding_indication, align 4
  %i.adq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.adp, ptr noundef %3, i32 noundef %i.ado, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.adr = add i32 %.4.us.i.i, 6
  %i.ads = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_acid, align 4
  %i.adt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.ads, ptr noundef %3, i32 noundef %i.adr, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.adu = add i32 %.4.us.i.i, 10
  %i.adv = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_ai_sn, align 4
  %i.adw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.adv, ptr noundef %3, i32 noundef %i.adu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adx = add i32 %.4.us.i.i, 11                 ; 2 uses
  %i.ady = add nuw nsw i32 %.0103113.us.i.i, 1    ; 2 uses
  %i.adz = load i32, ptr @N_layer, align 4
  %i.aea = icmp slt i32 %i.ady, %i.adz
  br i1 %i.aea, label %.lr.ph.split.us.i.i, label %._crit_edge.i.i, !llvm.loop !11

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %i.act, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.us.i.i
  %.0103113.us114.i.i = phi i32 [ %i.aeh, %.lr.ph.split.split.us.i.i ], [ 0, %.lr.ph.split.i.i ]
  %.3112.us115.i.i = phi i32 [ %i.aeg, %.lr.ph.split.split.us.i.i ], [ %i.add, %.lr.ph.split.i.i ] ; 3 uses
  %i.aeb = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_diuc, align 4
  %i.aec = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.aeb, ptr noundef %3, i32 noundef %.3112.us115.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aed = add i32 %.3112.us115.i.i, 4
  %i.aee = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_repetition_coding_indication, align 4
  %i.aef = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.aee, ptr noundef %3, i32 noundef %i.aed, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aeg = add i32 %.3112.us115.i.i, 6            ; 2 uses
  %i.aeh = add nuw nsw i32 %.0103113.us114.i.i, 1 ; 2 uses
  %i.aei = load i32, ptr @N_layer, align 4
  %i.aej = icmp slt i32 %i.aeh, %i.aei
  br i1 %i.aej, label %.lr.ph.split.split.us.i.i, label %._crit_edge.i.i, !llvm.loop !11

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.i.i
  %.0103113.i.i = phi i32 [ %i.aet, %.lr.ph.split.split.i.i ], [ 0, %.lr.ph.split.i.i ]
  %.3112.i.i = phi i32 [ %i.aes, %.lr.ph.split.split.i.i ], [ %i.add, %.lr.ph.split.i.i ] ; 2 uses
  %i.aek = load i32, ptr @RCID_Type, align 4
  %i.ael = tail call i32 @RCID_IE(ptr noundef %i.abh, i32 noundef %.3112.i.i, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.aek)
  %i.aem = add i32 %i.ael, %.3112.i.i             ; 3 uses
  %i.aen = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_diuc, align 4
  %i.aeo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.aen, ptr noundef %3, i32 noundef %i.aem, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aep = add i32 %i.aem, 4
  %i.aeq = load i32, ptr @hf_dlmap_mimo_dl_chase_harq_repetition_coding_indication, align 4
  %i.aer = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.abh, i32 noundef %i.aeq, ptr noundef %3, i32 noundef %i.aep, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aes = add i32 %i.aem, 6                      ; 2 uses
  %i.aet = add nuw nsw i32 %.0103113.i.i, 1       ; 2 uses
  %i.aeu = load i32, ptr @N_layer, align 4
  %i.aev = icmp slt i32 %i.aet, %i.aeu
  br i1 %i.aev, label %.lr.ph.split.split.i.i, label %._crit_edge.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.us.i.i, %bb.bz, %bb.bx
  %.3.lcssa.i.i = phi i32 [ %i.add, %bb.bx ], [ %i.adx, %bb.bz ], [ %i.aeg, %.lr.ph.split.split.us.i.i ], [ %i.aes, %.lr.ph.split.split.i.i ] ; 6 uses
  %i.aew = add nuw nsw i32 %.0120.i.i, 1
  %exitcond.not.i163.i = icmp eq i32 %.0120.i.i, %i.abm
  br i1 %exitcond.not.i163.i, label %bb.ca, label %bb.bt, !llvm.loop !12

bb.ca:                                            ; preds = %._crit_edge.i.i
  %i.aex = srem i32 %.3.lcssa.i.i, 4              ; 2 uses
  %.not107.i164.i = icmp eq i32 %i.aex, 0
  br i1 %.not107.i164.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.aey = sub nsw i32 4, %i.aex                  ; 3 uses
  %i.aez = load i32, ptr @hf_padding, align 4
  %i.afa = sdiv i32 %.3.lcssa.i.i, 8
  %i.afb = srem i32 %.3.lcssa.i.i, 8
  %i.afc = add nsw i32 %i.aey, %i.afb
  %i.afd = trunc nsw i32 %i.afc to i8
  %.lhs.trunc.i.i.a = add nsw i8 %i.afd, -1
  %i.afe = sdiv i8 %.lhs.trunc.i.i.a, 8
  %narrow.i.i.a = add nuw nsw i8 %i.afe, 1
  %i.aff = zext nneg i8 %narrow.i.i.a to i32
  %i.afg = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.abh, i32 noundef %i.aez, ptr noundef %3, i32 noundef %i.afa, i32 noundef %i.aff, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef %i.aey) ; 0 uses
  %i.afh = add i32 %i.aey, %.3.lcssa.i.i
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.6.i.i = phi i32 [ %i.afh, %bb.cb ], [ %.3.lcssa.i.i, %bb.ca ]
  %i.afi = load i8, ptr @include_cor2_changes, align 1, !range !25, !noundef !26
  %i.afj = trunc nuw i8 %i.afi to i1
  br i1 %i.afj, label %bb.cd, label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.afk = sdiv i32 %.6.i.i, 8                    ; 3 uses
  %i.afl = tail call ptr @tvb_get_ptr(ptr noundef %3, i32 noundef 0, i32 noundef %i.afk)
  %i.afm = tail call zeroext i16 @wimax_mac_calc_crc16(ptr noundef %i.afl, i32 noundef %i.afk)
  %i.afn = load i32, ptr @hf_crc16, align 4
  %i.afo = load i32, ptr @hf_crc16_status, align 4
  %i.afp = zext i16 %i.afm to i32
  %i.afq = tail call ptr @proto_tree_add_checksum(ptr noundef %i.abh, ptr noundef %3, i32 noundef %i.afk, i32 noundef %i.afn, i32 noundef %i.afo, ptr noundef nonnull @ei_crc16, ptr noundef %1, i32 noundef %i.afp, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.ce:                                            ; preds = %bb.ao
  %i.afr = sdiv i32 %i.qf, 4
  %i.afs = shl nsw i32 %i.afr, 2                  ; 4 uses
  %i.aft = sdiv i32 %i.qf, 8                      ; 2 uses
  %i.afu = srem i32 %i.afs, 8                     ; 2 uses
  %13 = trunc nsw i32 %i.afu to i8
  %.lhs.trunc.i169.i = or disjoint i8 %13, 3
  %14 = sdiv i8 %.lhs.trunc.i169.i, 8
  %narrow.i170.i = add nuw nsw i8 %14, 1
  %15 = zext nneg i8 %narrow.i170.i to i32
  %i.afv = load i32, ptr @ett_286q, align 4
  %i.afw = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ms, ptr noundef %3, i32 noundef %i.aft, i32 noundef %15, i32 noundef %i.afv, ptr noundef null, ptr noundef nonnull @.str.555) ; 17 uses
  %i.afx = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.aft)
  %i.afy = zext i16 %i.afx to i32
  %i.afz = sub nsw i32 12, %i.afu
  %i.aga = lshr i32 %i.afy, %i.afz
  %i.agb = and i32 %i.aga, 15
  %i.agc = load i32, ptr @hf_dlmap_n_sub_burst_isi, align 4
  %i.agd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.agc, ptr noundef %3, i32 noundef %i.afs, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.age = add i32 %i.afs, 4
  %i.agf = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_n_ack_channel, align 4
  %i.agg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.agf, ptr noundef %3, i32 noundef %i.age, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.agh = add i32 %i.afs, 10
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i167.i, %bb.ce
  %.0101.i.i = phi i32 [ 0, %bb.ce ], [ %i.aje, %._crit_edge.i167.i ] ; 2 uses
  %.093100.i.i = phi i32 [ %i.agh, %bb.ce ], [ %.3.lcssa.i168.i, %._crit_edge.i167.i ] ; 6 uses
  %i.agi = sdiv i32 %.093100.i.i, 8
  %i.agj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.agi)
  %i.agk = zext i8 %i.agj to i32
  %i.agl = srem i32 %.093100.i.i, 8
  %i.agm = sub nsw i32 7, %i.agl
  %i.agn = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_mu_indicator, align 4
  %i.ago = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.agn, ptr noundef %3, i32 noundef %.093100.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agp = add i32 %.093100.i.i, 1                ; 3 uses
  %i.agq = sdiv i32 %i.agp, 8
  %i.agr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.agq)
  %i.ags = zext i8 %i.agr to i32
  %i.agt = srem i32 %i.agp, 8
  %i.agu = sub nsw i32 7, %i.agt
  %i.agv = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_dedicated_mimo_dl_control_indicator, align 4
  %i.agw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.agv, ptr noundef %3, i32 noundef %i.agp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agx = add i32 %.093100.i.i, 2                ; 3 uses
  %i.agy = sdiv i32 %i.agx, 8
  %i.agz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.agy)
  %i.aha = zext i8 %i.agz to i32
  %i.ahb = srem i32 %i.agx, 8
  %i.ahc = sub nsw i32 7, %i.ahb
  %i.ahd = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_ack_disable, align 4
  %i.ahe = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.ahd, ptr noundef %3, i32 noundef %i.agx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahf = add i32 %.093100.i.i, 3                ; 3 uses
  %i.ahg = shl nuw nsw i32 1, %i.agm
  %i.ahh = and i32 %i.ahg, %i.agk
  %i.ahi = icmp eq i32 %i.ahh, 0                  ; 3 uses
  br i1 %i.ahi, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ahj = load i32, ptr @RCID_Type, align 4
  %i.ahk = tail call i32 @RCID_IE(ptr noundef %i.afw, i32 noundef %i.ahf, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.ahj)
  %i.ahl = add i32 %i.ahk, %i.ahf
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1.i165.i = phi i32 [ %i.ahl, %bb.cg ], [ %i.ahf, %bb.cf ] ; 3 uses
  %i.ahm = shl nuw nsw i32 1, %i.agu
  %i.ahn = and i32 %i.ahm, %i.ags
  %.not94.i.i = icmp eq i32 %i.ahn, 0
  br i1 %.not94.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aho = tail call fastcc i32 @Dedicated_MIMO_DL_Control_IE(ptr noundef %i.afw, i32 noundef %.1.i165.i, ptr noundef %3)
  %i.ahp = add i32 %i.aho, %.1.i165.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.2.i166.i = phi i32 [ %i.ahp, %bb.ci ], [ %.1.i165.i, %bb.ch ] ; 2 uses
  %i.ahq = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_nsch, align 4
  %i.ahr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.ahq, ptr noundef %3, i32 noundef %.2.i166.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ahs = add i32 %.2.i166.i, 4                  ; 4 uses
  %i.aht = load i32, ptr @N_layer, align 4
  %i.ahu = icmp sgt i32 %i.aht, 0
  br i1 %i.ahu, label %.lr.ph.i171.i, label %._crit_edge.i167.i

.lr.ph.i171.i:                                    ; preds = %bb.cj
  %i.ahv = shl nuw nsw i32 1, %i.ahc
  %i.ahw = and i32 %i.ahv, %i.aha
  %.fr.i.i = freeze i32 %i.ahw
  %.not96.i.i = icmp eq i32 %.fr.i.i, 0
  br i1 %.not96.i.i, label %.lr.ph.split.us.i174.i, label %.lr.ph.split.i172.i

.lr.ph.split.us.i174.i:                           ; preds = %.lr.ph.i171.i
  br i1 %i.ahi, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i174.i, %.lr.ph.split.us.split.us.i.i
  %.09298.us.us.i.i = phi i32 [ %i.aia, %.lr.ph.split.us.split.us.i.i ], [ 0, %.lr.ph.split.us.i174.i ]
  %.397.us.us.i.i = phi i32 [ %i.ahz, %.lr.ph.split.us.split.us.i.i ], [ %i.ahs, %.lr.ph.split.us.i174.i ] ; 2 uses
  %i.ahx = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_nep, align 4
  %i.ahy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.ahx, ptr noundef %3, i32 noundef %.397.us.us.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ahz = add i32 %.397.us.us.i.i, 4             ; 2 uses
  %i.aia = add nuw nsw i32 %.09298.us.us.i.i, 1   ; 2 uses
  %i.aib = load i32, ptr @N_layer, align 4
  %i.aic = icmp slt i32 %i.aia, %i.aib
  br i1 %i.aic, label %.lr.ph.split.us.split.us.i.i, label %._crit_edge.i167.i, !llvm.loop !13

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i174.i, %.lr.ph.split.us.split.i.i
  %.09298.us.i.i = phi i32 [ %i.aij, %.lr.ph.split.us.split.i.i ], [ 0, %.lr.ph.split.us.i174.i ]
  %.397.us.i.i = phi i32 [ %i.aii, %.lr.ph.split.us.split.i.i ], [ %i.ahs, %.lr.ph.split.us.i174.i ] ; 2 uses
  %i.aid = load i32, ptr @RCID_Type, align 4
  %i.aie = tail call i32 @RCID_IE(ptr noundef %i.afw, i32 noundef %.397.us.i.i, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.aid)
  %i.aif = add i32 %i.aie, %.397.us.i.i           ; 2 uses
  %i.aig = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_nep, align 4
  %i.aih = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.aig, ptr noundef %3, i32 noundef %i.aif, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aii = add i32 %i.aif, 4                      ; 2 uses
  %i.aij = add nuw nsw i32 %.09298.us.i.i, 1      ; 2 uses
  %i.aik = load i32, ptr @N_layer, align 4
  %i.ail = icmp slt i32 %i.aij, %i.aik
  br i1 %i.ail, label %.lr.ph.split.us.split.i.i, label %._crit_edge.i167.i, !llvm.loop !13

.lr.ph.split.i172.i:                              ; preds = %.lr.ph.i171.i, %bb.cl
  %.09298.i.i = phi i32 [ %i.ajb, %bb.cl ], [ 0, %.lr.ph.i171.i ]
  %.397.i.i = phi i32 [ %i.aja, %bb.cl ], [ %i.ahs, %.lr.ph.i171.i ] ; 3 uses
  br i1 %i.ahi, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.split.i172.i
  %i.aim = load i32, ptr @RCID_Type, align 4
  %i.ain = tail call i32 @RCID_IE(ptr noundef %i.afw, i32 noundef %.397.i.i, i32 noundef range(i32 12, 2053) %i.nt, ptr noundef %3, i32 noundef %i.aim)
  %i.aio = add i32 %i.ain, %.397.i.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph.split.i172.i
  %.4.i173.i = phi i32 [ %i.aio, %bb.ck ], [ %.397.i.i, %.lr.ph.split.i172.i ] ; 5 uses
  %i.aip = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_nep, align 4
  %i.aiq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.aip, ptr noundef %3, i32 noundef %.4.i173.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.air = add i32 %.4.i173.i, 4
  %i.ais = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_spid, align 4
  %i.ait = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.ais, ptr noundef %3, i32 noundef %i.air, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aiu = add i32 %.4.i173.i, 6
  %i.aiv = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_acid, align 4
  %i.aiw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.aiv, ptr noundef %3, i32 noundef %i.aiu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aix = add i32 %.4.i173.i, 10
  %i.aiy = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_ai_sn, align 4
  %i.aiz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.afw, i32 noundef %i.aiy, ptr noundef %3, i32 noundef %i.aix, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aja = add i32 %.4.i173.i, 11                 ; 2 uses
  %i.ajb = add nuw nsw i32 %.09298.i.i, 1         ; 2 uses
  %i.ajc = load i32, ptr @N_layer, align 4
  %i.ajd = icmp slt i32 %i.ajb, %i.ajc
  br i1 %i.ajd, label %.lr.ph.split.i172.i, label %._crit_edge.i167.i, !llvm.loop !13

._crit_edge.i167.i:                               ; preds = %bb.cl, %.lr.ph.split.us.split.i.i, %.lr.ph.split.us.split.us.i.i, %bb.cj
  %.3.lcssa.i168.i = phi i32 [ %i.ahs, %bb.cj ], [ %i.aii, %.lr.ph.split.us.split.i.i ], [ %i.ahz, %.lr.ph.split.us.split.us.i.i ], [ %i.aja, %bb.cl ] ; 2 uses
  %i.aje = add nuw nsw i32 %.0101.i.i, 1
  %exitcond.not.i169.i = icmp eq i32 %.0101.i.i, %i.agb
  br i1 %exitcond.not.i169.i, label %bb.cm, label %bb.cf, !llvm.loop !14

bb.cm:                                            ; preds = %._crit_edge.i167.i
  %i.ajf = load i8, ptr @include_cor2_changes, align 1, !range !25, !noundef !26
  %i.ajg = trunc nuw i8 %i.ajf to i1
  br i1 %i.ajg, label %bb.cn, label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.ajh = sdiv i32 %.3.lcssa.i168.i, 8           ; 3 uses
  %i.aji = tail call ptr @tvb_get_ptr(ptr noundef %3, i32 noundef 0, i32 noundef %i.ajh)
  %i.ajj = tail call zeroext i16 @wimax_mac_calc_crc16(ptr noundef %i.aji, i32 noundef %i.ajh)
  %i.ajk = load i32, ptr @hf_crc16, align 4
  %i.ajl = load i32, ptr @hf_crc16_status, align 4
  %i.ajm = zext i16 %i.ajj to i32
  %i.ajn = tail call ptr @proto_tree_add_checksum(ptr noundef %i.afw, ptr noundef %3, i32 noundef %i.ajh, i32 noundef %i.ajk, i32 noundef %i.ajl, ptr noundef nonnull @ei_crc16, ptr noundef %1, i32 noundef %i.ajm, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %DL_HARQ_Chase_sub_burst_IE.exit.i

bb.co:                                            ; preds = %bb.ao
  %i.ajo = sdiv i32 %i.qf, 4
  %i.ajp = shl nsw i32 %i.ajo, 2                  ; 4 uses
  %i.ajq = sdiv i32 %i.qf, 8                      ; 2 uses
  %i.ajr = srem i32 %i.ajp, 8
  %i.ajs = load i32, ptr @ett_286r, align 4
  %i.ajt = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ms, ptr noundef %3, i32 noundef %i.ajq, i32 noundef 1, i32 noundef %i.ajs, ptr noundef null, ptr noundef nonnull @.str.556) ; 20 uses
  %i.aju = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.ajq)
  %i.ajv = zext i16 %i.aju to i32
  %i.ajw = sub nsw i32 12, %i.ajr
  %i.ajx = lshr i32 %i.ajv, %i.ajw
  %i.ajy = and i32 %i.ajx, 15
  %i.ajz = load i32, ptr @hf_dlmap_n_sub_burst_isi, align 4
  %i.aka = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajt, i32 noundef %i.ajz, ptr noundef %3, i32 noundef %i.ajp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.akb = add i32 %i.ajp, 4
  %i.akc = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_cc_n_ack_channel, align 4
  %i.akd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajt, i32 noundef %i.akc, ptr noundef %3, i32 noundef %i.akb, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.ake = add i32 %i.ajp, 10
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i178.i, %bb.co
  %.0108.i.i = phi i32 [ 0, %bb.co ], [ %i.anl, %._crit_edge.i178.i ] ; 2 uses
  %.097107.i.i = phi i32 [ %i.ake, %bb.co ], [ %.3.lcssa.i179.i, %._crit_edge.i178.i ] ; 6 uses
  %i.akf = sdiv i32 %.097107.i.i, 8
  %i.akg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.akf)
  %i.akh = zext i8 %i.akg to i32
  %i.aki = srem i32 %.097107.i.i, 8
  %i.akj = sub nsw i32 7, %i.aki
  %i.akk = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_cc_mu_indicator, align 4
  %i.akl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajt, i32 noundef %i.akk, ptr noundef %3, i32 noundef %.097107.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akm = add i32 %.097107.i.i, 1                ; 3 uses
  %i.akn = sdiv i32 %i.akm, 8
  %i.ako = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.akn)
  %i.akp = zext i8 %i.ako to i32
  %i.akq = srem i32 %i.akm, 8
  %i.akr = sub nsw i32 7, %i.akq
  %i.aks = load i32, ptr @hf_dlmap_mimo_dl_ir_harq_cc_dedicated_mimo_dl_control_indicator, align 4
  %i.akt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajt, i32 noundef %i.aks, ptr noundef %3, i32 noundef %i.akm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aku = add i32 %.097107.i.i, 2                ; 3 uses
  %i.akv = sdiv i32 %i.aku, 8
end_hunk_0
begin_hunk_1_@dissect_dlmap_ie:bb.a
  %i.bhm = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.azm, i32 noundef %i.bhf, ptr noundef %3, i32 noundef %i.bhg, i32 noundef %i.bhl, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef %spec.select.i) ; 0 uses
  %i.bhn = add i32 %spec.select.i, %.0265.lcssa.i
  %i.bho = sdiv i32 %i.bhn, 4
  br label %UL_interference_and_noise_level_IE.exit

bb.em:                                            ; preds = %bb.k
  %i.bhp = load i32, ptr @hf_dlmap_ie_reserved_extended2_duic, align 4
  %i.bhq = sdiv i32 %i.i, 2
  %i.bhr = add nuw nsw i32 %i.j, 1
  %i.bhs = add nuw nsw i32 %i.bhr, %i.ak
  %i.bht = lshr i32 %i.bhs, 1
  %i.bhu = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.aj, i32 noundef %i.bhp, ptr noundef %3, i32 noundef %i.bhq, i32 noundef %i.bht, ptr noundef null, ptr noundef nonnull @.str.536, i32 noundef %i.q) ; 0 uses
  %i.bhv = add i32 %i.ak, %i.i
  br label %UL_interference_and_noise_level_IE.exit

bb.en:                                            ; preds = %bb.d
  %i.bhw = add i32 %2, 1                          ; 24 uses
  %i.bhx = and i32 %i.bhw, 1                      ; 16 uses
  %.not301 = icmp eq i32 %i.bhx, 0                ; 11 uses
  br i1 %.not301, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.bhy = sdiv i32 %i.bhw, 2
  %i.bhz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bhy)
  %i.bia = and i8 %i.bhz, 15
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  %i.bib = ashr exact i32 %i.bhw, 1
  %i.bic = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bib)
  %i.bid = lshr i8 %i.bic, 4
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.in302 = phi i8 [ %i.bia, %bb.eo ], [ %i.bid, %bb.ep ] ; 2 uses
  %i.bie = zext nneg i8 %.in302 to i32
  %i.bif = add i32 %2, 2                          ; 8 uses
  br i1 %.not, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.big = sdiv i32 %i.bif, 2
  %i.bih = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.big)
  %i.bii = and i8 %i.bih, 15
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.bij = ashr exact i32 %i.bif, 1
  %i.bik = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bij)
  %i.bil = lshr i8 %i.bik, 4
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.in304 = phi i8 [ %i.bii, %bb.er ], [ %i.bil, %bb.es ]
  %i.bim = load i32, ptr @hf_dlmap_ie_diuc, align 4
  %i.bin = sdiv i32 %2, 2
  %i.bio = shl nuw nsw i8 %.in304, 1
  %i.bip = zext nneg i8 %i.bio to i32             ; 2 uses
  %i.biq = add nuw nsw i32 %i.bip, 4
  %i.bir = lshr exact i32 %i.biq, 1
  %i.bis = tail call ptr @proto_tree_add_uint(ptr noundef %0, i32 noundef %i.bim, ptr noundef %3, i32 noundef %i.bin, i32 noundef %i.bir, i32 noundef 15) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bis, ptr noundef nonnull @.str.537)
  %i.bit = load i32, ptr @ett_277, align 4
  %i.biu = tail call ptr @proto_item_add_subtree(ptr noundef %i.bis, i32 noundef %i.bit) ; 13 uses
  %i.biv = add nuw nsw i32 %i.bip, 2              ; 14 uses
  switch i8 %.in302, label %bb.hk [
    i8 0, label %bb.eu
    i8 1, label %bb.fd
    i8 2, label %bb.fe
    i8 3, label %bb.ff
    i8 4, label %bb.fg
    i8 7, label %bb.fj
    i8 8, label %bb.fl
    i8 10, label %bb.fm
    i8 11, label %bb.fo
    i8 12, label %bb.fp
    i8 15, label %bb.fq
  ]

bb.eu:                                            ; preds = %bb.et
  %i.biw = sdiv i32 %i.bhw, 2                     ; 3 uses
  %i.bix = add nuw nsw i32 %i.bhx, 1
  %i.biy = add nuw nsw i32 %i.bix, %i.biv
  %i.biz = lshr i32 %i.biy, 1
  %i.bja = load i32, ptr @ett_280, align 4
  %i.bjb = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.biw, i32 noundef %i.biz, i32 noundef %i.bja, ptr noundef null, ptr noundef nonnull @.str.564) ; 6 uses
  %i.bjc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.biw) ; 2 uses
  %i.bjd = and i8 %i.bjc, 15
  %i.bje = lshr i8 %i.bjc, 4
  %.in.i360 = select i1 %.not301, i8 %i.bje, i8 %i.bjd
  %i.bjf = zext nneg i8 %.in.i360 to i32
  %i.bjg = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %i.bjh = tail call ptr @proto_tree_add_uint(ptr noundef %i.bjb, i32 noundef %i.bjg, ptr noundef %3, i32 noundef %i.biw, i32 noundef 1, i32 noundef %i.bjf) ; 0 uses
  br i1 %.not301, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bji = sdiv i32 %i.bif, 2                     ; 2 uses
  %i.bjj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bji)
  %i.bjk = and i8 %i.bjj, 15
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.bjl = ashr exact i32 %i.bif, 1               ; 2 uses
  %i.bjm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bjl)
  %i.bjn = lshr i8 %i.bjm, 4
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pre-phi.i362 = phi i32 [ %i.bjl, %bb.ew ], [ %i.bji, %bb.ev ]
  %.in62.i = phi i8 [ %i.bjn, %bb.ew ], [ %i.bjk, %bb.ev ]
  %i.bjo = zext nneg i8 %.in62.i to i32
  %i.bjp = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.bjq = tail call ptr @proto_tree_add_uint(ptr noundef %i.bjb, i32 noundef %i.bjp, ptr noundef %3, i32 noundef %.pre-phi.i362, i32 noundef 1, i32 noundef %i.bjo) ; 0 uses
  %i.bjr = add i32 %2, 3                          ; 2 uses
  br i1 %.not301, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bjs = sdiv i32 %i.bjr, 2                     ; 2 uses
  %i.bjt = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bjs)
  %i.bju = lshr i16 %i.bjt, 4
  %i.bjv = and i16 %i.bju, 255
  %i.bjw = zext nneg i16 %i.bjv to i32
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.bjx = ashr exact i32 %i.bjr, 1               ; 2 uses
  %i.bjy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bjx)
  %i.bjz = zext i8 %i.bjy to i32
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.pre-phi67.i = phi i32 [ %i.bjx, %bb.ez ], [ %i.bjs, %bb.ey ]
  %i.bka = phi i32 [ %i.bjz, %bb.ez ], [ %i.bjw, %bb.ey ]
  %i.bkb = load i32, ptr @hf_dlmap_channel_measurement_channel_nr, align 4
  %i.bkc = add nuw nsw i32 %i.bhx, 3
  %i.bkd = lshr i32 %i.bkc, 1                     ; 3 uses
  %i.bke = tail call ptr @proto_tree_add_uint(ptr noundef %i.bjb, i32 noundef %i.bkb, ptr noundef %3, i32 noundef %.pre-phi67.i, i32 noundef %i.bkd, i32 noundef %i.bka) ; 0 uses
  %i.bkf = add i32 %2, 5                          ; 2 uses
  br i1 %.not301, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.bkg = sdiv i32 %i.bkf, 2                     ; 2 uses
  %i.bkh = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bkg)
  %i.bki = lshr i16 %i.bkh, 4
  %i.bkj = and i16 %i.bki, 255
  %i.bkk = zext nneg i16 %i.bkj to i32
  %i.bkl = load i32, ptr @hf_dlmap_channel_measurement_ofdma_symbol_offset, align 4
  %i.bkm = tail call ptr @proto_tree_add_uint(ptr noundef %i.bjb, i32 noundef %i.bkl, ptr noundef %3, i32 noundef %i.bkg, i32 noundef %i.bkd, i32 noundef %i.bkk) ; 0 uses
  %i.bkn = add i32 %2, 7
  %i.bko = sdiv i32 %i.bkn, 2                     ; 2 uses
  %i.bkp = tail call i32 @tvb_get_ntohl(ptr noundef %3, i32 noundef %i.bko)
  %i.bkq = lshr i32 %i.bkp, 12
  %i.bkr = and i32 %i.bkq, 65535
  br label %Channel_Measurement_IE.exit

bb.fc:                                            ; preds = %bb.fa
  %i.bks = ashr exact i32 %i.bkf, 1               ; 2 uses
  %i.bkt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bks)
  %i.bku = zext i8 %i.bkt to i32
  %i.bkv = load i32, ptr @hf_dlmap_channel_measurement_ofdma_symbol_offset, align 4
  %i.bkw = tail call ptr @proto_tree_add_uint(ptr noundef %i.bjb, i32 noundef %i.bkv, ptr noundef %3, i32 noundef %i.bks, i32 noundef %i.bkd, i32 noundef %i.bku) ; 0 uses
  %i.bkx = add i32 %2, 7
  %i.bky = ashr exact i32 %i.bkx, 1               ; 2 uses
  %i.bkz = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bky)
  %i.bla = zext i16 %i.bkz to i32
  br label %Channel_Measurement_IE.exit

Channel_Measurement_IE.exit:                      ; preds = %bb.fb, %bb.fc
  %.pre-phi71.i = phi i32 [ %i.bky, %bb.fc ], [ %i.bko, %bb.fb ]
  %i.blb = phi i32 [ %i.bla, %bb.fc ], [ %i.bkr, %bb.fb ]
  %i.blc = load i32, ptr @hf_dlmap_channel_measurement_cid, align 4
  %i.bld = add nuw nsw i32 %i.bhx, 5
  %i.ble = lshr i32 %i.bld, 1
  %i.blf = tail call ptr @proto_tree_add_uint(ptr noundef %i.bjb, i32 noundef %i.blc, ptr noundef %3, i32 noundef %.pre-phi71.i, i32 noundef %i.ble, i32 noundef %i.blb) ; 0 uses
  %i.blg = add i32 %2, 11
  br label %UL_interference_and_noise_level_IE.exit

bb.fd:                                            ; preds = %bb.et
  %i.blh = sdiv i32 %i.bhw, 2
  %i.bli = add nuw nsw i32 %i.bhx, 1
  %i.blj = add nuw nsw i32 %i.bli, %i.biv
  %i.blk = lshr i32 %i.blj, 1
  %i.bll = load i32, ptr @ett_279, align 4
  %i.blm = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.blh, i32 noundef %i.blk, i32 noundef %i.bll, ptr noundef null, ptr noundef nonnull @.str.565) ; 15 uses
  %i.bln = shl i32 %i.bhw, 2                      ; 15 uses
  %i.blo = sdiv i32 %i.bln, 8                     ; 2 uses
  %i.blp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.blo)
  %i.blq = zext i16 %i.blp to i32
  %i.blr = insertelement <4 x i32> poison, i32 %i.bln, i64 0
  %i.bls = shufflevector <4 x i32> %i.blr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.blt = add <4 x i32> %i.bls, <i32 0, i32 4, i32 21, i32 35> ; 3 uses
  %i.blu = add i32 %i.bln, 4
  %i.blv = srem <4 x i32> %i.blt, splat (i32 8)   ; 2 uses
  %i.blw = sub nsw <4 x i32> <i32 12, i32 12, i32 14, i32 7>, %i.blv ; 4 uses
  %i.blx = extractelement <4 x i32> %i.blw, i64 0
  %i.bly = lshr i32 %i.blq, %i.blx
  %i.blz = and i32 %i.bly, 15
  %i.bma = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %i.bmb = sdiv i32 %i.blu, 8                     ; 2 uses
  %i.bmc = extractelement <4 x i32> %i.blw, i64 1
  %i.bmd = shufflevector <4 x i32> %i.blv, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %16 = trunc nsw <2 x i32> %i.bmd to <2 x i8>
  %17 = or <2 x i8> %16, splat (i8 3)
  %18 = sdiv <2 x i8> %17, splat (i8 8)
  %19 = add nuw nsw <2 x i8> %18, splat (i8 1)    ; 2 uses
  %20 = extractelement <2 x i8> %19, i64 0
  %21 = zext i8 %20 to i32
  %i.bme = tail call ptr @proto_tree_add_uint(ptr noundef %i.blm, i32 noundef %i.bma, ptr noundef %3, i32 noundef %i.blo, i32 noundef %21, i32 noundef %i.blz) ; 0 uses
  %i.bmf = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bmb)
  %i.bmg = zext i16 %i.bmf to i32
  %i.bmh = lshr i32 %i.bmg, %i.bmc
  %i.bmi = and i32 %i.bmh, 15
  %i.bmj = load i32, ptr @hf_dlmap_ie_length, align 4
  %22 = extractelement <2 x i8> %19, i64 1
  %23 = zext i8 %22 to i32
  %i.bmk = tail call ptr @proto_tree_add_uint(ptr noundef %i.blm, i32 noundef %i.bmj, ptr noundef %3, i32 noundef %i.bmb, i32 noundef %23, i32 noundef %i.bmi) ; 0 uses
  %i.bml = add i32 %i.bln, 8
  %i.bmm = load i32, ptr @hf_dlmap_stc_zone_ofdma_symbol_offset, align 4
  %i.bmn = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bmm, ptr noundef %3, i32 noundef %i.bml, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bmo = add i32 %i.bln, 16
  %i.bmp = load i32, ptr @hf_dlmap_stc_zone_permutations, align 4
  %i.bmq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bmp, ptr noundef %3, i32 noundef %i.bmo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bmr = add i32 %i.bln, 18
  %i.bms = load i32, ptr @hf_dlmap_stc_zone_use_all_sc_indicator, align 4
  %i.bmt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bms, ptr noundef %3, i32 noundef %i.bmr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bmu = add i32 %i.bln, 19
  %i.bmv = load i32, ptr @hf_dlmap_stc_zone_stc, align 4
  %i.bmw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bmv, ptr noundef %3, i32 noundef %i.bmu, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bmx = extractelement <4 x i32> %i.blt, i64 2 ; 2 uses
  %i.bmy = sdiv i32 %i.bmx, 8
  %i.bmz = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bmy)
  %i.bna = zext i16 %i.bmz to i32
  %i.bnb = extractelement <4 x i32> %i.blw, i64 2
  %i.bnc = lshr i32 %i.bna, %i.bnb
  %i.bnd = and i32 %i.bnc, 3
  store i32 %i.bnd, ptr @STC_Zone_Matrix, align 4
  %i.bne = load i32, ptr @hf_dlmap_stc_zone_matrix_indicator, align 4
  %i.bnf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bne, ptr noundef %3, i32 noundef %i.bmx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bng = add i32 %i.bln, 23
  %i.bnh = load i32, ptr @hf_dlmap_stc_zone_dl_permbase, align 4
  %i.bni = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bnh, ptr noundef %3, i32 noundef %i.bng, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bnj = add i32 %i.bln, 28
  %i.bnk = load i32, ptr @hf_dlmap_stc_zone_prbs_id, align 4
  %i.bnl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bnk, ptr noundef %3, i32 noundef %i.bnj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bnm = add i32 %i.bln, 30
  %i.bnn = load i32, ptr @hf_dlmap_stc_zone_amc_type, align 4
  %i.bno = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bnn, ptr noundef %3, i32 noundef %i.bnm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bnp = add i32 %i.bln, 32
  %i.bnq = load i32, ptr @hf_dlmap_stc_zone_midamble_presence, align 4
  %i.bnr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bnq, ptr noundef %3, i32 noundef %i.bnp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bns = add i32 %i.bln, 33
  %i.bnt = load i32, ptr @hf_dlmap_stc_zone_midamble_boosting, align 4
  %i.bnu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bnt, ptr noundef %3, i32 noundef %i.bns, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bnv = add i32 %i.bln, 34
  %i.bnw = load i32, ptr @hf_dlmap_stc_zone_2_3_antenna_select, align 4
  %i.bnx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bnw, ptr noundef %3, i32 noundef %i.bnv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bny = extractelement <4 x i32> %i.blt, i64 3 ; 2 uses
  %i.bnz = sdiv i32 %i.bny, 8
  %i.boa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bnz)
  %i.bob = zext i8 %i.boa to i32
  %i.boc = extractelement <4 x i32> %i.blw, i64 3
  %i.bod = lshr i32 %i.bob, %i.boc
  %i.boe = and i32 %i.bod, 1
  store i32 %i.boe, ptr @STC_Zone_Dedicated_Pilots, align 4
  %i.bof = load i32, ptr @hf_dlmap_stc_zone_dedicated_pilots, align 4
  %i.bog = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.bof, ptr noundef %3, i32 noundef %i.bny, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.boh = add i32 %i.bln, 36
  %i.boi = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.boj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blm, i32 noundef %i.boi, ptr noundef %3, i32 noundef %i.boh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bok = add i32 %i.bln, 40
  %i.bol = ashr exact i32 %i.bok, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.fe:                                            ; preds = %bb.et
  %i.bom = shl i32 %i.bhw, 2                      ; 12 uses
  %i.bon = sdiv i32 %i.bhw, 2
  %i.boo = add nuw nsw i32 %i.bhx, 1
  %i.bop = add nuw nsw i32 %i.boo, %i.biv
  %i.boq = lshr i32 %i.bop, 1
  %i.bor = load i32, ptr @ett_278, align 4
  %i.bos = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.bon, i32 noundef %i.boq, i32 noundef %i.bor, ptr noundef null, ptr noundef nonnull @.str.566) ; 10 uses
  %i.bot = sdiv i32 %i.bom, 8                     ; 2 uses
  %i.bou = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bot)
  %i.bov = zext i16 %i.bou to i32
  %i.bow = srem i32 %i.bom, 8                     ; 2 uses
  %i.box = sub nsw i32 12, %i.bow
  %i.boy = lshr i32 %i.bov, %i.box
  %i.boz = and i32 %i.boy, 15
  %i.bpa = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %24 = trunc nsw i32 %i.bow to i8
  %.lhs.trunc.i367 = or disjoint i8 %24, 3
  %25 = sdiv i8 %.lhs.trunc.i367, 8
  %narrow.i368 = add nuw nsw i8 %25, 1
  %26 = zext nneg i8 %narrow.i368 to i32
  %i.bpb = tail call ptr @proto_tree_add_uint(ptr noundef %i.bos, i32 noundef %i.bpa, ptr noundef %3, i32 noundef %i.bot, i32 noundef %26, i32 noundef %i.boz) ; 0 uses
  %i.bpc = add i32 %i.bom, 4                      ; 2 uses
  %i.bpd = sdiv i32 %i.bpc, 8                     ; 2 uses
  %i.bpe = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bpd)
  %i.bpf = zext i16 %i.bpe to i32
  %i.bpg = srem i32 %i.bpc, 8                     ; 2 uses
  %i.bph = sub nsw i32 12, %i.bpg
  %i.bpi = lshr i32 %i.bpf, %i.bph
  %i.bpj = and i32 %i.bpi, 15
  %i.bpk = load i32, ptr @hf_dlmap_ie_length, align 4
  %27 = trunc nsw i32 %i.bpg to i8
  %.lhs.trunc56.i = or disjoint i8 %27, 3
  %28 = sdiv i8 %.lhs.trunc56.i, 8
  %narrow58.i = add nuw nsw i8 %28, 1
  %29 = zext nneg i8 %narrow58.i to i32
  %i.bpl = tail call ptr @proto_tree_add_uint(ptr noundef %i.bos, i32 noundef %i.bpk, ptr noundef %3, i32 noundef %i.bpd, i32 noundef %29, i32 noundef %i.bpj) ; 0 uses
  %i.bpm = add i32 %i.bom, 8
  %i.bpn = load i32, ptr @hf_dlmap_aas_dl_ofdma_symbol_offset, align 4
  %i.bpo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bpn, ptr noundef %3, i32 noundef %i.bpm, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bpp = add i32 %i.bom, 16
  %i.bpq = load i32, ptr @hf_dlmap_aas_dl_permutation, align 4
  %i.bpr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bpq, ptr noundef %3, i32 noundef %i.bpp, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bps = add i32 %i.bom, 19
  %i.bpt = load i32, ptr @hf_dlmap_aas_dl_dl_permbase, align 4
  %i.bpu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bpt, ptr noundef %3, i32 noundef %i.bps, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bpv = add i32 %i.bom, 25
  %i.bpw = load i32, ptr @hf_dlmap_aas_dl_downlink_preamble_config, align 4
  %i.bpx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bpw, ptr noundef %3, i32 noundef %i.bpv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bpy = add i32 %i.bom, 27
  %i.bpz = load i32, ptr @hf_dlmap_aas_dl_preamble_type, align 4
  %i.bqa = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bpz, ptr noundef %3, i32 noundef %i.bpy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqb = add i32 %i.bom, 28
  %i.bqc = load i32, ptr @hf_dlmap_aas_dl_prbs_id, align 4
  %i.bqd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bqc, ptr noundef %3, i32 noundef %i.bqb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bqe = add i32 %i.bom, 30
  %i.bqf = load i32, ptr @hf_dlmap_aas_dl_diversity_map, align 4
  %i.bqg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bqf, ptr noundef %3, i32 noundef %i.bqe, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqh = add i32 %i.bom, 31
  %i.bqi = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.bqj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bos, i32 noundef %i.bqi, ptr noundef %3, i32 noundef %i.bqh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqk = add i32 %i.bom, 32
  %i.bql = ashr exact i32 %i.bqk, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.ff:                                            ; preds = %bb.et
  %i.bqm = shl i32 %i.bhw, 2                      ; 17 uses
  %i.bqn = sdiv i32 %i.bhw, 2
  %i.bqo = add nuw nsw i32 %i.bhx, 1
  %i.bqp = add nuw nsw i32 %i.bqo, %i.biv
  %i.bqq = lshr i32 %i.bqp, 1
  %i.bqr = load i32, ptr @ett_281, align 4
  %i.bqs = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.bqn, i32 noundef %i.bqq, i32 noundef %i.bqr, ptr noundef null, ptr noundef nonnull @.str.567) ; 15 uses
  %i.bqt = sdiv i32 %i.bqm, 8                     ; 2 uses
  %i.bqu = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bqt)
  %i.bqv = zext i16 %i.bqu to i32
  %i.bqw = srem i32 %i.bqm, 8                     ; 2 uses
  %i.bqx = sub nsw i32 12, %i.bqw
  %i.bqy = lshr i32 %i.bqv, %i.bqx
  %i.bqz = and i32 %i.bqy, 15
  %i.bra = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %30 = trunc nsw i32 %i.bqw to i8
  %.lhs.trunc.i369 = or disjoint i8 %30, 3
  %31 = sdiv i8 %.lhs.trunc.i369, 8
  %narrow.i370 = add nuw nsw i8 %31, 1
  %32 = zext nneg i8 %narrow.i370 to i32
  %i.brb = tail call ptr @proto_tree_add_uint(ptr noundef %i.bqs, i32 noundef %i.bra, ptr noundef %3, i32 noundef %i.bqt, i32 noundef %32, i32 noundef %i.bqz) ; 0 uses
  %i.brc = add i32 %i.bqm, 4                      ; 2 uses
  %i.brd = sdiv i32 %i.brc, 8                     ; 2 uses
  %i.bre = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.brd)
  %i.brf = zext i16 %i.bre to i32
  %i.brg = srem i32 %i.brc, 8                     ; 2 uses
  %i.brh = sub nsw i32 12, %i.brg
  %i.bri = lshr i32 %i.brf, %i.brh
  %i.brj = and i32 %i.bri, 15
  %i.brk = load i32, ptr @hf_dlmap_ie_length, align 4
  %33 = trunc nsw i32 %i.brg to i8
  %.lhs.trunc76.i = or disjoint i8 %33, 3
  %34 = sdiv i8 %.lhs.trunc76.i, 8
  %narrow78.i = add nuw nsw i8 %34, 1
  %35 = zext nneg i8 %narrow78.i to i32
  %i.brl = tail call ptr @proto_tree_add_uint(ptr noundef %i.bqs, i32 noundef %i.brk, ptr noundef %3, i32 noundef %i.brd, i32 noundef %35, i32 noundef %i.brj) ; 0 uses
  %i.brm = add i32 %i.bqm, 8
  %i.brn = load i32, ptr @hf_dlmap_data_location_another_bs_segment, align 4
  %i.bro = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.brn, ptr noundef %3, i32 noundef %i.brm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.brp = add i32 %i.bqm, 10
  %i.brq = load i32, ptr @hf_dlmap_data_location_another_bs_used_subchannels, align 4
  %i.brr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.brq, ptr noundef %3, i32 noundef %i.brp, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.brs = add i32 %i.bqm, 16
  %i.brt = load i32, ptr @hf_dlmap_data_location_another_bs_diuc, align 4
  %i.bru = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.brt, ptr noundef %3, i32 noundef %i.brs, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.brv = add i32 %i.bqm, 20
  %i.brw = load i32, ptr @hf_dlmap_data_location_another_bs_frame_advance, align 4
  %i.brx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.brw, ptr noundef %3, i32 noundef %i.brv, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bry = add i32 %i.bqm, 23
  %i.brz = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.bsa = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.brz, ptr noundef %3, i32 noundef %i.bry, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bsb = add i32 %i.bqm, 24
  %i.bsc = load i32, ptr @hf_dlmap_data_location_another_bs_ofdma_symbol_offset, align 4
  %i.bsd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bsc, ptr noundef %3, i32 noundef %i.bsb, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bse = add i32 %i.bqm, 32
  %i.bsf = load i32, ptr @hf_dlmap_data_location_another_bs_subchannel_offset, align 4
  %i.bsg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bsf, ptr noundef %3, i32 noundef %i.bse, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bsh = add i32 %i.bqm, 38
  %i.bsi = load i32, ptr @hf_dlmap_data_location_another_bs_boosting, align 4
  %i.bsj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bsi, ptr noundef %3, i32 noundef %i.bsh, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bsk = add i32 %i.bqm, 41
  %i.bsl = load i32, ptr @hf_dlmap_data_location_another_bs_preamble_index, align 4
  %i.bsm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bsl, ptr noundef %3, i32 noundef %i.bsk, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.bsn = add i32 %i.bqm, 48
  %i.bso = load i32, ptr @hf_dlmap_data_location_another_bs_num_ofdma_symbols, align 4
  %i.bsp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bso, ptr noundef %3, i32 noundef %i.bsn, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bsq = add i32 %i.bqm, 56
  %i.bsr = load i32, ptr @hf_dlmap_data_location_another_bs_num_subchannels, align 4
  %i.bss = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bsr, ptr noundef %3, i32 noundef %i.bsq, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bst = add i32 %i.bqm, 62
  %i.bsu = load i32, ptr @hf_dlmap_data_location_another_bs_repetition_coding_indication, align 4
  %i.bsv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bsu, ptr noundef %3, i32 noundef %i.bst, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bsw = add i32 %i.bqm, 64
  %i.bsx = load i32, ptr @hf_dlmap_data_location_another_bs_cid, align 4
  %i.bsy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bqs, i32 noundef %i.bsx, ptr noundef %3, i32 noundef %i.bsw, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.bsz = add i32 %i.bqm, 80
  %i.bta = ashr exact i32 %i.bsz, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.fg:                                            ; preds = %bb.et
  %i.btb = load i32, ptr @INC_CID, align 4
  %.not.i363 = icmp eq i32 %i.btb, 0
  %i.btc = zext i1 %.not.i363 to i32              ; 2 uses
  store i32 %i.btc, ptr @INC_CID, align 4
  %i.btd = sdiv i32 %i.bhw, 2                     ; 3 uses
  %i.bte = add nuw nsw i32 %i.bhx, 1
  %i.btf = add nuw nsw i32 %i.bte, %i.biv
  %i.btg = lshr i32 %i.btf, 1
  %i.bth = load i32, ptr @ett_282, align 4
  %i.bti = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.btd, i32 noundef %i.btg, i32 noundef %i.bth, ptr noundef null, ptr noundef nonnull @.str.568, i32 noundef %i.btc) ; 2 uses
  %i.btj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.btd) ; 2 uses
  %i.btk = and i8 %i.btj, 15
  %i.btl = lshr i8 %i.btj, 4
  %.in.i364 = select i1 %.not301, i8 %i.btl, i8 %i.btk
  %i.btm = zext nneg i8 %.in.i364 to i32
  %i.btn = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %i.bto = tail call ptr @proto_tree_add_uint(ptr noundef %i.bti, i32 noundef %i.btn, ptr noundef %3, i32 noundef %i.btd, i32 noundef 1, i32 noundef %i.btm) ; 0 uses
  br i1 %.not301, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.btp = sdiv i32 %i.bif, 2                     ; 2 uses
  %i.btq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.btp)
  %i.btr = and i8 %i.btq, 15
  br label %CID_Switch_IE.exit

bb.fi:                                            ; preds = %bb.fg
  %i.bts = ashr exact i32 %i.bif, 1               ; 2 uses
  %i.btt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bts)
  %i.btu = lshr i8 %i.btt, 4
  br label %CID_Switch_IE.exit

CID_Switch_IE.exit:                               ; preds = %bb.fh, %bb.fi
  %.pre-phi.i366 = phi i32 [ %i.bts, %bb.fi ], [ %i.btp, %bb.fh ]
  %.in30.i = phi i8 [ %i.btu, %bb.fi ], [ %i.btr, %bb.fh ]
  %i.btv = zext nneg i8 %.in30.i to i32
  %i.btw = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.btx = tail call ptr @proto_tree_add_uint(ptr noundef %i.bti, i32 noundef %i.btw, ptr noundef %3, i32 noundef %.pre-phi.i366, i32 noundef 1, i32 noundef %i.btv) ; 0 uses
  %i.bty = add i32 %2, 3
  br label %UL_interference_and_noise_level_IE.exit

bb.fj:                                            ; preds = %bb.et
  %i.btz = shl i32 %i.bhw, 2                      ; 4 uses
  %i.bua = sdiv i32 %i.bhw, 2
  %i.bub = add nuw nsw i32 %i.bhx, 1
  %i.buc = add nuw nsw i32 %i.bub, %i.biv
  %i.bud = lshr i32 %i.buc, 1
  %i.bue = load i32, ptr @ett_285, align 4
  %i.buf = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.bua, i32 noundef %i.bud, i32 noundef %i.bue, ptr noundef null, ptr noundef nonnull @.str.569) ; 9 uses
  %i.bug = sdiv i32 %i.btz, 8                     ; 2 uses
  %i.buh = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bug)
  %i.bui = zext i16 %i.buh to i32
  %i.buj = srem i32 %i.btz, 8                     ; 2 uses
  %i.buk = sub nsw i32 12, %i.buj
  %i.bul = lshr i32 %i.bui, %i.buk
  %i.bum = and i32 %i.bul, 15
  %i.bun = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %36 = trunc nsw i32 %i.buj to i8
  %.lhs.trunc.i375 = or disjoint i8 %36, 3
  %37 = sdiv i8 %.lhs.trunc.i375, 8
  %narrow.i376 = add nuw nsw i8 %37, 1
  %38 = zext nneg i8 %narrow.i376 to i32
  %i.buo = tail call ptr @proto_tree_add_uint(ptr noundef %i.buf, i32 noundef %i.bun, ptr noundef %3, i32 noundef %i.bug, i32 noundef %38, i32 noundef %i.bum) ; 0 uses
  %i.bup = add i32 %i.btz, 4                      ; 2 uses
  %i.buq = sdiv i32 %i.bup, 8                     ; 2 uses
  %i.bur = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.buq)
  %i.bus = zext i16 %i.bur to i32
  %i.but = srem i32 %i.bup, 8                     ; 2 uses
  %i.buu = sub nsw i32 12, %i.but
  %i.buv = lshr i32 %i.bus, %i.buu
  %i.buw = and i32 %i.buv, 15
  %i.bux = load i32, ptr @hf_dlmap_ie_length, align 4
  %39 = trunc nsw i32 %i.but to i8
  %.lhs.trunc87.i = or disjoint i8 %39, 3
  %40 = sdiv i8 %.lhs.trunc87.i, 8
  %narrow89.i = add nuw nsw i8 %40, 1
  %41 = zext nneg i8 %narrow89.i to i32
  %i.buy = tail call ptr @proto_tree_add_uint(ptr noundef %i.buf, i32 noundef %i.bux, ptr noundef %3, i32 noundef %i.buq, i32 noundef %41, i32 noundef %i.buw) ; 0 uses
  %i.buz = add i32 %i.btz, 8                      ; 3 uses
  %i.bva = shl nuw nsw i32 %i.biv, 2
  %i.bvb = add nsw i32 %i.bva, -4                 ; 2 uses
  %i.bvc = icmp slt i32 %i.buz, %i.bvb
  br i1 %i.bvc, label %.lr.ph.i368, label %HARQ_Map_Pointer_IE.exit

.lr.ph.i368:                                      ; preds = %bb.fj, %bb.fk
  %.088.i = phi i32 [ %.1.i369, %bb.fk ], [ %i.buz, %bb.fj ] ; 9 uses
  %i.bvd = load i32, ptr @hf_dlmap_harq_map_pointer_diuc, align 4
  %i.bve = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.buf, i32 noundef %i.bvd, ptr noundef %3, i32 noundef %.088.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bvf = add nsw i32 %.088.i, 4
  %i.bvg = load i32, ptr @hf_dlmap_harq_map_pointer_num_slots, align 4
  %i.bvh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.buf, i32 noundef %i.bvg, ptr noundef %3, i32 noundef %i.bvf, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bvi = add nsw i32 %.088.i, 12
  %i.bvj = load i32, ptr @hf_dlmap_harq_map_pointer_repetition_coding_indication, align 4
  %i.bvk = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.buf, i32 noundef %i.bvj, ptr noundef %3, i32 noundef %i.bvi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bvl = add nsw i32 %.088.i, 14                ; 3 uses
  %i.bvm = sdiv i32 %i.bvl, 8
  %i.bvn = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bvm)
  %i.bvo = zext i16 %i.bvn to i32
  %i.bvp = srem i32 %i.bvl, 8
  %i.bvq = sub nsw i32 14, %i.bvp
  %i.bvr = lshr i32 %i.bvo, %i.bvq
  %i.bvs = and i32 %i.bvr, 3
  %i.bvt = load i32, ptr @hf_dlmap_harq_map_pointer_map_version, align 4
  %i.bvu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.buf, i32 noundef %i.bvt, ptr noundef %3, i32 noundef %i.bvl, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bvv = add nsw i32 %.088.i, 16                ; 2 uses
  %i.bvw = icmp eq i32 %i.bvs, 2
  br i1 %i.bvw, label %switch.lookup, label %bb.fk

switch.lookup:                                    ; preds = %.lr.ph.i368
  %i.bvx = load i32, ptr @hf_dlmap_harq_map_pointer_idle_users, align 4
  %i.bvy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.buf, i32 noundef %i.bvx, ptr noundef %3, i32 noundef %i.bvv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bvz = add nsw i32 %.088.i, 17
  %i.bwa = load i32, ptr @hf_dlmap_harq_map_pointer_sleep_users, align 4
  %i.bwb = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.buf, i32 noundef %i.bwa, ptr noundef %3, i32 noundef %i.bvz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bwc = add nsw i32 %.088.i, 18                ; 3 uses
  %i.bwd = sdiv i32 %i.bwc, 8
  %i.bwe = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bwd)
  %i.bwf = zext i16 %i.bwe to i32
  %i.bwg = srem i32 %i.bwc, 8
  %i.bwh = sub nsw i32 14, %i.bwg
  %i.bwi = lshr i32 %i.bwf, %i.bwh
  %i.bwj = and i32 %i.bwi, 3                      ; 3 uses
  %i.bwk = load i32, ptr @hf_dlmap_harq_map_pointer_cid_mask_length, align 4
  %i.bwl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.buf, i32 noundef %i.bwk, ptr noundef %3, i32 noundef %i.bwc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bwm = add nsw i32 %.088.i, 20                ; 2 uses
  %i.bwn = load i32, ptr @hf_cid_mask, align 4
  %i.bwo = sdiv i32 %i.bwm, 8
  %i.bwp = srem i32 %i.bwm, 8
  %i.bwq = zext nneg i32 %i.bwj to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_dlmap_ie, i64 %i.bwq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bwr = zext nneg i32 %i.bwj to i64
  %switch.gep21 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_dlmap_ie.1, i64 %i.bwr
  %switch.load22 = load ptr, ptr %switch.gep21, align 8
  %i.bws = zext nneg i32 %i.bwj to i64
  %switch.gep23 = getelementptr inbounds nuw i8, ptr @switch.table.dissect_dlmap_ie.2, i64 %i.bws
  %switch.load24 = load i8, ptr %switch.gep23, align 1
  %switch.ext25 = zext i8 %switch.load24 to i32
  %i.bwt = add nsw i32 %i.bwp, %switch.ext
  %i.bwu = lshr i32 %i.bwt, 3
  %i.bwv = add nuw nsw i32 %i.bwu, 1
  %i.bww = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.biu, i32 noundef %i.bwn, ptr noundef %3, i32 noundef %i.bwo, i32 noundef %i.bwv, ptr noundef null, ptr noundef nonnull %switch.load22) ; 0 uses
  %i.bwx = add nsw i32 %.088.i, %switch.ext25
  br label %bb.fk

bb.fk:                                            ; preds = %switch.lookup, %.lr.ph.i368
  %.1.i369 = phi i32 [ %i.bvv, %.lr.ph.i368 ], [ %i.bwx, %switch.lookup ] ; 3 uses
  %i.bwy = icmp slt i32 %.1.i369, %i.bvb
  br i1 %i.bwy, label %.lr.ph.i368, label %HARQ_Map_Pointer_IE.exit, !llvm.loop !23

HARQ_Map_Pointer_IE.exit:                         ; preds = %bb.fk, %bb.fj
  %.0.lcssa.i = phi i32 [ %i.buz, %bb.fj ], [ %.1.i369, %bb.fk ]
  %i.bwz = lshr i32 %.0.lcssa.i, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.fl:                                            ; preds = %bb.et
  %i.bxa = shl i32 %i.bhw, 2                      ; 8 uses
  %i.bxb = sdiv i32 %i.bhw, 2
  %i.bxc = add nuw nsw i32 %i.bhx, 1
  %i.bxd = add nuw nsw i32 %i.bxc, %i.biv
  %i.bxe = lshr i32 %i.bxd, 1
  %i.bxf = load i32, ptr @ett_286, align 4
  %i.bxg = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.bxb, i32 noundef %i.bxe, i32 noundef %i.bxf, ptr noundef null, ptr noundef nonnull @.str.574) ; 6 uses
  %i.bxh = sdiv i32 %i.bxa, 8                     ; 2 uses
  %i.bxi = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bxh)
  %i.bxj = zext i16 %i.bxi to i32
  %i.bxk = srem i32 %i.bxa, 8                     ; 2 uses
  %i.bxl = sub nsw i32 12, %i.bxk
  %i.bxm = lshr i32 %i.bxj, %i.bxl
  %i.bxn = and i32 %i.bxm, 15
  %i.bxo = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %42 = trunc nsw i32 %i.bxk to i8
  %.lhs.trunc.i381 = or disjoint i8 %42, 3
  %43 = sdiv i8 %.lhs.trunc.i381, 8
  %narrow.i382 = add nuw nsw i8 %43, 1
  %44 = zext nneg i8 %narrow.i382 to i32
  %i.bxp = tail call ptr @proto_tree_add_uint(ptr noundef %i.bxg, i32 noundef %i.bxo, ptr noundef %3, i32 noundef %i.bxh, i32 noundef %44, i32 noundef %i.bxn) ; 0 uses
  %i.bxq = add i32 %i.bxa, 4                      ; 2 uses
  %i.bxr = sdiv i32 %i.bxq, 8                     ; 2 uses
  %i.bxs = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bxr)
  %i.bxt = zext i16 %i.bxs to i32
  %i.bxu = srem i32 %i.bxq, 8                     ; 2 uses
  %i.bxv = sub nsw i32 12, %i.bxu
  %i.bxw = lshr i32 %i.bxt, %i.bxv
  %i.bxx = and i32 %i.bxw, 15
  %i.bxy = load i32, ptr @hf_dlmap_ie_length, align 4
  %45 = trunc nsw i32 %i.bxu to i8
  %.lhs.trunc48.i = or disjoint i8 %45, 3
  %46 = sdiv i8 %.lhs.trunc48.i, 8
  %narrow50.i = add nuw nsw i8 %46, 1
  %47 = zext nneg i8 %narrow50.i to i32
  %i.bxz = tail call ptr @proto_tree_add_uint(ptr noundef %i.bxg, i32 noundef %i.bxy, ptr noundef %3, i32 noundef %i.bxr, i32 noundef %47, i32 noundef %i.bxx) ; 0 uses
  %i.bya = add i32 %i.bxa, 8                      ; 3 uses
  %i.byb = sdiv i32 %i.bya, 8
  %i.byc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.byb)
  %i.byd = zext i8 %i.byc to i32
  %i.bye = srem i32 %i.bya, 8
  %i.byf = sub nsw i32 7, %i.bye
  %i.byg = load i32, ptr @hf_dlmap_phymod_dl_preamble_modifier_type, align 4
  %i.byh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bxg, i32 noundef %i.byg, ptr noundef %3, i32 noundef %i.bya, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.byi = add i32 %i.bxa, 9
  %i.byj = shl nuw nsw i32 1, %i.byf
  %i.byk = and i32 %i.byj, %i.byd
  %i.byl = icmp eq i32 %i.byk, 0
  %hf_dlmap_phymod_dl_preamble_frequency_shift_index.val.i = load i32, ptr @hf_dlmap_phymod_dl_preamble_frequency_shift_index, align 4
  %hf_dlmap_phymod_dl_preamble_time_shift_index.val.i = load i32, ptr @hf_dlmap_phymod_dl_preamble_time_shift_index, align 4
  %i.bym = select i1 %i.byl, i32 %hf_dlmap_phymod_dl_preamble_frequency_shift_index.val.i, i32 %hf_dlmap_phymod_dl_preamble_time_shift_index.val.i
  %i.byn = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bxg, i32 noundef %i.bym, ptr noundef %3, i32 noundef %i.byi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.0.i371 = add i32 %i.bxa, 13
  %i.byo = load i32, ptr @hf_dlmap_phymod_dl_pilot_pattern_modifier, align 4
  %i.byp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bxg, i32 noundef %i.byo, ptr noundef %3, i32 noundef %.0.i371, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.byq = add i32 %i.bxa, 14
  %i.byr = load i32, ptr @hf_dlmap_phymod_dl_pilot_pattern_index, align 4
  %i.bys = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bxg, i32 noundef %i.byr, ptr noundef %3, i32 noundef %i.byq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.byt = add i32 %i.bxa, 16
  %i.byu = ashr exact i32 %i.byt, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.fm:                                            ; preds = %bb.et
  %i.byv = shl i32 %i.bhw, 2                      ; 8 uses
  %i.byw = sdiv i32 %i.bhw, 2
  %i.byx = add nuw nsw i32 %i.bhx, 1
  %i.byy = add nuw nsw i32 %i.byx, %i.biv
  %i.byz = lshr i32 %i.byy, 1
  %i.bza = load i32, ptr @ett_286x, align 4
  %i.bzb = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.byw, i32 noundef %i.byz, i32 noundef %i.bza, ptr noundef null, ptr noundef nonnull @.str.575) ; 6 uses
  %i.bzc = sdiv i32 %i.byv, 8                     ; 2 uses
  %i.bzd = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bzc)
  %i.bze = zext i16 %i.bzd to i32
  %i.bzf = srem i32 %i.byv, 8                     ; 2 uses
  %i.bzg = sub nsw i32 12, %i.bzf
  %i.bzh = lshr i32 %i.bze, %i.bzg
  %i.bzi = and i32 %i.bzh, 15
  %i.bzj = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %48 = trunc nsw i32 %i.bzf to i8
  %.lhs.trunc.i384 = or disjoint i8 %48, 3
  %49 = sdiv i8 %.lhs.trunc.i384, 8
  %narrow.i385 = add nuw nsw i8 %49, 1
  %50 = zext nneg i8 %narrow.i385 to i32
  %i.bzk = tail call ptr @proto_tree_add_uint(ptr noundef %i.bzb, i32 noundef %i.bzj, ptr noundef %3, i32 noundef %i.bzc, i32 noundef %50, i32 noundef %i.bzi) ; 0 uses
  %i.bzl = add i32 %i.byv, 4                      ; 2 uses
  %i.bzm = sdiv i32 %i.bzl, 8                     ; 2 uses
  %i.bzn = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.bzm)
  %i.bzo = zext i16 %i.bzn to i32
  %i.bzp = srem i32 %i.bzl, 8                     ; 2 uses
  %i.bzq = sub nsw i32 12, %i.bzp
  %i.bzr = lshr i32 %i.bzo, %i.bzq
  %i.bzs = and i32 %i.bzr, 15
  %i.bzt = load i32, ptr @hf_dlmap_ie_length, align 4
  %51 = trunc nsw i32 %i.bzp to i8
  %.lhs.trunc44.i = or disjoint i8 %51, 3
  %52 = sdiv i8 %.lhs.trunc44.i, 8
  %narrow46.i = add nuw nsw i8 %52, 1
  %53 = zext nneg i8 %narrow46.i to i32
  %i.bzu = tail call ptr @proto_tree_add_uint(ptr noundef %i.bzb, i32 noundef %i.bzt, ptr noundef %3, i32 noundef %i.bzm, i32 noundef %53, i32 noundef %i.bzs) ; 0 uses
  %i.bzv = add i32 %i.byv, 8
  %i.bzw = load i32, ptr @hf_dlmap_broadcast_ctrl_ptr_dcd_ucd_transmission_frame, align 4
  %i.bzx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bzb, i32 noundef %i.bzw, ptr noundef %3, i32 noundef %i.bzv, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.bzy = add i32 %i.byv, 15                     ; 3 uses
  %i.bzz = sdiv i32 %i.bzy, 8
  %i.caa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bzz)
  %i.cab = zext i8 %i.caa to i32
  %i.cac = srem i32 %i.bzy, 8
  %i.cad = sub nsw i32 7, %i.cac
  %i.cae = load i32, ptr @hf_dlmap_broadcast_ctrl_ptr_skip_broadcast_system_update, align 4
  %i.caf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bzb, i32 noundef %i.cae, ptr noundef %3, i32 noundef %i.bzy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cag = add i32 %i.byv, 16                     ; 2 uses
  %i.cah = shl nuw nsw i32 1, %i.cad
  %i.cai = and i32 %i.cah, %i.cab
  %i.caj = icmp eq i32 %i.cai, 0
  br i1 %i.caj, label %bb.fn, label %Broadcast_Control_Pointer_IE.exit

bb.fn:                                            ; preds = %bb.fm
  %i.cak = load i32, ptr @hf_dlmap_broadcast_ctrl_ptr_broadcast_system_update_type, align 4
  %i.cal = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bzb, i32 noundef %i.cak, ptr noundef %3, i32 noundef %i.cag, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cam = add i32 %i.byv, 17
  %i.can = load i32, ptr @hf_dlmap_broadcast_ctrl_ptr_broadcast_system_update_transmission_frame, align 4
  %i.cao = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bzb, i32 noundef %i.can, ptr noundef %3, i32 noundef %i.cam, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.cap = add i32 %i.byv, 24
  br label %Broadcast_Control_Pointer_IE.exit

Broadcast_Control_Pointer_IE.exit:                ; preds = %bb.fm, %bb.fn
  %.0.i372 = phi i32 [ %i.cap, %bb.fn ], [ %i.cag, %bb.fm ]
  %i.caq = sdiv i32 %.0.i372, 4
  br label %UL_interference_and_noise_level_IE.exit

bb.fo:                                            ; preds = %bb.et
  %i.car = shl i32 %i.bhw, 2                      ; 19 uses
  %i.cas = sdiv i32 %i.bhw, 2
  %i.cat = add nuw nsw i32 %i.bhx, 1
  %i.cau = add nuw nsw i32 %i.cat, %i.biv
  %i.cav = lshr i32 %i.cau, 1
  %i.caw = load i32, ptr @ett_286b, align 4
  %i.cax = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.cas, i32 noundef %i.cav, i32 noundef %i.caw, ptr noundef null, ptr noundef nonnull @.str.576) ; 17 uses
  %i.cay = sdiv i32 %i.car, 8                     ; 2 uses
  %i.caz = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.cay)
  %i.cba = zext i16 %i.caz to i32
  %i.cbb = srem i32 %i.car, 8                     ; 2 uses
  %i.cbc = sub nsw i32 12, %i.cbb
  %i.cbd = lshr i32 %i.cba, %i.cbc
  %i.cbe = and i32 %i.cbd, 15
  %i.cbf = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %54 = trunc nsw i32 %i.cbb to i8
  %.lhs.trunc.i387 = or disjoint i8 %54, 3
  %55 = sdiv i8 %.lhs.trunc.i387, 8
  %narrow.i388 = add nuw nsw i8 %55, 1
  %56 = zext nneg i8 %narrow.i388 to i32
  %i.cbg = tail call ptr @proto_tree_add_uint(ptr noundef %i.cax, i32 noundef %i.cbf, ptr noundef %3, i32 noundef %i.cay, i32 noundef %56, i32 noundef %i.cbe) ; 0 uses
  %i.cbh = add i32 %i.car, 4                      ; 2 uses
  %i.cbi = sdiv i32 %i.cbh, 8                     ; 2 uses
  %i.cbj = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.cbi)
  %i.cbk = zext i16 %i.cbj to i32
  %i.cbl = srem i32 %i.cbh, 8                     ; 2 uses
  %i.cbm = sub nsw i32 12, %i.cbl
  %i.cbn = lshr i32 %i.cbk, %i.cbm
  %i.cbo = and i32 %i.cbn, 15
  %i.cbp = load i32, ptr @hf_dlmap_ie_length, align 4
  %57 = trunc nsw i32 %i.cbl to i8
  %.lhs.trunc84.i = or disjoint i8 %57, 3
  %58 = sdiv i8 %.lhs.trunc84.i, 8
  %narrow86.i = add nuw nsw i8 %58, 1
  %59 = zext nneg i8 %narrow86.i to i32
  %i.cbq = tail call ptr @proto_tree_add_uint(ptr noundef %i.cax, i32 noundef %i.cbp, ptr noundef %3, i32 noundef %i.cbi, i32 noundef %59, i32 noundef %i.cbo) ; 0 uses
  %i.cbr = add i32 %i.car, 8
  %i.cbs = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_cid, align 4
  %i.cbt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cbs, ptr noundef %3, i32 noundef %i.cbr, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.cbu = add i32 %i.car, 24
  %i.cbv = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_diuc, align 4
  %i.cbw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cbv, ptr noundef %3, i32 noundef %i.cbu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cbx = add i32 %i.car, 28
  %i.cby = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_segment, align 4
  %i.cbz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cby, ptr noundef %3, i32 noundef %i.cbx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cca = add i32 %i.car, 30
  %i.ccb = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_boosting, align 4
  %i.ccc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.ccb, ptr noundef %3, i32 noundef %i.cca, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ccd = add i32 %i.car, 33
  %i.cce = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_idcell, align 4
  %i.ccf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cce, ptr noundef %3, i32 noundef %i.ccd, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.ccg = add i32 %i.car, 38
  %i.cch = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_dl_permbase, align 4
  %i.cci = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cch, ptr noundef %3, i32 noundef %i.ccg, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.ccj = add i32 %i.car, 43
  %i.cck = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_prbs_id, align 4
  %i.ccl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cck, ptr noundef %3, i32 noundef %i.ccj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ccm = add i32 %i.car, 45
  %i.ccn = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_repetition_coding_indication, align 4
  %i.cco = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.ccn, ptr noundef %3, i32 noundef %i.ccm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ccp = add i32 %i.car, 47
  %i.ccq = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_used_subchannels, align 4
  %i.ccr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.ccq, ptr noundef %3, i32 noundef %i.ccp, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.ccs = add i32 %i.car, 53
  %i.cct = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_ofdma_symbol_offset, align 4
  %i.ccu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cct, ptr noundef %3, i32 noundef %i.ccs, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ccv = add i32 %i.car, 61
  %i.ccw = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.ccx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.ccw, ptr noundef %3, i32 noundef %i.ccv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ccy = add i32 %i.car, 62
  %i.ccz = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_num_ofdma_symbols, align 4
  %i.cda = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.ccz, ptr noundef %3, i32 noundef %i.ccy, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.cdb = add i32 %i.car, 69
  %i.cdc = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_subchannel_offset, align 4
  %i.cdd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cdc, ptr noundef %3, i32 noundef %i.cdb, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cde = add i32 %i.car, 75
  %i.cdf = load i32, ptr @hf_dlmap_dl_pusc_burst_allocation_num_subchannels, align 4
  %i.cdg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cdf, ptr noundef %3, i32 noundef %i.cde, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cdh = add i32 %i.car, 81
  %i.cdi = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.cdj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cax, i32 noundef %i.cdi, ptr noundef %3, i32 noundef %i.cdh, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.cdk = add i32 %i.car, 88
  %i.cdl = ashr exact i32 %i.cdk, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.fp:                                            ; preds = %bb.et
  %i.cdm = shl i32 %i.bhw, 2                      ; 13 uses
  %i.cdn = sdiv i32 %i.bhw, 2
  %i.cdo = add nuw nsw i32 %i.bhx, 1
  %i.cdp = add nuw nsw i32 %i.cdo, %i.biv
  %i.cdq = lshr i32 %i.cdp, 1
  %i.cdr = load i32, ptr @ett_286z, align 4
  %i.cds = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.cdn, i32 noundef %i.cdq, i32 noundef %i.cdr, ptr noundef null, ptr noundef nonnull @.str.577) ; 11 uses
  %i.cdt = sdiv i32 %i.cdm, 8                     ; 2 uses
  %i.cdu = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.cdt)
  %i.cdv = zext i16 %i.cdu to i32
  %i.cdw = srem i32 %i.cdm, 8                     ; 2 uses
  %i.cdx = sub nsw i32 12, %i.cdw
  %i.cdy = lshr i32 %i.cdv, %i.cdx
  %i.cdz = and i32 %i.cdy, 15
  %i.cea = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %60 = trunc nsw i32 %i.cdw to i8
  %.lhs.trunc.i389 = or disjoint i8 %60, 3
  %61 = sdiv i8 %.lhs.trunc.i389, 8
  %narrow.i390 = add nuw nsw i8 %61, 1
  %62 = zext nneg i8 %narrow.i390 to i32
  %i.ceb = tail call ptr @proto_tree_add_uint(ptr noundef %i.cds, i32 noundef %i.cea, ptr noundef %3, i32 noundef %i.cdt, i32 noundef %62, i32 noundef %i.cdz) ; 0 uses
  %i.cec = add i32 %i.cdm, 4                      ; 2 uses
  %i.ced = sdiv i32 %i.cec, 8                     ; 2 uses
  %i.cee = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.ced)
  %i.cef = zext i16 %i.cee to i32
  %i.ceg = srem i32 %i.cec, 8                     ; 2 uses
  %i.ceh = sub nsw i32 12, %i.ceg
  %i.cei = lshr i32 %i.cef, %i.ceh
  %i.cej = and i32 %i.cei, 15
  %i.cek = load i32, ptr @hf_dlmap_ie_length, align 4
  %63 = trunc nsw i32 %i.ceg to i8
  %.lhs.trunc60.i = or disjoint i8 %63, 3
  %64 = sdiv i8 %.lhs.trunc60.i, 8
  %narrow62.i = add nuw nsw i8 %64, 1
  %65 = zext nneg i8 %narrow62.i to i32
  %i.cel = tail call ptr @proto_tree_add_uint(ptr noundef %i.cds, i32 noundef %i.cek, ptr noundef %3, i32 noundef %i.ced, i32 noundef %65, i32 noundef %i.cej) ; 0 uses
  %i.cem = add i32 %i.cdm, 8
  %i.cen = load i32, ptr @hf_dlmap_pusc_asca_alloc_diuc, align 4
  %i.ceo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cen, ptr noundef %3, i32 noundef %i.cem, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cep = add i32 %i.cdm, 12
  %i.ceq = load i32, ptr @hf_dlmap_pusc_asca_alloc_short_basic_cid, align 4
  %i.cer = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.ceq, ptr noundef %3, i32 noundef %i.cep, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.ces = add i32 %i.cdm, 24
  %i.cet = load i32, ptr @hf_dlmap_pusc_asca_alloc_ofdma_symbol_offset, align 4
  %i.ceu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cet, ptr noundef %3, i32 noundef %i.ces, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.cev = add i32 %i.cdm, 32
  %i.cew = load i32, ptr @hf_dlmap_pusc_asca_alloc_subchannel_offset, align 4
  %i.cex = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cew, ptr noundef %3, i32 noundef %i.cev, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cey = add i32 %i.cdm, 38
  %i.cez = load i32, ptr @hf_dlmap_pusc_asca_alloc_num_ofdma_symbols, align 4
  %i.cfa = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cez, ptr noundef %3, i32 noundef %i.cey, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.cfb = add i32 %i.cdm, 45
  %i.cfc = load i32, ptr @hf_dlmap_pusc_asca_alloc_num_symbols, align 4
  %i.cfd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cfc, ptr noundef %3, i32 noundef %i.cfb, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cfe = add i32 %i.cdm, 51
  %i.cff = load i32, ptr @hf_dlmap_pusc_asca_alloc_repetition_coding_information, align 4
  %i.cfg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cff, ptr noundef %3, i32 noundef %i.cfe, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cfh = add i32 %i.cdm, 53
  %i.cfi = load i32, ptr @hf_dlmap_pusc_asca_alloc_permutation_id, align 4
  %i.cfj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cfi, ptr noundef %3, i32 noundef %i.cfh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cfk = add i32 %i.cdm, 57
  %i.cfl = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.cfm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.cds, i32 noundef %i.cfl, ptr noundef %3, i32 noundef %i.cfk, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.cfn = add i32 %i.cdm, 64
  %i.cfo = ashr exact i32 %i.cfn, 2
  br label %UL_interference_and_noise_level_IE.exit

bb.fq:                                            ; preds = %bb.et
  %i.cfp = sdiv i32 %i.bhw, 2                     ; 3 uses
  %i.cfq = add nuw nsw i32 %i.bhx, 1
  %i.cfr = add nuw nsw i32 %i.cfq, %i.biv
  %i.cfs = lshr i32 %i.cfr, 1
  %i.cft = load i32, ptr @ett_286h, align 4
  %i.cfu = tail call ptr @proto_tree_add_subtree(ptr noundef %i.biu, ptr noundef %3, i32 noundef %i.cfp, i32 noundef %i.cfs, i32 noundef %i.cft, ptr noundef null, ptr noundef nonnull @.str.578) ; 11 uses
  %i.cfv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cfp) ; 2 uses
  %i.cfw = and i8 %i.cfv, 15
  %i.cfx = lshr i8 %i.cfv, 4
  %.in.i374 = select i1 %.not301, i8 %i.cfx, i8 %i.cfw
  %i.cfy = zext nneg i8 %.in.i374 to i32
  %i.cfz = load i32, ptr @hf_dlmap_ie_diuc_ext, align 4
  %i.cga = tail call ptr @proto_tree_add_uint(ptr noundef %i.cfu, i32 noundef %i.cfz, ptr noundef %3, i32 noundef %i.cfp, i32 noundef 1, i32 noundef %i.cfy) ; 0 uses
  br i1 %.not301, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.cgb = sdiv i32 %i.bif, 2                     ; 2 uses
  %i.cgc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cgb)
  %i.cgd = and i8 %i.cgc, 15
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  %i.cge = ashr exact i32 %i.bif, 1               ; 2 uses
  %i.cgf = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cge)
  %i.cgg = lshr i8 %i.cgf, 4
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.pre-phi.i376 = phi i32 [ %i.cge, %bb.fs ], [ %i.cgb, %bb.fr ]
  %.in136.i = phi i8 [ %i.cgg, %bb.fs ], [ %i.cgd, %bb.fr ]
  %i.cgh = zext nneg i8 %.in136.i to i32
  %i.cgi = load i32, ptr @hf_dlmap_ie_length, align 4
  %i.cgj = tail call ptr @proto_tree_add_uint(ptr noundef %i.cfu, i32 noundef %i.cgi, ptr noundef %3, i32 noundef %.pre-phi.i376, i32 noundef 1, i32 noundef %i.cgh) ; 0 uses
  %i.cgk = add i32 %2, 3                          ; 2 uses
  br i1 %.not301, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.cgl = sdiv i32 %i.cgk, 2                     ; 2 uses
  %i.cgm = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.cgl)
  %i.cgn = lshr i16 %i.cgm, 4
  %i.cgo = and i16 %i.cgn, 255
  %i.cgp = zext nneg i16 %i.cgo to i32
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.cgq = ashr exact i32 %i.cgk, 1               ; 2 uses
  %i.cgr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cgq)
  %i.cgs = zext i8 %i.cgr to i32
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.pre-phi155.i = phi i32 [ %i.cgq, %bb.fv ], [ %i.cgl, %bb.fu ]
  %i.cgt = phi i32 [ %i.cgs, %bb.fv ], [ %i.cgp, %bb.fu ] ; 9 uses
  %i.cgu = load i32, ptr @hf_dlmap_ie_bitmap, align 4
  %i.cgv = add nuw nsw i32 %i.bhx, 3
  %i.cgw = lshr i32 %i.cgv, 1                     ; 2 uses
  %i.cgx = tail call ptr @proto_tree_add_uint(ptr noundef %i.cfu, i32 noundef %i.cgu, ptr noundef %3, i32 noundef %.pre-phi155.i, i32 noundef %i.cgw, i32 noundef %i.cgt) ; 0 uses
  %i.cgy = add i32 %2, 5                          ; 3 uses
  %i.cgz = and i32 %i.cgt, 1
  %.not138.i = icmp eq i32 %i.cgz, 0
  br i1 %.not138.i, label %bb.gb, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  br i1 %.not301, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.cha = sdiv i32 %i.cgy, 2                     ; 2 uses
  %i.chb = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.cha)
  %i.chc = lshr i16 %i.chb, 4
  %i.chd = and i16 %i.chc, 255
  %i.che = zext nneg i16 %i.chd to i32
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.chf = ashr exact i32 %i.cgy, 1               ; 2 uses
  %i.chg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.chf)
  %i.chh = zext i8 %i.chg to i32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.pre-phi171.i = phi i32 [ %i.chf, %bb.fz ], [ %i.cha, %bb.fy ]
  %i.chi = phi i32 [ %i.chh, %bb.fz ], [ %i.che, %bb.fy ]
  %i.chj = load i32, ptr @hf_dlmap_ie_bitmap_cqi, align 4
  %i.chk = tail call ptr @proto_tree_add_uint(ptr noundef %i.cfu, i32 noundef %i.chj, ptr noundef %3, i32 noundef %.pre-phi171.i, i32 noundef %i.cgw, i32 noundef %i.chi) ; 0 uses
  %i.chl = add i32 %2, 7
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fw
  %.0.i377 = phi i32 [ %i.chl, %bb.ga ], [ %i.cgy, %bb.fw ] ; 5 uses
  %i.chm = and i32 %i.cgt, 2
  %.not140.i378 = icmp eq i32 %i.chm, 0
  br i1 %.not140.i378, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.chn = and i32 %.0.i377, 1                    ; 2 uses
  %.not141.i379 = icmp eq i32 %i.chn, 0
  br i1 %.not141.i379, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.cho = sdiv i32 %.0.i377, 2                   ; 2 uses
  %i.chp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.cho)
  %i.chq = lshr i16 %i.chp, 4
  %i.chr = and i16 %i.chq, 255
  %i.chs = zext nneg i16 %i.chr to i32
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.cht = ashr exact i32 %.0.i377, 1             ; 2 uses
  %i.chu = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cht)
  %i.chv = zext i8 %i.chu to i32
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.pre-phi169.i = phi i32 [ %i.cht, %bb.ge ], [ %i.cho, %bb.gd ]
  %i.chw = phi i32 [ %i.chv, %bb.ge ], [ %i.chs, %bb.gd ]
  %i.chx = load i32, ptr @hf_dlmap_ie_bitmap_pusc, align 4
  %i.chy = add nuw nsw i32 %i.chn, 3
  %i.chz = lshr i32 %i.chy, 1
  %i.cia = tail call ptr @proto_tree_add_uint(ptr noundef %i.cfu, i32 noundef %i.chx, ptr noundef %3, i32 noundef %.pre-phi169.i, i32 noundef %i.chz, i32 noundef %i.chw) ; 0 uses
  %i.cib = add i32 %.0.i377, 2
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gb
  %.1.i380 = phi i32 [ %i.cib, %bb.gf ], [ %.0.i377, %bb.gb ] ; 5 uses
  %i.cic = and i32 %i.cgt, 4
  %.not142.i381 = icmp eq i32 %i.cic, 0
  br i1 %.not142.i381, label %bb.gl, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.cid = and i32 %.1.i380, 1                    ; 2 uses
  %.not143.i = icmp eq i32 %i.cid, 0
  br i1 %.not143.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.cie = sdiv i32 %.1.i380, 2                   ; 2 uses
  %i.cif = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.cie)
  %i.cig = lshr i16 %i.cif, 4
  %i.cih = and i16 %i.cig, 255
  %i.cii = zext nneg i16 %i.cih to i32
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  %i.cij = ashr exact i32 %.1.i380, 1             ; 2 uses
  %i.cik = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cij)
  %i.cil = zext i8 %i.cik to i32
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.pre-phi167.i = phi i32 [ %i.cij, %bb.gj ], [ %i.cie, %bb.gi ]
  %i.cim = phi i32 [ %i.cil, %bb.gj ], [ %i.cii, %bb.gi ]
  %i.cin = load i32, ptr @hf_dlmap_ie_bitmap_opt_pusc, align 4
  %i.cio = add nuw nsw i32 %i.cid, 3
  %i.cip = lshr i32 %i.cio, 1
  %i.ciq = tail call ptr @proto_tree_add_uint(ptr noundef %i.cfu, i32 noundef %i.cin, ptr noundef %3, i32 noundef %.pre-phi167.i, i32 noundef %i.cip, i32 noundef %i.cim) ; 0 uses
  %i.cir = add i32 %.1.i380, 2
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gg
  %.2.i382 = phi i32 [ %i.cir, %bb.gk ], [ %.1.i380, %bb.gg ] ; 5 uses
  %i.cis = and i32 %i.cgt, 8
  %.not144.i = icmp eq i32 %i.cis, 0
  br i1 %.not144.i, label %bb.gq, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.cit = and i32 %.2.i382, 1                    ; 2 uses
  %.not145.i = icmp eq i32 %i.cit, 0
  br i1 %.not145.i, label %bb.go, label %bb.gn

end_hunk_1
