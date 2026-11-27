Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail:bb.a
  %i.gc = lshr i64 %i.fi, 34
  %i.gd = and i64 %i.gc, 63
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noundef !5
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  store i8 %i.gf, ptr %i.gg, align 1
  %i.gh = lshr i64 %i.fi, 28
  %i.gi = and i64 %i.gh, 63
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !noundef !5
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ce, i64 21
  store i8 %i.gk, ptr %i.gl, align 1
  %i.gm = lshr i64 %i.fi, 22
  %i.gn = and i64 %i.gm, 63
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noundef !5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ce, i64 22
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = lshr i64 %i.fi, 16
  %i.gs = and i64 %i.gr, 63
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ce, i64 23
  store i8 %i.gu, ptr %i.gv, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cd, i64 18
  %.val = load i64, ptr %i.gw, align 1
  %i.gx = tail call noundef i64 @llvm.bswap.i64(i64 %.val) ; 8 uses
  %i.gy = lshr i64 %i.gx, 58
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 %i.ha, ptr %i.hb, align 1
  %i.hc = lshr i64 %i.gx, 52
  %i.hd = and i64 %i.hc, 63
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !noundef !5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ce, i64 25
  store i8 %i.hf, ptr %i.hg, align 1
  %i.hh = lshr i64 %i.gx, 46
  %i.hi = and i64 %i.hh, 63
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !noundef !5
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ce, i64 26
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = lshr i64 %i.gx, 40
  %i.hn = and i64 %i.hm, 63
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noundef !5
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ce, i64 27
  store i8 %i.hp, ptr %i.hq, align 1
  %i.hr = lshr i64 %i.gx, 34
  %i.hs = and i64 %i.hr, 63
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !noundef !5
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  store i8 %i.hu, ptr %i.hv, align 1
  %i.hw = lshr i64 %i.gx, 28
  %i.hx = and i64 %i.hw, 63
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !noundef !5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ce, i64 29
  store i8 %i.hz, ptr %i.ia, align 1
  %i.ib = lshr i64 %i.gx, 22
  %i.ic = and i64 %i.ib, 63
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !noundef !5
  %i.if = getelementptr inbounds nuw i8, ptr %i.ce, i64 30
  store i8 %i.ie, ptr %i.if, align 1
  %i.ig = lshr i64 %i.gx, 16
  %i.ih = and i64 %i.ig, 63
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ce, i64 31
  store i8 %i.ij, ptr %i.ik, align 1
  %i.il = add nuw nsw i64 %.sroa.0.1149, 24       ; 4 uses
  %.old1.not = icmp ugt i64 %i.il, %i.a
  br i1 %.old1.not, label %.loopexit, label %.preheader

bb.t:                                             ; preds = %.lr.ph150
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.010.1148, i64 noundef %i.cb, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose13decode_suffix13decode_suffix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) dereferenceable(256) %7, i1 noundef zeroext %8, i8 noundef %9, i8 noundef range(i8 0, 3) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = icmp ugt i64 %3, %2
  br i1 %i.b, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 7 uses
  %i.d = icmp samesign eq i64 %3, %2
  br i1 %i.d, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.preheader

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.preheader: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 4 uses
  %i.f = add i64 %2, %i.a                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.e, align 1, !noundef !5  ; 4 uses
  %i.i = icmp eq i8 %i.h, %9
  br i1 %i.i, label %.loopexit231, label %bb.r

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18
  unreachable

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread: ; preds = %.outer, %bb.b
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.ay, %.outer ] ; 2 uses
  %.sroa.019.0.ph.lcssa151 = phi i8 [ 0, %bb.b ], [ %i.h, %.outer ]
  %.sroa.04.0.ph.lcssa147 = phi i64 [ 0, %bb.b ], [ 1, %.outer ] ; 2 uses
  %.not403 = icmp eq i64 %2, 0
  br i1 %.not403, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %bb.d

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread: ; preds = %bb.x, %bb.ac, %bb.ah, %.outer.3, %.outer.2, %.outer.1, %bb.z, %bb.ae, %bb.u, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread
  %.sroa.011.0.lcssa329 = phi i64 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ 0, %.outer.1 ], [ 0, %.outer.2 ], [ 0, %.outer.3 ], [ %i.ch, %bb.z ], [ %i.dc, %bb.ae ], [ %i.ch, %bb.ac ], [ %i.dc, %bb.ah ], [ %i.bn, %bb.u ], [ %i.bn, %bb.x ] ; 3 uses
  %.sroa.017.0.lcssa328 = phi i64 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ 0, %.outer.1 ], [ %.sroa.017.0158.lcssa.2336, %.outer.2 ], [ %.sroa.017.0158.lcssa.3348, %.outer.3 ], [ %.lcssa191.2339, %bb.z ], [ %.lcssa191.3351, %bb.ae ], [ %spec.select.3, %bb.ac ], [ %spec.select.4, %bb.ah ], [ 2, %bb.u ], [ %spec.select.2, %bb.x ]
  %.sroa.04.0.ph.lcssa147327 = phi i64 [ %.sroa.04.0.ph.lcssa147, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ 2, %.outer.1 ], [ 3, %.outer.2 ], [ 4, %.outer.3 ], [ 3, %bb.z ], [ 4, %bb.ae ], [ 3, %bb.ac ], [ 4, %bb.ah ], [ 2, %bb.u ], [ 2, %bb.x ] ; 3 uses
  %.sroa.019.0.ph.lcssa151326 = phi i8 [ %.sroa.019.0.ph.lcssa151, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ %i.bf, %.outer.1 ], [ %.lcssa185.2340, %.outer.2 ], [ %.lcssa185.3352, %.outer.3 ], [ %.lcssa185.2340, %bb.z ], [ %.lcssa185.3352, %bb.ae ], [ %.lcssa185.2340, %bb.ac ], [ %.lcssa185.3352, %bb.ah ], [ %i.bf, %bb.u ], [ %i.bf, %bb.x ]
  %.sroa.020.0.ph.lcssa155325 = phi i8 [ %.sroa.0.0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ %i.bj, %.outer.1 ], [ %i.ca, %.outer.2 ], [ %i.cv, %.outer.3 ], [ %i.ca, %bb.z ], [ %i.cv, %bb.ae ], [ %i.ca, %bb.ac ], [ %i.cv, %bb.ah ], [ %i.bj, %bb.u ], [ %i.bj, %bb.x ]
  %.sroa.0.0324 = phi i8 [ %.sroa.0.0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ %i.ay, %.outer.1 ], [ %i.ay, %.outer.2 ], [ %i.ay, %.outer.3 ], [ %i.ay, %bb.z ], [ %i.ay, %bb.ae ], [ %i.ay, %bb.ac ], [ %i.ay, %bb.ah ], [ %i.ay, %bb.u ], [ %i.ay, %bb.x ]
  %.sroa.6.0323 = phi i8 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ %i.bj, %.outer.1 ], [ %i.bj, %.outer.2 ], [ %i.bj, %.outer.3 ], [ %i.bj, %bb.z ], [ %i.bj, %bb.ae ], [ %i.bj, %bb.ac ], [ %i.bj, %bb.ah ], [ %i.bj, %bb.u ], [ %i.bj, %bb.x ]
  %.sroa.8.0322 = phi i8 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ 0, %.outer.1 ], [ %i.ca, %.outer.2 ], [ %i.ca, %.outer.3 ], [ %i.ca, %bb.z ], [ %i.ca, %bb.ae ], [ %i.ca, %bb.ac ], [ %i.ca, %bb.ah ], [ 0, %bb.u ], [ 0, %bb.x ]
  %.sroa.10.0321 = phi i8 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread ], [ 0, %.outer.1 ], [ 0, %.outer.2 ], [ %i.cv, %.outer.3 ], [ 0, %bb.z ], [ %i.cv, %bb.ae ], [ 0, %bb.ac ], [ %i.cv, %bb.ah ], [ 0, %bb.u ], [ 0, %bb.x ]
  switch i8 %10, label %default.unreachable310 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.d:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread
  %i.j = add nuw i64 %.sroa.04.0.ph.lcssa147, %3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.k, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %.sroa.551.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.n

default.unreachable310:                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.f, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread
  %i.l = mul nuw nsw i64 %.sroa.04.0.ph.lcssa147327, 6 ; 2 uses
  %i.m = lshr i64 %i.l, 3                         ; 2 uses
  %i.n = zext i8 %.sroa.0.0324 to i32
  %i.o = shl i32 %i.n, 26
  %i.p = zext i8 %.sroa.6.0323 to i32
  %i.q = shl nuw nsw i32 %i.p, 20
  %i.r = or i32 %i.q, %i.o
  %i.s = zext i8 %.sroa.8.0322 to i32
  %i.t = shl nuw nsw i32 %i.s, 14
  %i.u = or i32 %i.r, %i.t
  %i.v = zext i8 %.sroa.10.0321 to i32
  %i.w = shl nuw nsw i32 %i.v, 8
  %i.x = or i32 %i.u, %i.w                        ; 2 uses
  br i1 %8, label %bb.k, label %bb.j

bb.f:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread
  %i.y = add i64 %.sroa.04.0.ph.lcssa147327, %.sroa.011.0.lcssa329
  %i.z = and i64 %i.y, 3
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread
  %.not117 = icmp eq i64 %.sroa.011.0.lcssa329, 0
  br i1 %.not117, label %bb.e, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ab, align 8
  store i64 2, ptr %0, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ac, align 8
  store i64 2, ptr %0, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.ad = trunc nuw nsw i64 %i.l to i32
  %i.ae = and i32 %i.ad, 24
  %i.af = lshr i32 -1, %i.ae
  %i.ag = and i32 %i.x, %i.af
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.e
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.ai = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %6)
  br label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.aj = add nsw i64 %3, -1
  %i.ak = add i64 %i.aj, %.sroa.04.0.ph.lcssa147327
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = zext i8 %.sroa.019.0.ph.lcssa151326 to i16
  %12 = shl nuw i16 %11, 8
  %13 = or disjoint i16 %12, 2
  store i16 %13, ptr %i.al, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.020.0.ph.lcssa155325, ptr %.sroa.570.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  store i64 2, ptr %0, align 8
  br label %bb.n

._crit_edge:                                      ; preds = %bb.p, %bb.k
  %.sroa.0.0.lcssa = phi i64 [ %6, %bb.k ], [ %i.at, %bb.p ]
  %.not118 = icmp ne i64 %.sroa.011.0.lcssa329, 0 ; 2 uses
  %i.am = add i64 %.sroa.017.0.lcssa328, %3
  %.sroa.096.0 = zext i1 %.not118 to i64
  %.sroa.597.0 = select i1 %.not118, i64 %i.am, i64 undef
  store i64 %.sroa.096.0, ptr %0, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.597.0, ptr %.sroa.494.0..sroa_idx, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa, ptr %.sroa.595.0..sroa_idx, align 8
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.sroa.0.0182 = phi i64 [ %i.at, %bb.p ], [ %6, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0107.0181 = phi i64 [ %i.ar, %bb.p ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.060.0180 = phi i32 [ %i.ao, %bb.p ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0107.0181, %i.ai
  br i1 %exitcond.not, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.m, %.loopexit231, %bb.s, %bb.q, %._crit_edge
  ret void

bb.o:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.an, align 8
  br label %bb.m

bb.p:                                             ; preds = %.lr.ph
  %i.ao = shl i32 %.sroa.060.0180, 8
  %i.ap = lshr i32 %.sroa.060.0180, 24
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = add nuw nsw i64 %.sroa.0107.0181, 1     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0182
  store i8 %i.aq, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.sroa.0.0182, 1        ; 2 uses
  %exitcond277.not = icmp eq i64 %i.ar, %i.m
  br i1 %exitcond277.not, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.af, %bb.aa, %bb.v
  %.sroa.017.0158.lcssa.lcssa = phi i64 [ %.sroa.017.0158.4, %bb.af ], [ %.sroa.017.0158.3, %bb.aa ], [ %.sroa.017.0158.2, %bb.v ]
  %i.au = add i64 %.sroa.017.0158.lcssa.lcssa, %3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = zext i8 %9 to i16
  %15 = shl nuw i16 %14, 8
  store i16 %15, ptr %i.av, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %.sroa.637.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.n

bb.r:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.preheader
  %i.aw = zext i8 %i.h to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !5 ; 11 uses
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.s, label %.outer

bb.s:                                             ; preds = %.thread353, %.thread341, %.thread, %bb.t, %bb.r
  %.sroa.8.0156.lcssa.lcssa199 = phi i64 [ 0, %bb.r ], [ 1, %bb.t ], [ %.sroa.8.0156.lcssa.2337, %.thread ], [ %.sroa.8.0156.lcssa.3349, %.thread341 ], [ %.sroa.8.0156.lcssa.4358, %.thread353 ]
  %.lcssa185.lcssa188 = phi i8 [ %i.h, %bb.r ], [ %i.bf, %bb.t ], [ %.lcssa185.2340, %.thread ], [ %.lcssa185.3352, %.thread341 ], [ %.lcssa185.4359, %.thread353 ]
  %i.ba = add i64 %.sroa.8.0156.lcssa.lcssa199, %3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = zext i8 %.lcssa185.lcssa188 to i16
  %17 = shl nuw i16 %16, 8
  store i16 %17, ptr %i.bb, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ba, ptr %.sroa.645.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.n

.outer:                                           ; preds = %bb.r
  %i.bc = add nuw nsw i64 %3, 1
  %i.bd = icmp samesign eq i64 %i.bc, %2
  br i1 %i.bd, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.1

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.1: ; preds = %.outer
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.g, align 1, !noundef !5 ; 6 uses
  %i.bg = icmp eq i8 %i.bf, %9
  br i1 %i.bg, label %.loopexit231, label %bb.t

bb.t:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.1
  %i.bh = zext i8 %i.bf to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !5 ; 13 uses
  %i.bk = icmp eq i8 %i.bj, -1
  br i1 %i.bk, label %bb.s, label %.outer.1

.outer.1:                                         ; preds = %bb.t
  %i.bl = add nuw nsw i64 %3, 2
  %i.bm = icmp samesign eq i64 %i.bl, %2
  br i1 %i.bm, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2: ; preds = %.outer.1
  %.sroa.0.0120.ph170229.2 = ptrtoaddr ptr %i.be to i64
  %i.bn = sub i64 %i.f, %.sroa.0.0120.ph170229.2  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.bp = load i8, ptr %i.be, align 1, !noundef !5 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, %9
  br i1 %i.bq, label %bb.u, label %.thread

bb.u:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2
  %i.br = add nuw nsw i64 %3, 3
  %i.bs = icmp samesign eq i64 %i.br, %2
  br i1 %i.bs, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.2

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.2: ; preds = %bb.u, %bb.x
  %.sroa.011.0159.2 = phi i64 [ %i.cf, %bb.x ], [ 1, %bb.u ] ; 3 uses
  %.sroa.017.0158.2 = phi i64 [ %spec.select.2, %bb.x ], [ 2, %bb.u ] ; 3 uses
  %.sroa.0.0120157.2 = phi ptr [ %i.bt, %bb.x ], [ %i.bo, %bb.u ] ; 2 uses
  %.sroa.8.0156.2 = phi i64 [ %i.bu, %bb.x ], [ 3, %bb.u ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0120157.2, i64 1 ; 3 uses
  %i.bu = add i64 %.sroa.8.0156.2, 1              ; 2 uses
  %i.bv = load i8, ptr %.sroa.0.0120157.2, align 1, !noundef !5 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, %9
  br i1 %i.bw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.2
  %i.bx = icmp eq i64 %.sroa.011.0159.2, 0
  br i1 %i.bx, label %.thread, label %bb.q

.thread:                                          ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2, %bb.v
  %.lcssa185.2340 = phi i8 [ %i.bv, %bb.v ], [ %i.bp, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2 ] ; 5 uses
  %.lcssa191.2339 = phi i64 [ %i.bu, %bb.v ], [ 3, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2 ] ; 6 uses
  %.lcssa194.2338 = phi ptr [ %i.bt, %bb.v ], [ %i.bo, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2 ] ; 4 uses
  %.sroa.8.0156.lcssa.2337 = phi i64 [ %.sroa.8.0156.2, %bb.v ], [ 2, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2 ]
  %.sroa.017.0158.lcssa.2336 = phi i64 [ %.sroa.017.0158.2, %bb.v ], [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.2 ] ; 2 uses
  %i.by = zext i8 %.lcssa185.2340 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !5 ; 10 uses
  %i.cb = icmp eq i8 %i.ca, -1
  br i1 %i.cb, label %bb.s, label %.outer.2

.outer.2:                                         ; preds = %.thread
  %i.cc = icmp eq ptr %.lcssa194.2338, %i.c
  br i1 %i.cc, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3

bb.w:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.2
  %i.cd = icmp ult i64 %.sroa.8.0156.2, 2
  br i1 %i.cd, label %.loopexit231, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = icmp eq i64 %.sroa.011.0159.2, 0
  %spec.select.2 = select i1 %i.ce, i64 %.sroa.8.0156.2, i64 %.sroa.017.0158.2 ; 2 uses
  %i.cf = add i64 %.sroa.011.0159.2, 1
  %i.cg = icmp eq ptr %i.bt, %i.c
  br i1 %i.cg, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.2, !llvm.loop !53

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3: ; preds = %.outer.2
  %.sroa.0.0120.ph170229.3 = ptrtoaddr ptr %.lcssa194.2338 to i64
  %i.ch = sub i64 %i.f, %.sroa.0.0120.ph170229.3  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.lcssa194.2338, i64 1 ; 3 uses
  %i.cj = add i64 %.lcssa191.2339, 1              ; 2 uses
  %i.ck = load i8, ptr %.lcssa194.2338, align 1, !noundef !5 ; 2 uses
  %i.cl = icmp eq i8 %i.ck, %9
  br i1 %i.cl, label %bb.y, label %.thread341

bb.y:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3
  %i.cm = icmp ult i64 %.lcssa191.2339, 2
  br i1 %i.cm, label %.loopexit231, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = icmp eq ptr %i.ci, %i.c
  br i1 %i.cn, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.3

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.3: ; preds = %bb.z, %bb.ac
  %.sroa.011.0159.3 = phi i64 [ %i.da, %bb.ac ], [ 1, %bb.z ] ; 3 uses
  %.sroa.017.0158.3 = phi i64 [ %spec.select.3, %bb.ac ], [ %.lcssa191.2339, %bb.z ] ; 3 uses
  %.sroa.0.0120157.3 = phi ptr [ %i.co, %bb.ac ], [ %i.ci, %bb.z ] ; 2 uses
  %.sroa.8.0156.3 = phi i64 [ %i.cp, %bb.ac ], [ %i.cj, %bb.z ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0120157.3, i64 1 ; 3 uses
  %i.cp = add i64 %.sroa.8.0156.3, 1              ; 2 uses
  %i.cq = load i8, ptr %.sroa.0.0120157.3, align 1, !noundef !5 ; 2 uses
  %i.cr = icmp eq i8 %i.cq, %9
  br i1 %i.cr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.3
  %i.cs = icmp eq i64 %.sroa.011.0159.3, 0
  br i1 %i.cs, label %.thread341, label %bb.q

.thread341:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3, %bb.aa
  %.lcssa185.3352 = phi i8 [ %i.cq, %bb.aa ], [ %i.ck, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3 ] ; 5 uses
  %.lcssa191.3351 = phi i64 [ %i.cp, %bb.aa ], [ %i.cj, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3 ] ; 6 uses
  %.lcssa194.3350 = phi ptr [ %i.co, %bb.aa ], [ %i.ci, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3 ] ; 4 uses
  %.sroa.8.0156.lcssa.3349 = phi i64 [ %.sroa.8.0156.3, %bb.aa ], [ %.lcssa191.2339, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3 ]
  %.sroa.017.0158.lcssa.3348 = phi i64 [ %.sroa.017.0158.3, %bb.aa ], [ %.sroa.017.0158.lcssa.2336, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.3 ]
  %i.ct = zext i8 %.lcssa185.3352 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !5 ; 7 uses
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.s, label %.outer.3

.outer.3:                                         ; preds = %.thread341
  %i.cx = icmp eq ptr %.lcssa194.3350, %i.c
  br i1 %i.cx, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.4

bb.ab:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.3
  %i.cy = icmp ult i64 %.sroa.8.0156.3, 2
  br i1 %i.cy, label %.loopexit231, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = icmp eq i64 %.sroa.011.0159.3, 0
  %spec.select.3 = select i1 %i.cz, i64 %.sroa.8.0156.3, i64 %.sroa.017.0158.3 ; 2 uses
  %i.da = add i64 %.sroa.011.0159.3, 1
  %i.db = icmp eq ptr %i.co, %i.c
  br i1 %i.db, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.3, !llvm.loop !53

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.4: ; preds = %.outer.3
  %.sroa.0.0120.ph170229.4 = ptrtoaddr ptr %.lcssa194.3350 to i64
  %i.dc = sub i64 %i.f, %.sroa.0.0120.ph170229.4  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.lcssa194.3350, i64 1 ; 2 uses
  %i.de = load i8, ptr %.lcssa194.3350, align 1, !noundef !5 ; 2 uses
  %i.df = icmp eq i8 %i.de, %9
  br i1 %i.df, label %bb.ad, label %.thread353

bb.ad:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.4
  %i.dg = icmp ult i64 %.lcssa191.3351, 2
  br i1 %i.dg, label %.loopexit231, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = icmp eq ptr %i.dd, %i.c
  br i1 %i.dh, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.4

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.4: ; preds = %bb.ae, %bb.ah
  %.sroa.011.0159.4 = phi i64 [ %i.ds, %bb.ah ], [ 1, %bb.ae ] ; 3 uses
  %.sroa.017.0158.4 = phi i64 [ %spec.select.4, %bb.ah ], [ %.lcssa191.3351, %bb.ae ] ; 2 uses
  %.sroa.0.0120157.4 = phi ptr [ %i.di, %bb.ah ], [ %i.dd, %bb.ae ] ; 2 uses
  %.sroa.8.0156.4.in = phi i64 [ %.sroa.8.0156.4, %bb.ah ], [ %.lcssa191.3351, %bb.ae ]
  %.sroa.8.0156.4 = add i64 %.sroa.8.0156.4.in, 1 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0120157.4, i64 1 ; 2 uses
  %i.dj = load i8, ptr %.sroa.0.0120157.4, align 1, !noundef !5 ; 2 uses
  %i.dk = icmp eq i8 %i.dj, %9
  br i1 %i.dk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.4
  %i.dl = icmp eq i64 %.sroa.011.0159.4, 0
  br i1 %i.dl, label %.thread353, label %bb.q

.thread353:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.4, %bb.af
  %.lcssa185.4359 = phi i8 [ %i.dj, %bb.af ], [ %i.de, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.4 ] ; 2 uses
  %.sroa.8.0156.lcssa.4358 = phi i64 [ %.sroa.8.0156.4, %bb.af ], [ %.lcssa191.3351, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.4 ]
  %i.dm = zext i8 %.lcssa185.4359 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noundef !5
  %i.dp = icmp eq i8 %i.do, -1
  br i1 %i.dp, label %bb.s, label %bb.ai

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.4
  %i.dq = icmp ult i64 %.sroa.8.0156.4, 2
  br i1 %i.dq, label %.loopexit231, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = icmp eq i64 %.sroa.011.0159.4, 0
  %spec.select.4 = select i1 %i.dr, i64 %.sroa.8.0156.4, i64 %.sroa.017.0158.4 ; 2 uses
  %i.ds = add i64 %.sroa.011.0159.4, 1
  %i.dt = icmp eq ptr %i.di, %i.c
  br i1 %i.dt, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.thread.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.4, !llvm.loop !53

bb.ai:                                            ; preds = %.thread353
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 4, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18
  unreachable

.loopexit231:                                     ; preds = %bb.w, %bb.ab, %bb.ag, %bb.y, %bb.ad, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.preheader, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.1
  %.sroa.8.0156.lcssa197 = phi i64 [ 1, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.1 ], [ %.sroa.8.0156.4, %bb.ag ], [ 0, %bb.ab ], [ %.lcssa191.2339, %bb.y ], [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit.lr.ph.preheader ], [ %.lcssa191.3351, %bb.ad ], [ 0, %bb.w ]
  %i.du = add nuw i64 %.sroa.8.0156.lcssa197, %3
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = zext i8 %9 to i16
  %19 = shl nuw i16 %18, 8
  store i16 %19, ptr %i.dv, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.du, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsgkxsgNF9KUO_6base646encodeNtB2_16EncodeSliceErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !9, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 22) #21
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsgkxsgNF9KUO_6base6415chunked_encoderNtB5_10StringSinkNtB5_4Sink19write_encoded_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.d = load i64, ptr %i.b, align 8, !range !6, !alias.scope !61, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #18, !noalias !61
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !61, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !61, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !63, !noundef !5 ; 5 uses
  %i.m = load i64, ptr %i.c, align 8, !range !4, !alias.scope !63, !noundef !5
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp ugt i64 %i.j, %i.n
  br i1 %i.o, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, !prof !8

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64.exit
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.l, i64 noundef %i.j)
  %i.p = load i64, ptr %i.k, align 8, !alias.scope !62, !noundef !5 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  br label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64.exit
  %i.r = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.r)
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i
  %i.s = phi i64 [ %i.p, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i ], [ %i.l, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !62, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !noalias !62
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %bb.c
  %i.w = phi i64 [ %i.s, %bb.c ], [ %i.l, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ]
  %i.x = add i64 %i.w, %i.j
  store i64 %i.x, ptr %i.k, align 8, !alias.scope !62
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsgkxsgNF9KUO_6base647displayNtB5_13FormatterSinkNtNtB7_15chunked_encoder4Sink19write_encoded_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.d = load i64, ptr %i.b, align 8, !range !6, !alias.scope !66, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsgkxsgNF9KUO_6base64.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #18, !noalias !66
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsgkxsgNF9KUO_6base64.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !66, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !66, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.c = load i8, ptr %i.b, align 1, !range !10, !alias.scope !70, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !71
  store ptr %i.e, ptr %i.a, align 8, !noalias !71
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 4), !noalias !70
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !74, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgkxsgNF9KUO_6base645write21encoder_string_writerNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_11StrConsumer7consume(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !80, !noundef !5 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !4, !alias.scope !80, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, !prof !8

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !79, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !79
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !79
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCskKLDkoKarTP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(324) %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 67 ; 62 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.f = load i8, ptr %i.e, align 1, !noundef !5  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1, !range !154, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.i = icmp eq i64 %6, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %3, -1                       ; 3 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %6) ; 2 uses
  %i.l = icmp eq i64 %6, 0
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 4)
  %i.n = select i1 %i.l, i64 %i.m, i64 %i.k       ; 6 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = mul nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.q = icmp samesign ult i64 %5, %i.p
  br i1 %i.q, label %bb.g, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !161, !noundef !5 ; 3 uses
  %.not9.i.i = icmp eq i8 %i.s, %i.f
  br i1 %.not9.i.i, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !162
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !163, !noundef !5
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.sroa.8.0.ph.i = phi i8 [ undef, %bb.c ], [ %i.s, %bb.f ]
  %.sroa.0.sroa.0.0.ph.i = phi i16 [ 255, %bb.c ], [ 0, %bb.f ]
  %.sroa.91.0.ph.i = phi i64 [ undef, %bb.c ], [ %i.j, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = freeze i8 %.sroa.0.sroa.8.0.ph.i
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = or disjoint i16 %10, %.sroa.0.sroa.0.0.ph.i
  store i16 %11, ptr %i.x, align 8, !alias.scope !155
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.91.0.ph.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !155
  store i64 2, ptr %0, align 8, !alias.scope !155
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.y = and i64 %i.n, 9223372036854775776        ; 11 uses
  %.not.i21.i = icmp samesign ugt i64 %i.y, %3
  br i1 %.not.i21.i, label %bb.h, label %.preheader.i.i, !prof !8

.preheader.i.i:                                   ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1028.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i1028.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #18, !noalias !167
  unreachable

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.cl
  %.sroa.0.01031.i.i = phi ptr [ %i.z, %bb.cl ], [ %2, %.preheader.i.i ] ; 33 uses
  %.sroa.684.01030.i.i = phi i64 [ %i.aa, %bb.cl ], [ %i.y, %.preheader.i.i ]
  %.sroa.13.01029.i.i = phi i64 [ %i.ab, %bb.cl ], [ 0, %.preheader.i.i ] ; 13 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 32
  %i.aa = add nsw i64 %.sroa.684.01030.i.i, -32   ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.13.01029.i.i, 1
  %i.ac = mul nuw nsw i64 %.sroa.13.01029.i.i, 24 ; 3 uses
  %i.ad = add nuw nsw i64 %i.ac, 24               ; 2 uses
  %.not16.i.i = icmp samesign ugt i64 %i.ad, %5
  br i1 %.not16.i.i, label %bb.ax, label %bb.ay, !prof !7

._crit_edge.i.i:                                  ; preds = %bb.cl, %.preheader.i.i
  %i.ae = lshr exact i64 %i.y, 2                  ; 7 uses
  %.not12.i.i = icmp samesign ugt i64 %i.n, %3
  br i1 %.not12.i.i, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.y, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #18, !noalias !167
  unreachable

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.af = and i64 %i.n, 28                        ; 7 uses
  %.not.i.i791039.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i791039.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.preheader.i.i

.lr.ph1044.preheader.i.i:                         ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 28 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = mul nuw nsw i64 %i.ae, 3                ; 3 uses
  %i.aj = or disjoint i64 %i.ai, 3                ; 2 uses
  %.not14.i.i = icmp samesign ugt i64 %i.aj, %5
  br i1 %.not14.i.i, label %bb.r, label %bb.k, !prof !7

bb.k:                                             ; preds = %.lr.ph1044.preheader.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %i.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.al = load i8, ptr %i.ag, align 1, !alias.scope !170, !noundef !5 ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !171, !noundef !5 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !170, !noundef !5 ; 2 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !171, !noundef !5 ; 2 uses
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.at, %bb.ao, %bb.aj, %bb.ae, %bb.z, %bb.u, %bb.l
  %.lcssa614 = phi i8 [ %i.ar, %bb.l ], [ %i.cm, %bb.u ], [ %i.ea, %bb.z ], [ %i.fo, %bb.ae ], [ %i.hc, %bb.aj ], [ %i.iq, %bb.ao ], [ %i.kd, %bb.at ]
  %.sroa.13112.01040.i.i.lcssa605 = phi i64 [ 0, %bb.l ], [ 4, %bb.u ], [ 8, %bb.z ], [ 12, %bb.ae ], [ 16, %bb.aj ], [ 20, %bb.ao ], [ 24, %bb.at ]
  %i.aw = or disjoint i64 %.sroa.13112.01040.i.i.lcssa605, %i.y
  %i.ax = or disjoint i64 %i.aw, 1
  br label %bb.cm

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !170, !noundef !5 ; 2 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !171, !noundef !5 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.au, %bb.ap, %bb.ak, %bb.af, %bb.aa, %bb.v, %bb.n
  %.lcssa618 = phi i8 [ %i.az, %bb.n ], [ %i.cs, %bb.v ], [ %i.eg, %bb.aa ], [ %i.fu, %bb.af ], [ %i.hi, %bb.ak ], [ %i.iw, %bb.ap ], [ %i.kj, %bb.au ]
  %.sroa.13112.01040.i.i.lcssa606 = phi i64 [ 0, %bb.n ], [ 4, %bb.v ], [ 8, %bb.aa ], [ 12, %bb.af ], [ 16, %bb.ak ], [ 20, %bb.ap ], [ 24, %bb.au ]
  %i.be = or disjoint i64 %.sroa.13112.01040.i.i.lcssa606, %i.y
  %i.bf = or disjoint i64 %i.be, 2
  br label %bb.cm

bb.p:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !170, !noundef !5 ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !171, !noundef !5 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.av, %bb.aq, %bb.al, %bb.ag, %bb.ab, %bb.w, %bb.p
  %.lcssa621 = phi i8 [ %i.bh, %bb.p ], [ %i.cy, %bb.w ], [ %i.em, %bb.ab ], [ %i.ga, %bb.ag ], [ %i.ho, %bb.al ], [ %i.jc, %bb.aq ], [ %i.kp, %bb.av ]
  %.sroa.13112.01040.i.i.lcssa607 = phi i64 [ 0, %bb.p ], [ 4, %bb.w ], [ 8, %bb.ab ], [ 12, %bb.ag ], [ 16, %bb.al ], [ 20, %bb.aq ], [ 24, %bb.av ]
  %i.bm = or disjoint i64 %.sroa.13112.01040.i.i.lcssa607, %i.y
  %i.bn = or disjoint i64 %i.bm, 3
  br label %bb.cm

bb.r:                                             ; preds = %.lr.ph1044.i.i.6, %.lr.ph1044.i.i.5, %.lr.ph1044.i.i.4, %.lr.ph1044.i.i.3, %.lr.ph1044.i.i.2, %.lr.ph1044.i.i.1, %.lr.ph1044.preheader.i.i
  %.lcssa598 = phi i64 [ %i.ai, %.lr.ph1044.preheader.i.i ], [ %i.cd, %.lr.ph1044.i.i.1 ], [ %i.dr, %.lr.ph1044.i.i.2 ], [ %i.ff, %.lr.ph1044.i.i.3 ], [ %i.gt, %.lr.ph1044.i.i.4 ], [ %i.ih, %.lr.ph1044.i.i.5 ], [ %i.ju, %.lr.ph1044.i.i.6 ]
  %.lcssa = phi i64 [ %i.aj, %.lr.ph1044.preheader.i.i ], [ %i.ce, %.lr.ph1044.i.i.1 ], [ %i.ds, %.lr.ph1044.i.i.2 ], [ %i.fg, %.lr.ph1044.i.i.3 ], [ %i.gu, %.lr.ph1044.i.i.4 ], [ %i.ii, %.lr.ph1044.i.i.5 ], [ %i.jv, %.lr.ph1044.i.i.6 ]
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.lcssa598, i64 noundef %.lcssa, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18, !noalias !167
  unreachable

.loopexit.i.i:                                    ; preds = %bb.as, %bb.an, %bb.ai, %bb.ad, %bb.y, %bb.t, %bb.k
  %.lcssa609 = phi i8 [ %i.al, %bb.k ], [ %i.cg, %bb.t ], [ %i.du, %bb.y ], [ %i.fi, %bb.ad ], [ %i.gw, %bb.ai ], [ %i.ik, %bb.an ], [ %i.jx, %bb.as ]
  %.sroa.13112.01040.i.i.lcssa604 = phi i64 [ 0, %bb.k ], [ 4, %bb.t ], [ 8, %bb.y ], [ 12, %bb.ad ], [ 16, %bb.ai ], [ 20, %bb.an ], [ 24, %bb.as ]
  %i.bo = or disjoint i64 %.sroa.13112.01040.i.i.lcssa604, %i.y
  br label %bb.cm

bb.s:                                             ; preds = %bb.p
  %i.bp = zext i8 %i.ao to i32
  %i.bq = shl i32 %i.bp, 26
  %i.br = zext i8 %i.au to i32
  %i.bs = shl nuw nsw i32 %i.br, 20
  %i.bt = or i32 %i.bs, %i.bq
  %i.bu = zext i8 %i.bc to i32
  %i.bv = shl nuw nsw i32 %i.bu, 14
  %i.bw = or i32 %i.bt, %i.bv
  %i.bx = zext i8 %i.bk to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or i32 %i.bw, %i.by
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.bz)
  %.sroa.0240.0.extract.trunc.i.i = trunc nuw i32 %i.ca to i24
  store i24 %.sroa.0240.0.extract.trunc.i.i, ptr %i.ak, align 1, !alias.scope !172, !noalias !173
  %.not.i.i79.i.i = icmp eq i64 %i.af, 4
  br i1 %.not.i.i79.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.i.i.1

.lr.ph1044.i.i.1:                                 ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cc = mul nuw nsw i64 %i.ae, 3                ; 2 uses
  %i.cd = or disjoint i64 %i.cc, 3                ; 2 uses
  %i.ce = or disjoint i64 %i.cc, 6                ; 2 uses
  %.not14.i.i.1 = icmp samesign ugt i64 %i.ce, %5
  br i1 %.not14.i.i.1, label %bb.r, label %bb.t, !prof !7

bb.t:                                             ; preds = %.lr.ph1044.i.i.1
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %i.cd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.cg = load i8, ptr %i.ah, align 1, !alias.scope !176, !noundef !5 ; 2 uses
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !177, !noundef !5 ; 2 uses
  %i.ck = icmp eq i8 %i.cj, -1
  br i1 %i.ck, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !176, !noundef !5 ; 2 uses
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !177, !noundef !5 ; 2 uses
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %bb.m, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !176, !noundef !5 ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !177, !noundef !5 ; 2 uses
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.o, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ag, i64 7
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !176, !noundef !5 ; 2 uses
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !177, !noundef !5 ; 2 uses
  %i.dc = icmp eq i8 %i.db, -1
  br i1 %i.dc, label %bb.q, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = zext i8 %i.cj to i32
  %i.de = shl i32 %i.dd, 26
  %i.df = zext i8 %i.cp to i32
  %i.dg = shl nuw nsw i32 %i.df, 20
  %i.dh = or i32 %i.dg, %i.de
  %i.di = zext i8 %i.cv to i32
  %i.dj = shl nuw nsw i32 %i.di, 14
  %i.dk = or i32 %i.dh, %i.dj
  %i.dl = zext i8 %i.db to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or i32 %i.dk, %i.dm
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a
bb.bx:                                            ; preds = %bb.bw
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 18
  %i.sa = load i8, ptr %i.rz, align 1, !alias.scope !218, !noundef !5 ; 2 uses
  %i.sb = zext i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !alias.scope !219, !noundef !5 ; 2 uses
  %i.se = icmp eq i8 %i.sd, -1
  br i1 %i.se, label %.loopexit294.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 19
  %i.sg = load i8, ptr %i.sf, align 1, !alias.scope !218, !noundef !5 ; 2 uses
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !alias.scope !219, !noundef !5 ; 2 uses
  %i.sk = icmp eq i8 %i.sj, -1
  br i1 %i.sk, label %.loopexit294.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 20
  %i.sm = load i8, ptr %i.sl, align 1, !alias.scope !218, !noundef !5 ; 2 uses
  %i.sn = zext i8 %i.sm to i64
  %i.so = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !alias.scope !219, !noundef !5 ; 2 uses
  %i.sq = icmp eq i8 %i.sp, -1
  br i1 %i.sq, label %.loopexit294.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 21
  %i.ss = load i8, ptr %i.sr, align 1, !alias.scope !218, !noundef !5 ; 2 uses
  %i.st = zext i8 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !alias.scope !219, !noundef !5 ; 2 uses
  %i.sw = icmp eq i8 %i.sv, -1
  br i1 %i.sw, label %.loopexit294.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 22
  %i.sy = load i8, ptr %i.sx, align 1, !alias.scope !218, !noundef !5 ; 2 uses
  %i.sz = zext i8 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !alias.scope !219, !noundef !5 ; 2 uses
  %i.tc = icmp eq i8 %i.tb, -1
  br i1 %i.tc, label %.loopexit294.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 23
  %i.te = load i8, ptr %i.td, align 1, !alias.scope !218, !noundef !5 ; 2 uses
  %i.tf = zext i8 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !alias.scope !219, !noundef !5 ; 2 uses
  %i.ti = icmp eq i8 %i.th, -1
  br i1 %i.ti, label %.loopexit294.i.i, label %bb.cd

.loopexit294.i.i:                                 ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sink2476.i.i = phi i64 [ 23, %bb.cc ], [ 22, %bb.cb ], [ 17, %bb.bw ], [ 18, %bb.bx ], [ 19, %bb.by ], [ 20, %bb.bz ], [ 21, %bb.ca ], [ 16, %bb.bv ]
  %.sroa.1495.0.ph.i.i = phi i8 [ %i.te, %bb.cc ], [ %i.sy, %bb.cb ], [ %i.ru, %bb.bw ], [ %i.sa, %bb.bx ], [ %i.sg, %bb.by ], [ %i.sm, %bb.bz ], [ %i.ss, %bb.ca ], [ %i.ro, %bb.bv ]
  %i.tj = shl i64 %.sroa.13.01029.i.i, 5
  %i.tk = or disjoint i64 %.sink2476.i.i, %i.tj
  br label %bb.cm

bb.cd:                                            ; preds = %bb.cc
  %i.tl = zext i8 %i.rr to i64
  %i.tm = shl i64 %i.tl, 58
  %i.tn = zext i8 %i.rx to i64
  %i.to = shl nuw nsw i64 %i.tn, 52
  %i.tp = or i64 %i.to, %i.tm
  %i.tq = zext i8 %i.sd to i64
  %i.tr = shl nuw nsw i64 %i.tq, 46
  %i.ts = or i64 %i.tp, %i.tr
  %i.tt = zext i8 %i.sj to i64
  %i.tu = shl nuw nsw i64 %i.tt, 40
  %i.tv = or i64 %i.ts, %i.tu
  %i.tw = zext i8 %i.sp to i64
  %i.tx = shl nuw nsw i64 %i.tw, 34
  %i.ty = or i64 %i.tv, %i.tx
  %i.tz = zext i8 %i.sv to i64
  %i.ua = shl nuw nsw i64 %i.tz, 28
  %i.ub = or i64 %i.ty, %i.ua
  %i.uc = zext i8 %i.tb to i64
  %i.ud = shl nuw nsw i64 %i.uc, 22
  %i.ue = or i64 %i.ub, %i.ud
  %i.uf = zext i8 %i.th to i64
  %i.ug = shl nuw nsw i64 %i.uf, 16
  %i.uh = or i64 %i.ue, %i.ug
  %i.ui = tail call i64 @llvm.bswap.i64(i64 %i.uh)
  %.sroa.0242.0.extract.trunc.i.i = trunc i64 %i.ui to i48
  store i48 %.sroa.0242.0.extract.trunc.i.i, ptr %i.rn, align 1, !alias.scope !220, !noalias !221
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 24
  %i.uk = getelementptr inbounds nuw i8, ptr %i.lg, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ul = load i8, ptr %i.uj, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.um = zext i8 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.up = icmp eq i8 %i.uo, -1
  br i1 %i.up, label %.loopexit295.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 25
  %i.ur = load i8, ptr %i.uq, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.us = zext i8 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.uv = icmp eq i8 %i.uu, -1
  br i1 %i.uv, label %.loopexit295.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 26
  %i.ux = load i8, ptr %i.uw, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.uy = zext i8 %i.ux to i64
  %i.uz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.vb = icmp eq i8 %i.va, -1
  br i1 %i.vb, label %.loopexit295.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 27
  %i.vd = load i8, ptr %i.vc, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.vh = icmp eq i8 %i.vg, -1
  br i1 %i.vh, label %.loopexit295.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 28
  %i.vj = load i8, ptr %i.vi, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.vk = zext i8 %i.vj to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.vn = icmp eq i8 %i.vm, -1
  br i1 %i.vn, label %.loopexit295.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 29
  %i.vp = load i8, ptr %i.vo, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.vq = zext i8 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.vt = icmp eq i8 %i.vs, -1
  br i1 %i.vt, label %.loopexit295.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 30
  %i.vv = load i8, ptr %i.vu, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.vw = zext i8 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vw
  %i.vy = load i8, ptr %i.vx, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.vz = icmp eq i8 %i.vy, -1
  br i1 %i.vz, label %.loopexit295.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 31
  %i.wb = load i8, ptr %i.wa, align 1, !alias.scope !224, !noundef !5 ; 2 uses
  %i.wc = zext i8 %i.wb to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !alias.scope !225, !noundef !5 ; 2 uses
  %i.wf = icmp eq i8 %i.we, -1
  br i1 %i.wf, label %.loopexit295.i.i, label %bb.cl

.loopexit295.i.i:                                 ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %.sink2477.i.i = phi i64 [ 31, %bb.ck ], [ 30, %bb.cj ], [ 25, %bb.ce ], [ 26, %bb.cf ], [ 27, %bb.cg ], [ 28, %bb.ch ], [ 29, %bb.ci ], [ 24, %bb.cd ]
  %.sroa.1499.0.ph.i.i = phi i8 [ %i.wb, %bb.ck ], [ %i.vv, %bb.cj ], [ %i.ur, %bb.ce ], [ %i.ux, %bb.cf ], [ %i.vd, %bb.cg ], [ %i.vj, %bb.ch ], [ %i.vp, %bb.ci ], [ %i.ul, %bb.cd ]
  %i.wg = shl i64 %.sroa.13.01029.i.i, 5
  %i.wh = or disjoint i64 %.sink2477.i.i, %i.wg
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wi = zext i8 %i.uo to i64
  %i.wj = shl i64 %i.wi, 58
  %i.wk = zext i8 %i.uu to i64
  %i.wl = shl nuw nsw i64 %i.wk, 52
  %i.wm = or i64 %i.wl, %i.wj
  %i.wn = zext i8 %i.va to i64
  %i.wo = shl nuw nsw i64 %i.wn, 46
  %i.wp = or i64 %i.wm, %i.wo
  %i.wq = zext i8 %i.vg to i64
  %i.wr = shl nuw nsw i64 %i.wq, 40
  %i.ws = or i64 %i.wp, %i.wr
  %i.wt = zext i8 %i.vm to i64
  %i.wu = shl nuw nsw i64 %i.wt, 34
  %i.wv = or i64 %i.ws, %i.wu
  %i.ww = zext i8 %i.vs to i64
  %i.wx = shl nuw nsw i64 %i.ww, 28
  %i.wy = or i64 %i.wv, %i.wx
  %i.wz = zext i8 %i.vy to i64
  %i.xa = shl nuw nsw i64 %i.wz, 22
  %i.xb = or i64 %i.wy, %i.xa
  %i.xc = zext i8 %i.we to i64
  %i.xd = shl nuw nsw i64 %i.xc, 16
  %i.xe = or i64 %i.xb, %i.xd
  %i.xf = tail call i64 @llvm.bswap.i64(i64 %i.xe)
  %.sroa.0241.0.extract.trunc.i.i = trunc i64 %i.xf to i48
  store i48 %.sroa.0241.0.extract.trunc.i.i, ptr %i.uk, align 1, !alias.scope !226, !noalias !227
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.cm:                                            ; preds = %.loopexit295.i.i, %.loopexit294.i.i, %.loopexit293.i.i, %.loopexit292.i.i, %bb.bm, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %.loopexit.i.i, %bb.q, %bb.o, %bb.m
  %.sroa.0.sroa.11.0.ph.i = phi i8 [ %.sroa.1495.0.ph.i.i, %.loopexit294.i.i ], [ %.sroa.1491.0.ph.i.i, %.loopexit293.i.i ], [ %.lcssa609, %.loopexit.i.i ], [ %.sroa.1499.0.ph.i.i, %.loopexit295.i.i ], [ %.lcssa614, %bb.m ], [ %.lcssa621, %bb.q ], [ %.lcssa618, %bb.o ], [ %i.ln, %bb.bb ], [ %i.nh, %bb.bm ], [ %i.mz, %bb.bl ], [ %i.mr, %bb.bj ], [ %i.mj, %bb.bh ], [ %i.mb, %bb.bf ], [ %i.lt, %bb.bd ], [ %i.lh, %.loopexit292.i.i ]
  %.sroa.113.0.ph.i = phi i64 [ %i.tk, %.loopexit294.i.i ], [ %i.qn, %.loopexit293.i.i ], [ %i.bo, %.loopexit.i.i ], [ %i.wh, %.loopexit295.i.i ], [ %i.ax, %bb.m ], [ %i.bn, %bb.q ], [ %i.bf, %bb.o ], [ %i.lz, %bb.bb ], [ %i.np, %bb.bm ], [ %i.nn, %bb.bl ], [ %i.nf, %bb.bj ], [ %i.mx, %bb.bh ], [ %i.mp, %bb.bf ], [ %i.mh, %bb.bd ], [ %i.nq, %.loopexit292.i.i ]
  %.sroa.0.sroa.11.0.insert.ext.i = zext i8 %.sroa.0.sroa.11.0.ph.i to i16
  %.sroa.0.sroa.11.0.insert.shift.i = shl nuw i16 %.sroa.0.sroa.11.0.insert.ext.i, 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.0.sroa.11.0.insert.shift.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !155
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.113.0.ph.i, ptr %.sroa.621.0..sroa_idx.i, align 8, !alias.scope !155
  store i64 2, ptr %0, align 8, !alias.scope !155
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i: ; preds = %bb.s, %bb.x, %bb.ac, %bb.ah, %bb.am, %bb.ar, %bb.aw, %bb.j
  tail call void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose13decode_suffix13decode_suffix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.n, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.a, i1 noundef zeroext %i.d, i8 noundef %i.f, i8 noundef range(i8 0, 3) %i.h)
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit: ; preds = %bb.g, %bb.cm, %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(324) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = tail call noundef i64 @_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4, i64 noundef 0, i64 noundef 0)
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umulh.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noinline noreturn }
attributes #19 = { noreturn }
attributes #20 = { nounwind }
attributes #21 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 0, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 2}
!7 = !{!"branch_weights", i32 4001, i32 4000000}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 8}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!13 = distinct !{!13, !12, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64"}
!15 = distinct !{!15, !14, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64"}
!17 = distinct !{!17, !16, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64: argument 0"}
!18 = !{!13}
!19 = !{!15}
!20 = !{!17}
!21 = distinct !{!21, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!22 = distinct !{!22, !21, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64"}
!24 = distinct !{!24, !23, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!25 = distinct !{!25, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64"}
!26 = distinct !{!26, !25, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64: argument 0"}
!27 = !{!22}
!28 = !{!24}
!29 = !{!26}
!30 = distinct !{!30, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!31 = distinct !{!31, !30, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64"}
!33 = distinct !{!33, !32, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!34 = !{!31}
!35 = !{!33}
!36 = distinct !{!36, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!37 = distinct !{!37, !36, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!38 = distinct !{!38, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64"}
!39 = distinct !{!39, !38, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!40 = !{!37}
!41 = !{!39}
!42 = distinct !{!42, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgkxsgNF9KUO_6base64"}
!43 = distinct !{!43, !42, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgkxsgNF9KUO_6base64: argument 0"}
!44 = !{!43}
!45 = !{i64 0, i64 -9223372036854775807}
!46 = distinct !{!46, i1 true, !"_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose12decode_table"}
end_hunk_1
