Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-hartip?download=true
inline.NumInlined: 160
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_packAscii:.lr.ph
  %i.ej = and i8 %i.ei, 64
  %i.ek = or disjoint i8 %i.ej, %i.du
  %i.el = xor i8 %i.ek, 64
  %i.em = getelementptr i8, ptr %i.k, i64 13
  store i8 %i.el, ptr %i.em, align 1
  %i.en = shl i8 %i.ds, 3
  %i.eo = and i8 %i.en, 64
  %i.ep = or disjoint i8 %i.eo, %i.ea
  %i.eq = xor i8 %i.ep, 64
  %i.er = getelementptr i8, ptr %i.k, i64 14
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = shl nuw nsw i8 %i.eb, 1
  %i.et = and i8 %i.es, 64
  %i.eu = or disjoint i8 %i.et, %i.eb
  %i.ev = xor i8 %i.eu, 64
  %i.ew = getelementptr i8, ptr %i.k, i64 15
  store i8 %i.ev, ptr %i.ew, align 1
  %.lhs.trunc.off61.a = add nsw i8 %.lhs.trunc, -12
  %exitcond58.not.3 = icmp ult i8 %.lhs.trunc.off61.a, 3
  br i1 %exitcond58.not.3, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ex = getelementptr i8, ptr %i.d, i64 12
  %i.ey = load i8, ptr %i.ex, align 1             ; 3 uses
  %i.ez = shl i8 %i.ey, 4
  %i.fa = and i8 %i.ez, 48
  %i.fb = getelementptr i8, ptr %i.d, i64 13
  %i.fc = load i8, ptr %i.fb, align 1             ; 3 uses
  %i.fd = lshr i8 %i.fc, 4
  %i.fe = or disjoint i8 %i.fa, %i.fd
  %i.ff = shl i8 %i.fc, 2
  %i.fg = and i8 %i.ff, 60
  %i.fh = getelementptr i8, ptr %i.d, i64 14
  %i.fi = load i8, ptr %i.fh, align 1             ; 2 uses
  %i.fj = lshr i8 %i.fi, 6
  %i.fk = or disjoint i8 %i.fg, %i.fj
  %i.fl = and i8 %i.fi, 63                        ; 2 uses
  %i.fm = lshr i8 %i.ey, 2                        ; 2 uses
  %i.fn = shl nuw nsw i8 %i.fm, 1
  %i.fo = and i8 %i.fn, 64
  %i.fp = or disjoint i8 %i.fo, %i.fm
  %i.fq = xor i8 %i.fp, 64
  %i.fr = getelementptr i8, ptr %i.k, i64 16
  store i8 %i.fq, ptr %i.fr, align 1
  %i.fs = shl i8 %i.ey, 5
  %i.ft = and i8 %i.fs, 64
  %i.fu = or disjoint i8 %i.ft, %i.fe
  %i.fv = xor i8 %i.fu, 64
  %i.fw = getelementptr i8, ptr %i.k, i64 17
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = shl i8 %i.fc, 3
  %i.fy = and i8 %i.fx, 64
  %i.fz = or disjoint i8 %i.fy, %i.fk
  %i.ga = xor i8 %i.fz, 64
  %i.gb = getelementptr i8, ptr %i.k, i64 18
  store i8 %i.ga, ptr %i.gb, align 1
  %i.gc = shl nuw nsw i8 %i.fl, 1
  %i.gd = and i8 %i.gc, 64
  %i.ge = or disjoint i8 %i.gd, %i.fl
  %i.gf = xor i8 %i.ge, 64
  %i.gg = getelementptr i8, ptr %i.k, i64 19
  store i8 %i.gf, ptr %i.gg, align 1
  %.lhs.trunc.off62.a = add nsw i8 %.lhs.trunc, -15
  %exitcond58.not.4 = icmp ult i8 %.lhs.trunc.off62.a, 3
  br i1 %exitcond58.not.4, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gh = getelementptr i8, ptr %i.d, i64 15
  %i.gi = load i8, ptr %i.gh, align 1             ; 3 uses
  %i.gj = shl i8 %i.gi, 4
  %i.gk = and i8 %i.gj, 48
  %i.gl = getelementptr i8, ptr %i.d, i64 16
  %i.gm = load i8, ptr %i.gl, align 1             ; 3 uses
  %i.gn = lshr i8 %i.gm, 4
  %i.go = or disjoint i8 %i.gk, %i.gn
  %i.gp = shl i8 %i.gm, 2
  %i.gq = and i8 %i.gp, 60
  %i.gr = getelementptr i8, ptr %i.d, i64 17
  %i.gs = load i8, ptr %i.gr, align 1             ; 2 uses
  %i.gt = lshr i8 %i.gs, 6
  %i.gu = or disjoint i8 %i.gq, %i.gt
  %i.gv = and i8 %i.gs, 63                        ; 2 uses
  %i.gw = lshr i8 %i.gi, 2                        ; 2 uses
  %i.gx = shl nuw nsw i8 %i.gw, 1
  %i.gy = and i8 %i.gx, 64
  %i.gz = or disjoint i8 %i.gy, %i.gw
  %i.ha = xor i8 %i.gz, 64
  %i.hb = getelementptr i8, ptr %i.k, i64 20
  store i8 %i.ha, ptr %i.hb, align 1
  %i.hc = shl i8 %i.gi, 5
  %i.hd = and i8 %i.hc, 64
  %i.he = or disjoint i8 %i.hd, %i.go
  %i.hf = xor i8 %i.he, 64
  %i.hg = getelementptr i8, ptr %i.k, i64 21
  store i8 %i.hf, ptr %i.hg, align 1
  %i.hh = shl i8 %i.gm, 3
  %i.hi = and i8 %i.hh, 64
  %i.hj = or disjoint i8 %i.hi, %i.gu
  %i.hk = xor i8 %i.hj, 64
  %i.hl = getelementptr i8, ptr %i.k, i64 22
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = shl nuw nsw i8 %i.gv, 1
  %i.hn = and i8 %i.hm, 64
  %i.ho = or disjoint i8 %i.hn, %i.gv
  %i.hp = xor i8 %i.ho, 64
  %i.hq = getelementptr i8, ptr %i.k, i64 23
  store i8 %i.hp, ptr %i.hq, align 1
  %.lhs.trunc.off63.a = add nsw i8 %.lhs.trunc, -18
  %exitcond58.not.5 = icmp ult i8 %.lhs.trunc.off63.a, 3
  br i1 %exitcond58.not.5, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hr = getelementptr i8, ptr %i.d, i64 18
  %i.hs = load i8, ptr %i.hr, align 1             ; 3 uses
  %i.ht = shl i8 %i.hs, 4
  %i.hu = and i8 %i.ht, 48
  %i.hv = getelementptr i8, ptr %i.d, i64 19
  %i.hw = load i8, ptr %i.hv, align 1             ; 3 uses
  %i.hx = lshr i8 %i.hw, 4
  %i.hy = or disjoint i8 %i.hu, %i.hx
  %i.hz = shl i8 %i.hw, 2
  %i.ia = and i8 %i.hz, 60
  %i.ib = getelementptr i8, ptr %i.d, i64 20
  %i.ic = load i8, ptr %i.ib, align 1             ; 2 uses
  %i.id = lshr i8 %i.ic, 6
  %i.ie = or disjoint i8 %i.ia, %i.id
  %i.if = and i8 %i.ic, 63                        ; 2 uses
  %i.ig = lshr i8 %i.hs, 2                        ; 2 uses
  %i.ih = shl nuw nsw i8 %i.ig, 1
  %i.ii = and i8 %i.ih, 64
  %i.ij = or disjoint i8 %i.ii, %i.ig
  %i.ik = xor i8 %i.ij, 64
  %i.il = getelementptr i8, ptr %i.k, i64 24
  store i8 %i.ik, ptr %i.il, align 1
  %i.im = shl i8 %i.hs, 5
  %i.in = and i8 %i.im, 64
  %i.io = or disjoint i8 %i.in, %i.hy
  %i.ip = xor i8 %i.io, 64
  %i.iq = getelementptr i8, ptr %i.k, i64 25
  store i8 %i.ip, ptr %i.iq, align 1
  %i.ir = shl i8 %i.hw, 3
  %i.is = and i8 %i.ir, 64
  %i.it = or disjoint i8 %i.is, %i.ie
  %i.iu = xor i8 %i.it, 64
  %i.iv = getelementptr i8, ptr %i.k, i64 26
  store i8 %i.iu, ptr %i.iv, align 1
  %i.iw = shl nuw nsw i8 %i.if, 1
  %i.ix = and i8 %i.iw, 64
  %i.iy = or disjoint i8 %i.ix, %i.if
  %i.iz = xor i8 %i.iy, 64
  %i.ja = getelementptr i8, ptr %i.k, i64 27
  store i8 %i.iz, ptr %i.ja, align 1
  %.lhs.trunc.off64 = add nsw i8 %.lhs.trunc, -21
  %exitcond58.not.6 = icmp ult i8 %.lhs.trunc.off64, 3
  br i1 %exitcond58.not.6, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jb = getelementptr i8, ptr %i.d, i64 21
  %i.jc = load i8, ptr %i.jb, align 1             ; 3 uses
  %i.jd = shl i8 %i.jc, 4
  %i.je = and i8 %i.jd, 48
  %i.jf = getelementptr i8, ptr %i.d, i64 22
  %i.jg = load i8, ptr %i.jf, align 1             ; 3 uses
  %i.jh = lshr i8 %i.jg, 4
  %i.ji = or disjoint i8 %i.je, %i.jh
  %i.jj = shl i8 %i.jg, 2
  %i.jk = and i8 %i.jj, 60
  %i.jl = getelementptr i8, ptr %i.d, i64 23
  %i.jm = load i8, ptr %i.jl, align 1             ; 2 uses
  %i.jn = lshr i8 %i.jm, 6
  %i.jo = or disjoint i8 %i.jk, %i.jn
  %i.jp = and i8 %i.jm, 63                        ; 2 uses
  %i.jq = lshr i8 %i.jc, 2                        ; 2 uses
  %i.jr = shl nuw nsw i8 %i.jq, 1
  %i.js = and i8 %i.jr, 64
  %i.jt = or disjoint i8 %i.js, %i.jq
  %i.ju = xor i8 %i.jt, 64
  %i.jv = getelementptr i8, ptr %i.k, i64 28
  store i8 %i.ju, ptr %i.jv, align 1
  %i.jw = shl i8 %i.jc, 5
  %i.jx = and i8 %i.jw, 64
  %i.jy = or disjoint i8 %i.jx, %i.ji
  %i.jz = xor i8 %i.jy, 64
  %i.ka = getelementptr i8, ptr %i.k, i64 29
  store i8 %i.jz, ptr %i.ka, align 1
  %i.kb = shl i8 %i.jg, 3
  %i.kc = and i8 %i.kb, 64
  %i.kd = or disjoint i8 %i.kc, %i.jo
  %i.ke = xor i8 %i.kd, 64
  %i.kf = getelementptr i8, ptr %i.k, i64 30
  store i8 %i.ke, ptr %i.kf, align 1
  %i.kg = shl nuw nsw i8 %i.jp, 1
  %i.kh = and i8 %i.kg, 64
  %i.ki = or disjoint i8 %i.kh, %i.jp
  %i.kj = xor i8 %i.ki, 64
  %i.kk = getelementptr i8, ptr %i.k, i64 31
  store i8 %i.kj, ptr %i.kk, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.lr.ph
  %.lhs.trunc60 = trunc nuw nsw i32 %5 to i8
  %6 = udiv i8 %.lhs.trunc60, 3
  %7 = shl nuw nsw i8 %6, 2
  %8 = zext nneg i8 %7 to i64
  %i.kl = getelementptr i8, ptr %i.k, i64 %8
  store i8 0, ptr %i.kl, align 1
  %i.km = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.k) ; 0 uses
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2147483647) i32 @dissect_cmd48(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 1, 2147483647) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i32 %3, 5
  br i1 %i.a, label %bb.b, label %.thread51

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_hartip_pt_rsp_device_sp_status, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %1, i32 noundef %2, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.d = icmp samesign ugt i32 %3, 8
  br i1 %i.d, label %bb.c, label %.thread51

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %2, 6
  %i.f = load i32, ptr @hf_hartip_pt_rsp_extended_device_status, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = add i32 %2, 7
  %i.i = load i32, ptr @hf_hartip_pt_rsp_device_op_mode, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.i, ptr noundef %1, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = add i32 %2, 8
  %i.l = load i32, ptr @hf_hartip_pt_rsp_standardized_status_0, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.l, ptr noundef %1, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = icmp samesign ugt i32 %3, 12
  br i1 %i.n, label %bb.d, label %.thread51

bb.d:                                             ; preds = %bb.c
  %i.o = add i32 %2, 9
  %i.p = load i32, ptr @hf_hartip_pt_rsp_standardized_status_1, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.p, ptr noundef %1, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = add i32 %2, 10
  %i.s = load i32, ptr @hf_hartip_pt_rsp_analog_channel_saturated, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.s, ptr noundef %1, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = add i32 %2, 11
  %i.v = load i32, ptr @hf_hartip_pt_rsp_standardized_status_2, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.v, ptr noundef %1, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %2, 12
  %i.y = load i32, ptr @hf_hartip_pt_rsp_standardized_status_3, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.y, ptr noundef %1, i32 noundef %i.x, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq i32 %3, 13
  br i1 %.not, label %.thread51, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add i32 %2, 13
  %i.ab = load i32, ptr @hf_hartip_pt_rsp_analog_channel_fixed, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ab, ptr noundef %1, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = icmp samesign ugt i32 %3, 23
  br i1 %i.ad, label %bb.f, label %.thread51

bb.f:                                             ; preds = %bb.e
  %i.ae = add i32 %2, 14
  %i.af = load i32, ptr @hf_hartip_pt_rsp_device_sp_status, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.af, ptr noundef %1, i32 noundef %i.ae, i32 noundef 11, i32 noundef 0) ; 0 uses
  br label %.thread51

.thread51:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.e, %bb.f
  %.0 = phi i32 [ %3, %bb.e ], [ %3, %bb.f ], [ 0, %bb.a ], [ 13, %bb.d ], [ %3, %bb.c ], [ %3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2147483647) i32 @dissect_cmd203(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 1, 2147483647) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i32 %3, 7
  br i1 %i.a, label %bb.b, label %.thread83

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_hartip_pt_rsp_index_of_first_discrete_var, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = add i32 %2, 2
  %i.e = load i32, ptr @hf_hartip_pt_rsp_number_of_discrete_vars, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = add i32 %2, 3
  %i.h = load i32, ptr @hf_hartip_pt_rsp_extended_device_status, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = add i32 %2, 4                            ; 2 uses
  %i.k = load i32, ptr @hf_hartip_pt_rsp_timestamp_for_most_recent_discrete_change, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %i.j, i32 noundef 4, i32 noundef 0)
  %i.m = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.j) ; 5 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %dissect_timestamp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = lshr i32 %i.m, 5
  %i.o = urem i32 %i.n, 1000
  %i.p = udiv i32 %i.m, 32000
  %i.q = urem i32 %i.p, 60
  %i.r = udiv i32 %i.m, 1920000
  %.lhs.trunc.i = trunc nuw nsw i32 %i.r to i16
  %i.s = urem i16 %.lhs.trunc.i, 60
  %.zext.i = zext nneg i16 %i.s to i32
  %i.t = udiv i32 %i.m, 115200000
  br label %dissect_timestamp.exit

dissect_timestamp.exit:                           ; preds = %bb.b, %bb.c
  %.023.i = phi i32 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %.022.i = phi i32 [ %.zext.i, %bb.c ], [ 0, %bb.b ]
  %.021.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %.0.i = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ]
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.l, ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.300, i32 noundef %.023.i, i32 noundef %.022.i, i32 noundef %.021.i, i32 noundef %.0.i)
  %i.u = icmp samesign ugt i32 %3, 10
  br i1 %i.u, label %bb.d, label %.thread83

bb.d:                                             ; preds = %dissect_timestamp.exit
  %i.v = add i32 %2, 8
  %i.w = load i32, ptr @hf_hartip_pt_rsp_slot0_discrete_var_state, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.w, ptr noundef %1, i32 noundef %i.v, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = add i32 %2, 10
  %i.z = load i32, ptr @hf_hartip_pt_rsp_slot0_discrete_var_status, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.z, ptr noundef %1, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = icmp samesign ugt i32 %3, 13
  br i1 %i.ab, label %bb.e, label %.thread83

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %2, 11
  %i.ad = load i32, ptr @hf_hartip_pt_rsp_slot1_discrete_var_state, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ad, ptr noundef %1, i32 noundef %i.ac, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.af = add i32 %2, 13
  %i.ag = load i32, ptr @hf_hartip_pt_rsp_slot1_discrete_var_status, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ag, ptr noundef %1, i32 noundef %i.af, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ai = icmp samesign ugt i32 %3, 16
  br i1 %i.ai, label %bb.f, label %.thread83

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %2, 14
  %i.ak = load i32, ptr @hf_hartip_pt_rsp_slot2_discrete_var_state, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ak, ptr noundef %1, i32 noundef %i.aj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.am = add i32 %2, 16
  %i.an = load i32, ptr @hf_hartip_pt_rsp_slot2_discrete_var_status, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.an, ptr noundef %1, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = icmp samesign ugt i32 %3, 19
  br i1 %i.ap, label %bb.g, label %.thread83

bb.g:                                             ; preds = %bb.f
  %i.aq = add i32 %2, 17
  %i.ar = load i32, ptr @hf_hartip_pt_rsp_slot3_discrete_var_state, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ar, ptr noundef %1, i32 noundef %i.aq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.at = add i32 %2, 19
  %i.au = load i32, ptr @hf_hartip_pt_rsp_slot3_discrete_var_status, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.au, ptr noundef %1, i32 noundef %i.at, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aw = icmp samesign ugt i32 %3, 22
  br i1 %i.aw, label %bb.h, label %.thread83

bb.h:                                             ; preds = %bb.g
  %i.ax = add i32 %2, 20
  %i.ay = load i32, ptr @hf_hartip_pt_rsp_slot4_discrete_var_state, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ay, ptr noundef %1, i32 noundef %i.ax, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %2, 22
  %i.bb = load i32, ptr @hf_hartip_pt_rsp_slot4_discrete_var_status, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bb, ptr noundef %1, i32 noundef %i.ba, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = icmp samesign ugt i32 %3, 25
  br i1 %i.bd, label %bb.i, label %.thread83

bb.i:                                             ; preds = %bb.h
  %i.be = add i32 %2, 23
  %i.bf = load i32, ptr @hf_hartip_pt_rsp_slot5_discrete_var_state, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bf, ptr noundef %1, i32 noundef %i.be, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bh = add i32 %2, 25
  %i.bi = load i32, ptr @hf_hartip_pt_rsp_slot5_discrete_var_status, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bi, ptr noundef %1, i32 noundef %i.bh, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.thread83

.thread83:                                        ; preds = %dissect_timestamp.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a, %bb.h, %bb.i
  %.0 = phi i32 [ %3, %bb.h ], [ %3, %bb.i ], [ 0, %bb.a ], [ %3, %bb.g ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %bb.d ], [ %3, %dissect_timestamp.exit ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 65536) i32 @get_dissect_hartip_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = add i32 %2, 6
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.a)
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}
end_hunk_0
