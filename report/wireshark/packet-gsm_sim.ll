Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_sim?download=true
inline.NumInlined: 43
inline.NumDeleted: 11
begin_hunk_0_@dissect_gsm_apdu:bb.a
  %i.ka = or disjoint i32 %i.b, 16                ; 2 uses
  %i.kb = load i32, ptr @hf_tprof_b14, align 4
  %i.kc = load i32, ptr @ett_tprof_b14, align 4
  %i.kd = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.jv, i32 noundef %i.kb, i32 noundef %i.kc, ptr noundef nonnull @tprof_b14_fields, i32 noundef 0) ; 0 uses
  %i.ke = icmp ult i16 %3, 15
  br i1 %i.ke, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kf = add nuw nsw i32 %i.b, 17                ; 2 uses
  %i.kg = load i32, ptr @hf_tprof_b15, align 4
  %i.kh = load i32, ptr @ett_tprof_b15, align 4
  %i.ki = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.ka, i32 noundef %i.kg, i32 noundef %i.kh, ptr noundef nonnull @tprof_b15_fields, i32 noundef 0) ; 0 uses
  %i.kj = icmp eq i16 %3, 15
  br i1 %i.kj, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kk = add nuw nsw i32 %i.b, 18                ; 2 uses
  %i.kl = load i32, ptr @hf_tprof_b16, align 4
  %i.km = load i32, ptr @ett_tprof_b16, align 4
  %i.kn = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.kf, i32 noundef %i.kl, i32 noundef %i.km, ptr noundef nonnull @tprof_b16_fields, i32 noundef 0) ; 0 uses
  %i.ko = icmp ult i16 %3, 17
  br i1 %i.ko, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kp = add nuw nsw i32 %i.b, 19                ; 2 uses
  %i.kq = load i32, ptr @hf_tprof_b17, align 4
  %i.kr = load i32, ptr @ett_tprof_b17, align 4
  %i.ks = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.kk, i32 noundef %i.kq, i32 noundef %i.kr, ptr noundef nonnull @tprof_b17_fields, i32 noundef 0) ; 0 uses
  %i.kt = icmp eq i16 %3, 17
  br i1 %i.kt, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ku = add nuw nsw i32 %i.b, 20                ; 2 uses
  %i.kv = load i32, ptr @hf_tprof_b18, align 4
  %i.kw = load i32, ptr @ett_tprof_b18, align 4
  %i.kx = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.kp, i32 noundef %i.kv, i32 noundef %i.kw, ptr noundef nonnull @tprof_b18_fields, i32 noundef 0) ; 0 uses
  %i.ky = icmp ult i16 %3, 19
  br i1 %i.ky, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kz = add nuw nsw i32 %i.b, 21                ; 2 uses
  %i.la = load i32, ptr @hf_tprof_b19, align 4
  %i.lb = load i32, ptr @ett_tprof_b19, align 4
  %i.lc = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.ku, i32 noundef %i.la, i32 noundef %i.lb, ptr noundef nonnull @tprof_b19_fields, i32 noundef 0) ; 0 uses
  %i.ld = icmp eq i16 %3, 19
  br i1 %i.ld, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.le = add nuw nsw i32 %i.b, 22                ; 2 uses
  %i.lf = load i32, ptr @hf_tprof_b20, align 4
  %i.lg = load i32, ptr @ett_tprof_b20, align 4
  %i.lh = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.kz, i32 noundef %i.lf, i32 noundef %i.lg, ptr noundef nonnull @tprof_b20_fields, i32 noundef 0) ; 0 uses
  %i.li = icmp ult i16 %3, 21
  br i1 %i.li, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lj = add nuw nsw i32 %i.b, 23                ; 2 uses
  %i.lk = load i32, ptr @hf_tprof_b21, align 4
  %i.ll = load i32, ptr @ett_tprof_b21, align 4
  %i.lm = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.le, i32 noundef %i.lk, i32 noundef %i.ll, ptr noundef nonnull @tprof_b21_fields, i32 noundef 0) ; 0 uses
  %i.ln = icmp eq i16 %3, 21
  br i1 %i.ln, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lo = or disjoint i32 %i.b, 24                ; 2 uses
  %i.lp = load i32, ptr @hf_tprof_b22, align 4
  %i.lq = load i32, ptr @ett_tprof_b22, align 4
  %i.lr = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.lj, i32 noundef %i.lp, i32 noundef %i.lq, ptr noundef nonnull @tprof_b22_fields, i32 noundef 0) ; 0 uses
  %i.ls = icmp ult i16 %3, 23
  br i1 %i.ls, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lt = add nuw nsw i32 %i.b, 25                ; 2 uses
  %i.lu = load i32, ptr @hf_tprof_b23, align 4
  %i.lv = load i32, ptr @ett_tprof_b23, align 4
  %i.lw = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.lo, i32 noundef %i.lu, i32 noundef %i.lv, ptr noundef nonnull @tprof_b23_fields, i32 noundef 0) ; 0 uses
  %i.lx = icmp eq i16 %3, 23
  br i1 %i.lx, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ly = add nuw nsw i32 %i.b, 26                ; 2 uses
  %i.lz = load i32, ptr @hf_tprof_b24, align 4
  %i.ma = load i32, ptr @ett_tprof_b24, align 4
  %i.mb = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.lt, i32 noundef %i.lz, i32 noundef %i.ma, ptr noundef nonnull @tprof_b24_fields, i32 noundef 0) ; 0 uses
  %i.mc = icmp ult i16 %3, 25
  br i1 %i.mc, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.md = add nuw nsw i32 %i.b, 27                ; 2 uses
  %i.me = load i32, ptr @hf_tprof_b25, align 4
  %i.mf = load i32, ptr @ett_tprof_b25, align 4
  %i.mg = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.ly, i32 noundef %i.me, i32 noundef %i.mf, ptr noundef nonnull @tprof_b25_fields, i32 noundef 0) ; 0 uses
  %i.mh = icmp eq i16 %3, 25
  br i1 %i.mh, label %.loopexit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mi = add nuw nsw i32 %i.b, 28                ; 2 uses
  %i.mj = load i32, ptr @hf_tprof_b26, align 4
  %i.mk = load i32, ptr @ett_tprof_b26, align 4
  %i.ml = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.md, i32 noundef %i.mj, i32 noundef %i.mk, ptr noundef nonnull @tprof_b26_fields, i32 noundef 0) ; 0 uses
  %i.mm = icmp ult i16 %3, 27
  br i1 %i.mm, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mn = add nuw nsw i32 %i.b, 29                ; 2 uses
  %i.mo = load i32, ptr @hf_tprof_b27, align 4
  %i.mp = load i32, ptr @ett_tprof_b27, align 4
  %i.mq = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.mi, i32 noundef %i.mo, i32 noundef %i.mp, ptr noundef nonnull @tprof_b27_fields, i32 noundef 0) ; 0 uses
  %i.mr = icmp eq i16 %3, 27
  br i1 %i.mr, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ms = add nuw nsw i32 %i.b, 30                ; 2 uses
  %i.mt = load i32, ptr @hf_tprof_b28, align 4
  %i.mu = load i32, ptr @ett_tprof_b28, align 4
  %i.mv = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.mn, i32 noundef %i.mt, i32 noundef %i.mu, ptr noundef nonnull @tprof_b28_fields, i32 noundef 0) ; 0 uses
  %i.mw = icmp ult i16 %3, 29
  br i1 %i.mw, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mx = add nuw nsw i32 %i.b, 31                ; 2 uses
  %i.my = load i32, ptr @hf_tprof_b29, align 4
  %i.mz = load i32, ptr @ett_tprof_b29, align 4
  %i.na = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.ms, i32 noundef %i.my, i32 noundef %i.mz, ptr noundef nonnull @tprof_b29_fields, i32 noundef 0) ; 0 uses
  %i.nb = icmp eq i16 %3, 29
  br i1 %i.nb, label %.loopexit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nc = or disjoint i32 %i.b, 32                ; 2 uses
  %i.nd = load i32, ptr @hf_tprof_b30, align 4
  %i.ne = load i32, ptr @ett_tprof_b30, align 4
  %i.nf = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.mx, i32 noundef %i.nd, i32 noundef %i.ne, ptr noundef nonnull @tprof_b30_fields, i32 noundef 0) ; 0 uses
  %i.ng = icmp ult i16 %3, 31
  br i1 %i.ng, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nh = add nuw nsw i32 %i.b, 33                ; 2 uses
  %i.ni = load i32, ptr @hf_tprof_b31, align 4
  %i.nj = load i32, ptr @ett_tprof_b31, align 4
  %i.nk = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.nc, i32 noundef %i.ni, i32 noundef %i.nj, ptr noundef nonnull @tprof_b31_fields, i32 noundef 0) ; 0 uses
  %i.nl = icmp eq i16 %3, 31
  br i1 %i.nl, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nm = add nuw nsw i32 %i.b, 34                ; 2 uses
  %i.nn = load i32, ptr @hf_tprof_b32, align 4
  %i.no = load i32, ptr @ett_tprof_b32, align 4
  %i.np = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.nh, i32 noundef %i.nn, i32 noundef %i.no, ptr noundef nonnull @tprof_b32_fields, i32 noundef 0) ; 0 uses
  %i.nq = icmp ult i16 %3, 33
  br i1 %i.nq, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nr = add nuw nsw i32 %i.b, 35                ; 2 uses
  %i.ns = load i32, ptr @hf_tprof_b33, align 4
  %i.nt = load i32, ptr @ett_tprof_b33, align 4
  %i.nu = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.nm, i32 noundef %i.ns, i32 noundef %i.nt, ptr noundef nonnull @tprof_b33_fields, i32 noundef 0) ; 0 uses
  %i.nv = icmp eq i16 %3, 33
  br i1 %i.nv, label %.loopexit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nw = add nuw nsw i32 %i.b, 36                ; 2 uses
  %i.nx = load i32, ptr @hf_tprof_b34, align 4
  %i.ny = load i32, ptr @ett_tprof_b34, align 4
  %i.nz = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.nr, i32 noundef %i.nx, i32 noundef %i.ny, ptr noundef nonnull @tprof_b34_fields, i32 noundef 0) ; 0 uses
  %i.oa = icmp ult i16 %3, 35
  br i1 %i.oa, label %.loopexit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ob = add nuw nsw i32 %i.b, 37                ; 2 uses
  %i.oc = load i32, ptr @hf_tprof_b35, align 4
  %i.od = load i32, ptr @ett_tprof_b35, align 4
  %i.oe = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.nw, i32 noundef %i.oc, i32 noundef %i.od, ptr noundef nonnull @tprof_b35_fields, i32 noundef 0) ; 0 uses
  %i.of = icmp eq i16 %3, 35
  br i1 %i.of, label %.loopexit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.og = add nuw nsw i32 %i.b, 38                ; 2 uses
  %i.oh = load i32, ptr @hf_tprof_b36, align 4
  %i.oi = load i32, ptr @ett_tprof_b36, align 4
  %i.oj = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.ob, i32 noundef %i.oh, i32 noundef %i.oi, ptr noundef nonnull @tprof_b36_fields, i32 noundef 0) ; 0 uses
  %i.ok = icmp ult i16 %3, 37
  br i1 %i.ok, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ol = add nuw nsw i32 %i.b, 39                ; 2 uses
  %i.om = load i32, ptr @hf_tprof_b37, align 4
  %i.on = load i32, ptr @ett_tprof_b37, align 4
  %i.oo = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.og, i32 noundef %i.om, i32 noundef %i.on, ptr noundef nonnull @tprof_b37_fields, i32 noundef 0) ; 0 uses
  %i.op = icmp eq i16 %3, 37
  br i1 %i.op, label %.loopexit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oq = or disjoint i32 %i.b, 40                ; 2 uses
  %i.or = load i32, ptr @hf_tprof_b38, align 4
  %i.os = load i32, ptr @ett_tprof_b38, align 4
  %i.ot = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.ol, i32 noundef %i.or, i32 noundef %i.os, ptr noundef nonnull @tprof_b38_fields, i32 noundef 0) ; 0 uses
  %i.ou = icmp ult i16 %3, 39
  br i1 %i.ou, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ov = add nuw nsw i32 %i.b, 41                ; 3 uses
  %i.ow = load i32, ptr @hf_tprof_b39, align 4
  %i.ox = load i32, ptr @ett_tprof_b39, align 4
  %i.oy = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %5, i32 noundef %i.oq, i32 noundef %i.ow, i32 noundef %i.ox, ptr noundef nonnull @tprof_b39_fields, i32 noundef 0) ; 0 uses
  %invariant.op = add nuw nsw i32 %i.hk, %i.hl    ; 3 uses
  %10 = icmp samesign ult i32 %i.ov, %invariant.op
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ci, %.lr.ph
  %.3735 = phi i32 [ %i.pa, %.lr.ph ], [ %i.ov, %bb.ci ] ; 2 uses
  %i.oz = load i32, ptr @hf_tprof_unknown_byte, align 4
  %i.pa = add nuw nsw i32 %.3735, 1               ; 2 uses
  %i.pb = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.oz, ptr noundef %5, i32 noundef %.3735, i32 noundef 1, i32 noundef 0) ; 0 uses
  %exitcond.not = icmp eq i32 %i.pa, %invariant.op
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !10

bb.cj:                                            ; preds = %bb.w
  %..i712 = select i1 %4, i32 3, i32 1
  %hf_apdu_lc_ext.val.i713 = load i32, ptr @hf_apdu_lc_ext, align 4
  %hf_apdu_lc.val.i714 = load i32, ptr @hf_apdu_lc, align 4
  %i.pc = select i1 %4, i32 %hf_apdu_lc_ext.val.i713, i32 %hf_apdu_lc.val.i714
  %i.pd = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.pc, ptr noundef %5, i32 noundef 4, i32 noundef %..i712, i32 noundef 0) ; 0 uses
  %i.pe = add nuw nsw i32 %i.b, 2                 ; 2 uses
  %i.pf = zext i16 %3 to i32                      ; 3 uses
  %i.pg = tail call ptr @tvb_new_subset_length(ptr noundef %5, i32 noundef %i.pe, i32 noundef %i.pf)
  %i.ph = load ptr, ptr @sub_handle_cap, align 8
  %i.pi = tail call i32 @call_dissector_with_data(ptr noundef %i.ph, ptr noundef %i.pg, ptr noundef %6, ptr noundef %7, ptr noundef nonnull inttoptr (i64 20 to ptr)) ; 0 uses
  %i.pj = load i32, ptr @hf_apdu_data, align 4
  %i.pk = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.pj, ptr noundef %5, i32 noundef %i.pe, i32 noundef %i.pf, i32 noundef 0) ; 0 uses
  %i.pl = add nuw nsw i32 %i.pf, 2
  %i.pm = add nuw nsw i32 %i.pl, %i.b
  br label %.loopexit

bb.ck:                                            ; preds = %bb.w
  %..i715 = select i1 %4, i32 3, i32 1
  %hf_apdu_lc_ext.val.i716 = load i32, ptr @hf_apdu_lc_ext, align 4
  %hf_apdu_lc.val.i717 = load i32, ptr @hf_apdu_lc, align 4
  %i.pn = select i1 %4, i32 %hf_apdu_lc_ext.val.i716, i32 %hf_apdu_lc.val.i717
  %i.po = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.pn, ptr noundef %5, i32 noundef 4, i32 noundef %..i715, i32 noundef 0) ; 0 uses
  %i.pp = add nuw nsw i32 %i.b, 2                 ; 4 uses
  %i.pq = zext i16 %3 to i32                      ; 2 uses
  %i.pr = add nuw nsw i32 %i.pp, %i.pq            ; 2 uses
  %i.ps = add nuw nsw i32 %i.b, 3                 ; 2 uses
  %i.pt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef range(i32 5, 8) %i.pp)
  %i.pu = zext i8 %i.pt to i32                    ; 2 uses
  %i.pv = and i32 %i.pu, 31
  %i.pw = icmp eq i32 %i.pv, 31
  br i1 %i.pw, label %.preheader135.i, label %get_ber_tlv_tag.exit.i

.preheader135.i:                                  ; preds = %bb.ck, %bb.cl
  %.0131.i = phi i32 [ %i.qd, %bb.cl ], [ 0, %bb.ck ] ; 2 uses
  %.0123.i = phi i8 [ %i.qe, %bb.cl ], [ 1, %bb.ck ] ; 2 uses
  %.016.i.i = phi i32 [ %i.py, %bb.cl ], [ %i.ps, %bb.ck ] ; 4 uses
  %i.px = tail call i32 @tvb_reported_length_remaining(ptr noundef %5, i32 noundef %.016.i.i)
  %.not.i.i = icmp eq i32 %i.px, 0
  br i1 %.not.i.i, label %get_ber_tlv_tag.exit.loopexit.i, label %bb.cl

bb.cl:                                            ; preds = %.preheader135.i
  %i.py = add i32 %.016.i.i, 1                    ; 2 uses
  %i.pz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef %.016.i.i) ; 2 uses
  %i.qa = shl i32 %.0131.i, 7
  %i.qb = and i8 %i.pz, 127
  %i.qc = zext nneg i8 %i.qb to i32
  %i.qd = or disjoint i32 %i.qa, %i.qc            ; 2 uses
  %i.qe = add i8 %.0123.i, 1                      ; 2 uses
  %i.qf = icmp sgt i8 %i.pz, -1
  br i1 %i.qf, label %get_ber_tlv_tag.exit.loopexit.i, label %.preheader135.i

get_ber_tlv_tag.exit.loopexit.i:                  ; preds = %bb.cl, %.preheader135.i
  %.1132.ph.i = phi i32 [ %.0131.i, %.preheader135.i ], [ %i.qd, %bb.cl ]
  %.1124.ph.i = phi i8 [ %.0123.i, %.preheader135.i ], [ %i.qe, %bb.cl ]
  %.1.i.ph.i = phi i32 [ %.016.i.i, %.preheader135.i ], [ %i.py, %bb.cl ]
  %i.qg = zext i8 %.1124.ph.i to i32
  br label %get_ber_tlv_tag.exit.i

get_ber_tlv_tag.exit.i:                           ; preds = %get_ber_tlv_tag.exit.loopexit.i, %bb.ck
  %.1132.i = phi i32 [ %i.pu, %bb.ck ], [ %.1132.ph.i, %get_ber_tlv_tag.exit.loopexit.i ]
  %.1124.i = phi i32 [ 1, %bb.ck ], [ %i.qg, %get_ber_tlv_tag.exit.loopexit.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ps, %bb.ck ], [ %.1.i.ph.i, %get_ber_tlv_tag.exit.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.1132.i, 169
  br i1 %.not.i, label %bb.cm, label %dissect_terminal_capability.exit

bb.cm:                                            ; preds = %get_ber_tlv_tag.exit.i
  %i.qh = add i32 %.1.i.i, 1                      ; 2 uses
  %i.qi = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef %.1.i.i) ; 3 uses
  %i.qj = zext i8 %i.qi to i32                    ; 3 uses
  %.not.i78.i = icmp sgt i8 %i.qi, -1
  %i.qk = and i32 %i.qj, 127                      ; 2 uses
  %.not1314.i.i = icmp eq i32 %i.qk, 0
  %or.cond.i.i = or i1 %.not.i78.i, %.not1314.i.i
  br i1 %or.cond.i.i, label %get_ber_tlv_len.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cm, %.lr.ph.i.i
  %.0127.i = phi i32 [ %i.qq, %.lr.ph.i.i ], [ %i.qj, %bb.cm ]
  %.016.i79.i = phi i32 [ %i.ql, %.lr.ph.i.i ], [ %i.qk, %bb.cm ]
  %.01215.i.i = phi i32 [ %i.qn, %.lr.ph.i.i ], [ %i.qh, %bb.cm ] ; 2 uses
  %i.ql = add nsw i32 %.016.i79.i, -1             ; 2 uses
  %i.qm = shl i32 %.0127.i, 8
  %i.qn = add i32 %.01215.i.i, 1                  ; 2 uses
  %i.qo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef %.01215.i.i)
  %i.qp = zext i8 %i.qo to i32
  %i.qq = or disjoint i32 %i.qm, %i.qp            ; 2 uses
  %.not13.i.i = icmp eq i32 %i.ql, 0
  br i1 %.not13.i.i, label %get_ber_tlv_len.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

get_ber_tlv_len.exit.loopexit.i:                  ; preds = %.lr.ph.i.i
  %i.qr = and i8 %i.qi, 127
  %i.qs = add nuw i8 %i.qr, 1
  %i.qt = zext i8 %i.qs to i32
  br label %get_ber_tlv_len.exit.i

get_ber_tlv_len.exit.i:                           ; preds = %get_ber_tlv_len.exit.loopexit.i, %bb.cm
  %.1128.i = phi i32 [ %i.qj, %bb.cm ], [ %i.qq, %get_ber_tlv_len.exit.loopexit.i ]
  %.1.i = phi i32 [ 1, %bb.cm ], [ %i.qt, %get_ber_tlv_len.exit.loopexit.i ]
  %.1.i80.i = phi i32 [ %i.qh, %bb.cm ], [ %i.qn, %get_ber_tlv_len.exit.loopexit.i ] ; 2 uses
  %i.qu = load i32, ptr @hf_template_tag, align 4
  %i.qv = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.qu, ptr noundef %5, i32 noundef range(i32 5, 8) %i.pp, i32 noundef %.1124.i, i32 noundef 0) ; 0 uses
  %i.qw = load i32, ptr @hf_template_len, align 4
  %i.qx = add nuw nsw i32 %.1124.i, %i.pp
  %i.qy = tail call ptr @proto_tree_add_uint(ptr noundef %8, i32 noundef %i.qw, ptr noundef %5, i32 noundef %i.qx, i32 noundef %.1.i, i32 noundef %.1128.i) ; 0 uses
  %i.qz = icmp slt i32 %.1.i80.i, %i.pr
  br i1 %i.qz, label %.lr.ph.i, label %dissect_terminal_capability.exit

.lr.ph.i:                                         ; preds = %get_ber_tlv_len.exit.i, %.backedge.i
  %.075141.i = phi i32 [ %.075.be.i, %.backedge.i ], [ %.1.i80.i, %get_ber_tlv_len.exit.i ] ; 5 uses
  %i.ra = add nsw i32 %.075141.i, 1               ; 2 uses
  %i.rb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef %.075141.i)
  %i.rc = zext i8 %i.rb to i32                    ; 2 uses
  %i.rd = and i32 %i.rc, 31
  %i.re = icmp eq i32 %i.rd, 31
  br i1 %i.re, label %.preheader.i, label %get_ber_tlv_tag.exit84.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.cn
  %.2133.i = phi i32 [ %i.rl, %bb.cn ], [ 0, %.lr.ph.i ] ; 2 uses
  %.2125.i = phi i8 [ %i.rm, %bb.cn ], [ 1, %.lr.ph.i ] ; 2 uses
  %.016.i82.i = phi i32 [ %i.rg, %bb.cn ], [ %i.ra, %.lr.ph.i ] ; 4 uses
  %i.rf = tail call i32 @tvb_reported_length_remaining(ptr noundef %5, i32 noundef %.016.i82.i)
  %.not.i83.i = icmp eq i32 %i.rf, 0
  br i1 %.not.i83.i, label %get_ber_tlv_tag.exit84.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %.preheader.i
  %i.rg = add i32 %.016.i82.i, 1                  ; 2 uses
  %i.rh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef %.016.i82.i) ; 2 uses
  %i.ri = shl i32 %.2133.i, 7
  %i.rj = and i8 %i.rh, 127
  %i.rk = zext nneg i8 %i.rj to i32
  %i.rl = or disjoint i32 %i.ri, %i.rk            ; 2 uses
  %i.rm = add i8 %.2125.i, 1                      ; 2 uses
  %i.rn = icmp sgt i8 %i.rh, -1
  br i1 %i.rn, label %get_ber_tlv_tag.exit84.loopexit.i, label %.preheader.i

get_ber_tlv_tag.exit84.loopexit.i:                ; preds = %bb.cn, %.preheader.i
  %.3134.ph.i = phi i32 [ %.2133.i, %.preheader.i ], [ %i.rl, %bb.cn ]
  %.3126.ph.i = phi i8 [ %.2125.i, %.preheader.i ], [ %i.rm, %bb.cn ]
  %.1.i81.ph.i = phi i32 [ %.016.i82.i, %.preheader.i ], [ %i.rg, %bb.cn ]
  %i.ro = zext i8 %.3126.ph.i to i32
  br label %get_ber_tlv_tag.exit84.i

get_ber_tlv_tag.exit84.i:                         ; preds = %get_ber_tlv_tag.exit84.loopexit.i, %.lr.ph.i
  %.3134.i = phi i32 [ %i.rc, %.lr.ph.i ], [ %.3134.ph.i, %get_ber_tlv_tag.exit84.loopexit.i ] ; 2 uses
  %.3126.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ro, %get_ber_tlv_tag.exit84.loopexit.i ] ; 3 uses
  %.1.i81.i = phi i32 [ %i.ra, %.lr.ph.i ], [ %.1.i81.ph.i, %get_ber_tlv_tag.exit84.loopexit.i ] ; 2 uses
  %i.rp = add i32 %.1.i81.i, 1                    ; 2 uses
  %i.rq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef %.1.i81.i) ; 3 uses
  %i.rr = zext i8 %i.rq to i32                    ; 3 uses
  %.not.i85.i = icmp sgt i8 %i.rq, -1
  %i.rs = and i32 %i.rr, 127                      ; 2 uses
  %.not1314.i86.i = icmp eq i32 %i.rs, 0
  %or.cond.i87.i = or i1 %.not.i85.i, %.not1314.i86.i
  br i1 %or.cond.i87.i, label %get_ber_tlv_len.exit93.i, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %get_ber_tlv_tag.exit84.i, %.lr.ph.i88.i
  %.2129.i = phi i32 [ %i.ry, %.lr.ph.i88.i ], [ %i.rr, %get_ber_tlv_tag.exit84.i ]
  %.016.i89.i = phi i32 [ %i.rt, %.lr.ph.i88.i ], [ %i.rs, %get_ber_tlv_tag.exit84.i ]
  %.01215.i90.i = phi i32 [ %i.rv, %.lr.ph.i88.i ], [ %i.rp, %get_ber_tlv_tag.exit84.i ] ; 2 uses
  %i.rt = add nsw i32 %.016.i89.i, -1             ; 2 uses
  %i.ru = shl i32 %.2129.i, 8
  %i.rv = add i32 %.01215.i90.i, 1                ; 2 uses
  %i.rw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %5, i32 noundef %.01215.i90.i)
  %i.rx = zext i8 %i.rw to i32
  %i.ry = or disjoint i32 %i.ru, %i.rx            ; 2 uses
  %.not13.i91.i = icmp eq i32 %i.rt, 0
  br i1 %.not13.i91.i, label %get_ber_tlv_len.exit93.loopexit.i, label %.lr.ph.i88.i, !llvm.loop !0

get_ber_tlv_len.exit93.loopexit.i:                ; preds = %.lr.ph.i88.i
  %i.rz = and i8 %i.rq, 127
  %i.sa = add nuw i8 %i.rz, 1
  %i.sb = zext i8 %i.sa to i32
  br label %get_ber_tlv_len.exit93.i

get_ber_tlv_len.exit93.i:                         ; preds = %get_ber_tlv_len.exit93.loopexit.i, %get_ber_tlv_tag.exit84.i
  %.3130.i = phi i32 [ %i.rr, %get_ber_tlv_tag.exit84.i ], [ %i.ry, %get_ber_tlv_len.exit93.loopexit.i ] ; 6 uses
  %.3.i = phi i32 [ 1, %get_ber_tlv_tag.exit84.i ], [ %i.sb, %get_ber_tlv_len.exit93.loopexit.i ] ; 2 uses
  %.1.i92.i = phi i32 [ %i.rp, %get_ber_tlv_tag.exit84.i ], [ %i.rv, %get_ber_tlv_len.exit93.loopexit.i ] ; 16 uses
  %i.sc = load i32, ptr @hf_tc, align 4
  %i.sd = add i32 %.3130.i, %.3126.i
  %i.se = add i32 %i.sd, %.3.i
  %i.sf = load ptr, ptr %i.e, align 8
  %i.sg = tail call ptr @val_to_str(ptr noundef %i.sf, i32 noundef %.3134.i, ptr noundef nonnull @terminal_capability_tag_vals, ptr noundef nonnull @.str.1388)
  %.not77.i = icmp eq i32 %.3130.i, 0             ; 2 uses
  %i.sh = select i1 %.not77.i, ptr @.str.1390, ptr @.str.1389
  %i.si = load ptr, ptr %i.e, align 8
  %i.sj = tail call ptr @tvb_bytes_to_str(ptr noundef %i.si, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef %.3130.i)
  %i.sk = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %8, i32 noundef %i.sc, ptr noundef %5, i32 noundef %.075141.i, i32 noundef %i.se, ptr noundef null, ptr noundef nonnull @.str.1387, ptr noundef %i.sg, ptr noundef nonnull %i.sh, ptr noundef %i.sj)
  %i.sl = load i32, ptr @ett_terminal_capability, align 4
  %i.sm = tail call ptr @proto_item_add_subtree(ptr noundef %i.sk, i32 noundef %i.sl) ; 15 uses
  %i.sn = load i32, ptr @hf_tc_tag, align 4
  %i.so = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.sn, ptr noundef %5, i32 noundef %.075141.i, i32 noundef %.3126.i, i32 noundef 0) ; 0 uses
  %i.sp = load i32, ptr @hf_tc_len, align 4
  %i.sq = add nsw i32 %.3126.i, %.075141.i
  %i.sr = tail call ptr @proto_tree_add_uint(ptr noundef %i.sm, i32 noundef %i.sp, ptr noundef %5, i32 noundef %i.sq, i32 noundef %.3.i, i32 noundef %.3130.i) ; 0 uses
  br i1 %.not77.i, label %.backedge.i, label %bb.co

bb.co:                                            ; preds = %get_ber_tlv_len.exit93.i
  switch i32 %.3134.i, label %bb.ct [
end_hunk_0
begin_hunk_1_@dissect_gsm_apdu:bb.a
  br label %bb.cu

bb.cr:                                            ; preds = %bb.co
  %i.te = load i32, ptr @hf_tc_sgp22_luid, align 4
  %i.tf = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.te, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tg = load i32, ptr @hf_tc_sgp22_lpdd, align 4
  %i.th = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.tg, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ti = load i32, ptr @hf_tc_sgp22_ldsd, align 4
  %i.tj = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.ti, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tk = load i32, ptr @hf_tc_sgp22_luie, align 4
  %i.tl = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.tk, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tm = load i32, ptr @hf_tc_sgp22_rfu, align 4
  %i.tn = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.tm, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.cu

bb.cs:                                            ; preds = %bb.co
  %i.to = load i32, ptr @hf_tc_sgp32_ipad, align 4
  %i.tp = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.to, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tq = load i32, ptr @hf_tc_sgp32_rfu, align 4
  %i.tr = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.tq, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.cu

bb.ct:                                            ; preds = %bb.co
  %i.ts = load i32, ptr @hf_tc_value, align 4
  %i.tt = tail call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.ts, ptr noundef %5, i32 noundef %.1.i92.i, i32 noundef %.3130.i, i32 noundef 0) ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %i.tu = add i32 %.1.i92.i, %.3130.i
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.cu, %get_ber_tlv_len.exit93.i
  %.075.be.i = phi i32 [ %.1.i92.i, %get_ber_tlv_len.exit93.i ], [ %i.tu, %bb.cu ] ; 2 uses
  %i.tv = icmp slt i32 %.075.be.i, %i.pr
  br i1 %i.tv, label %.lr.ph.i, label %dissect_terminal_capability.exit, !llvm.loop !11

dissect_terminal_capability.exit:                 ; preds = %.backedge.i, %get_ber_tlv_tag.exit.i, %get_ber_tlv_len.exit.i
  %i.tw = add nuw nsw i32 %i.pq, 2
  %i.tx = add nuw nsw i32 %i.tw, %i.b
  br label %.loopexit

bb.cv:                                            ; preds = %bb.w
  %i.ty = tail call i32 @tvb_reported_length_remaining(ptr noundef %5, i32 noundef 4)
  %.not690 = icmp eq i32 %i.ty, 0
  br i1 %.not690, label %dissect_apdu_le.exit719, label %dissect_apdu_le.exit719.sink.split

dissect_apdu_le.exit719.sink.split:               ; preds = %bb.cv
  %.771 = select i1 %4, i32 3, i32 1
  %hf_apdu_le_ext.val774 = load i32, ptr @hf_apdu_le_ext, align 4
  %hf_apdu_le.val775 = load i32, ptr @hf_apdu_le, align 4
  %i.tz = select i1 %4, i32 %hf_apdu_le_ext.val774, i32 %hf_apdu_le.val775
  %i.ua = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.tz, ptr noundef %5, i32 noundef 4, i32 noundef %.771, i32 noundef 0) ; 0 uses
  br label %dissect_apdu_le.exit719

dissect_apdu_le.exit719:                          ; preds = %dissect_apdu_le.exit719.sink.split, %bb.cv
  %i.ub = add nuw nsw i32 %i.b, 2
  br label %.loopexit

bb.cw:                                            ; preds = %bb.w
  %..i720 = select i1 %4, i32 3, i32 1
  %hf_apdu_lc_ext.val.i721 = load i32, ptr @hf_apdu_lc_ext, align 4
  %hf_apdu_lc.val.i722 = load i32, ptr @hf_apdu_lc, align 4
  %i.uc = select i1 %4, i32 %hf_apdu_lc_ext.val.i721, i32 %hf_apdu_lc.val.i722
  %i.ud = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.uc, ptr noundef %5, i32 noundef 4, i32 noundef %..i720, i32 noundef 0) ; 0 uses
  %i.ue = add nuw nsw i32 %i.b, 2                 ; 2 uses
  %i.uf = zext i16 %3 to i32                      ; 3 uses
  %i.ug = tail call ptr @tvb_new_subset_length(ptr noundef %5, i32 noundef %i.ue, i32 noundef %i.uf)
  %i.uh = tail call i32 @dissect_bertlv(ptr noundef %i.ug, ptr noundef %6, ptr noundef %8, ptr noundef %7) ; 0 uses
  %i.ui = load i32, ptr @hf_apdu_data, align 4
  %i.uj = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.ui, ptr noundef %5, i32 noundef %i.ue, i32 noundef %i.uf, i32 noundef 0) ; 0 uses
  %i.uk = add nuw nsw i32 %i.uf, 2
  %i.ul = add nuw nsw i32 %i.uk, %i.b             ; 4 uses
  %i.um = tail call i32 @tvb_reported_length_remaining(ptr noundef %5, i32 noundef %i.ul)
  %.not689 = icmp eq i32 %i.um, 0
  br i1 %.not689, label %.loopexit, label %dissect_apdu_le.exit723

dissect_apdu_le.exit723:                          ; preds = %bb.cw
  %.773 = select i1 %4, i32 2, i32 1              ; 2 uses
  %hf_apdu_le_ext.val = load i32, ptr @hf_apdu_le_ext, align 4
  %hf_apdu_le.val = load i32, ptr @hf_apdu_le, align 4
  %i.un = select i1 %4, i32 %hf_apdu_le_ext.val, i32 %hf_apdu_le.val
  %i.uo = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.un, ptr noundef %5, i32 noundef %i.ul, i32 noundef %.773, i32 noundef 0) ; 0 uses
  %i.up = add nuw nsw i32 %.773, %i.ul
  br label %.loopexit

bb.cx:                                            ; preds = %bb.w
  %..i724 = select i1 %4, i32 3, i32 1
  %hf_apdu_lc_ext.val.i725 = load i32, ptr @hf_apdu_lc_ext, align 4
  %hf_apdu_lc.val.i726 = load i32, ptr @hf_apdu_lc, align 4
  %i.uq = select i1 %4, i32 %hf_apdu_lc_ext.val.i725, i32 %hf_apdu_lc.val.i726
  %i.ur = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.uq, ptr noundef %5, i32 noundef 4, i32 noundef %..i724, i32 noundef 0) ; 0 uses
  %i.us = and i8 %1, 1
  %i.ut = icmp eq i8 %i.us, 0
  %i.uu = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.uv = add nuw nsw i32 %i.b, 2                 ; 2 uses
  br i1 %i.ut, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  tail call void @col_append_str(ptr noundef %i.uu, i32 noundef 25, ptr noundef nonnull @.str.1385)
  %i.uw = load i32, ptr @hf_suspend_uicc_min_time_unit, align 4
  %i.ux = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.uw, ptr noundef %5, i32 noundef %i.uv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.uy = load i32, ptr @hf_suspend_uicc_min_time_length, align 4
  %i.uz = add nuw nsw i32 %i.b, 3
  %i.va = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.uy, ptr noundef %5, i32 noundef %i.uz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vb = load i32, ptr @hf_suspend_uicc_max_time_unit, align 4
  %i.vc = add nuw nsw i32 %i.b, 4
  %i.vd = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.vb, ptr noundef %5, i32 noundef %i.vc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ve = load i32, ptr @hf_suspend_uicc_max_time_length, align 4
  %i.vf = add nuw nsw i32 %i.b, 5
  %i.vg = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.ve, ptr noundef %5, i32 noundef %i.vf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vh = add nuw nsw i32 %i.b, 6
  tail call fastcc void @dissect_apdu_le(ptr noundef %8, ptr noundef %5, i32 noundef %i.vh, i1 noundef zeroext %4, i1 noundef zeroext false)
  %i.vi = select i1 %4, i32 4, i32 3
  %.pre = zext i16 %3 to i32
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  tail call void @col_append_str(ptr noundef %i.uu, i32 noundef 25, ptr noundef nonnull @.str.1386)
  %i.vj = load i32, ptr @hf_suspend_uicc_resume_token, align 4
  %i.vk = zext i16 %3 to i32                      ; 2 uses
  %i.vl = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.vj, ptr noundef %5, i32 noundef %i.uv, i32 noundef %i.vk, i32 noundef 0) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pre-phi = phi i32 [ %i.vk, %bb.cz ], [ %.pre, %bb.cy ]
  %.4 = phi i32 [ 2, %bb.cz ], [ %i.vi, %bb.cy ]
  %i.vm = add nuw nsw i32 %i.b, %.pre-phi
  %i.vn = add nuw nsw i32 %i.vm, %.4
  br label %.loopexit

bb.db:                                            ; preds = %bb.w
  %..i727 = select i1 %4, i32 3, i32 1
  %hf_apdu_lc_ext.val.i728 = load i32, ptr @hf_apdu_lc_ext, align 4
  %hf_apdu_lc.val.i729 = load i32, ptr @hf_apdu_lc, align 4
  %i.vo = select i1 %4, i32 %hf_apdu_lc_ext.val.i728, i32 %hf_apdu_lc.val.i729
  %i.vp = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.vo, ptr noundef %5, i32 noundef 4, i32 noundef %..i727, i32 noundef 0) ; 0 uses
  %i.vq = load i32, ptr @hf_apdu_data, align 4
  %i.vr = add nuw nsw i32 %i.b, 2                 ; 4 uses
  %i.vs = zext i16 %3 to i32                      ; 4 uses
  %i.vt = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %i.vq, ptr noundef %5, i32 noundef %i.vr, i32 noundef %i.vs, i32 noundef 0) ; 0 uses
  %i.vu = getelementptr i8, ptr %9, i64 25        ; 2 uses
  %i.vv = load i8, ptr %i.vu, align 1
  %i.vw = icmp slt i8 %i.vv, 0                    ; 2 uses
  %i.vx = getelementptr i8, ptr %9, i64 26
  %i.vy = load i8, ptr %i.vx, align 2             ; 2 uses
  %i.vz = icmp eq i8 %i.vy, 0
  %or.cond.i = select i1 %i.vz, i1 %i.vw, i1 false
  br i1 %or.cond.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.wa = tail call ptr @tvb_new_subset_length(ptr noundef %5, i32 noundef range(i32 5, 8) %i.vr, i32 noundef range(i32 0, 65536) %i.vs)
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.wb = zext i8 %i.vy to i32
  %i.wc = getelementptr i8, ptr %9, i64 32
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = load i32, ptr %i.wd, align 8
  %i.wf = xor i1 %i.vw, true
  %i.wg = tail call ptr @fragment_add_seq_check(ptr noundef nonnull @gsm_sim_reassembly_table, ptr noundef %5, i32 noundef range(i32 5, 8) %i.vr, ptr noundef %6, i32 noundef %i.we, ptr noundef null, i32 noundef %i.wb, i32 noundef range(i32 0, 65536) %i.vs, i1 noundef zeroext %i.wf)
  %i.wh = tail call ptr @process_reassembled_data(ptr noundef %5, i32 noundef range(i32 5, 8) %i.vr, ptr noundef %6, ptr noundef nonnull @.str.1391, ptr noundef %i.wg, ptr noundef nonnull @gsm_sim_frag_items, ptr noundef null, ptr noundef %8)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0.i730 = phi ptr [ %i.wa, %bb.dc ], [ %i.wh, %bb.dd ] ; 3 uses
  %.not.i731 = icmp eq ptr %.0.i730, null
  br i1 %.not.i731, label %dissect_storage_data_command.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.wi = load i8, ptr %i.vu, align 1
  %i.wj = and i8 %i.wi, 120
  %i.wk = icmp eq i8 %i.wj, 16
  br i1 %i.wk, label %bb.dg, label %dissect_storage_data_command.exit

bb.dg:                                            ; preds = %bb.df
  %i.wl = tail call zeroext i1 @is_sgp32_request(ptr noundef nonnull %.0.i730)
  br i1 %i.wl, label %bb.dh, label %dissect_storage_data_command.exit

bb.dh:                                            ; preds = %bb.dg
  %i.wm = tail call i32 @dissect_sgp32_request(ptr noundef nonnull %.0.i730, ptr noundef %6, ptr noundef %7, ptr noundef null) ; 0 uses
  br label %dissect_storage_data_command.exit

dissect_storage_data_command.exit:                ; preds = %bb.de, %bb.df, %bb.dg, %bb.dh
  %i.wn = add nuw nsw i32 %i.vs, 2
  %i.wo = add nuw nsw i32 %i.wn, %i.b             ; 5 uses
  %.not687 = icmp sgt i8 %1, -1
  br i1 %.not687, label %.loopexit, label %bb.di

bb.di:                                            ; preds = %dissect_storage_data_command.exit
  %i.wp = tail call i32 @tvb_reported_length_remaining(ptr noundef %5, i32 noundef %i.wo)
  %.not688 = icmp eq i32 %i.wp, 0
  br i1 %.not688, label %.loopexit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call fastcc void @dissect_apdu_le(ptr noundef %8, ptr noundef %5, i32 noundef %i.wo, i1 noundef zeroext %4, i1 noundef zeroext false)
  %i.wq = select i1 %4, i32 2, i32 1
  %i.wr = add nuw nsw i32 %i.wo, %i.wq
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.ci, %bb.y, %dissect_apdu_le.exit, %dissect_apdu_le.exit697, %bb.ak, %bb.ao, %bb.ap, %bb.cj, %dissect_terminal_capability.exit, %dissect_apdu_le.exit719, %bb.da, %bb.ai, %bb.ah, %dissect_apdu_le.exit704, %bb.an, %dissect_apdu_le.exit708, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %dissect_apdu_le.exit723, %bb.cw, %bb.dj, %bb.di, %dissect_storage_data_command.exit, %bb.w
  %.0678 = phi i32 [ -1, %bb.w ], [ %i.dg, %bb.y ], [ %i.en, %bb.ai ], [ %i.ek, %bb.ah ], [ %i.er, %dissect_apdu_le.exit ], [ %i.eu, %dissect_apdu_le.exit697 ], [ %i.fc, %bb.ak ], [ %i.fx, %dissect_apdu_le.exit704 ], [ %i.ft, %bb.an ], [ %i.fy, %bb.ao ], [ %i.gb, %bb.ap ], [ %i.hh, %dissect_apdu_le.exit708 ], [ %.2, %bb.au ], [ %i.hk, %bb.av ], [ %i.hn, %bb.aw ], [ %i.hs, %bb.ax ], [ %i.hx, %bb.ay ], [ %i.ic, %bb.az ], [ %i.ih, %bb.ba ], [ %i.im, %bb.bb ], [ %i.ir, %bb.bc ], [ %i.iw, %bb.bd ], [ %i.jb, %bb.be ], [ %i.jg, %bb.bf ], [ %i.jl, %bb.bg ], [ %i.jq, %bb.bh ], [ %i.jv, %bb.bi ], [ %i.ka, %bb.bj ], [ %i.kf, %bb.bk ], [ %i.kk, %bb.bl ], [ %i.kp, %bb.bm ], [ %i.ku, %bb.bn ], [ %i.kz, %bb.bo ], [ %i.le, %bb.bp ], [ %i.lj, %bb.bq ], [ %i.lo, %bb.br ], [ %i.lt, %bb.bs ], [ %i.ly, %bb.bt ], [ %i.md, %bb.bu ], [ %i.mi, %bb.bv ], [ %i.mn, %bb.bw ], [ %i.ms, %bb.bx ], [ %i.mx, %bb.by ], [ %i.nc, %bb.bz ], [ %i.nh, %bb.ca ], [ %i.nm, %bb.cb ], [ %i.nr, %bb.cc ], [ %i.nw, %bb.cd ], [ %i.ob, %bb.ce ], [ %i.og, %bb.cf ], [ %i.ol, %bb.cg ], [ %i.oq, %bb.ch ], [ %i.wo, %dissect_storage_data_command.exit ], [ %i.pm, %bb.cj ], [ %i.tx, %dissect_terminal_capability.exit ], [ %i.ub, %dissect_apdu_le.exit719 ], [ %i.up, %dissect_apdu_le.exit723 ], [ %i.ul, %bb.cw ], [ %i.vn, %bb.da ], [ %i.wr, %bb.dj ], [ %i.wo, %bb.di ], [ %i.ov, %bb.ci ], [ %invariant.op, %.lr.ph ]
  ret i32 %.0678
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_apdu_le(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_apdu_le_ext, align 4
  %i.b = select i1 %4, i32 3, i32 2
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %2, i32 noundef %i.b, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_apdu_le, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_rsp_apdu_tvb(ptr noundef %0, i32 noundef range(i32 0, -1) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 20 uses
  %5 = alloca [4 x %struct._wmem_tree_key_t], align 16 ; 12 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.g = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.h = getelementptr i8, ptr %2, i64 384
  %i.i = load i8, ptr %i.h, align 8
  %i.j = zext i8 %i.i to i32
  store i32 %i.j, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.k = getelementptr i8, ptr %2, i64 20         ; 5 uses
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %i.f, align 4
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @proto_gsm_sim, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.o = load i32, ptr @ett_sim, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o)
  %i.q = icmp eq ptr %i.n, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0142 = phi ptr [ %4, %bb.a ], [ %i.p, %bb.b ] ; 22 uses
  %.0141 = phi i1 [ true, %bb.a ], [ %i.q, %bb.b ]
  %i.r = getelementptr i8, ptr %2, i64 96
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 4
  %.not152 = icmp eq i32 %i.v, 0
  br i1 %.not152, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 60
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %i.d, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.e, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.f, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 0, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.ae, align 8
  %i.af = load ptr, ptr @transactions, align 8
  %i.ag = call ptr @wmem_tree_lookup32_array_le(ptr noundef %i.af, ptr noundef nonnull %5) ; 20 uses
  %i.ah = getelementptr i8, ptr %2, i64 80        ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 53
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = and i16 %i.ak, 8
  %i.am = icmp eq i16 %i.al, 0
  %i.an = icmp ne ptr %i.ag, null                 ; 3 uses
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.ag, i64 4      ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %i.ag, i64 24
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = icmp eq i8 %i.as, -64
  br i1 %i.at, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %i.ag, align 8
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr %i.f, align 4
  %i.aw = load ptr, ptr @transactions, align 8
  %i.ax = call ptr @wmem_tree_lookup32_array_le(ptr noundef %i.aw, ptr noundef nonnull %5) ; 2 uses
  %.not153 = icmp eq ptr %i.ax, null
  br i1 %.not153, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.ag, i64 32
  store ptr %i.az, ptr %i.ba, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bb = load i32, ptr %i.k, align 4
  store i32 %i.bb, ptr %i.ao, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.e
  %i.bc = sub i32 %i.g, %1                        ; 3 uses
  %i.bd = icmp ugt i32 %i.bc, 2
  br i1 %i.bd, label %bb.l, label %bb.ce

bb.l:                                             ; preds = %bb.k
  br i1 %i.an, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr i8, ptr %i.ag, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = load i32, ptr %i.k, align 4
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %i.ag, i64 24
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.ag, i64 25
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr i8, ptr %i.ag, i64 26
  %i.bn = load i8, ptr %i.bm, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0178 = phi i8 [ %i.bl, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.0176 = phi i8 [ %i.bn, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.0139 = phi i8 [ %i.bj, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bo = add i32 %i.bc, -2                       ; 7 uses
  %i.bp = call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.bq = sub i32 %i.bp, %1
  %i.br = add i32 %i.bq, -2                       ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr i8, ptr %i.ag, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = load i32, ptr %i.k, align 4
  %.not40.i = icmp eq i32 %i.bt, %i.bu
  br i1 %.not40.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef range(i32 0, -1) %1, i32 noundef %i.br)
  br label %gsm_sim_apdu_reassemble.exit

bb.r:                                             ; preds = %bb.p
  %i.bw = add i32 %i.bp, -2
  %i.bx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bw)
  %i.by = icmp eq i8 %i.bx, 97                    ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr i8, ptr %i.ag, i64 24
  %i.ca = load i8, ptr %i.bz, align 8
  %i.cb = icmp eq i8 %i.ca, -64
  br i1 %i.cb, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = getelementptr i8, ptr %i.ag, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = add i32 %i.ce, 1
  %i.cg = call ptr @fragment_add_seq_next(ptr noundef nonnull @gsm_sim_reassembly_table, ptr noundef %0, i32 noundef range(i32 0, -1) %1, ptr noundef %2, i32 noundef %i.cf, ptr noundef null, i32 noundef %i.br, i1 noundef zeroext %i.by)
end_hunk_1
