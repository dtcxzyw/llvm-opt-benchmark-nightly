Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-cdma2k?download=true
inline.NumInlined: 14
inline.NumDeleted: 14
begin_hunk_0_@cdma2k_message_decode:bb.a
  %i.je = sub nuw nsw i32 8, %i.ja
  %i.jf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.av, i32 noundef %i.jd, ptr noundef %0, i32 noundef %i.iz, i32 noundef %i.je, i32 noundef 0) ; 0 uses
  %i.jg = lshr i16 %i.iy, 3
  %narrow = add nuw nsw i16 %i.jg, 1
  %i.jh = zext nneg i16 %narrow to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge164 = phi i32 [ %i.jh, %bb.ad ], [ %i.jc, %bb.ac ] ; 2 uses
  store i32 %storemerge164, ptr %2, align 4
  %i.ji = load i32, ptr @hf_cdma2k_tlac_Pdu, align 4
  %i.jj = tail call ptr @proto_tree_add_item(ptr noundef %i.av, i32 noundef %i.ji, ptr noundef %0, i32 noundef %storemerge164, i32 noundef -1, i32 noundef 0)
  %i.jk = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.jl = tail call ptr @proto_item_add_subtree(ptr noundef %i.jj, i32 noundef %i.jk) ; 13 uses
  %i.jm = load i32, ptr @hf_cdma2k_tlac_Pdu_Length, align 4
  %i.jn = load i32, ptr %2, align 4
  %i.jo = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.jm, ptr noundef %0, i32 noundef %i.jn, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jp = load i32, ptr %2, align 4
  %i.jq = shl i32 %i.jp, 3
  %i.jr = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.jq, i32 noundef 16, i32 noundef 0)
  %i.js = load i32, ptr %2, align 4
  %i.jt = add i32 %i.js, 2                        ; 12 uses
  store i32 %i.jt, ptr %2, align 4
  br i1 %i.y, label %bb.af, label %bb.gc

bb.af:                                            ; preds = %bb.ae
  switch i8 %i.ag, label %bb.gb [
    i8 1, label %bb.ag
    i8 2, label %bb.aq
    i8 3, label %bb.bh
    i8 4, label %bb.bm
    i8 5, label %bb.de
    i8 6, label %bb.ed
    i8 7, label %bb.ee
    i8 9, label %bb.ft
    i8 10, label %bb.fy
    i8 17, label %bb.fz
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ju = load i32, ptr @hf_cdma2k_RegMsg, align 4
  %i.jv = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.ju, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.jw = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.jx = tail call ptr @proto_item_add_subtree(ptr noundef %i.jv, i32 noundef %i.jw) ; 16 uses
  %i.jy = load i32, ptr @hf_cdma2k_Reg_Type, align 4
  %i.jz = load i32, ptr %2, align 4
  %i.ka = shl i32 %i.jz, 3
  %i.kb = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.jy, ptr noundef %0, i32 noundef %i.ka, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.kc = load i32, ptr @hf_cdma2k_Slot_Cycle_Index, align 4
  %i.kd = load i32, ptr %2, align 4
  %i.ke = shl i32 %i.kd, 3
  %i.kf = or disjoint i32 %i.ke, 4
  %i.kg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.kc, ptr noundef %0, i32 noundef %i.kf, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.kh = load i32, ptr @hf_cdma2k_Mob_P_Rev, align 4
  %i.ki = load i32, ptr %2, align 4
  %i.kj = shl i32 %i.ki, 3
  %i.kk = or disjoint i32 %i.kj, 7
  %i.kl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.kh, ptr noundef %0, i32 noundef %i.kk, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.km = load i32, ptr %2, align 4
  %i.kn = shl i32 %i.km, 3
  %i.ko = or disjoint i32 %i.kn, 7
  %i.kp = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ko, i32 noundef 8)
  %i.kq = load i32, ptr %2, align 4
  %i.kr = add i32 %i.kq, 1                        ; 3 uses
  store i32 %i.kr, ptr %2, align 4
  %i.ks = tail call i8 @llvm.umin.i8(i8 %i.v, i8 %i.kp) ; 4 uses
  %i.kt = icmp eq i8 %i.ks, 1
  br i1 %i.kt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ku = load i32, ptr @hf_cdma2k_Ext_Scm, align 4
  %i.kv = shl i32 %i.kr, 3
  %i.kw = or disjoint i32 %i.kv, 7
  %i.kx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.ku, ptr noundef %0, i32 noundef %i.kw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ky = load i32, ptr %2, align 4
  %i.kz = add i32 %i.ky, 1                        ; 2 uses
  store i32 %i.kz, ptr %2, align 4
  %i.la = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.lb = shl i32 %i.kz, 3
  %i.lc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.la, ptr noundef %0, i32 noundef %i.lb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ld = load i32, ptr @hf_cdma2k_Sloted_Mode, align 4
  %i.le = load i32, ptr %2, align 4
  %i.lf = shl i32 %i.le, 3
  %i.lg = or disjoint i32 %i.lf, 1
  %i.lh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.ld, ptr noundef %0, i32 noundef %i.lg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.li = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.lj = load i32, ptr %2, align 4
  %i.lk = shl i32 %i.lj, 3
  %i.ll = or disjoint i32 %i.lk, 2
  %i.lm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.li, ptr noundef %0, i32 noundef %i.ll, i32 noundef 5, i32 noundef 0) ; 0 uses
  %.pre.i = load i32, ptr %2, align 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ln = shl i32 %i.kr, 3
  %i.lo = or disjoint i32 %i.ln, 7
  tail call fastcc void @dissect_cdma2000_scm(ptr noundef %0, ptr noundef %i.jx, i32 noundef %i.lo)
  %i.lp = load i32, ptr %2, align 4
  %i.lq = add i32 %i.lp, 1                        ; 2 uses
  store i32 %i.lq, ptr %2, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.lr = phi i32 [ %i.lq, %bb.ai ], [ %.pre.i, %bb.ah ]
  %i.ls = load i32, ptr @hf_cdma2k_Mob_Term, align 4
  %i.lt = shl i32 %i.lr, 3
  %i.lu = or disjoint i32 %i.lt, 7
  %i.lv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.ls, ptr noundef %0, i32 noundef %i.lu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lw = load i32, ptr %2, align 4
  %i.lx = add i32 %i.lw, 1                        ; 2 uses
  store i32 %i.lx, ptr %2, align 4
  %i.ly = shl i32 %i.lx, 3                        ; 3 uses
  %i.lz = trunc i32 %i.ly to i16                  ; 4 uses
  %i.ma = icmp ugt i8 %i.ks, 3
  br i1 %i.ma, label %bb.ak, label %cdma2k_message_REGISTRATION.exit

bb.ak:                                            ; preds = %bb.aj
  %i.mb = load i32, ptr @hf_cdma2k_Return_Cause, align 4
  %i.mc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.mb, ptr noundef %0, i32 noundef %i.ly, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.md = or disjoint i16 %i.lz, 4                ; 2 uses
  %i.me = icmp ugt i8 %i.ks, 5
  br i1 %i.me, label %bb.al, label %cdma2k_message_REGISTRATION.exit

bb.al:                                            ; preds = %bb.ak
  %i.mf = load i32, ptr @hf_cdma2k_Qpch_Supported, align 4
  %i.mg = zext i16 %i.md to i32
  %i.mh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.mf, ptr noundef %0, i32 noundef %i.mg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mi = load i32, ptr @hf_cdma2k_Enhanced_Rc, align 4
  %i.mj = and i32 %i.ly, 65528                    ; 2 uses
  %i.mk = or disjoint i32 %i.mj, 5
  %i.ml = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.mi, ptr noundef %0, i32 noundef %i.mk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mm = load i32, ptr @hf_cdma2k_Uzid_Incl, align 4
  %i.mn = or disjoint i32 %i.mj, 6                ; 2 uses
  %i.mo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.mm, ptr noundef %0, i32 noundef %i.mn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mp = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.mn, i32 noundef 1)
  %i.mq = or disjoint i16 %i.lz, 7                ; 2 uses
  %.not.i = icmp eq i8 %i.mp, 0
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mr = load i32, ptr @hf_cdma2k_Uzid, align 4
  %i.ms = zext i16 %i.mq to i32
  %i.mt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.mr, ptr noundef %0, i32 noundef %i.ms, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.mu = add i16 %i.lz, 23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1.i = phi i16 [ %i.mu, %bb.am ], [ %i.mq, %bb.al ] ; 4 uses
  %.not4.i = icmp eq i8 %i.ks, 6
  br i1 %.not4.i, label %cdma2k_message_REGISTRATION.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mv = load i32, ptr @hf_cdma2k_GeoLoc_Incl, align 4
  %i.mw = zext i16 %.1.i to i32                   ; 2 uses
  %i.mx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.mv, ptr noundef %0, i32 noundef %i.mw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.my = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.mw, i32 noundef 1)
  %i.mz = add i16 %.1.i, 1                        ; 2 uses
  %.not84.i = icmp eq i8 %i.my, 0
  br i1 %.not84.i, label %cdma2k_message_REGISTRATION.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.na = load i32, ptr @hf_cdma2k_GeoLoc_Type, align 4
  %i.nb = zext i16 %i.mz to i32
  %i.nc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.jx, i32 noundef %i.na, ptr noundef %0, i32 noundef %i.nb, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.nd = add i16 %.1.i, 4
  br label %cdma2k_message_REGISTRATION.exit

cdma2k_message_REGISTRATION.exit:                 ; preds = %bb.aj, %bb.ak, %bb.an, %bb.ao, %bb.ap
  %.2.i = phi i16 [ %i.nd, %bb.ap ], [ %i.mz, %bb.ao ], [ %.1.i, %bb.an ], [ %i.md, %bb.ak ], [ %i.lz, %bb.aj ]
  %i.ne = zext i16 %.2.i to i32
  %i.nf = add nuw nsw i32 %i.ne, 7
  %storemerge.i = lshr i32 %i.nf, 3
  store i32 %storemerge.i, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.aq:                                            ; preds = %bb.af
  %i.ng = load i32, ptr @hf_cdma2k_OrderIndMsg, align 4
  %i.nh = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.ng, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.ni = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.nj = tail call ptr @proto_item_add_subtree(ptr noundef %i.nh, i32 noundef %i.ni) ; 3 uses
  %i.nk = load i32, ptr @hf_cdma2k_Order_Ind, align 4
  %i.nl = load i32, ptr %2, align 4
  %i.nm = shl i32 %i.nl, 3
  %i.nn = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.nj, i32 noundef %i.nk, ptr noundef %0, i32 noundef %i.nm, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.no = load i32, ptr %2, align 4
  %i.np = shl i32 %i.no, 3
  %i.nq = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.np, i32 noundef 6)
  %i.nr = load i32, ptr @hf_cdma2k_Add_Record_Len, align 4
  %i.ns = load i32, ptr %2, align 4
  %i.nt = shl i32 %i.ns, 3
  %i.nu = or disjoint i32 %i.nt, 6
  %i.nv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.nj, i32 noundef %i.nr, ptr noundef %0, i32 noundef %i.nu, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.nw = load i32, ptr %2, align 4
  %i.nx = shl i32 %i.nw, 3
  %i.ny = or disjoint i32 %i.nx, 6
  %i.nz = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ny, i32 noundef 3)
  %i.oa = load i32, ptr %2, align 4
  %i.ob = add i32 %i.oa, 1                        ; 3 uses
  store i32 %i.ob, ptr %2, align 4
  %.tr.i = trunc i32 %i.ob to i16
  %i.oc = shl i16 %.tr.i, 3                       ; 23 uses
  %i.od = or disjoint i16 %i.oc, 1                ; 7 uses
  %.not.i166 = icmp eq i8 %i.nz, 0
  br i1 %.not.i166, label %cdma2k_message_ORDER_IND.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oe = load i32, ptr @hf_cdma2k_Order_Specific_Fields, align 4
  %i.of = tail call ptr @proto_tree_add_item(ptr noundef %i.nj, i32 noundef %i.oe, ptr noundef %0, i32 noundef %i.ob, i32 noundef -1, i32 noundef 0) ; 9 uses
  %i.og = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.oh = tail call ptr @proto_item_add_subtree(ptr noundef %i.of, i32 noundef %i.og) ; 25 uses
  switch i8 %i.nq, label %bb.bg [
    i8 2, label %bb.as
    i8 4, label %bb.at
    i8 19, label %bb.au
    i8 20, label %bb.av
    i8 31, label %bb.aw
    i8 21, label %bb.bb
    i8 34, label %bb.be
  ]

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1218)
  %i.oi = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.oj = zext i16 %i.od to i32
  %i.ok = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.oi, ptr noundef %0, i32 noundef %i.oj, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ol = add i16 %i.oc, 9
  %i.om = load i32, ptr @hf_cdma2k_Randbs, align 4
  %i.on = zext i16 %i.ol to i32
  %i.oo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.om, ptr noundef %0, i32 noundef %i.on, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.op = add i16 %i.oc, 41
  br label %cdma2k_message_ORDER_IND.exit

bb.at:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1219)
  %i.oq = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.or = zext i16 %i.od to i32
  %i.os = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.oq, ptr noundef %0, i32 noundef %i.or, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ot = add i16 %i.oc, 9
  br label %cdma2k_message_ORDER_IND.exit

bb.au:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1220)
  %i.ou = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.ov = zext i16 %i.od to i32
  %i.ow = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.ou, ptr noundef %0, i32 noundef %i.ov, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ox = add i16 %i.oc, 9
  %i.oy = load i32, ptr @hf_cdma2k_service_option, align 4
  %i.oz = zext i16 %i.ox to i32
  %i.pa = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.oy, ptr noundef %0, i32 noundef %i.oz, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.pb = add i16 %i.oc, 25
  br label %cdma2k_message_ORDER_IND.exit

bb.av:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1221)
  %i.pc = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.pd = zext i16 %i.od to i32
  %i.pe = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.pc, ptr noundef %0, i32 noundef %i.pd, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.pf = add i16 %i.oc, 9
  %i.pg = load i32, ptr @hf_cdma2k_service_option, align 4
  %i.ph = zext i16 %i.pf to i32
  %i.pi = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.pg, ptr noundef %0, i32 noundef %i.ph, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.pj = add i16 %i.oc, 25
  br label %cdma2k_message_ORDER_IND.exit

bb.aw:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1222)
  %i.pk = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.pl = zext i16 %i.od to i32
  %i.pm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.pk, ptr noundef %0, i32 noundef %i.pl, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.pn = load i32, ptr %2, align 4
  %i.po = shl i32 %i.pn, 3
  %i.pp = or disjoint i32 %i.po, 1
  %i.pq = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.pp, i32 noundef 8) ; 2 uses
  %i.pr = add i16 %i.oc, 9
  %i.ps = load i32, ptr @hf_cdma2k_Rejected_Type, align 4
  %i.pt = zext i16 %i.pr to i32
  %i.pu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.ps, ptr noundef %0, i32 noundef %i.pt, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.pv = load i32, ptr %2, align 4
  %i.pw = shl i32 %i.pv, 3
  %i.px = or disjoint i32 %i.pw, 1
  %i.py = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.px, i32 noundef 8)
  %i.pz = add i16 %i.oc, 17                       ; 3 uses
  switch i8 %i.py, label %bb.ax [
    i8 7, label %.thread.i169
    i8 1, label %.thread.i169
    i8 12, label %.sink.split.i
  ]

.thread.i169:                                     ; preds = %bb.aw, %bb.aw
  %i.qa = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.qb = zext i16 %i.pz to i32
  %i.qc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.qa, ptr noundef %0, i32 noundef %i.qb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %4 = add i16 %i.oc, 19
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.thread.i169, %bb.aw
  %hf_cdma2k_Rejected_Order.sink.i = phi ptr [ @hf_cdma2k_Rejected_Order, %.thread.i169 ], [ @hf_cdma2k_Rejected_Parm_Id, %bb.aw ]
  %.sink11.i = phi i16 [ %4, %.thread.i169 ], [ %i.pz, %bb.aw ]
  %.sink10.i = phi i32 [ 6, %.thread.i169 ], [ 16, %bb.aw ]
  %.sink7.i = phi i16 [ 25, %.thread.i169 ], [ 33, %bb.aw ]
  %hf_cdma2k_Rejected_Ordq.sink.i = phi ptr [ @hf_cdma2k_Rejected_Ordq, %.thread.i169 ], [ @hf_cdma2k_Rejected_Record, %bb.aw ]
  %.sink.i = phi i16 [ 33, %.thread.i169 ], [ 41, %bb.aw ]
  %i.qd = load i32, ptr %hf_cdma2k_Rejected_Order.sink.i, align 4
  %i.qe = zext i16 %.sink11.i to i32
  %i.qf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.qd, ptr noundef %0, i32 noundef %i.qe, i32 noundef %.sink10.i, i32 noundef 0) ; 0 uses
  %i.qg = add i16 %.sink7.i, %i.oc
  %i.qh = load i32, ptr %hf_cdma2k_Rejected_Ordq.sink.i, align 4
  %i.qi = zext i16 %i.qg to i32
  %i.qj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.qh, ptr noundef %0, i32 noundef %i.qi, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.qk = add i16 %.sink.i, %i.oc
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split.i, %bb.aw
  %.1.i168 = phi i16 [ %i.pz, %bb.aw ], [ %i.qk, %.sink.split.i ] ; 4 uses
  %i.ql = and i8 %i.pq, -4
  %or.cond11.i = icmp eq i8 %i.ql, 16
  br i1 %or.cond11.i, label %bb.ay, label %.thread2.i

bb.ay:                                            ; preds = %bb.ax
  %i.qm = icmp eq i8 %i.pq, 19
  %i.qn = load i32, ptr @hf_cdma2k_Con_Ref, align 4
  %i.qo = zext i16 %.1.i168 to i32
  %i.qp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.qn, ptr noundef %0, i32 noundef %i.qo, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.qq = add i16 %.1.i168, 8                     ; 2 uses
  br i1 %i.qm, label %bb.az, label %.thread2.i

bb.az:                                            ; preds = %bb.ay
  %i.qr = load i32, ptr @hf_cdma2k_Tag, align 4
  %i.qs = zext i16 %i.qq to i32
  %i.qt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.qr, ptr noundef %0, i32 noundef %i.qs, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qu = add i16 %.1.i168, 12
  br label %.thread2.i

.thread2.i:                                       ; preds = %bb.az, %bb.ay, %bb.ax
  %.3.i = phi i16 [ %i.qu, %bb.az ], [ %i.qq, %bb.ay ], [ %.1.i168, %bb.ax ] ; 3 uses
  %i.qv = zext i16 %.3.i to i32                   ; 2 uses
  %i.qw = and i32 %i.qv, 7                        ; 2 uses
  %.not176.i = icmp eq i32 %i.qw, 0
  br i1 %.not176.i, label %cdma2k_message_ORDER_IND.exit, label %bb.ba

bb.ba:                                            ; preds = %.thread2.i
  %i.qx = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.qy = sub nuw nsw i32 8, %i.qw
  %i.qz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.qx, ptr noundef %0, i32 noundef %i.qv, i32 noundef %i.qy, i32 noundef 0) ; 0 uses
  br label %cdma2k_message_ORDER_IND.exit

bb.bb:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1223)
  %i.ra = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.rb = load i32, ptr %2, align 4
  %i.rc = shl i32 %i.rb, 3
  %i.rd = or disjoint i32 %i.rc, 1
  %i.re = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.ra, ptr noundef %0, i32 noundef %i.rd, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.rf = load i32, ptr %2, align 4
  %i.rg = shl i32 %i.rf, 3
  %i.rh = or disjoint i32 %i.rg, 1
  %i.ri = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.rh, i32 noundef 8)
  %i.rj = add i16 %i.oc, 9                        ; 2 uses
  %i.rk = icmp eq i8 %i.ri, 3
  br i1 %i.rk, label %bb.bc, label %cdma2k_message_ORDER_IND.exit

bb.bc:                                            ; preds = %bb.bb
  %i.rl = load i32, ptr @hf_cdma2k_Rsc_Mode_Ind, align 4
  %i.rm = zext i16 %i.rj to i32
  %i.rn = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.rl, ptr noundef %0, i32 noundef %i.rm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ro = load i32, ptr %2, align 4
  %i.rp = shl i32 %i.ro, 3
  %i.rq = or disjoint i32 %i.rp, 1
  %i.rr = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.rq, i32 noundef 1)
  %i.rs = add i16 %i.oc, 10                       ; 2 uses
  %i.rt = icmp eq i8 %i.rr, 1
  br i1 %i.rt, label %bb.bd, label %cdma2k_message_ORDER_IND.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ru = load i32, ptr @hf_cdma2k_Rsci, align 4
  %i.rv = zext i16 %i.rs to i32
  %i.rw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.ru, ptr noundef %0, i32 noundef %i.rv, i32 noundef 4, i32 noundef 0) ; 0 uses
  %5 = add i16 %i.oc, 14
  %i.rx = load i32, ptr @hf_cdma2k_Rsc_End_Time_Unit, align 4
  %i.ry = zext i16 %5 to i32
  %i.rz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.rx, ptr noundef %0, i32 noundef %i.ry, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sa = add i16 %i.oc, 16
  %i.sb = load i32, ptr @hf_cdma2k_Rsc_End_Time_Value, align 4
  %i.sc = zext i16 %i.sa to i32
  %i.sd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.sb, ptr noundef %0, i32 noundef %i.sc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %6 = add i16 %i.oc, 20
  br label %cdma2k_message_ORDER_IND.exit

bb.be:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1224)
  %i.se = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.sf = load i32, ptr %2, align 4
  %i.sg = shl i32 %i.sf, 3
  %i.sh = or disjoint i32 %i.sg, 1
  %i.si = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.se, ptr noundef %0, i32 noundef %i.sh, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.sj = add i16 %i.oc, 9
  %i.sk = load i32, ptr @hf_cdma2k_Rsc_Mode_Ind, align 4
  %i.sl = zext i16 %i.sj to i32
  %i.sm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.sk, ptr noundef %0, i32 noundef %i.sl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sn = load i32, ptr %2, align 4
  %i.so = shl i32 %i.sn, 3
  %i.sp = or disjoint i32 %i.so, 1
  %i.sq = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.sp, i32 noundef 1)
  %i.sr = add i16 %i.oc, 10                       ; 2 uses
  %i.ss = icmp eq i8 %i.sq, 1
  br i1 %i.ss, label %bb.bf, label %cdma2k_message_ORDER_IND.exit

bb.bf:                                            ; preds = %bb.be
  %i.st = load i32, ptr @hf_cdma2k_Rsci, align 4
  %i.su = zext i16 %i.sr to i32
  %i.sv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.st, ptr noundef %0, i32 noundef %i.su, i32 noundef 4, i32 noundef 0) ; 0 uses
  %7 = add i16 %i.oc, 14
  %i.sw = load i32, ptr @hf_cdma2k_Rsc_End_Time_Unit, align 4
  %i.sx = zext i16 %7 to i32
  %i.sy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.sw, ptr noundef %0, i32 noundef %i.sx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sz = add i16 %i.oc, 16
  %i.ta = load i32, ptr @hf_cdma2k_Rsc_End_Time_Value, align 4
  %i.tb = zext i16 %i.sz to i32
  %i.tc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.oh, i32 noundef %i.ta, ptr noundef %0, i32 noundef %i.tb, i32 noundef 4, i32 noundef 0) ; 0 uses
  %8 = add i16 %i.oc, 20
  br label %cdma2k_message_ORDER_IND.exit

bb.bg:                                            ; preds = %bb.ar
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.of, ptr noundef nonnull @.str.1225)
  br label %cdma2k_message_ORDER_IND.exit

cdma2k_message_ORDER_IND.exit:                    ; preds = %bb.aq, %bb.as, %bb.at, %bb.au, %bb.av, %.thread2.i, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg
  %.4.i = phi i16 [ %i.od, %bb.bg ], [ %i.op, %bb.as ], [ %i.ot, %bb.at ], [ %i.pb, %bb.au ], [ %i.pj, %bb.av ], [ %.3.i, %bb.ba ], [ %.3.i, %.thread2.i ], [ %6, %bb.bd ], [ %i.rs, %bb.bc ], [ %i.rj, %bb.bb ], [ %8, %bb.bf ], [ %i.sr, %bb.be ], [ %i.od, %bb.aq ]
  %i.td = zext i16 %.4.i to i32
  %i.te = add nuw nsw i32 %i.td, 7
  %storemerge.i167 = lshr i32 %i.te, 3
  store i32 %storemerge.i167, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.bh:                                            ; preds = %bb.af
  %i.tf = load i32, ptr @hf_cdma2k_DataBurstIndMsg, align 4
  %i.tg = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.tf, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.th = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.ti = tail call ptr @proto_item_add_subtree(ptr noundef %i.tg, i32 noundef %i.th) ; 5 uses
  %i.tj = load i32, ptr @hf_cdma2k_Msg_Number, align 4
  %i.tk = load i32, ptr %2, align 4
  %i.tl = tail call ptr @proto_tree_add_item(ptr noundef %i.ti, i32 noundef %i.tj, ptr noundef %0, i32 noundef %i.tk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tm = load i32, ptr %2, align 4
  %i.tn = add i32 %i.tm, 1                        ; 2 uses
  store i32 %i.tn, ptr %2, align 4
  %i.to = load i32, ptr @hf_cdma2k_Burst_Type, align 4
  %i.tp = shl i32 %i.tn, 3
  %i.tq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ti, i32 noundef %i.to, ptr noundef %0, i32 noundef %i.tp, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.tr = load i32, ptr @hf_cdma2k_Num_Msgs, align 4
  %i.ts = load i32, ptr %2, align 4
  %i.tt = shl i32 %i.ts, 3
  %i.tu = or disjoint i32 %i.tt, 6
  %i.tv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ti, i32 noundef %i.tr, ptr noundef %0, i32 noundef %i.tu, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.tw = load i32, ptr %2, align 4
  %i.tx = add i32 %i.tw, 1                        ; 2 uses
  store i32 %i.tx, ptr %2, align 4
  %i.ty = load i32, ptr @hf_cdma2k_Num_Fields, align 4
  %i.tz = shl i32 %i.tx, 3
  %i.ua = or disjoint i32 %i.tz, 6
  %i.ub = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ti, i32 noundef %i.ty, ptr noundef %0, i32 noundef %i.ua, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.uc = load i32, ptr %2, align 4
  %i.ud = shl i32 %i.uc, 3
  %i.ue = or disjoint i32 %i.ud, 6
  %i.uf = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ue, i32 noundef 8)
  %i.ug = load i32, ptr %2, align 4
  %i.uh = add i32 %i.ug, 1                        ; 2 uses
  store i32 %i.uh, ptr %2, align 4
  %i.ui = load i32, ptr @hf_cdma2k_Chari_Data, align 4
  %i.uj = tail call ptr @proto_tree_add_item(ptr noundef %i.ti, i32 noundef %i.ui, ptr noundef %0, i32 noundef %i.uh, i32 noundef -1, i32 noundef 0)
  %i.uk = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.ul = tail call ptr @proto_item_add_subtree(ptr noundef %i.uj, i32 noundef %i.uk) ; 2 uses
  %i.um = load i32, ptr @hf_cdma2k_Msg_Identifier, align 4
  %i.un = load i32, ptr %2, align 4
  %i.uo = shl i32 %i.un, 3
  %i.up = or disjoint i32 %i.uo, 6
  %i.uq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ul, i32 noundef %i.um, ptr noundef %0, i32 noundef %i.up, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ur = load i32, ptr %2, align 4
  %i.us = add i32 %i.ur, 1                        ; 2 uses
  store i32 %i.us, ptr %2, align 4
  %i.ut = zext i8 %i.uf to i32
  %i.uu = add nuw nsw i32 %i.ut, 65535            ; 2 uses
  %i.uv = and i32 %i.uu, 65535
  %.not4.i170 = icmp eq i32 %i.uv, 0
  br i1 %.not4.i170, label %cdma2k_message_DATA_BURST_IND.exit, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %bb.bh, %._crit_edge.i
  %.0736.i = phi i16 [ %.174.lcssa.i, %._crit_edge.i ], [ 1, %bb.bh ] ; 3 uses
  %.0765.i = phi i32 [ %i.wr, %._crit_edge.i ], [ %i.uu, %bb.bh ]
  %i.uw = load i32, ptr @hf_cdma2k_Parm_Id, align 4
  %i.ux = load i32, ptr %2, align 4
  %i.uy = shl i32 %i.ux, 3
  %i.uz = or disjoint i32 %i.uy, 6
  %i.va = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ul, i32 noundef %i.uw, ptr noundef %0, i32 noundef %i.uz, i32 noundef 8, i32 noundef 0)
  %i.vb = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.vc = tail call ptr @proto_item_add_subtree(ptr noundef %i.va, i32 noundef %i.vb) ; 3 uses
  %i.vd = load i32, ptr %2, align 4
  %i.ve = add i32 %i.vd, 1                        ; 2 uses
  store i32 %i.ve, ptr %2, align 4
  %i.vf = load i32, ptr @hf_cdma2k_Parm_Length, align 4
  %i.vg = shl i32 %i.ve, 3
  %i.vh = or disjoint i32 %i.vg, 6
  %i.vi = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.vc, i32 noundef %i.vf, ptr noundef %0, i32 noundef %i.vh, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.vj = load i32, ptr %2, align 4
  %i.vk = shl i32 %i.vj, 3
  %i.vl = or disjoint i32 %i.vk, 6
  %i.vm = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.vl, i32 noundef 8) ; 2 uses
  %i.vn = load i32, ptr %2, align 4
  %i.vo = add i32 %i.vn, 1                        ; 2 uses
  store i32 %i.vo, ptr %2, align 4
  %i.vp = add i32 %.0765.i, 65534
  %i.vq = zext i16 %.0736.i to i32
  %i.vr = shl nuw nsw i32 %i.vq, 5
  %i.vs = zext i8 %i.vm to i32                    ; 6 uses
  %i.vt = icmp samesign ult i32 %i.vr, %i.vs
  %i.vu = add nuw nsw i32 %i.vs, 1
  %.0.i171 = select i1 %i.vt, i32 32, i32 %i.vu
  %i.vv = load i32, ptr @hf_cdma2k_Parm_Value, align 4
  %i.vw = tail call ptr @proto_tree_add_item(ptr noundef %i.vc, i32 noundef %i.vv, ptr noundef %0, i32 noundef %i.vo, i32 noundef %.0.i171, i32 noundef 0)
  %.not10.i = icmp eq i8 %i.vm, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph8.i, %bb.bl
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.bl ], [ 0, %.lr.ph8.i ] ; 3 uses
  %.1743.i = phi i16 [ %.2.i172, %bb.bl ], [ %.0736.i, %.lr.ph8.i ] ; 3 uses
  %.0771.i = phi ptr [ %.178.i, %bb.bl ], [ %i.vw, %.lr.ph8.i ] ; 3 uses
  %i.vx = load i32, ptr %2, align 4
  %i.vy = shl i32 %i.vx, 3
  %i.vz = or disjoint i32 %i.vy, 6
  %i.wa = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.vz, i32 noundef 8)
  %i.wb = zext i8 %i.wa to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0771.i, ptr noundef nonnull @.str.1209, i32 noundef %i.wb)
  %i.wc = load i32, ptr %2, align 4
  %i.wd = add i32 %i.wc, 1
  store i32 %i.wd, ptr %2, align 4
  %i.we = and i32 %indvars.iv.i, 7
  %i.wf = icmp eq i32 %i.we, 7
  br i1 %i.wf, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0771.i, ptr noundef nonnull @.str.1226)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i
  %i.wg = and i32 %indvars.iv.i, 31
  %i.wh = icmp eq i32 %i.wg, 31
  br i1 %i.wh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.wi = zext i16 %.1743.i to i32
  %i.wj = shl nuw nsw i32 %i.wi, 5                ; 2 uses
  %i.wk = icmp samesign ult i32 %i.wj, %i.vs
  %i.wl = sub nsw i32 %i.vs, %i.wj
  %i.wm = and i32 %i.wl, 65535
  %.1.i175 = select i1 %i.wk, i32 32, i32 %i.wm
  %i.wn = load i32, ptr @hf_cdma2k_Parm_Value, align 4
  %i.wo = load i32, ptr %2, align 4
  %i.wp = tail call ptr @proto_tree_add_item(ptr noundef %i.vc, i32 noundef %i.wn, ptr noundef %0, i32 noundef %i.wo, i32 noundef %.1.i175, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.wp, ptr noundef nonnull @.str.1227)
  %i.wq = add i16 %.1743.i, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.178.i = phi ptr [ %i.wp, %bb.bk ], [ %.0771.i, %bb.bj ]
  %.2.i172 = phi i16 [ %i.wq, %bb.bk ], [ %.1743.i, %bb.bj ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %i.vs
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.bl, %.lr.ph8.i
  %.174.lcssa.i = phi i16 [ %.0736.i, %.lr.ph8.i ], [ %.2.i172, %bb.bl ]
  %i.wr = sub i32 %i.vp, %i.vs                    ; 2 uses
  %i.ws = and i32 %i.wr, 65535
  %.not.i173 = icmp eq i32 %i.ws, 0
  br i1 %.not.i173, label %._crit_edge9.loopexit.i, label %.lr.ph8.i, !llvm.loop !11

._crit_edge9.loopexit.i:                          ; preds = %._crit_edge.i
  %.pre.i174 = load i32, ptr %2, align 4
  br label %cdma2k_message_DATA_BURST_IND.exit

cdma2k_message_DATA_BURST_IND.exit:               ; preds = %bb.bh, %._crit_edge9.loopexit.i
  %i.wt = phi i32 [ %.pre.i174, %._crit_edge9.loopexit.i ], [ %i.us, %bb.bh ]
  %i.wu = add i32 %i.wt, 1
  store i32 %i.wu, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.bm:                                            ; preds = %bb.af
  %i.wv = shl i32 %i.jt, 3                        ; 7 uses
  %i.ww = load i32, ptr @hf_cdma2k_OrigMsg, align 4
  %i.wx = and i32 %i.wv, 65528                    ; 4 uses
  %i.wy = lshr exact i32 %i.wx, 3
  %i.wz = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.ww, ptr noundef %0, i32 noundef %i.wy, i32 noundef -1, i32 noundef 0)
  %i.xa = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.xb = tail call ptr @proto_item_add_subtree(ptr noundef %i.wz, i32 noundef %i.xa) ; 72 uses
  %i.xc = load i32, ptr @hf_cdma2k_Mob_Term, align 4
  %i.xd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.xc, ptr noundef %0, i32 noundef %i.wx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xe = load i32, ptr @hf_cdma2k_Slot_Cycle_Index, align 4
  %i.xf = or disjoint i32 %i.wx, 1
  %i.xg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.xe, ptr noundef %0, i32 noundef %i.xf, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.xh = load i32, ptr @hf_cdma2k_Mob_P_Rev, align 4
  %i.xi = or disjoint i32 %i.wx, 4                ; 2 uses
  %i.xj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.xh, ptr noundef %0, i32 noundef %i.xi, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.xk = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.xi, i32 noundef 8)
  %i.xl = trunc i32 %i.wv to i16                  ; 3 uses
  %i.xm = add i16 %i.xl, 12                       ; 2 uses
  %i.xn = tail call i8 @llvm.umin.i8(i8 %i.v, i8 %i.xk) ; 4 uses
  %i.xo = icmp eq i8 %i.xn, 1
  br i1 %i.xo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.xp = load i32, ptr @hf_cdma2k_Ext_Scm, align 4
  %i.xq = zext i16 %i.xm to i32
  %i.xr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.xp, ptr noundef %0, i32 noundef %i.xq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %9 = add i32 %i.wv, 13
  %i.xs = load i32, ptr @hf_cdma2k_Reserved, align 4
  %10 = and i32 %9, 65533
  %i.xt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.xs, ptr noundef %0, i32 noundef %10, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xu = add i32 %i.wv, 14
  %i.xv = load i32, ptr @hf_cdma2k_Sloted_Mode, align 4
  %i.xw = and i32 %i.xu, 65534
  %i.xx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.xv, ptr noundef %0, i32 noundef %i.xw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %11 = add i32 %i.wv, 15
  %i.xy = load i32, ptr @hf_cdma2k_Reserved, align 4
  %12 = and i32 %11, 65535
  %i.xz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.xy, ptr noundef %0, i32 noundef %12, i32 noundef 5, i32 noundef 0) ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.ya = zext i16 %i.xm to i32
  tail call fastcc void @dissect_cdma2000_scm(ptr noundef %0, ptr noundef %i.xb, i32 noundef %i.ya)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.0496.i = add i32 %i.wv, 20
  %i.yb = load i32, ptr @hf_cdma2k_Request_Mode, align 4
  %i.yc = and i32 %.0496.i, 65532
  %i.yd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.yb, ptr noundef %0, i32 noundef %i.yc, i32 noundef 3, i32 noundef 0) ; 0 uses
  %13 = add i32 %i.wv, 23
  %i.ye = load i32, ptr @hf_cdma2k_Special_Service, align 4
  %14 = and i32 %13, 65535                        ; 2 uses
  %i.yf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.ye, ptr noundef %0, i32 noundef %14, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yg = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %14, i32 noundef 1)
  %i.yh = add i16 %i.xl, 24                       ; 2 uses
  %i.yi = icmp eq i8 %i.yg, 1
  br i1 %i.yi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.yj = load i32, ptr @hf_cdma2k_service_option, align 4
  %i.yk = zext i16 %i.yh to i32
  %i.yl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.yj, ptr noundef %0, i32 noundef %i.yk, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ym = add i16 %i.xl, 40
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.1497.i = phi i16 [ %i.ym, %bb.bq ], [ %i.yh, %bb.bp ] ; 5 uses
  %i.yn = load i32, ptr @hf_cdma2k_pm, align 4
  %i.yo = zext i16 %.1497.i to i32
  %i.yp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.yn, ptr noundef %0, i32 noundef %i.yo, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yq = add i16 %.1497.i, 1
  %i.yr = load i32, ptr @hf_cdma2k_digit_mode, align 4
  %i.ys = zext i16 %i.yq to i32                   ; 2 uses
  %i.yt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.yr, ptr noundef %0, i32 noundef %i.ys, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yu = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ys, i32 noundef 1) ; 2 uses
  %i.yv = add i16 %.1497.i, 2                     ; 2 uses
  %i.yw = icmp eq i8 %i.yu, 1                     ; 2 uses
  br i1 %i.yw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.yx = load i32, ptr @hf_cdma2k_Number_Type, align 4
  %i.yy = zext i16 %i.yv to i32
  %i.yz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.yx, ptr noundef %0, i32 noundef %i.yy, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.za = add i16 %.1497.i, 5
  %i.zb = load i32, ptr @hf_cdma2k_Number_Plan, align 4
  %i.zc = zext i16 %i.za to i32
  %i.zd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.zb, ptr noundef %0, i32 noundef %i.zc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ze = add i16 %.1497.i, 9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.2498.i = phi i16 [ %i.ze, %bb.bs ], [ %i.yv, %bb.br ] ; 3 uses
  %i.zf = load i32, ptr @hf_cdma2k_More_Fields, align 4
  %i.zg = zext i16 %.2498.i to i32
  %i.zh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.zf, ptr noundef %0, i32 noundef %i.zg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zi = add i16 %.2498.i, 1
  %i.zj = load i32, ptr @hf_cdma2k_Num_Fields, align 4
  %i.zk = zext i16 %i.zi to i32                   ; 2 uses
  %i.zl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.zj, ptr noundef %0, i32 noundef %i.zk, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.zm = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.zk, i32 noundef 8) ; 2 uses
  %i.zn = add i16 %.2498.i, 9                     ; 5 uses
  %.not.i176 = icmp eq i8 %i.zm, 0
  br i1 %.not.i176, label %.loopexit2.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.zo = load i32, ptr @hf_cdma2k_Chari_Data, align 4
  %i.zp = lshr i16 %i.zn, 3
  %i.zq = zext nneg i16 %i.zp to i32
  %i.zr = tail call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.zo, ptr noundef %0, i32 noundef %i.zq, i32 noundef 1, i32 noundef 0) ; 3 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.zr, ptr noundef nonnull @.str.1228)
  %i.zs = zext i8 %i.zm to i32                    ; 2 uses
  br i1 %i.yw, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.bu, %.split.us.i
  %.04954.us.i = phi i32 [ %i.zx, %.split.us.i ], [ %i.zs, %bb.bu ] ; 2 uses
  %.33.us.i = phi i16 [ %i.zw, %.split.us.i ], [ %i.zn, %bb.bu ] ; 2 uses
  %i.zt = zext i16 %.33.us.i to i32
  %i.zu = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.zt, i32 noundef 8)
  %i.zv = zext i8 %i.zu to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.zr, ptr noundef nonnull @.str.1229, i32 noundef %i.zv)
  %i.zw = add i16 %.33.us.i, 8                    ; 2 uses
  %i.zx = add nsw i32 %.04954.us.i, -1
  %i.zy = icmp samesign ugt i32 %.04954.us.i, 1
  br i1 %i.zy, label %.split.us.i, label %.loopexit2.i, !llvm.loop !12

.split.i:                                         ; preds = %bb.bu
  %i.zz = icmp eq i8 %i.yu, 0
  br i1 %i.zz, label %.split.split.us.i, label %.loopexit2.i

.split.split.us.i:                                ; preds = %.split.i, %.split.split.us.i
  %.04954.us5.i = phi i32 [ %i.aae, %.split.split.us.i ], [ %i.zs, %.split.i ] ; 2 uses
  %.33.us6.i = phi i16 [ %i.aad, %.split.split.us.i ], [ %i.zn, %.split.i ] ; 2 uses
  %i.aaa = zext i16 %.33.us6.i to i32
  %i.aab = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.aaa, i32 noundef 4)
  %i.aac = zext i8 %i.aab to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.zr, ptr noundef nonnull @.str.1230, i32 noundef %i.aac)
  %i.aad = add i16 %.33.us6.i, 4                  ; 2 uses
  %i.aae = add nsw i32 %.04954.us5.i, -1
  %i.aaf = icmp samesign ugt i32 %.04954.us5.i, 1
  br i1 %i.aaf, label %.split.split.us.i, label %.loopexit2.i, !llvm.loop !12

.loopexit2.i:                                     ; preds = %.split.split.us.i, %.split.us.i, %.split.i, %bb.bt
  %.5.i = phi i16 [ %i.zn, %bb.bt ], [ %i.zw, %.split.us.i ], [ %i.zn, %.split.i ], [ %i.aad, %.split.split.us.i ] ; 6 uses
  %i.aag = load i32, ptr @hf_cdma2k_Nar_An_Cap, align 4
  %i.aah = zext i16 %.5.i to i32
  %i.aai = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aag, ptr noundef %0, i32 noundef %i.aah, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aaj = add i16 %.5.i, 1
  %i.aak = load i32, ptr @hf_cdma2k_Paca_Reorig, align 4
  %i.aal = zext i16 %i.aaj to i32
  %i.aam = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aak, ptr noundef %0, i32 noundef %i.aal, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aan = add i16 %.5.i, 2
  %i.aao = load i32, ptr @hf_cdma2k_Return_Cause, align 4
  %i.aap = zext i16 %i.aan to i32
  %i.aaq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aao, ptr noundef %0, i32 noundef %i.aap, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aar = add i16 %.5.i, 6
  %i.aas = load i32, ptr @hf_cdma2k_More_Records, align 4
  %i.aat = zext i16 %i.aar to i32
  %i.aau = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aas, ptr noundef %0, i32 noundef %i.aat, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aav = add i16 %.5.i, 7                       ; 2 uses
  %i.aaw = icmp ult i8 %i.xn, 7
  %or.cond.i = and i1 %.0.lcssa, %i.aaw
  br i1 %or.cond.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.loopexit2.i
  %i.aax = load i32, ptr @hf_cdma2k_encryption_supported, align 4
  %i.aay = zext i16 %i.aav to i32
  %i.aaz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aax, ptr noundef %0, i32 noundef %i.aay, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aba = add i16 %.5.i, 11
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.loopexit2.i
  %.6.i = phi i16 [ %i.aba, %bb.bv ], [ %i.aav, %.loopexit2.i ] ; 3 uses
  %i.abb = load i32, ptr @hf_cdma2k_Paca_Supported, align 4
  %i.abc = zext i16 %.6.i to i32
  %i.abd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.abb, ptr noundef %0, i32 noundef %i.abc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abe = add i16 %.6.i, 1
  %i.abf = load i32, ptr @hf_cdma2k_num_alt_so, align 4
  %i.abg = zext i16 %i.abe to i32                 ; 2 uses
  %i.abh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.abf, ptr noundef %0, i32 noundef %i.abg, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.abi = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.abg, i32 noundef 3) ; 2 uses
  %i.abj = add i16 %.6.i, 4                       ; 2 uses
  %.not51010.i = icmp eq i8 %i.abi, 0
  br i1 %.not51010.i, label %._crit_edge.i178, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bw
  %i.abk = zext i8 %i.abi to i16
  br label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.preheader.i
  %.049412.i = phi i16 [ %i.abp, %.lr.ph.i177 ], [ %i.abk, %.lr.ph.preheader.i ]
  %.711.i = phi i16 [ %i.abo, %.lr.ph.i177 ], [ %i.abj, %.lr.ph.preheader.i ] ; 2 uses
  %i.abl = load i32, ptr @hf_cdma2k_Alt_So, align 4
  %i.abm = zext i16 %.711.i to i32
  %i.abn = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.abl, ptr noundef %0, i32 noundef %i.abm, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.abo = add i16 %.711.i, 16                    ; 2 uses
  %i.abp = add nsw i16 %.049412.i, -1             ; 2 uses
  %.not510.i = icmp eq i16 %i.abp, 0
  br i1 %.not510.i, label %._crit_edge.i178, label %.lr.ph.i177, !llvm.loop !13

._crit_edge.i178:                                 ; preds = %.lr.ph.i177, %bb.bw
  %.7.lcssa.i = phi i16 [ %i.abj, %bb.bw ], [ %i.abo, %.lr.ph.i177 ] ; 5 uses
  %i.abq = icmp ugt i8 %i.xn, 5
  br i1 %i.abq, label %bb.bx, label %cdma2k_message_ORIGINATION.exit

bb.bx:                                            ; preds = %._crit_edge.i178
  %i.abr = load i32, ptr @hf_cdma2k_DRS, align 4
  %i.abs = zext i16 %.7.lcssa.i to i32
  %i.abt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.abr, ptr noundef %0, i32 noundef %i.abs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abu = add i16 %.7.lcssa.i, 1
  %i.abv = load i32, ptr @hf_cdma2k_Uzid_Incl, align 4
  %i.abw = zext i16 %i.abu to i32                 ; 2 uses
  %i.abx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.abv, ptr noundef %0, i32 noundef %i.abw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aby = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.abw, i32 noundef 1)
  %i.abz = add i16 %.7.lcssa.i, 2                 ; 2 uses
  %i.aca = icmp eq i8 %i.aby, 1
  br i1 %i.aca, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.acb = load i32, ptr @hf_cdma2k_Uzid, align 4
  %i.acc = zext i16 %i.abz to i32
  %i.acd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.acb, ptr noundef %0, i32 noundef %i.acc, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ace = add i16 %.7.lcssa.i, 18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.8.i = phi i16 [ %i.ace, %bb.by ], [ %i.abz, %bb.bx ] ; 11 uses
  %i.acf = load i32, ptr @hf_cdma2k_Ch_Ind, align 4
  %i.acg = zext i16 %.8.i to i32
  %i.ach = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.acf, ptr noundef %0, i32 noundef %i.acg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aci = add i16 %.8.i, 2
  %i.acj = load i32, ptr @hf_cdma2k_SR_ID, align 4
  %i.ack = zext i16 %i.aci to i32
  %i.acl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.acj, ptr noundef %0, i32 noundef %i.ack, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.acm = add i16 %.8.i, 5
  %i.acn = load i32, ptr @hf_cdma2k_Otd_Supported, align 4
  %i.aco = zext i16 %i.acm to i32
  %i.acp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.acn, ptr noundef %0, i32 noundef %i.aco, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acq = add i16 %.8.i, 6
  %i.acr = load i32, ptr @hf_cdma2k_Qpch_Supported, align 4
  %i.acs = zext i16 %i.acq to i32
  %i.act = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.acr, ptr noundef %0, i32 noundef %i.acs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acu = add i16 %.8.i, 7
  %i.acv = load i32, ptr @hf_cdma2k_Enhanced_Rc, align 4
  %i.acw = zext i16 %i.acu to i32
  %i.acx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.acv, ptr noundef %0, i32 noundef %i.acw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acy = add i16 %.8.i, 8
  %i.acz = load i32, ptr @hf_cdma2k_For_Rc_Pref, align 4
  %i.ada = zext i16 %i.acy to i32
  %i.adb = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.acz, ptr noundef %0, i32 noundef %i.ada, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.adc = add i16 %.8.i, 13
  %i.add = load i32, ptr @hf_cdma2k_Rev_Rc_Pref, align 4
  %i.ade = zext i16 %i.adc to i32
  %i.adf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.add, ptr noundef %0, i32 noundef %i.ade, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.adg = add i16 %.8.i, 18
end_hunk_0
begin_hunk_1_@cdma2k_message_decode:bb.a
  %i.aja = load i32, ptr @hf_cdma2k_Enc_Info_Incl, align 4
  %i.ajb = zext i16 %.17.i to i32                 ; 2 uses
  %i.ajc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aja, ptr noundef %0, i32 noundef %i.ajb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajd = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ajb, i32 noundef 1)
  %i.aje = add i16 %.17.i, 1                      ; 2 uses
  %.not518.i = icmp eq i8 %i.ajd, 0
  br i1 %.not518.i, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %.loopexit1.i
  %i.ajf = load i32, ptr @hf_cdma2k_Sig_Encrypt_Supp, align 4
  %i.ajg = zext i16 %i.aje to i32                 ; 2 uses
  %i.ajh = lshr i32 %i.ajg, 3
  %i.aji = tail call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.ajf, ptr noundef %0, i32 noundef %i.ajh, i32 noundef 1, i32 noundef 0)
  %i.ajj = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.ajk = tail call ptr @proto_item_add_subtree(ptr noundef %i.aji, i32 noundef %i.ajj) ; 5 uses
  %i.ajl = load i32, ptr @hf_cdma2k_Cmea, align 4
  %i.ajm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajk, i32 noundef %i.ajl, ptr noundef %0, i32 noundef %i.ajg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajn = add i16 %.17.i, 2
  %i.ajo = load i32, ptr @hf_cdma2k_Ecmea, align 4
  %i.ajp = zext i16 %i.ajn to i32                 ; 2 uses
  %i.ajq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajk, i32 noundef %i.ajo, ptr noundef %0, i32 noundef %i.ajp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajr = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ajp, i32 noundef 1)
  %i.ajs = add i16 %.17.i, 3
  %i.ajt = load i32, ptr @hf_cdma2k_Rea, align 4
  %i.aju = zext i16 %i.ajs to i32                 ; 2 uses
  %i.ajv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajk, i32 noundef %i.ajt, ptr noundef %0, i32 noundef %i.aju, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajw = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.aju, i32 noundef 1)
  %i.ajx = add i16 %.17.i, 4
  %i.ajy = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.ajz = zext i16 %i.ajx to i32
  %i.aka = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ajk, i32 noundef %i.ajy, ptr noundef %0, i32 noundef %i.ajz, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.akb = add i16 %.17.i, 9
  %i.akc = load i32, ptr @hf_cdma2k_DSig_Encrypt_Req, align 4
  %i.akd = zext i16 %i.akb to i32
  %i.ake = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.akc, ptr noundef %0, i32 noundef %i.akd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akf = add i16 %.17.i, 10
  %i.akg = load i32, ptr @hf_cdma2k_CSig_Encrypt_Req, align 4
  %i.akh = zext i16 %i.akf to i32
  %i.aki = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.akg, ptr noundef %0, i32 noundef %i.akh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akj = add i16 %.17.i, 11                     ; 2 uses
  %i.akk = icmp eq i8 %i.ajr, 1
  %i.akl = icmp eq i8 %i.ajw, 1
  %or.cond5.i = select i1 %i.akk, i1 true, i1 %i.akl
  br i1 %or.cond5.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.akm = load i32, ptr @hf_cdma2k_New_Sseq_H, align 4
  %i.akn = zext i16 %i.akj to i32
  %i.ako = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.akm, ptr noundef %0, i32 noundef %i.akn, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.akp = add i16 %.17.i, 35
  %i.akq = load i32, ptr @hf_cdma2k_New_Sseq_H_Sig, align 4
  %i.akr = zext i16 %i.akp to i32
  %i.aks = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.akq, ptr noundef %0, i32 noundef %i.akr, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.akt = add i16 %.17.i, 43
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.18.i = phi i16 [ %i.akt, %bb.ct ], [ %i.akj, %bb.cs ] ; 3 uses
  %i.aku = load i32, ptr @hf_cdma2k_Ui_Encrypt_Req, align 4
  %i.akv = zext i16 %.18.i to i32
  %i.akw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aku, ptr noundef %0, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akx = add i16 %.18.i, 1
  %i.aky = load i32, ptr @hf_cdma2k_Ui_Encrypt_Sup, align 4
  %i.akz = zext i16 %i.akx to i32
  %i.ala = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.aky, ptr noundef %0, i32 noundef %i.akz, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.alb = add i16 %.18.i, 9
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit1.i
  %.19.i = phi i16 [ %i.alb, %bb.cu ], [ %i.aje, %.loopexit1.i ] ; 3 uses
  %.2.i181 = phi ptr [ %i.ajk, %bb.cu ], [ %.1.i180, %.loopexit1.i ]
  %i.alc = load i32, ptr @hf_cdma2k_Sync_Id_Incl, align 4
  %i.ald = zext i16 %.19.i to i32                 ; 2 uses
  %i.ale = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.alc, ptr noundef %0, i32 noundef %i.ald, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alf = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ald, i32 noundef 1)
  %i.alg = add i16 %.19.i, 1                      ; 2 uses
  %.not519.i = icmp eq i8 %i.alf, 0
  br i1 %.not519.i, label %.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.alh = load i32, ptr @hf_cdma2k_Sync_Id_Len, align 4
  %i.ali = zext i16 %i.alg to i32                 ; 2 uses
  %i.alj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.alh, ptr noundef %0, i32 noundef %i.ali, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.alk = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ali, i32 noundef 4) ; 2 uses
  %i.all = add i16 %.19.i, 5                      ; 2 uses
  %.not52021.i = icmp eq i8 %i.alk, 0
  br i1 %.not52021.i, label %.loopexit.i, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.cw
  %i.alm = zext i8 %i.alk to i32
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.preheader.i
  %.2023.i = phi i16 [ %i.alt, %.lr.ph25.i ], [ %i.all, %.lr.ph25.preheader.i ] ; 2 uses
  %.049922.i = phi i32 [ %i.alu, %.lr.ph25.i ], [ %i.alm, %.lr.ph25.preheader.i ] ; 2 uses
  %i.aln = load i32, ptr @hf_cdma2k_Sync_Id, align 4
  %i.alo = zext i16 %.2023.i to i32               ; 2 uses
  %i.alp = lshr i32 %i.alo, 3
  %i.alq = tail call ptr @proto_tree_add_item(ptr noundef %.2.i181, i32 noundef %i.aln, ptr noundef %0, i32 noundef %i.alp, i32 noundef %.049922.i, i32 noundef 0)
  %i.alr = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.alo, i32 noundef 8)
  %i.als = zext i8 %i.alr to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.alq, ptr noundef nonnull @.str.1229, i32 noundef %i.als)
  %i.alt = add i16 %.2023.i, 8                    ; 2 uses
  %i.alu = add nsw i32 %.049922.i, -1             ; 2 uses
  %.not520.i = icmp eq i32 %i.alu, 0
  br i1 %.not520.i, label %.loopexit.i, label %.lr.ph25.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %.lr.ph25.i, %bb.cw, %bb.cv
  %.21.i = phi i16 [ %i.alg, %bb.cv ], [ %i.all, %bb.cw ], [ %i.alt, %.lr.ph25.i ] ; 3 uses
  %i.alv = load i32, ptr @hf_cdma2k_Prev_Sid_Incl, align 4
  %i.alw = zext i16 %.21.i to i32                 ; 2 uses
  %i.alx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.alv, ptr noundef %0, i32 noundef %i.alw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aly = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.alw, i32 noundef 1)
  %i.alz = add i16 %.21.i, 1                      ; 2 uses
  %.not521.i = icmp eq i8 %i.aly, 0
  br i1 %.not521.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.loopexit.i
  %i.ama = load i32, ptr @hf_cdma2k_Prev_Sid, align 4
  %i.amb = zext i16 %i.alz to i32
  %i.amc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.ama, ptr noundef %0, i32 noundef %i.amb, i32 noundef 15, i32 noundef 0) ; 0 uses
  %i.amd = add i16 %.21.i, 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.loopexit.i
  %.22.i = phi i16 [ %i.amd, %bb.cx ], [ %i.alz, %.loopexit.i ] ; 3 uses
  %i.ame = load i32, ptr @hf_cdma2k_Prev_Nid_Incl, align 4
  %i.amf = zext i16 %.22.i to i32                 ; 2 uses
  %i.amg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.ame, ptr noundef %0, i32 noundef %i.amf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amh = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.amf, i32 noundef 1)
  %i.ami = add i16 %.22.i, 1                      ; 2 uses
  %.not522.i = icmp eq i8 %i.amh, 0
  br i1 %.not522.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.amj = load i32, ptr @hf_cdma2k_Prev_Nid, align 4
  %i.amk = zext i16 %i.ami to i32
  %i.aml = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.amj, ptr noundef %0, i32 noundef %i.amk, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.amm = add i16 %.22.i, 17
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.23.i = phi i16 [ %i.amm, %bb.cz ], [ %i.ami, %bb.cy ] ; 3 uses
  %i.amn = load i32, ptr @hf_cdma2k_Prev_Pzid_Incl, align 4
  %i.amo = zext i16 %.23.i to i32                 ; 2 uses
  %i.amp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.amn, ptr noundef %0, i32 noundef %i.amo, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amq = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.amo, i32 noundef 1)
  %i.amr = add i16 %.23.i, 1                      ; 2 uses
  %.not523.i = icmp eq i8 %i.amq, 0
  br i1 %.not523.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ams = load i32, ptr @hf_cdma2k_Prev_Pzid, align 4
  %i.amt = zext i16 %i.amr to i32
  %i.amu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.ams, ptr noundef %0, i32 noundef %i.amt, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.amv = add i16 %.23.i, 9
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.24.i = phi i16 [ %i.amv, %bb.db ], [ %i.amr, %bb.da ] ; 3 uses
  %i.amw = load i32, ptr @hf_cdma2k_So_Bitmap_Ind, align 4
  %i.amx = zext i16 %.24.i to i32                 ; 2 uses
  %i.amy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.amw, ptr noundef %0, i32 noundef %i.amx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.amz = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.amx, i32 noundef 2) ; 2 uses
  %i.ana = add i16 %.24.i, 2                      ; 2 uses
  %.not524.i = icmp eq i8 %i.amz, 0
  br i1 %.not524.i, label %cdma2k_message_ORIGINATION.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.anb = zext i8 %i.amz to i32
  %i.anc = load i32, ptr @hf_cdma2k_So_Group_Num, align 4
  %i.and = zext i16 %i.ana to i32
  %i.ane = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.anc, ptr noundef %0, i32 noundef %i.and, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.anf = add i16 %.24.i, 7                      ; 2 uses
  %i.ang = load i32, ptr @hf_cdma2k_So_Bitmap, align 4
  %i.anh = zext i16 %i.anf to i32
  %i.ani = shl nuw nsw i32 %i.anb, 2              ; 2 uses
  %i.anj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.xb, i32 noundef %i.ang, ptr noundef %0, i32 noundef %i.anh, i32 noundef %i.ani, i32 noundef 0) ; 0 uses
  %i.ank = trunc nuw nsw i32 %i.ani to i16
  %i.anl = add i16 %i.anf, %i.ank
  br label %cdma2k_message_ORIGINATION.exit

cdma2k_message_ORIGINATION.exit:                  ; preds = %._crit_edge.i178, %bb.cl, %bb.dc, %bb.dd
  %.25.i = phi i16 [ %i.anl, %bb.dd ], [ %i.ana, %bb.dc ], [ %i.agu, %bb.cl ], [ %.7.lcssa.i, %._crit_edge.i178 ]
  %i.anm = zext i16 %.25.i to i32
  %i.ann = add nuw nsw i32 %i.anm, 7
  %storemerge.i179 = lshr i32 %i.ann, 3
  store i32 %storemerge.i179, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.de:                                            ; preds = %bb.af
  %i.ano = load i32, ptr @hf_cdma2k_PageRspMsg, align 4
  %i.anp = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.ano, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.anq = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.anr = tail call ptr @proto_item_add_subtree(ptr noundef %i.anp, i32 noundef %i.anq) ; 43 uses
  %i.ans = load i32, ptr @hf_cdma2k_Mob_Term, align 4
  %i.ant = load i32, ptr %2, align 4
  %i.anu = shl i32 %i.ant, 3
  %i.anv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.ans, ptr noundef %0, i32 noundef %i.anu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anw = load i32, ptr %2, align 4
  %i.anx = shl i32 %i.anw, 3                      ; 7 uses
  %i.any = load i32, ptr @hf_cdma2k_Slot_Cycle_Index, align 4
  %i.anz = and i32 %i.anx, 65528                  ; 2 uses
  %i.aoa = or disjoint i32 %i.anz, 1
  %i.aob = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.any, ptr noundef %0, i32 noundef %i.aoa, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aoc = load i32, ptr @hf_cdma2k_Mob_P_Rev, align 4
  %i.aod = or disjoint i32 %i.anz, 4              ; 2 uses
  %i.aoe = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aoc, ptr noundef %0, i32 noundef %i.aod, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aof = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.aod, i32 noundef 8)
  %i.aog = add i32 %i.anx, 12
  %i.aoh = tail call i8 @llvm.umin.i8(i8 %i.v, i8 %i.aof) ; 3 uses
  %i.aoi = and i32 %i.aog, 65532
  tail call fastcc void @dissect_cdma2000_scm(ptr noundef %0, ptr noundef %i.anr, i32 noundef %i.aoi)
  %i.aoj = add i32 %i.anx, 20
  %i.aok = load i32, ptr @hf_cdma2k_Request_Mode, align 4
  %i.aol = and i32 %i.aoj, 65532
  %i.aom = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aok, ptr noundef %0, i32 noundef %i.aol, i32 noundef 3, i32 noundef 0) ; 0 uses
  %15 = add i32 %i.anx, 23
  %i.aon = load i32, ptr @hf_cdma2k_service_option, align 4
  %16 = and i32 %15, 65535
  %i.aoo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aon, ptr noundef %0, i32 noundef %16, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.aop = add i32 %i.anx, 39
  %i.aoq = load i32, ptr @hf_cdma2k_pm, align 4
  %i.aor = and i32 %i.aop, 65535
  %i.aos = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aoq, ptr noundef %0, i32 noundef %i.aor, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aot = add i32 %i.anx, 40
  %i.aou = load i32, ptr @hf_cdma2k_Nar_An_Cap, align 4
  %i.aov = and i32 %i.aot, 65528
  %i.aow = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aou, ptr noundef %0, i32 noundef %i.aov, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aox = trunc i32 %i.anx to i16                ; 2 uses
  %17 = add i16 %i.aox, 41                        ; 2 uses
  %i.aoy = icmp ult i8 %i.aoh, 7
  %or.cond.i182 = and i1 %.0.lcssa, %i.aoy
  br i1 %or.cond.i182, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aoz = load i32, ptr @hf_cdma2k_encryption_supported, align 4
  %i.apa = zext i16 %17 to i32
  %i.apb = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aoz, ptr noundef %0, i32 noundef %i.apa, i32 noundef 4, i32 noundef 0) ; 0 uses
  %18 = add i16 %i.aox, 45
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0.i183 = phi i16 [ %18, %bb.df ], [ %17, %bb.de ] ; 2 uses
  %i.apc = load i32, ptr @hf_cdma2k_num_alt_so, align 4
  %i.apd = zext i16 %.0.i183 to i32               ; 2 uses
  %i.ape = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.apc, ptr noundef %0, i32 noundef %i.apd, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.apf = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.apd, i32 noundef 3) ; 2 uses
  %i.apg = add i16 %.0.i183, 3                    ; 2 uses
  %.not3.i = icmp eq i8 %i.apf, 0
  br i1 %.not3.i, label %._crit_edge.i188, label %.lr.ph.preheader.i184

.lr.ph.preheader.i184:                            ; preds = %bb.dg
  %i.aph = zext i8 %i.apf to i16
  br label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %.lr.ph.i185, %.lr.ph.preheader.i184
  %.15.i186 = phi i16 [ %i.apl, %.lr.ph.i185 ], [ %i.apg, %.lr.ph.preheader.i184 ] ; 2 uses
  %.03154.i = phi i16 [ %i.apm, %.lr.ph.i185 ], [ %i.aph, %.lr.ph.preheader.i184 ]
  %i.api = load i32, ptr @hf_cdma2k_Alt_So, align 4
  %i.apj = zext i16 %.15.i186 to i32
  %i.apk = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.api, ptr noundef %0, i32 noundef %i.apj, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.apl = add i16 %.15.i186, 16                  ; 2 uses
  %i.apm = add nsw i16 %.03154.i, -1              ; 2 uses
  %.not.i187 = icmp eq i16 %i.apm, 0
  br i1 %.not.i187, label %._crit_edge.i188, label %.lr.ph.i185, !llvm.loop !16

._crit_edge.i188:                                 ; preds = %.lr.ph.i185, %bb.dg
  %.1.lcssa.i = phi i16 [ %i.apg, %bb.dg ], [ %i.apl, %.lr.ph.i185 ] ; 4 uses
  %i.apn = icmp ugt i8 %i.aoh, 5
  br i1 %i.apn, label %bb.dh, label %cdma2k_message_PAGE_RESPONSE.exit

bb.dh:                                            ; preds = %._crit_edge.i188
  %i.apo = load i32, ptr @hf_cdma2k_Uzid_Incl, align 4
  %i.app = zext i16 %.1.lcssa.i to i32            ; 2 uses
  %i.apq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.apo, ptr noundef %0, i32 noundef %i.app, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.apr = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.app, i32 noundef 1)
  %19 = add i16 %.1.lcssa.i, 1                    ; 2 uses
  %i.aps = icmp eq i8 %i.apr, 1
  br i1 %i.aps, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.apt = load i32, ptr @hf_cdma2k_Uzid, align 4
  %i.apu = zext i16 %19 to i32
  %i.apv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.apt, ptr noundef %0, i32 noundef %i.apu, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.apw = add i16 %.1.lcssa.i, 17
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.2.i192 = phi i16 [ %i.apw, %bb.di ], [ %19, %bb.dh ] ; 10 uses
  %i.apx = load i32, ptr @hf_cdma2k_Ch_Ind, align 4
  %i.apy = zext i16 %.2.i192 to i32
  %i.apz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.apx, ptr noundef %0, i32 noundef %i.apy, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aqa = add i16 %.2.i192, 2
  %i.aqb = load i32, ptr @hf_cdma2k_Otd_Supported, align 4
  %i.aqc = zext i16 %i.aqa to i32
  %i.aqd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aqb, ptr noundef %0, i32 noundef %i.aqc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aqe = add i16 %.2.i192, 3
  %i.aqf = load i32, ptr @hf_cdma2k_Qpch_Supported, align 4
  %i.aqg = zext i16 %i.aqe to i32
  %i.aqh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aqf, ptr noundef %0, i32 noundef %i.aqg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aqi = add i16 %.2.i192, 4
  %i.aqj = load i32, ptr @hf_cdma2k_Enhanced_Rc, align 4
  %i.aqk = zext i16 %i.aqi to i32
  %i.aql = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aqj, ptr noundef %0, i32 noundef %i.aqk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aqm = add i16 %.2.i192, 5
  %i.aqn = load i32, ptr @hf_cdma2k_For_Rc_Pref, align 4
  %i.aqo = zext i16 %i.aqm to i32
  %i.aqp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aqn, ptr noundef %0, i32 noundef %i.aqo, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.aqq = add i16 %.2.i192, 10
  %i.aqr = load i32, ptr @hf_cdma2k_Rev_Rc_Pref, align 4
  %i.aqs = zext i16 %i.aqq to i32
  %i.aqt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aqr, ptr noundef %0, i32 noundef %i.aqs, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.aqu = add i16 %.2.i192, 15
  %i.aqv = load i32, ptr @hf_cdma2k_Fch_Supported, align 4
  %i.aqw = zext i16 %i.aqu to i32                 ; 2 uses
  %i.aqx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aqv, ptr noundef %0, i32 noundef %i.aqw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aqy = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.aqw, i32 noundef 1)
  %i.aqz = add i16 %.2.i192, 16                   ; 2 uses
  %i.ara = icmp eq i8 %i.aqy, 1
  br i1 %i.ara, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %i.arb = load i32, ptr @hf_cdma2k_Type_Specific_Fields, align 4
  %i.arc = zext i16 %i.aqz to i32                 ; 2 uses
  %i.ard = lshr i32 %i.arc, 3
  %i.are = tail call ptr @proto_tree_add_item(ptr noundef %i.anr, i32 noundef %i.arb, ptr noundef %0, i32 noundef %i.ard, i32 noundef 1, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.are, ptr noundef nonnull @.str.1231)
  %i.arf = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.arg = tail call ptr @proto_item_add_subtree(ptr noundef %i.are, i32 noundef %i.arf) ; 5 uses
  %i.arh = load i32, ptr @hf_cdma2k_Fch_Frame_Size, align 4
  %i.ari = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.arg, i32 noundef %i.arh, ptr noundef %0, i32 noundef %i.arc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.arj = add i16 %.2.i192, 17
  %i.ark = load i32, ptr @hf_cdma2k_For_Fch_Len, align 4
  %i.arl = zext i16 %i.arj to i32                 ; 2 uses
  %i.arm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.arg, i32 noundef %i.ark, ptr noundef %0, i32 noundef %i.arl, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.arn = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.arl, i32 noundef 3) ; 2 uses
  %i.aro = add i16 %.2.i192, 20                   ; 3 uses
  %.not321.i = icmp eq i8 %i.arn, 0
  br i1 %.not321.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.arp = zext i8 %i.arn to i32
  %i.arq = load i32, ptr @hf_cdma2k_For_Fch_Rc_Map, align 4
  %i.arr = zext i16 %i.aro to i32
  %i.ars = mul nuw nsw i32 %i.arp, 3              ; 2 uses
  %i.art = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.arg, i32 noundef %i.arq, ptr noundef %0, i32 noundef %i.arr, i32 noundef %i.ars, i32 noundef 0) ; 0 uses
  %i.aru = trunc nuw nsw i32 %i.ars to i16
  %i.arv = add i16 %i.aro, %i.aru
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.3.i202 = phi i16 [ %i.arv, %bb.dl ], [ %i.aro, %bb.dk ] ; 2 uses
  %i.arw = load i32, ptr @hf_cdma2k_Rev_Fch_Len, align 4
  %i.arx = zext i16 %.3.i202 to i32               ; 2 uses
  %i.ary = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.arg, i32 noundef %i.arw, ptr noundef %0, i32 noundef %i.arx, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.arz = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.arx, i32 noundef 3) ; 2 uses
  %i.asa = add i16 %.3.i202, 3                    ; 3 uses
  %.not322.i = icmp eq i8 %i.arz, 0
  br i1 %.not322.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.asb = zext i8 %i.arz to i32
  %i.asc = load i32, ptr @hf_cdma2k_Rev_Fch_Rc_Map, align 4
  %i.asd = zext i16 %i.asa to i32
  %i.ase = mul nuw nsw i32 %i.asb, 3              ; 2 uses
  %i.asf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.arg, i32 noundef %i.asc, ptr noundef %0, i32 noundef %i.asd, i32 noundef %i.ase, i32 noundef 0) ; 0 uses
  %i.asg = trunc nuw nsw i32 %i.ase to i16
  %i.ash = add i16 %i.asa, %i.asg
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dj
  %.4.i193 = phi i16 [ %i.ash, %bb.dn ], [ %i.asa, %bb.dm ], [ %i.aqz, %bb.dj ] ; 4 uses
  %i.asi = load i32, ptr @hf_cdma2k_Dcch_Supported, align 4
  %i.asj = zext i16 %.4.i193 to i32               ; 2 uses
  %i.ask = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.asi, ptr noundef %0, i32 noundef %i.asj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.asl = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.asj, i32 noundef 1)
  %i.asm = add i16 %.4.i193, 1                    ; 2 uses
  %i.asn = icmp eq i8 %i.asl, 1
  br i1 %i.asn, label %bb.dp, label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.aso = load i32, ptr @hf_cdma2k_Type_Specific_Fields, align 4
  %i.asp = zext i16 %i.asm to i32                 ; 2 uses
  %i.asq = lshr i32 %i.asp, 3
  %i.asr = tail call ptr @proto_tree_add_item(ptr noundef %i.anr, i32 noundef %i.aso, ptr noundef %0, i32 noundef %i.asq, i32 noundef 1, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.asr, ptr noundef nonnull @.str.1232)
  %i.ass = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.ast = tail call ptr @proto_item_add_subtree(ptr noundef %i.asr, i32 noundef %i.ass) ; 5 uses
  %i.asu = load i32, ptr @hf_cdma2k_Dcch_Frame_Size, align 4
  %i.asv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ast, i32 noundef %i.asu, ptr noundef %0, i32 noundef %i.asp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.asw = add i16 %.4.i193, 3
  %i.asx = load i32, ptr @hf_cdma2k_For_Dcch_Len, align 4
  %i.asy = zext i16 %i.asw to i32                 ; 2 uses
  %i.asz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ast, i32 noundef %i.asx, ptr noundef %0, i32 noundef %i.asy, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ata = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.asy, i32 noundef 3) ; 2 uses
  %i.atb = add i16 %.4.i193, 6                    ; 3 uses
  %.not323.i = icmp eq i8 %i.ata, 0
  br i1 %.not323.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.atc = zext i8 %i.ata to i32
  %i.atd = load i32, ptr @hf_cdma2k_For_Dcch_Rc_Map, align 4
  %i.ate = zext i16 %i.atb to i32
  %i.atf = mul nuw nsw i32 %i.atc, 3              ; 2 uses
  %i.atg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ast, i32 noundef %i.atd, ptr noundef %0, i32 noundef %i.ate, i32 noundef %i.atf, i32 noundef 0) ; 0 uses
  %i.ath = trunc nuw nsw i32 %i.atf to i16
  %i.ati = add i16 %i.atb, %i.ath
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.5.i201 = phi i16 [ %i.ati, %bb.dq ], [ %i.atb, %bb.dp ] ; 2 uses
  %i.atj = load i32, ptr @hf_cdma2k_Rev_Dcch_Len, align 4
  %i.atk = zext i16 %.5.i201 to i32               ; 2 uses
  %i.atl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ast, i32 noundef %i.atj, ptr noundef %0, i32 noundef %i.atk, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.atm = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.atk, i32 noundef 3) ; 2 uses
  %i.atn = add i16 %.5.i201, 3                    ; 3 uses
  %.not324.i = icmp eq i8 %i.atm, 0
  br i1 %.not324.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ato = zext i8 %i.atm to i32
  %i.atp = load i32, ptr @hf_cdma2k_Rev_Dcch_Rc_Map, align 4
  %i.atq = zext i16 %i.atn to i32
  %i.atr = mul nuw nsw i32 %i.ato, 3              ; 2 uses
  %i.ats = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ast, i32 noundef %i.atp, ptr noundef %0, i32 noundef %i.atq, i32 noundef %i.atr, i32 noundef 0) ; 0 uses
  %i.att = trunc nuw nsw i32 %i.atr to i16
  %i.atu = add i16 %i.atn, %i.att
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.do
  %.6.i194 = phi i16 [ %i.atu, %bb.ds ], [ %i.atn, %bb.dr ], [ %i.asm, %bb.do ] ; 7 uses
  %i.atv = load i32, ptr @hf_cdma2k_Rev_Fch_Gating_Req, align 4
  %i.atw = zext i16 %.6.i194 to i32
  %i.atx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.atv, ptr noundef %0, i32 noundef %i.atw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aty = add i16 %.6.i194, 1                    ; 2 uses
  %.not2.i = icmp eq i8 %i.aoh, 6
  br i1 %.not2.i, label %cdma2k_message_PAGE_RESPONSE.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.atz = load i32, ptr @hf_cdma2k_Sts_Supported, align 4
  %i.aua = zext i16 %i.aty to i32
  %i.aub = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.atz, ptr noundef %0, i32 noundef %i.aua, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.auc = add i16 %.6.i194, 2
  %i.aud = load i32, ptr @hf_cdma2k_ThreeXCchSupported, align 4
  %i.aue = zext i16 %i.auc to i32
  %i.auf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aud, ptr noundef %0, i32 noundef %i.aue, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aug = add i16 %.6.i194, 3
  %i.auh = load i32, ptr @hf_cdma2k_Wll_Incl, align 4
  %i.aui = zext i16 %i.aug to i32                 ; 2 uses
  %i.auj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.auh, ptr noundef %0, i32 noundef %i.aui, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.auk = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.aui, i32 noundef 1)
  %i.aul = add i16 %.6.i194, 4                    ; 2 uses
  %i.aum = icmp eq i8 %i.auk, 1
  br i1 %i.aum, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aun = load i32, ptr @hf_cdma2k_Wll_Device_Type, align 4
  %i.auo = zext i16 %i.aul to i32
  %i.aup = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aun, ptr noundef %0, i32 noundef %i.auo, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.auq = add i16 %.6.i194, 7
  %i.aur = load i32, ptr @hf_cdma2k_Hook_Status, align 4
  %i.aus = zext i16 %i.auq to i32
  %i.aut = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aur, ptr noundef %0, i32 noundef %i.aus, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.auu = add i16 %.6.i194, 11
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.8.i195 = phi i16 [ %i.auu, %bb.dv ], [ %i.aul, %bb.du ] ; 10 uses
  %i.auv = load i32, ptr @hf_cdma2k_Enc_Info_Incl, align 4
  %i.auw = zext i16 %.8.i195 to i32               ; 2 uses
  %i.aux = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.auv, ptr noundef %0, i32 noundef %i.auw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.auy = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.auw, i32 noundef 1)
  %i.auz = add i16 %.8.i195, 1                    ; 2 uses
  %i.ava = icmp eq i8 %i.auy, 1
  br i1 %i.ava, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.avb = load i32, ptr @hf_cdma2k_Sig_Encrypt_Supp, align 4
  %i.avc = zext i16 %i.auz to i32                 ; 2 uses
  %i.avd = lshr i32 %i.avc, 3
  %i.ave = tail call ptr @proto_tree_add_item(ptr noundef %i.anr, i32 noundef %i.avb, ptr noundef %0, i32 noundef %i.avd, i32 noundef 1, i32 noundef 0)
  %i.avf = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.avg = tail call ptr @proto_item_add_subtree(ptr noundef %i.ave, i32 noundef %i.avf) ; 4 uses
  %i.avh = load i32, ptr @hf_cdma2k_Cmea, align 4
  %i.avi = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.avg, i32 noundef %i.avh, ptr noundef %0, i32 noundef %i.avc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.avj = add i16 %.8.i195, 2
  %i.avk = load i32, ptr @hf_cdma2k_Ecmea, align 4
  %i.avl = zext i16 %i.avj to i32                 ; 2 uses
  %i.avm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.avg, i32 noundef %i.avk, ptr noundef %0, i32 noundef %i.avl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.avn = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.avl, i32 noundef 1)
  %i.avo = add i16 %.8.i195, 3
  %i.avp = load i32, ptr @hf_cdma2k_Rea, align 4
  %i.avq = zext i16 %i.avo to i32                 ; 2 uses
  %i.avr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.avg, i32 noundef %i.avp, ptr noundef %0, i32 noundef %i.avq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.avs = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.avq, i32 noundef 1)
  %i.avt = add i16 %.8.i195, 4
  %i.avu = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.avv = zext i16 %i.avt to i32
  %i.avw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.avg, i32 noundef %i.avu, ptr noundef %0, i32 noundef %i.avv, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.avx = add i16 %.8.i195, 9
  %i.avy = load i32, ptr @hf_cdma2k_DSig_Encrypt_Req, align 4
  %i.avz = zext i16 %i.avx to i32
  %i.awa = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.avy, ptr noundef %0, i32 noundef %i.avz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.awb = add i16 %.8.i195, 10
  %i.awc = load i32, ptr @hf_cdma2k_CSig_Encrypt_Req, align 4
  %i.awd = zext i16 %i.awb to i32
  %i.awe = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.awc, ptr noundef %0, i32 noundef %i.awd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.awf = add i16 %.8.i195, 11                   ; 2 uses
  %i.awg = icmp eq i8 %i.avn, 1
  %i.awh = icmp eq i8 %i.avs, 1
  %or.cond5.i199 = select i1 %i.awg, i1 true, i1 %i.awh
  br i1 %or.cond5.i199, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.awi = load i32, ptr @hf_cdma2k_New_Sseq_H, align 4
  %i.awj = zext i16 %i.awf to i32
  %i.awk = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.awi, ptr noundef %0, i32 noundef %i.awj, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.awl = add i16 %.8.i195, 35
  %i.awm = load i32, ptr @hf_cdma2k_New_Sseq_H_Sig, align 4
  %i.awn = zext i16 %i.awl to i32
  %i.awo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.awm, ptr noundef %0, i32 noundef %i.awn, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.awp = add i16 %.8.i195, 43
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.9.i200 = phi i16 [ %i.awp, %bb.dy ], [ %i.awf, %bb.dx ] ; 3 uses
  %i.awq = load i32, ptr @hf_cdma2k_Ui_Encrypt_Req, align 4
  %i.awr = zext i16 %.9.i200 to i32
  %i.aws = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.awq, ptr noundef %0, i32 noundef %i.awr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.awt = add i16 %.9.i200, 1
  %i.awu = load i32, ptr @hf_cdma2k_Ui_Encrypt_Sup, align 4
  %i.awv = zext i16 %i.awt to i32
  %i.aww = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.awu, ptr noundef %0, i32 noundef %i.awv, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.awx = add i16 %.9.i200, 9
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %.10.i196 = phi i16 [ %i.awx, %bb.dz ], [ %i.auz, %bb.dw ] ; 3 uses
  %i.awy = load i32, ptr @hf_cdma2k_Sync_Id_Incl, align 4
  %i.awz = zext i16 %.10.i196 to i32              ; 2 uses
  %i.axa = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.awy, ptr noundef %0, i32 noundef %i.awz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.axb = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.awz, i32 noundef 1)
  %i.axc = add i16 %.10.i196, 1                   ; 2 uses
  %i.axd = icmp eq i8 %i.axb, 1
  br i1 %i.axd, label %bb.eb, label %.loopexit.i197

bb.eb:                                            ; preds = %bb.ea
  %i.axe = load i32, ptr @hf_cdma2k_Sync_Id_Len, align 4
  %i.axf = zext i16 %i.axc to i32                 ; 2 uses
  %i.axg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.axe, ptr noundef %0, i32 noundef %i.axf, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.axh = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.axf, i32 noundef 4) ; 3 uses
  %i.axi = add i16 %.10.i196, 5                   ; 3 uses
  %i.axj = load i32, ptr @hf_cdma2k_Sync_Id, align 4
  %i.axk = lshr i16 %i.axi, 3
  %i.axl = zext nneg i16 %i.axk to i32
  %i.axm = zext i8 %i.axh to i32
  %i.axn = tail call ptr @proto_tree_add_item(ptr noundef %i.anr, i32 noundef %i.axj, ptr noundef %0, i32 noundef %i.axl, i32 noundef %i.axm, i32 noundef 0)
  %.not3256.i = icmp eq i8 %i.axh, 0
  br i1 %.not3256.i, label %.loopexit.i197, label %.lr.ph10.preheader.i

.lr.ph10.preheader.i:                             ; preds = %bb.eb
  %i.axo = zext i8 %i.axh to i16
  br label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %.lr.ph10.i, %.lr.ph10.preheader.i
  %.118.i = phi i16 [ %i.axs, %.lr.ph10.i ], [ %i.axi, %.lr.ph10.preheader.i ] ; 2 uses
  %.03147.i = phi i16 [ %i.axt, %.lr.ph10.i ], [ %i.axo, %.lr.ph10.preheader.i ]
  %i.axp = zext i16 %.118.i to i32
  %i.axq = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.axp, i32 noundef 8)
  %i.axr = zext i8 %i.axq to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.axn, ptr noundef nonnull @.str.1233, i32 noundef %i.axr)
  %i.axs = add i16 %.118.i, 8                     ; 2 uses
  %i.axt = add nsw i16 %.03147.i, -1              ; 2 uses
  %.not325.i = icmp eq i16 %i.axt, 0
  br i1 %.not325.i, label %.loopexit.i197, label %.lr.ph10.i, !llvm.loop !17

.loopexit.i197:                                   ; preds = %.lr.ph10.i, %bb.eb, %bb.ea
  %.12.i198 = phi i16 [ %i.axc, %bb.ea ], [ %i.axi, %bb.eb ], [ %i.axs, %.lr.ph10.i ] ; 3 uses
  %i.axu = load i32, ptr @hf_cdma2k_So_Bitmap_Ind, align 4
  %i.axv = zext i16 %.12.i198 to i32              ; 2 uses
  %i.axw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.axu, ptr noundef %0, i32 noundef %i.axv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.axx = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.axv, i32 noundef 2) ; 2 uses
  %i.axy = add i16 %.12.i198, 2                   ; 2 uses
  %.not326.i = icmp eq i8 %i.axx, 0
  br i1 %.not326.i, label %cdma2k_message_PAGE_RESPONSE.exit, label %bb.ec

bb.ec:                                            ; preds = %.loopexit.i197
  %i.axz = zext i8 %i.axx to i32
  %i.aya = load i32, ptr @hf_cdma2k_So_Group_Num, align 4
  %i.ayb = zext i16 %i.axy to i32
  %i.ayc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aya, ptr noundef %0, i32 noundef %i.ayb, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.ayd = add i16 %.12.i198, 7                   ; 2 uses
  %i.aye = load i32, ptr @hf_cdma2k_So_Bitmap, align 4
  %i.ayf = zext i16 %i.ayd to i32
  %i.ayg = shl nuw nsw i32 %i.axz, 2              ; 2 uses
  %i.ayh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.anr, i32 noundef %i.aye, ptr noundef %0, i32 noundef %i.ayf, i32 noundef %i.ayg, i32 noundef 0) ; 0 uses
  %i.ayi = trunc nuw nsw i32 %i.ayg to i16
  %i.ayj = add i16 %i.ayd, %i.ayi
  br label %cdma2k_message_PAGE_RESPONSE.exit

cdma2k_message_PAGE_RESPONSE.exit:                ; preds = %._crit_edge.i188, %bb.dt, %.loopexit.i197, %bb.ec
  %.13.i190 = phi i16 [ %i.ayj, %bb.ec ], [ %i.axy, %.loopexit.i197 ], [ %i.aty, %bb.dt ], [ %.1.lcssa.i, %._crit_edge.i188 ]
  %i.ayk = zext i16 %.13.i190 to i32
  %i.ayl = add nuw nsw i32 %i.ayk, 7
  %storemerge.i191 = lshr i32 %i.ayl, 3
  store i32 %storemerge.i191, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.ed:                                            ; preds = %bb.af
  %i.aym = load i32, ptr @hf_cdma2k_AuthChallRspMsg, align 4
  %i.ayn = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.aym, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.ayo = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.ayp = tail call ptr @proto_item_add_subtree(ptr noundef %i.ayn, i32 noundef %i.ayo)
  %i.ayq = load i32, ptr @hf_cdma2k_Authu, align 4
  %i.ayr = load i32, ptr %2, align 4
  %i.ays = shl i32 %i.ayr, 3
  %i.ayt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ayp, i32 noundef %i.ayq, ptr noundef %0, i32 noundef %i.ays, i32 noundef 18, i32 noundef 0) ; 0 uses
  %i.ayu = load i32, ptr %2, align 4
  %i.ayv = add i32 %i.ayu, 3
  store i32 %i.ayv, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.ee:                                            ; preds = %bb.af
  %i.ayw = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.ayx = tail call ptr @proto_tree_add_subtree(ptr noundef %i.jl, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef %i.ayw, ptr noundef null, ptr noundef nonnull @.str.1234) ; 3 uses
  %i.ayy = load i32, ptr @hf_cdma2k_Order_Cmd, align 4
  %i.ayz = load i32, ptr %2, align 4
  %i.aza = tail call ptr @proto_tree_add_item(ptr noundef %i.ayx, i32 noundef %i.ayy, ptr noundef %0, i32 noundef %i.ayz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.azb = load i32, ptr %2, align 4
  %i.azc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.azb)
  %i.azd = load i32, ptr @hf_cdma2k_Add_Record_Len, align 4
  %i.aze = load i32, ptr %2, align 4
  %i.azf = shl i32 %i.aze, 3
  %i.azg = or disjoint i32 %i.azf, 6
  %i.azh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ayx, i32 noundef %i.azd, ptr noundef %0, i32 noundef %i.azg, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.azi = load i32, ptr %2, align 4
  %i.azj = shl i32 %i.azi, 3
  %i.azk = or disjoint i32 %i.azj, 6
  %i.azl = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.azk, i32 noundef 3)
  %i.azm = load i32, ptr %2, align 4
  %i.azn = add i32 %i.azm, 1                      ; 3 uses
  store i32 %i.azn, ptr %2, align 4
  %.tr.i203 = trunc i32 %i.azn to i16
  %i.azo = shl i16 %.tr.i203, 3                   ; 39 uses
  %i.azp = or disjoint i16 %i.azo, 1              ; 11 uses
  %.not.i204 = icmp eq i8 %i.azl, 0
  br i1 %.not.i204, label %cdma2k_message_ORDER_CMD.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.azq = lshr i8 %i.azc, 2
  %i.azr = load i32, ptr @hf_cdma2k_Order_Specific_Fields, align 4
  %i.azs = tail call ptr @proto_tree_add_item(ptr noundef %i.ayx, i32 noundef %i.azr, ptr noundef %0, i32 noundef %i.azn, i32 noundef -1, i32 noundef 0) ; 17 uses
  %i.azt = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.azu = tail call ptr @proto_item_add_subtree(ptr noundef %i.azs, i32 noundef %i.azt) ; 66 uses
  switch i8 %i.azq, label %bb.fs [
    i8 2, label %bb.eg
    i8 4, label %bb.eh
    i8 21, label %bb.ei
    i8 27, label %bb.el
    i8 32, label %bb.ev
    i8 33, label %bb.ey
    i8 35, label %bb.ez
    i8 36, label %bb.fg
    i8 37, label %bb.fp
    i8 38, label %bb.fq
  ]

bb.eg:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1235)
  %i.azv = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.azw = zext i16 %i.azp to i32
  %i.azx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.azv, ptr noundef %0, i32 noundef %i.azw, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.azy = add i16 %i.azo, 9
  %i.azz = load i32, ptr @hf_cdma2k_Authbs, align 4
  %i.baa = zext i16 %i.azy to i32
  %i.bab = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.azz, ptr noundef %0, i32 noundef %i.baa, i32 noundef 18, i32 noundef 0) ; 0 uses
  %i.bac = add i16 %i.azo, 27
  %i.bad = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.bae = zext i16 %i.bac to i32
  %i.baf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bad, ptr noundef %0, i32 noundef %i.bae, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bag = add i16 %i.azo, 33
  br label %cdma2k_message_ORDER_CMD.exit

bb.eh:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1219)
  %i.bah = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bai = zext i16 %i.azp to i32
  %i.baj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bah, ptr noundef %0, i32 noundef %i.bai, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bak = add i16 %i.azo, 9
  br label %cdma2k_message_ORDER_CMD.exit

bb.ei:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1223)
  %i.bal = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bam = load i32, ptr %2, align 4
  %i.ban = shl i32 %i.bam, 3
  %i.bao = or disjoint i32 %i.ban, 1
  %i.bap = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bal, ptr noundef %0, i32 noundef %i.bao, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.baq = load i32, ptr %2, align 4
  %i.bar = shl i32 %i.baq, 3
  %i.bas = or disjoint i32 %i.bar, 1
  %i.bat = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bas, i32 noundef 8)
  %i.bau = add i16 %i.azo, 9                      ; 2 uses
  %i.bav = icmp eq i8 %i.bat, 3
  br i1 %i.bav, label %bb.ej, label %cdma2k_message_ORDER_CMD.exit

bb.ej:                                            ; preds = %bb.ei
  %i.baw = load i32, ptr @hf_cdma2k_Rsc_Mode_Ind, align 4
  %i.bax = zext i16 %i.bau to i32
  %i.bay = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.baw, ptr noundef %0, i32 noundef %i.bax, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.baz = load i32, ptr %2, align 4
  %i.bba = shl i32 %i.baz, 3
  %i.bbb = or disjoint i32 %i.bba, 1
  %i.bbc = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bbb, i32 noundef 1)
  %i.bbd = add i16 %i.azo, 10                     ; 2 uses
  %i.bbe = icmp eq i8 %i.bbc, 1
  br i1 %i.bbe, label %bb.ek, label %cdma2k_message_ORDER_CMD.exit

bb.ek:                                            ; preds = %bb.ej
  %i.bbf = load i32, ptr @hf_cdma2k_Rsci, align 4
  %i.bbg = zext i16 %i.bbd to i32
  %i.bbh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bbf, ptr noundef %0, i32 noundef %i.bbg, i32 noundef 4, i32 noundef 0) ; 0 uses
  %20 = add i16 %i.azo, 14
  %i.bbi = load i32, ptr @hf_cdma2k_Rsc_End_Time_Unit, align 4
  %i.bbj = zext i16 %20 to i32
  %i.bbk = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bbi, ptr noundef %0, i32 noundef %i.bbj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bbl = add i16 %i.azo, 16
  %i.bbm = load i32, ptr @hf_cdma2k_Rsc_End_Time_Value, align 4
  %i.bbn = zext i16 %i.bbl to i32
  %i.bbo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bbm, ptr noundef %0, i32 noundef %i.bbn, i32 noundef 4, i32 noundef 0) ; 0 uses
  %21 = add i16 %i.azo, 20
  br label %cdma2k_message_ORDER_CMD.exit

bb.el:                                            ; preds = %bb.ef
  %i.bbp = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bbq = zext i16 %i.azp to i32                 ; 2 uses
  %i.bbr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bbp, ptr noundef %0, i32 noundef %i.bbq, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bbs = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bbq, i32 noundef 8)
  %i.bbt = add i16 %i.azo, 9                      ; 7 uses
  switch i8 %i.bbs, label %.thread5.i [
    i8 0, label %bb.em
    i8 1, label %bb.en
    i8 2, label %bb.eo
    i8 4, label %bb.ep
    i8 5, label %bb.eq
    i8 7, label %bb.er
  ]

bb.em:                                            ; preds = %bb.el
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1236)
  br label %.thread5.i

bb.en:                                            ; preds = %bb.el
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1237)
  br label %.thread5.i

bb.eo:                                            ; preds = %bb.el
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1238)
  br label %.thread5.i

bb.ep:                                            ; preds = %bb.el
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1239)
  br label %.thread5.i

bb.eq:                                            ; preds = %bb.el
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1236)
  %i.bbu = load i32, ptr @hf_cdma2k_Roam_Ind, align 4
  %i.bbv = zext i16 %i.bbt to i32
  %i.bbw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bbu, ptr noundef %0, i32 noundef %i.bbv, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bbx = add i16 %i.azo, 17
  br label %.thread5.i

bb.er:                                            ; preds = %bb.el
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1236)
  %i.bby = load i32, ptr @hf_cdma2k_Roam_Ind, align 4
  %i.bbz = zext i16 %i.bbt to i32
  %i.bca = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bby, ptr noundef %0, i32 noundef %i.bbz, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bcb = add i16 %i.azo, 17
  %i.bcc = load i32, ptr @hf_cdma2k_C_Sig_Encrypt_Mode, align 4
  %i.bcd = zext i16 %i.bcb to i32                 ; 2 uses
  %i.bce = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bcc, ptr noundef %0, i32 noundef %i.bcd, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bcf = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bcd, i32 noundef 3)
  %i.bcg = add i16 %i.azo, 25
  %i.bch = load i32, ptr @hf_cdma2k_Msg_Int_Info_Incl, align 4
  %i.bci = zext i16 %i.bcg to i32                 ; 2 uses
  %i.bcj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bch, ptr noundef %0, i32 noundef %i.bci, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bck = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bci, i32 noundef 1)
  %i.bcl = add i16 %i.azo, 26                     ; 3 uses
  %i.bcm = add i8 %i.bcf, -1
  %i.bcn = icmp ult i8 %i.bcm, 2
  %i.bco = icmp eq i8 %i.bck, 1                   ; 2 uses
  br i1 %i.bcn, label %.split.i216, label %bb.es

.split.i216:                                      ; preds = %bb.er
  %i.bcp = load i32, ptr @hf_cdma2k_Enc_Key_Size, align 4
  %i.bcq = zext i16 %i.bcl to i32
  %i.bcr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bcp, ptr noundef %0, i32 noundef %i.bcq, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bcs = add i16 %i.azo, 29                     ; 2 uses
  br i1 %i.bco, label %bb.et, label %.thread5.i

bb.es:                                            ; preds = %bb.er
  br i1 %i.bco, label %bb.et, label %.thread5.i

bb.et:                                            ; preds = %bb.es, %.split.i216
  %.18.i215 = phi i16 [ %i.bcs, %.split.i216 ], [ %i.bcl, %bb.es ] ; 3 uses
  %i.bct = load i32, ptr @hf_cdma2k_Change_Keys, align 4
  %i.bcu = zext i16 %.18.i215 to i32
  %i.bcv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bct, ptr noundef %0, i32 noundef %i.bcu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bcw = add i16 %.18.i215, 1
  %i.bcx = load i32, ptr @hf_cdma2k_Use_Uak, align 4
  %i.bcy = zext i16 %i.bcw to i32
  %i.bcz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bcx, ptr noundef %0, i32 noundef %i.bcy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bda = add i16 %.18.i215, 2
  br label %.thread5.i

.thread5.i:                                       ; preds = %bb.et, %bb.es, %.split.i216, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el
  %.2.i214 = phi i16 [ %i.bda, %bb.et ], [ %i.bcl, %bb.es ], [ %i.bcs, %.split.i216 ], [ %i.bbx, %bb.eq ], [ %i.bbt, %bb.ep ], [ %i.bbt, %bb.eo ], [ %i.bbt, %bb.en ], [ %i.bbt, %bb.em ], [ %i.bbt, %bb.el ] ; 3 uses
  %i.bdb = zext i16 %.2.i214 to i32               ; 2 uses
  %i.bdc = and i32 %i.bdb, 7                      ; 2 uses
  %.not403.i = icmp eq i32 %i.bdc, 0
  br i1 %.not403.i, label %cdma2k_message_ORDER_CMD.exit, label %bb.eu

bb.eu:                                            ; preds = %.thread5.i
  %i.bdd = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.bde = sub nuw nsw i32 8, %i.bdc
  %i.bdf = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bdd, ptr noundef %0, i32 noundef %i.bdb, i32 noundef %i.bde, i32 noundef 0) ; 0 uses
  br label %cdma2k_message_ORDER_CMD.exit

bb.ev:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1240)
  %i.bdg = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bdh = zext i16 %i.azp to i32
  %i.bdi = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bdg, ptr noundef %0, i32 noundef %i.bdh, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bdj = add i16 %i.azo, 9
  %i.bdk = load i32, ptr @hf_cdma2k_Retry_Type, align 4
  %i.bdl = zext i16 %i.bdj to i32                 ; 2 uses
  %i.bdm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bdk, ptr noundef %0, i32 noundef %i.bdl, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bdn = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bdl, i32 noundef 3)
  %i.bdo = add i16 %i.azo, 12                     ; 2 uses
  %.not402.i = icmp eq i8 %i.bdn, 0
  br i1 %.not402.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bdp = load i32, ptr @hf_cdma2k_Retry_Delay, align 4
  %i.bdq = zext i16 %i.bdo to i32
  %i.bdr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bdp, ptr noundef %0, i32 noundef %i.bdq, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bds = add i16 %i.azo, 20
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.3.i213 = phi i16 [ %i.bds, %bb.ew ], [ %i.bdo, %bb.ev ] ; 2 uses
  %i.bdt = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.bdu = zext i16 %.3.i213 to i32
  %i.bdv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bdt, ptr noundef %0, i32 noundef %i.bdu, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bdw = add i16 %.3.i213, 5
  br label %cdma2k_message_ORDER_CMD.exit

bb.ey:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1241)
  %i.bdx = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bdy = zext i16 %i.azp to i32
  %i.bdz = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bdx, ptr noundef %0, i32 noundef %i.bdy, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bea = add i16 %i.azo, 9
  %i.beb = load i32, ptr @hf_cdma2k_Reject_Reason, align 4
  %i.bec = zext i16 %i.bea to i32
  %i.bed = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.beb, ptr noundef %0, i32 noundef %i.bec, i32 noundef 4, i32 noundef 0) ; 0 uses
  %22 = add i16 %i.azo, 13
  %i.bee = load i32, ptr @hf_cdma2k_Rejected_Msg_Type, align 4
  %i.bef = zext i16 %22 to i32
  %i.beg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bee, ptr noundef %0, i32 noundef %i.bef, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.beh = add i16 %i.azo, 21
  %i.bei = load i32, ptr @hf_cdma2k_Rejected_Msg_Seq, align 4
  %i.bej = zext i16 %i.beh to i32
  %i.bek = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bei, ptr noundef %0, i32 noundef %i.bej, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bel = add i16 %i.azo, 24
  br label %cdma2k_message_ORDER_CMD.exit

bb.ez:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1242)
  %i.bem = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.ben = zext i16 %i.azp to i32
  %i.beo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bem, ptr noundef %0, i32 noundef %i.ben, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bep = add i16 %i.azo, 9
  %i.beq = load i32, ptr @hf_cdma2k_All_Bcmc_Flows_Ind, align 4
  %i.ber = zext i16 %i.bep to i32                 ; 2 uses
  %i.bes = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.beq, ptr noundef %0, i32 noundef %i.ber, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bet = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ber, i32 noundef 1) ; 2 uses
  %i.beu = add i16 %i.azo, 10                     ; 2 uses
  %i.bev = icmp eq i8 %i.bet, 1
  br i1 %i.bev, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.bew = load i32, ptr @hf_cdma2k_Clear_All_Retry_Delay, align 4
  %i.bex = zext i16 %i.beu to i32                 ; 2 uses
  %i.bey = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bew, ptr noundef %0, i32 noundef %i.bex, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bez = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bex, i32 noundef 1) ; 0 uses
  %23 = add i16 %i.azo, 11
  %i.bfa = load i32, ptr @hf_cdma2k_All_Bcmc_Reason, align 4
  %i.bfb = zext i16 %23 to i32
  %i.bfc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bfa, ptr noundef %0, i32 noundef %i.bfb, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bfd = add i16 %i.azo, 15
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.5.i211 = phi i16 [ %i.bfd, %bb.fa ], [ %i.beu, %bb.ez ] ; 3 uses
  %i.bfe = load i32, ptr @hf_cdma2k_All_Bcmc_Retry_Delay, align 4
  %i.bff = zext i16 %.5.i211 to i32
  %i.bfg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bfe, ptr noundef %0, i32 noundef %i.bff, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bfh = add i16 %.5.i211, 8                    ; 2 uses
  %i.bfi = icmp eq i8 %i.bet, 0
  br i1 %i.bfi, label %bb.fc, label %.thread12.i

bb.fc:                                            ; preds = %bb.fb
  %i.bfj = load i32, ptr @hf_cdma2k_Num_Bcmc_Programs, align 4
  %i.bfk = zext i16 %i.bfh to i32                 ; 2 uses
  %i.bfl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bfj, ptr noundef %0, i32 noundef %i.bfk, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bfm = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bfk, i32 noundef 8)
  %i.bfn = add i16 %.5.i211, 14                   ; 2 uses
  %i.bfo = icmp eq i8 %i.bfm, 0
  br i1 %i.bfo, label %cdma2k_message_ORDER_CMD.exit, label %.thread12.i

.thread12.i:                                      ; preds = %bb.fc, %bb.fb
  %.615.i = phi i16 [ %i.bfn, %bb.fc ], [ %i.bfh, %bb.fb ] ; 2 uses
  %i.bfp = load i32, ptr @hf_cdma2k_Bcmc_Program_Id_Len, align 4
  %i.bfq = zext i16 %.615.i to i32                ; 2 uses
  %i.bfr = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bfp, ptr noundef %0, i32 noundef %i.bfq, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bfs = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bfq, i32 noundef 5)
  %i.bft = add i16 %.615.i, 5                     ; 2 uses
  %i.bfu = load i32, ptr @hf_cdma2k_Bcmc_Program_Id, align 4
  %i.bfv = zext i16 %i.bft to i32
  %i.bfw = zext i8 %i.bfs to i32
  %i.bfx = add nuw nsw i32 %i.bfw, 1              ; 2 uses
  %i.bfy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bfu, ptr noundef %0, i32 noundef %i.bfv, i32 noundef %i.bfx, i32 noundef 0) ; 0 uses
  %i.bfz = trunc nuw nsw i32 %i.bfx to i16
  %i.bga = add i16 %i.bft, %i.bfz                 ; 2 uses
  %i.bgb = load i32, ptr @hf_cdma2k_Bcmc_Flow_Discriminator_Len, align 4
  %i.bgc = zext i16 %i.bga to i32                 ; 2 uses
  %i.bgd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bgb, ptr noundef %0, i32 noundef %i.bgc, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bge = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bgc, i32 noundef 3) ; 3 uses
  %i.bgf = add i16 %i.bga, 3                      ; 3 uses
  %i.bgg = zext i8 %i.bge to i32                  ; 2 uses
  %.not401.i = icmp eq i8 %i.bge, 0
  br i1 %.not401.i, label %.thread12._crit_edge.i, label %bb.fd

bb.fd:                                            ; preds = %.thread12.i
  %i.bgh = load i32, ptr @hf_cdma2k_Num_Flow_Discriminator, align 4
  %i.bgi = zext i16 %i.bgf to i32
  %i.bgj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bgh, ptr noundef %0, i32 noundef %i.bgi, i32 noundef %i.bgg, i32 noundef 0) ; 0 uses
  %i.bgk = zext i8 %i.bge to i16                  ; 2 uses
  %i.bgl = add i16 %i.bgf, %i.bgk
  br label %.thread12._crit_edge.i

.thread12._crit_edge.i:                           ; preds = %bb.fd, %.thread12.i
  %.pre-phi.i = phi i16 [ %i.bgk, %bb.fd ], [ 0, %.thread12.i ]
  %.7.i = phi i16 [ %i.bgl, %bb.fd ], [ %i.bgf, %.thread12.i ] ; 2 uses
  %i.bgm = load i32, ptr @hf_cdma2k_Bcmc_Flow_Discriminator, align 4
  %i.bgn = zext i16 %.7.i to i32
  %i.bgo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bgm, ptr noundef %0, i32 noundef %i.bgn, i32 noundef %i.bgg, i32 noundef 0) ; 0 uses
  %i.bgp = add i16 %.7.i, %.pre-phi.i             ; 4 uses
  %i.bgq = load i32, ptr @hf_cdma2k_Same_As_Previous_Bcmc_Flow, align 4
  %i.bgr = zext i16 %i.bgp to i32                 ; 2 uses
  %i.bgs = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bgq, ptr noundef %0, i32 noundef %i.bgr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bgt = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bgr, i32 noundef 1)
  %i.bgu = add i16 %i.bgp, 1                      ; 2 uses
  %i.bgv = icmp eq i8 %i.bgt, 0
  br i1 %i.bgv, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %.thread12._crit_edge.i
  %i.bgw = load i32, ptr @hf_cdma2k_Clear_Retry_Delay, align 4
  %i.bgx = zext i16 %i.bgu to i32                 ; 2 uses
  %i.bgy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bgw, ptr noundef %0, i32 noundef %i.bgx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bgz = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bgx, i32 noundef 1) ; 0 uses
  %i.bha = add i16 %i.bgp, 2
  %i.bhb = load i32, ptr @hf_cdma2k_Bcmc_Reason, align 4
  %i.bhc = zext i16 %i.bha to i32
  %i.bhd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bhb, ptr noundef %0, i32 noundef %i.bhc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bhe = add i16 %i.bgp, 6
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.thread12._crit_edge.i
  %.9.i212 = phi i16 [ %i.bhe, %bb.fe ], [ %i.bgu, %.thread12._crit_edge.i ] ; 2 uses
  %i.bhf = load i32, ptr @hf_cdma2k_Bcmc_Retry_Delay, align 4
  %i.bhg = zext i16 %.9.i212 to i32
  %i.bhh = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bhf, ptr noundef %0, i32 noundef %i.bhg, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bhi = add i16 %.9.i212, 8
  br label %cdma2k_message_ORDER_CMD.exit

bb.fg:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1224)
  %i.bhj = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bhk = zext i16 %i.azp to i32                 ; 2 uses
  %i.bhl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bhj, ptr noundef %0, i32 noundef %i.bhk, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bhm = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bhk, i32 noundef 1)
  %i.bhn = add i16 %i.azo, 9
  %i.bho = load i32, ptr @hf_cdma2k_Rsc_Mode_Supported, align 4
  %i.bhp = zext i16 %i.bhn to i32                 ; 2 uses
  %i.bhq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bho, ptr noundef %0, i32 noundef %i.bhp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bhr = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bhp, i32 noundef 1)
  %i.bhs = add i16 %i.azo, 10                     ; 2 uses
  %i.bht = icmp eq i8 %i.bhr, 1
  br i1 %i.bht, label %bb.fh, label %.thread19.i

bb.fh:                                            ; preds = %bb.fg
  %i.bhu = load i32, ptr @hf_cdma2k_Max_Rsc_End_Time_Unit, align 4
  %i.bhv = zext i16 %i.bhs to i32
  %i.bhw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bhu, ptr noundef %0, i32 noundef %i.bhv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bhx = add i16 %i.azo, 12
  %i.bhy = load i32, ptr @hf_cdma2k_Max_Rsc_End_Time_Value, align 4
  %i.bhz = zext i16 %i.bhx to i32
  %i.bia = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bhy, ptr noundef %0, i32 noundef %i.bhz, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bib = add i16 %i.azo, 16
  %i.bic = load i32, ptr @hf_cdma2k_Ignore_Qpch, align 4
  %i.bid = zext i16 %i.bib to i32
  %i.bie = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bic, ptr noundef %0, i32 noundef %i.bid, i32 noundef 1, i32 noundef 0) ; 0 uses
  %24 = add i16 %i.azo, 17                        ; 2 uses
  %i.bif = icmp eq i8 %i.bhm, 0
  br i1 %i.bif, label %bb.fi, label %.thread19.i

bb.fi:                                            ; preds = %bb.fh
  %i.big = load i32, ptr @hf_cdma2k_Req_Rsci, align 4
  %i.bih = zext i16 %24 to i32
  %i.bii = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.big, ptr noundef %0, i32 noundef %i.bih, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bij = add i16 %i.azo, 21
  br label %.thread19.i

.thread19.i:                                      ; preds = %bb.fi, %bb.fh, %bb.fg
  %.11.i207 = phi i16 [ %i.bij, %bb.fi ], [ %24, %bb.fh ], [ %i.bhs, %bb.fg ] ; 3 uses
  %i.bik = load i32, ptr @hf_cdma2k_Rer_Mode_Incl, align 4
  %i.bil = zext i16 %.11.i207 to i32              ; 2 uses
  %i.bim = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bik, ptr noundef %0, i32 noundef %i.bil, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bin = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bil, i32 noundef 1)
  %i.bio = add i16 %.11.i207, 1                   ; 2 uses
  %i.bip = icmp eq i8 %i.bin, 1
  br i1 %i.bip, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.thread19.i
  %i.biq = load i32, ptr @hf_cdma2k_Rer_Mode_Enabled, align 4
  %i.bir = zext i16 %i.bio to i32                 ; 2 uses
  %i.bis = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.biq, ptr noundef %0, i32 noundef %i.bir, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bit = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bir, i32 noundef 1)
  %i.biu = add i16 %.11.i207, 2
  %i.biv = icmp eq i8 %i.bit, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %.thread19.i
  %.12.i208 = phi i16 [ %i.biu, %bb.fj ], [ %i.bio, %.thread19.i ] ; 4 uses
  %.0391.i = phi i1 [ %i.biv, %bb.fj ], [ false, %.thread19.i ]
  %i.biw = load i32, ptr @hf_cdma2k_Rer_Max_Num_Msg_Idx, align 4
  %i.bix = zext i16 %.12.i208 to i32
  %i.biy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.biw, ptr noundef %0, i32 noundef %i.bix, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.biz = add i16 %.12.i208, 3
  %i.bja = load i32, ptr @hf_cdma2k_Rer_Time, align 4
  %i.bjb = zext i16 %i.biz to i32                 ; 2 uses
  %i.bjc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bja, ptr noundef %0, i32 noundef %i.bjb, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bjd = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bjb, i32 noundef 3)
  %i.bje = add i16 %.12.i208, 6                   ; 2 uses
  %i.bjf = icmp ne i8 %i.bjd, 7
  %or.cond14.i = select i1 %i.bjf, i1 %.0391.i, i1 false
  br i1 %or.cond14.i, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.bjg = load i32, ptr @hf_cdma2k_Rer_Time_Unit, align 4
  %i.bjh = zext i16 %i.bje to i32
  %i.bji = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bjg, ptr noundef %0, i32 noundef %i.bjh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bjj = add i16 %.12.i208, 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.13.i209 = phi i16 [ %i.bjj, %bb.fl ], [ %i.bje, %bb.fk ] ; 4 uses
  %i.bjk = load i32, ptr @hf_cdma2k_Max_Rer_Pilot_List_Size, align 4
  %i.bjl = zext i16 %.13.i209 to i32
  %i.bjm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bjk, ptr noundef %0, i32 noundef %i.bjl, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bjn = add i16 %.13.i209, 3
  %i.bjo = load i32, ptr @hf_cdma2k_Tkz_Mode_Incl, align 4
  %i.bjp = zext i16 %i.bjn to i32                 ; 2 uses
  %i.bjq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bjo, ptr noundef %0, i32 noundef %i.bjp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bjr = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bjp, i32 noundef 1)
  %i.bjs = add i16 %.13.i209, 4                   ; 2 uses
  %i.bjt = icmp eq i8 %i.bjr, 1
  br i1 %i.bjt, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.bju = load i32, ptr @hf_cdma2k_Tkz_Mode_Enabled, align 4
  %i.bjv = zext i16 %i.bjs to i32
  %i.bjw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bju, ptr noundef %0, i32 noundef %i.bjv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bjx = add i16 %.13.i209, 5
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.14.i210 = phi i16 [ %i.bjx, %bb.fn ], [ %i.bjs, %bb.fm ] ; 5 uses
  %i.bjy = load i32, ptr @hf_cdma2k_Tkz_Max_Num_Msg_Idx, align 4
  %i.bjz = zext i16 %.14.i210 to i32
  %i.bka = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bjy, ptr noundef %0, i32 noundef %i.bjz, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bkb = add i16 %.14.i210, 3
  %i.bkc = load i32, ptr @hf_cdma2k_Tkz_Update_Prd, align 4
  %i.bkd = zext i16 %i.bkb to i32
  %i.bke = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bkc, ptr noundef %0, i32 noundef %i.bkd, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bkf = add i16 %.14.i210, 7
  %i.bkg = load i32, ptr @hf_cdma2k_Tkz_List_Len, align 4
  %i.bkh = zext i16 %i.bkf to i32
  %i.bki = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bkg, ptr noundef %0, i32 noundef %i.bkh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bkj = add i16 %.14.i210, 11
  %i.bkk = load i32, ptr @hf_cdma2k_Tkz_Timer, align 4
  %i.bkl = zext i16 %i.bkj to i32
  %i.bkm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bkk, ptr noundef %0, i32 noundef %i.bkl, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bkn = add i16 %.14.i210, 19
  br label %cdma2k_message_ORDER_CMD.exit

bb.fp:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1243)
  %i.bko = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bkp = zext i16 %i.azp to i32
  %i.bkq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bko, ptr noundef %0, i32 noundef %i.bkp, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bkr = add i16 %i.azo, 9
  %i.bks = load i32, ptr @hf_cdma2k_Sr_Id_Bitmap, align 4
  %i.bkt = zext i16 %i.bkr to i32
  %i.bku = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bks, ptr noundef %0, i32 noundef %i.bkt, i32 noundef 6, i32 noundef 0) ; 0 uses
  %25 = add i16 %i.azo, 15
  %i.bkv = load i32, ptr @hf_cdma2k_Service_Status, align 4
  %i.bkw = zext i16 %25 to i32
  %i.bkx = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bkv, ptr noundef %0, i32 noundef %i.bkw, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bky = add i16 %i.azo, 18                     ; 2 uses
  %i.bkz = zext i16 %i.bky to i32
  %i.bla = load i32, ptr @hf_cdma2k_Reserved, align 4
  %i.blb = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.bla, ptr noundef %0, i32 noundef %i.bkz, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %cdma2k_message_ORDER_CMD.exit

bb.fq:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1244)
  %i.blc = load i32, ptr @hf_cdma2k_Ordq, align 4
  %i.bld = zext i16 %i.azp to i32
  %i.ble = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.blc, ptr noundef %0, i32 noundef %i.bld, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.blf = add i16 %i.azo, 9
  %i.blg = load i32, ptr @hf_cdma2k_Regulatory_Ind_Incl, align 4
  %i.blh = zext i16 %i.blf to i32                 ; 2 uses
  %i.bli = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.blg, ptr noundef %0, i32 noundef %i.blh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.blj = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.blh, i32 noundef 1)
  %i.blk = add i16 %i.azo, 10                     ; 2 uses
  %i.bll = icmp eq i8 %i.blj, 1
  br i1 %i.bll, label %bb.fr, label %cdma2k_message_ORDER_CMD.exit

bb.fr:                                            ; preds = %bb.fq
  %i.blm = load i32, ptr @hf_cdma2k_Regulatory_Ind, align 4
  %i.bln = zext i16 %i.blk to i32
  %i.blo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.azu, i32 noundef %i.blm, ptr noundef %0, i32 noundef %i.bln, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.blp = add i16 %i.azo, 12
  br label %cdma2k_message_ORDER_CMD.exit

bb.fs:                                            ; preds = %bb.ef
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.azs, ptr noundef nonnull @.str.1245)
  br label %cdma2k_message_ORDER_CMD.exit

cdma2k_message_ORDER_CMD.exit:                    ; preds = %bb.ee, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %.thread5.i, %bb.eu, %bb.ex, %bb.ey, %bb.fc, %bb.ff, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs
  %.15.i205 = phi i16 [ %i.azp, %bb.fs ], [ %i.bag, %bb.eg ], [ %i.bak, %bb.eh ], [ %21, %bb.ek ], [ %i.bbd, %bb.ej ], [ %i.bau, %bb.ei ], [ %.2.i214, %bb.eu ], [ %.2.i214, %.thread5.i ], [ %i.bdw, %bb.ex ], [ %i.bel, %bb.ey ], [ %i.bhi, %bb.ff ], [ %i.bfn, %bb.fc ], [ %i.bkn, %bb.fo ], [ %i.bky, %bb.fp ], [ %i.azp, %bb.ee ], [ %i.blp, %bb.fr ], [ %i.blk, %bb.fq ]
  %i.blq = zext i16 %.15.i205 to i32
  %i.blr = add nuw nsw i32 %i.blq, 7
  %storemerge.i206 = lshr i32 %i.blr, 3
  store i32 %storemerge.i206, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.ft:                                            ; preds = %bb.af
  %i.bls = load i32, ptr @hf_cdma2k_DataBurstCmdMsg, align 4
  %i.blt = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.bls, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.blu = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.blv = tail call ptr @proto_item_add_subtree(ptr noundef %i.blt, i32 noundef %i.blu) ; 5 uses
  %i.blw = load i32, ptr @hf_cdma2k_Msg_Number, align 4
  %i.blx = load i32, ptr %2, align 4
  %i.bly = tail call ptr @proto_tree_add_item(ptr noundef %i.blv, i32 noundef %i.blw, ptr noundef %0, i32 noundef %i.blx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.blz = load i32, ptr %2, align 4
  %i.bma = add i32 %i.blz, 1                      ; 2 uses
  store i32 %i.bma, ptr %2, align 4
  %i.bmb = load i32, ptr @hf_cdma2k_Burst_Type, align 4
  %i.bmc = shl i32 %i.bma, 3
  %i.bmd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blv, i32 noundef %i.bmb, ptr noundef %0, i32 noundef %i.bmc, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bme = load i32, ptr @hf_cdma2k_Num_Msgs, align 4
  %i.bmf = load i32, ptr %2, align 4
  %i.bmg = shl i32 %i.bmf, 3
  %i.bmh = or disjoint i32 %i.bmg, 6
  %i.bmi = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blv, i32 noundef %i.bme, ptr noundef %0, i32 noundef %i.bmh, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bmj = load i32, ptr %2, align 4
  %i.bmk = add i32 %i.bmj, 1                      ; 2 uses
  store i32 %i.bmk, ptr %2, align 4
  %i.bml = load i32, ptr @hf_cdma2k_Num_Fields, align 4
  %i.bmm = shl i32 %i.bmk, 3
  %i.bmn = or disjoint i32 %i.bmm, 6
  %i.bmo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.blv, i32 noundef %i.bml, ptr noundef %0, i32 noundef %i.bmn, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bmp = load i32, ptr %2, align 4
  %i.bmq = shl i32 %i.bmp, 3
  %i.bmr = or disjoint i32 %i.bmq, 6
  %i.bms = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bmr, i32 noundef 8)
  %i.bmt = load i32, ptr %2, align 4
  %i.bmu = add i32 %i.bmt, 1                      ; 2 uses
  store i32 %i.bmu, ptr %2, align 4
  %i.bmv = load i32, ptr @hf_cdma2k_Chari_Data, align 4
  %i.bmw = tail call ptr @proto_tree_add_item(ptr noundef %i.blv, i32 noundef %i.bmv, ptr noundef %0, i32 noundef %i.bmu, i32 noundef -1, i32 noundef 0)
  %i.bmx = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.bmy = tail call ptr @proto_item_add_subtree(ptr noundef %i.bmw, i32 noundef %i.bmx) ; 2 uses
  %i.bmz = load i32, ptr @hf_cdma2k_Msg_Identifier, align 4
  %i.bna = load i32, ptr %2, align 4
  %i.bnb = shl i32 %i.bna, 3
  %i.bnc = or disjoint i32 %i.bnb, 6
  %i.bnd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bmy, i32 noundef %i.bmz, ptr noundef %0, i32 noundef %i.bnc, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bne = load i32, ptr %2, align 4
  %i.bnf = add i32 %i.bne, 1                      ; 2 uses
  store i32 %i.bnf, ptr %2, align 4
  %i.bng = zext i8 %i.bms to i32
  %i.bnh = add nuw nsw i32 %i.bng, 65535          ; 2 uses
  %i.bni = and i32 %i.bnh, 65535
  %.not4.i217 = icmp eq i32 %i.bni, 0
  br i1 %.not4.i217, label %cdma2k_message_DATA_BURST_CMD.exit, label %.lr.ph8.i218

.lr.ph8.i218:                                     ; preds = %bb.ft, %._crit_edge.i231
  %.0736.i219 = phi i16 [ %.174.lcssa.i232, %._crit_edge.i231 ], [ 1, %bb.ft ] ; 3 uses
  %.0765.i220 = phi i32 [ %i.bpe, %._crit_edge.i231 ], [ %i.bnh, %bb.ft ]
  %i.bnj = load i32, ptr @hf_cdma2k_Parm_Id, align 4
  %i.bnk = load i32, ptr %2, align 4
  %i.bnl = shl i32 %i.bnk, 3
  %i.bnm = or disjoint i32 %i.bnl, 6
  %i.bnn = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bmy, i32 noundef %i.bnj, ptr noundef %0, i32 noundef %i.bnm, i32 noundef 8, i32 noundef 0)
  %i.bno = load i32, ptr @ett_cdma2k_subtree2, align 4
  %i.bnp = tail call ptr @proto_item_add_subtree(ptr noundef %i.bnn, i32 noundef %i.bno) ; 3 uses
  %i.bnq = load i32, ptr %2, align 4
  %i.bnr = add i32 %i.bnq, 1                      ; 2 uses
  store i32 %i.bnr, ptr %2, align 4
  %i.bns = load i32, ptr @hf_cdma2k_Parm_Length, align 4
  %i.bnt = shl i32 %i.bnr, 3
  %i.bnu = or disjoint i32 %i.bnt, 6
  %i.bnv = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bnp, i32 noundef %i.bns, ptr noundef %0, i32 noundef %i.bnu, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bnw = load i32, ptr %2, align 4
  %i.bnx = shl i32 %i.bnw, 3
  %i.bny = or disjoint i32 %i.bnx, 6
  %i.bnz = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bny, i32 noundef 8) ; 2 uses
  %i.boa = load i32, ptr %2, align 4
  %i.bob = add i32 %i.boa, 1                      ; 2 uses
  store i32 %i.bob, ptr %2, align 4
  %i.boc = add i32 %.0765.i220, 65534
  %i.bod = zext i16 %.0736.i219 to i32
  %i.boe = shl nuw nsw i32 %i.bod, 5
  %i.bof = zext i8 %i.bnz to i32                  ; 6 uses
  %i.bog = icmp samesign ult i32 %i.boe, %i.bof
  %i.boh = add nuw nsw i32 %i.bof, 1
  %.0.i221 = select i1 %i.bog, i32 32, i32 %i.boh
  %i.boi = load i32, ptr @hf_cdma2k_Parm_Value, align 4
  %i.boj = tail call ptr @proto_tree_add_item(ptr noundef %i.bnp, i32 noundef %i.boi, ptr noundef %0, i32 noundef %i.bob, i32 noundef %.0.i221, i32 noundef 0)
  %.not10.i222 = icmp eq i8 %i.bnz, 0
  br i1 %.not10.i222, label %._crit_edge.i231, label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %.lr.ph8.i218, %bb.fx
  %indvars.iv.i224 = phi i32 [ %indvars.iv.next.i229, %bb.fx ], [ 0, %.lr.ph8.i218 ] ; 3 uses
  %.1743.i225 = phi i16 [ %.2.i228, %bb.fx ], [ %.0736.i219, %.lr.ph8.i218 ] ; 3 uses
  %.0771.i226 = phi ptr [ %.178.i227, %bb.fx ], [ %i.boj, %.lr.ph8.i218 ] ; 3 uses
  %i.bok = load i32, ptr %2, align 4
  %i.bol = shl i32 %i.bok, 3
  %i.bom = or disjoint i32 %i.bol, 6
  %i.bon = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bom, i32 noundef 8)
  %i.boo = zext i8 %i.bon to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0771.i226, ptr noundef nonnull @.str.1209, i32 noundef %i.boo)
  %i.bop = load i32, ptr %2, align 4
  %i.boq = add i32 %i.bop, 1
  store i32 %i.boq, ptr %2, align 4
  %i.bor = and i32 %indvars.iv.i224, 7
  %i.bos = icmp eq i32 %i.bor, 7
  br i1 %i.bos, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %.lr.ph.i223
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0771.i226, ptr noundef nonnull @.str.1226)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %.lr.ph.i223
  %i.bot = and i32 %indvars.iv.i224, 31
  %i.bou = icmp eq i32 %i.bot, 31
  br i1 %i.bou, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.bov = zext i16 %.1743.i225 to i32
  %i.bow = shl nuw nsw i32 %i.bov, 5              ; 2 uses
  %i.box = icmp samesign ult i32 %i.bow, %i.bof
  %i.boy = sub nsw i32 %i.bof, %i.bow
  %i.boz = and i32 %i.boy, 65535
  %.1.i236 = select i1 %i.box, i32 32, i32 %i.boz
  %i.bpa = load i32, ptr @hf_cdma2k_Parm_Value, align 4
  %i.bpb = load i32, ptr %2, align 4
  %i.bpc = tail call ptr @proto_tree_add_item(ptr noundef %i.bnp, i32 noundef %i.bpa, ptr noundef %0, i32 noundef %i.bpb, i32 noundef %.1.i236, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bpc, ptr noundef nonnull @.str.1227)
  %i.bpd = add i16 %.1743.i225, 1
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.178.i227 = phi ptr [ %i.bpc, %bb.fw ], [ %.0771.i226, %bb.fv ]
  %.2.i228 = phi i16 [ %i.bpd, %bb.fw ], [ %.1743.i225, %bb.fv ] ; 2 uses
  %indvars.iv.next.i229 = add nuw nsw i32 %indvars.iv.i224, 1 ; 2 uses
  %exitcond.not.i230 = icmp eq i32 %indvars.iv.next.i229, %i.bof
  br i1 %exitcond.not.i230, label %._crit_edge.i231, label %.lr.ph.i223, !llvm.loop !18

._crit_edge.i231:                                 ; preds = %bb.fx, %.lr.ph8.i218
  %.174.lcssa.i232 = phi i16 [ %.0736.i219, %.lr.ph8.i218 ], [ %.2.i228, %bb.fx ]
  %i.bpe = sub i32 %i.boc, %i.bof                 ; 2 uses
  %i.bpf = and i32 %i.bpe, 65535
  %.not.i233 = icmp eq i32 %i.bpf, 0
  br i1 %.not.i233, label %._crit_edge9.loopexit.i234, label %.lr.ph8.i218, !llvm.loop !19

._crit_edge9.loopexit.i234:                       ; preds = %._crit_edge.i231
  %.pre.i235 = load i32, ptr %2, align 4
  br label %cdma2k_message_DATA_BURST_CMD.exit

cdma2k_message_DATA_BURST_CMD.exit:               ; preds = %bb.ft, %._crit_edge9.loopexit.i234
  %i.bpg = phi i32 [ %.pre.i235, %._crit_edge9.loopexit.i234 ], [ %i.bnf, %bb.ft ]
  %i.bph = add i32 %i.bpg, 1
  store i32 %i.bph, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.fy:                                            ; preds = %bb.af
  %i.bpi = load i32, ptr @hf_cdma2k_AuthChallReqMsg, align 4
  %i.bpj = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.bpi, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.bpk = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.bpl = tail call ptr @proto_item_add_subtree(ptr noundef %i.bpj, i32 noundef %i.bpk) ; 2 uses
  %i.bpm = load i32, ptr @hf_cdma2k_Randu, align 4
  %i.bpn = load i32, ptr %2, align 4
  %i.bpo = shl i32 %i.bpn, 3
  %i.bpp = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bpl, i32 noundef %i.bpm, ptr noundef %0, i32 noundef %i.bpo, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.bpq = load i32, ptr %2, align 4
  %i.bpr = add i32 %i.bpq, 3                      ; 2 uses
  store i32 %i.bpr, ptr %2, align 4
  %i.bps = load i32, ptr @hf_cdma2k_Gen_Cmea_Key, align 4
  %i.bpt = tail call ptr @proto_tree_add_item(ptr noundef %i.bpl, i32 noundef %i.bps, ptr noundef %0, i32 noundef %i.bpr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bpu = load i32, ptr %2, align 4
  %i.bpv = add i32 %i.bpu, 1
  store i32 %i.bpv, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.fz:                                            ; preds = %bb.af
  %i.bpw = load i32, ptr @hf_cdma2k_GenPageReqMsg, align 4
  %i.bpx = tail call ptr @proto_tree_add_item(ptr noundef %i.jl, i32 noundef %i.bpw, ptr noundef %0, i32 noundef %i.jt, i32 noundef -1, i32 noundef 0)
  %i.bpy = load i32, ptr @ett_cdma2k_subtree1, align 4
  %i.bpz = tail call ptr @proto_item_add_subtree(ptr noundef %i.bpx, i32 noundef %i.bpy)
  %.not.i237 = icmp eq i16 %i.jr, 0
  br i1 %.not.i237, label %cdma2k_message_GEN_PAGE_REQ.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.bqa = load i32, ptr @hf_cdma2k_service_option, align 4
  %i.bqb = load i32, ptr %2, align 4
  %i.bqc = tail call ptr @proto_tree_add_item(ptr noundef %i.bpz, i32 noundef %i.bqa, ptr noundef %0, i32 noundef %i.bqb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bqd = load i32, ptr %2, align 4
  %i.bqe = add i32 %i.bqd, 2
  store i32 %i.bqe, ptr %2, align 4
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.gb:                                            ; preds = %bb.af
  store i16 0, ptr %3, align 2
  br label %cdma2k_message_GEN_PAGE_REQ.exit

bb.gc:                                            ; preds = %bb.ae
  switch i8 %i.ag, label %bb.gx [
    i8 3, label %bb.gd
end_hunk_1
